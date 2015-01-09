#= IM 3 sample that shows an image.

  Needs "im.lib", "iup.lib", "cd.lib" and "iupcd.lib".

  Usage: im_view <file_name>

	Example: im_view test.tif
	
  Click on image to open another file.

#include <iup.h>
#include <cd.h>
#include <cdiup.h>
#include <im.h>
#include <im_image.h>
=#

module im_view_

using IUP
using IUP_IM
using IUP_CD

export
  im_view

include("../src/libiup_h.jl")
include("../src/im_process_h.jl")

#= ---------------------------------------------------------------------------------
# Tried to write this macro instead of the IUP_CD.jl function but it fails miserably
macro imcdCanvasPutImage(_canvas, _image, _x, _y, _w, _h, _xmin, _xmax, _ymin, _ymax)
	if (isa(_image, Ptr{imImage}))
		_image = unsafe_load(_image)
	end
	if (_image.color_space == IM_RGB)
		data = [convert(Ptr{Uint8}, unsafe_load(_image.data,1)),
			convert(Ptr{Uint8}, unsafe_load(_image.data,2)),
			convert(Ptr{Uint8}, unsafe_load(_image.data,3))]

		if ($_image.has_alpha != 0)
			data = [data, convert(Ptr{Uint8}, unsafe_load(_image.data,4))]
			return cdCanvasPutImageRectRGBA(_canvas, _image.width, _image.height,
					data[1], data[2], data[3], data[4],
					_x, _y, _w, _h, _xmin, _xmax, _ymin, _ymax)
		else
			return cdCanvasPutImageRectRGB($_canvas, _image.width, _image.height,
					data[1], data[2], data[3],
					_x, _y, _w, _h, _xmin, _xmax, _ymin, _ymax)
		end
	else
		data = [convert(Ptr{Uint8}, unsafe_load(_imag.data,1))]
		return cdCanvasPutImageRectMap(_canvas, _image.width, _image.height,
					data[0], _image.palette,
					_x, _y, _w, _h, _xmin, _xmax, _ymin, _ymax)
	end
end
=#

global disable_repaint = false      # used to optimize repaint, while opening a new file

# --------------------------------------------------------------------------------
function im_view()

	IupOpen() 		#Initializes IUP
	dlg = CreateDialog()
	IupShow(dlg);

	file_name = "*.*"
	if (IupGetFile(file_name) == 0)
		ShowImage(file_name, dlg)
	end

	IupMainLoop()
	IupDestroy(dlg)
	IupClose()
	return 0
end

# --------------------------------------------------------------------------------
function PrintError(error::Integer)
	if (error == IM_ERR_OPEN)
		IupMessage("IM", "Error Opening File.")
	elseif (error == IM_ERR_MEM)
		IupMessage("IM", "Insuficient memory.")
	elseif (error == IM_ERR_ACCESS)
		IupMessage("IM", "Error Accessing File.")
	elseif (error == IM_ERR_DATA)
		IupMessage("IM", "Image type not Suported.")
	elseif (error == IM_ERR_FORMAT)
		IupMessage("IM", "Invalid Format.")
	elseif (error == IM_ERR_COMPRESS)
		IupMessage("IM", "Invalid or unsupported compression.")
	else
		IupMessage("IM", "Unknown Error.")
	end
end

# --------------------------------------------------------------------------------
function cbCanvasRepaint(iup_canvas::Ptr{Ihandle})
	global disable_repaint

	cd_canvas = convert(Ptr{cdCanvas}, IupGetAttribute(iup_canvas, "cdCanvas"))
	image = convert(Ptr{imImage}, IupGetAttribute(iup_canvas, "imImage"))

	if (cd_canvas == C_NULL || disable_repaint)
		return IUP_DEFAULT
	end

	cdCanvasActivate(cd_canvas);
	cdCanvasClear(cd_canvas);

	if (image == C_NULL)
		return IUP_DEFAULT
	end

	img = unsafe_load(image)		# Need to get access to the composite type, not to its pointer
	imcdCanvasPutImage(cd_canvas, img, 0, 0, img.width, img.height, 0, 0, 0, 0)

	#=data = [convert(Ptr{Uint8}, unsafe_load(img.data,1)),
			convert(Ptr{Uint8}, unsafe_load(img.data,2)),
			convert(Ptr{Uint8}, unsafe_load(img.data,3))]
	cdCanvasPutImageRectRGB(cd_canvas, img.width, img.height,
					data[1], data[2], data[3],
					0, 0, img.width, img.height, 0, 0, 0, 0)=#

	cdCanvasFlush(cd_canvas)
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function ShowImage(file_name::String, iup_dialog::Ptr{Ihandle})
	image = IupGetAttribute(iup_dialog, "imImage")		# typeof(image) => Ptr{Uint8}
	image = convert(Ptr{imImage}, image)		# If I use Ptr{imImage} it Booms???
	if (image != C_NULL)
		imImageDestroy(image)
	end
	IupSetAttribute(iup_dialog, "imImage")

	error = convert(Ptr{Cint}, [int32(0)])
	image = imFileImageLoadBitmap(file_name, 0, error)
	error = unsafe_load(error)
	if (error != 0)	PrintError(error)	end
	if (image == C_NULL) return end

	IupSetAttribute(iup_dialog, "imImage", image);
	IupStoreAttribute(iup_dialog, "TITLE", file_name);

	cbCanvasRepaint(iup_dialog)   # we can do this because canvas inherit attributes from the dialog */
end

# --------------------------------------------------------------------------------
function cbCanvasButton(iup_canvas::Ptr{Ihandle}, but::Int, pressed::Int)
	global disable_repaint
	
	file_name = "*.*"

	if (but != IUP_BUTTON1 || pressed != 0)
		return IUP_DEFAULT
	end

	disable_repaint = true
	if (IupGetFile(file_name) != 0)
		disable_repaint = false
		return IUP_DEFAULT
	end

	disable_repaint = false
	ShowImage(file_name, IupGetDialog(iup_canvas))
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function cbCanvasMap(iup_canvas::Ptr{Ihandle})
	cd_canvas = cdCreateCanvas(cdContextIup(), iup_canvas)
	IupSetAttribute(IupGetDialog(iup_canvas), "cdCanvas", cd_canvas)
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function cbDialogClose(iup_dialog::Ptr{Ihandle})
	cd_canvas = convert(Ptr{cdCanvas}, IupGetAttribute(iup_dialog, "cdCanvas"))
	image = convert(Ptr{imImage}, IupGetAttribute(iup_dialog, "imImage"))

	if (cd_canvas != C_NULL) cdKillCanvas(cd_canvas)	end
	if (image != C_NULL) imImageDestroy(image)		end

	IupSetAttribute(iup_dialog, "cdCanvas")
	IupSetAttribute(iup_dialog, "imImage")

	return IUP_CLOSE
end

# --------------------------------------------------------------------------------
function CreateDialog()

	iup_canvas = IupCanvas()
	IupSetCallback(iup_canvas, "BUTTON_CB", cfunction(cbCanvasButton, Int, (Ptr{Ihandle}, Int, Int)))
	IupSetCallback(iup_canvas, "ACTION", cfunction(cbCanvasRepaint, Int, (Ptr{Ihandle},)))
	IupSetCallback(iup_canvas, "MAP_CB", cfunction(cbCanvasMap, Int, (Ptr{Ihandle},)))

	iup_dialog = IupDialog(iup_canvas)
	IupSetCallback(iup_dialog, "CLOSE_CB", cfunction(cbDialogClose, Int, (Ptr{Ihandle},)))
	IupSetAttribute(iup_dialog, "SIZE", "HALFxHALF")      # initial size

	return iup_dialog
end


end   # module