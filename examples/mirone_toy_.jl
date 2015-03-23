module xxx_

export
	mirone_toy

using IUP
using IUP_IM
using IUP_CD
using GMT
using Compat

const NEWPOINT = 0
const MOVE = 1
const CLOSE = 2
const CENTER = 3
const REPAINT = 4

type Handles
	figure1::Ptr{Ihandle}
	iup_canvas::Ptr{Ihandle}
	cd_canvas::Ptr{cdCanvas}	# cdCanvas is a composite type
end

type LineSegPix
	x1::Cint
	x2::Cint
	y1::Cint
	y2::Cint
	active::Bool
end
#function LineSegPix(x1, x2, y1, y2, active)
#	x1 = 0; x2 = 0; y1 = 0; y2 = 0; active = false
#end 

include("../src/handlegraphics.jl")

global poly_lastwhat = CLOSE

# ----------------------------------------------------------------------------------
function mirone_toy()
	IupOpen()	#Initializes IUP

	imlabCreateButtonImages()

 	mainMenu = CreateMainMenu()

	# Associates handle "mainMenu" with mainMenu
	IupSetHandle("mainMenu", mainMenu)

	btNew = IupButton("", "imImgWinNew" )
	IupSetAttribute(btNew,"TIP","Creates a new image.");
	IupSetAttribute(btNew,"IMAGE","imImgWinNewButton");

	btOpen = IupButton("", "imImgWinOpen" )
	IupSetAttribute(btOpen,"TIP","Loads an image file from disk.")
	IupSetAttribute(btOpen,"IMAGE","imImgWinOpenButton")

	btLine = IupButton("", "imImgWinLine" )
	IupSetAttribute(btLine,"TIP","Draw line.")
	IupSetAttribute(btLine,"IMAGE","imImgWinLineButton")

	btCloseAll = IupButton("", "imImgWinCloseAll" );
	IupSetAttribute(btCloseAll,"TIP","Close all windows.");
	IupSetAttribute(btCloseAll,"IMAGE","imImgWinCloseAllButton");
	IupSetAttribute(btCloseAll, "ACTIVE", "NO");

	hbToolBar = IupHbox(
		IupSetAttributes(IupFill(),"SIZE=5, EXPAND=NO"),	# Blank space before first icon
		btNew,
		btOpen,
		btLine,
		IupSetAttributes(IupFill(),"SIZE=5, EXPAND=NO"),
		#IupSetAttributes(IupFill(),"EXPAND=YES"),
		IupSetAttributes(IupFill(),"SIZE=5, EXPAND=NO")
	)
	IupSetAttribute(hbToolBar, "btCloseAll", btCloseAll);
	IupSetAttribute(hbToolBar, "FLAT", "YES");

	cnvStatus = IupCanvas();
	IupSetAttribute(cnvStatus, "EXPAND", "HORIZONTAL");
	IupSetAttribute(cnvStatus, "RASTERSIZE", "1x25");
	IupSetAttribute(cnvStatus, "BORDER", "YES");

	iup_canvas = blabla()

	vbMainDesktop = IupVbox(
		IupSetAttributes(IupFill(),"SIZE=2, EXPAND=NO"),
		hbToolBar,
		IupSetAttributes(IupFill(),"SIZE=4, EXPAND=NO"),
		IupHbox(iup_canvas),
		IupSetAttributes(IupFill(),"SIZE=4, EXPAND=NO"),
		cnvStatus,
		IupSetAttributes(IupFill(),"SIZE=2, EXPAND=NO")
	)

	# Creates a dialog
	main_window = IupDialog(vbMainDesktop)

	handles = Handles(C_NULL, C_NULL, C_NULL)
	handles.figure1 = main_window
	handles.iup_canvas = iup_canvas
	guidata(main_window, handles)

	IupSetAttribute(main_window, "MENU","mainMenu")
	#IupSetAttribute(main_window, "CLOSE_CB","imImgWinMainExit");
	#IupSetAttribute(main_window, "DROPFILES_CB","imImgWinDropFile");
	#IupSetAttribute(main_window, "GETFOCUS_CB", "imImgWinGetFocus");

	IupSetAttribute(main_window,"MainToolBar", hbToolBar);

	#IupSetAttribute(main_window,"PLACEMENT", "MAXIMIZED");
	IupSetAttribute(main_window,"BRINGFRONT", "YES");
	IupSetAttribute(main_window, "K_cN","imImgWinWindowNext");
	IupSetAttribute(main_window, "K_cO","imImgWinOpen");

	# Sets title and size of the dialog and associates a menu to it
	IupSetAttributes(main_window, "TITLE=\"Mirone toy\", RASTERSIZE = 730x91, MENU = mainMenu");

	# associa os callbacks
	setcallbacks(handles)

	IupShowXY(main_window, IUP_CENTER, IUP_TOP) # Displays the dialog (at screen center)
	IupMainLoop()                               # Initializes IUP main loop
	IupClose()                                  # And close it when ready

end

# ---------------------------------------------------------------------------------------------
function blabla()
	iup_canvas = IupCanvas()
	IupSetCallback(iup_canvas, "ACTION", cfunction(cbCanvasRepaint, Int, (Ptr{Ihandle},)))
	IupSetCallback(iup_canvas, "MAP_CB", cfunction(cbCanvasMap, Int, (Ptr{Ihandle},)))
	return iup_canvas
end

# --------------------------------------------------------------------------------
function cbCanvasMap(iup_canvas::Ptr{Ihandle})
	handles = guidata(iup_canvas)
	cd_canvas = cdCreateCanvas(cdContextIup(), iup_canvas)
	#cd_canvas = cdCreateCanvas(cdContextDBuffer(), iup_canvas)
	IupSetAttribute(IupGetDialog(iup_canvas), "cdCanvas", cd_canvas)
	IupSetAttribute(iup_canvas, "cdCanvas", cd_canvas)			# Redundant with handles
	handles.cd_canvas = cd_canvas
	guidata(handles.figure1, handles)
	return IUP_DEFAULT
end

# ---------------------------------------------------------------------------------------------
function setcallbacks(handles::Handles)
	IupSetFunction("imImgWinOpen",  cfunction(cmOpen, Int, (Ptr{Ihandle},)))
	IupSetFunction("imImgWinLine",  cfunction(cmdDrawPoly, Int, (Ptr{Ihandle},)))

	#IupSetFunction("cmdRepaint", (Icallback) fRepaint);
	WindowButtonDownFcn(handles.iup_canvas, fButtonCB)
	WindowButtonMotionFcn(handles.iup_canvas, fMotionCB)
	#IupSetFunction("cmdResizeCB", (Icallback) fResizeCB);
end

# ------------------------------------------------------------------------
function fMotionCB(hand::Ptr{Ihandle}, x::Int32, y::Int32, r::Ptr{Uint8})
	handles = guidata(hand)

	yp = convert(Ptr{Cint}, [y]);
	cdCanvasUpdateYAxis(handles.cd_canvas, yp)
	y = int32(unsafe_load(yp))
	x = int32(x)						# <=========== NAO DEVIA SER Int64
	polygon(handles, MOVE, x, y)
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------
# Function associated to the mouse buttons
#-------------------------------------------------------------------------
function fButtonCB(hand::Ptr{Ihandle}, b::Char, e::Integer, x::Integer, y::Integer, r::Ptr{Uint8})
	handles = guidata(hand)

	cdCanvasActivate(handles.cd_canvas)
	cdCanvasWriteMode(handles.cd_canvas, IUP_CD.CD_NOT_XOR)
	cdCanvasForeground(handles.cd_canvas, convert(Clong, IUP_CD.CD_BLACK))
	cdCanvasLineStyle(handles.cd_canvas, IUP_CD.CD_CONTINUOUS)
	cdCanvasLineWidth(handles.cd_canvas, 1)
	cdCanvasClip(handles.cd_canvas, IUP_CD.CD_CLIPOFF)

	yp = convert(Ptr{Cint}, [y]);
	cdCanvasUpdateYAxis(handles.cd_canvas, yp)
	y = int32(unsafe_load(yp))
	x = int32(x)				# <=========== NAO DEVIA SER Int64
	
	set_current_point(handles.iup_canvas, [x,y])

	if (b == IUP_BUTTON1)		# Left button
		if (e != 0)				# button was pressed
			line_seg = getappdata(handles.iup_canvas, "lineSeg")
			if ((try isempty(line_seg) end)) return IUP_DEFAULT end
@show(line_seg)
			line_seg.x1 = x
			line_seg.y1 = y
			line_seg.active = true
			setappdata(handles.iup_canvas, "lineSeg", line_seg)
		end
	end
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------
# Desenha o poligono em rubber band.
#-------------------------------------------------------------------------
function polygon(handles::Handles, what::Integer, x::Integer, y::Integer)
# I have to have those redeclared here otherwise it errors saying they are not declared ??????????????????
global poly_lastwhat

	line_seg = getappdata(handles.iup_canvas, "lineSeg")
#@show(line_seg)
	if ((try isempty(line_seg) end) || !line_seg.active) return end
#@show(what)

	if (what == NEWPOINT)
		if (poly_lastwhat != CLOSE)
			cdCanvasLine(line_seg.x1, line_seg.y1, line_seg.x2, line_seg.y2);      # ...apaga a anterior e...
			cdCanvasLine(line_seg.x1, line_seg.y1, x, y);        # desenha a definitiva
		end
		line_seg.x1 = x;                        # novo segmento comeca no...
		line_seg.y1 = y;                        # fim do primeiro
	elseif (what == MOVE)
		if (poly_lastwhat == MOVE)
			cdCanvasLine(handles.cd_canvas, line_seg.x1, line_seg.y1, line_seg.x2, line_seg.y2);      # apaga o segmento velho
		end
		cdCanvasLine(handles.cd_canvas, line_seg.x1, line_seg.y1, x, y);     # desenha o novo
		line_seg.x2 = x;                        # e o novo se...
		line_seg.y2 = y;                        # torna velho
	elseif (what == REPAINT)
		cdCanvasLine(handles.cd_canvas, line_seg.x1, line_seg.y1, line_seg.x2, line_seg.y2);        # recupera o segmento perdido
		return                             # nao modifica lastwhat
	elseif (what == CLOSE)
		if (poly_lastwhat != CLOSE)
			cdLine(handles.cd_canvas, line_seg.x1, line_seg.y1, line_seg.x2, line_seg.y2);        # apaga o ultimo segmento
			# apaga o poligono temporario inteiro
			for (i = 1:ctgc.num_points-1)
				cdCanvasLine(handles.cd_canvas, ctgc.points[i].x, ctgc.points[i].y, ctgc.points[i+1].x, ctgc.points[i+1].y);
			end
		end
	end
	poly_lastwhat = what
	setappdata(handles.iup_canvas, "lineSeg", line_seg)
end


# ---------------------------------------------------------------------------------------------
function cmdDrawPoly(iup_canvas::Ptr{Ihandle})
	handles = guidata(iup_canvas)
	line_seg = LineSegPix(0, 0, 0, 0, true)

	setappdata(handles.iup_canvas, "lineSeg", line_seg)

	cdCanvasBackground(handles.cd_canvas, IUP_CD.CD_WHITE); 
	cdCanvasClear(handles.cd_canvas); 
	cdCanvasLineWidth(handles.cd_canvas, 3); 
	cdCanvasLineStyle(handles.cd_canvas, IUP_CD.CD_CONTINUOUS); 
	cdCanvasForeground(handles.cd_canvas, cdEncodeAlpha(IUP_CD.CD_DARK_MAGENTA, char(128)))
	cdCanvasWriteMode(handles.cd_canvas, IUP_CD.CD_NOT_XOR)
	cdCanvasActivate(handles.cd_canvas)
	return IUP_DEFAULT
end

# ---------------------------------------------------------------------------------------------
function cmOpen(iup_canvas::Ptr{Ihandle})
	# Retrieve a file name */
	FileName = "*.*"
	if (IupGetFile(FileName) != 0)
		return IUP_DEFAULT
	end

	ShowImage(FileName, IupGetDialog(iup_canvas))
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function ShowImage(FileName::String, iup_dialog::Ptr{Ihandle})
	image = IupGetAttribute(iup_dialog, "imImage")		# typeof(image) => Ptr{Uint8}
	image = convert(Ptr{imImage}, image)		# If I use Ptr{imImage} it Booms???
	if (image != C_NULL)
		imImageDestroy(image)
	end
	IupSetAttribute(iup_dialog, "imImage")

#
	error = pointer([0])
	image = imFileImageLoadBitmap(FileName, 0, error)
	error = unsafe_load(error)
	if (error != 0)	PrintError(error)	end
	if (image == C_NULL) return end
#
	#image = load_with_gmt(FileName)

	IupSetAttribute(iup_dialog, "imImage", image);
	cbCanvasRepaint(iup_dialog)   # we can do this because canvas inherit attributes from the dialog */
	IupShow(iup_dialog)
end

# --------------------------------------------------------------------------------
function cbCanvasRepaint(iup_canvas::Ptr{Ihandle})
	cd_canvas = convert(Ptr{cdCanvas}, IupGetAttribute(iup_canvas, "cdCanvas"))
	if (cd_canvas == C_NULL)
		return IUP_DEFAULT
	end

	cdCanvasActivate(cd_canvas);
	cdCanvasClear(cd_canvas);

	image = convert(Ptr{imImage}, IupGetAttribute(iup_canvas, "imImage"))
	if (image == C_NULL)
		return IUP_DEFAULT
	end

	img = unsafe_load(image)		# Need to get access to the composite type, not to its pointer
	imcdCanvasPutImage(cd_canvas, img, 0, 0, img.width, img.height, 0, 0, 0, 0)
#	imcdCanvasPutImage(cd_canvas, img, 10,10,div(img.width,2), div(img.height,2),  0, 0, 0, 0)

	#IupSetAttribute(iup_canvas, "RASTERSIZE", @sprintf("%dx%d", img.width, img.height+25+91+12))
	IupSetAttribute(iup_canvas, "RASTERSIZE", @sprintf("%dx%d", img.width, img.height))
	handles = guidata(iup_canvas)
	#IupSetAttribute(handles.figure1, "RASTERSIZE", C_NULL) ;
@show(bytestring(IupGetAttribute(iup_canvas, "RASTERSIZE")))
	IupRefresh(iup_canvas)
	cdCanvasFlush(cd_canvas)
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function load_with_gmt(FileName::String)
	I = gmt("read C://progs_cygw//GMTdev//gmt5//branches//5.2.0//test//grdimage//gdal//needle.jpg -Ti")
	n = I.n_columns * I.n_rows
	data = pointer([pointer(I.image[:,:,1]), pointer(I.image[:,:,2]), pointer(I.image[:,:,3])])
	im = imImage(I.n_columns,I.n_rows,IM_RGB,0,0,3,I.n_columns, n, n*3, n, data, C_NULL, 0, C_NULL)
	image = pointer([im])
	return gc_ref(image)
end

# ----------------------------------------------------------------------------------------------
function imlabCreateButtonImages()
	new_bits = Uint8[
		2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
		,3,2,2,1,3,2,2,1,2,2,2,2,2,2,2,2
		,1,3,2,1,4,2,1,3,2,2,2,2,2,2,2,2
		,2,1,3,1,3,1,3,0,0,0,0,0,0,0,0,2
		,2,3,1,3,4,1,1,1,1,4,4,4,4,4,0,2
		,1,1,1,4,3,3,4,4,4,4,4,4,4,4,0,2
		,2,2,4,1,4,4,1,4,4,4,4,4,4,4,0,2
		,1,2,2,1,3,4,4,4,4,4,4,4,4,4,0,2
		,2,2,2,1,4,4,4,4,4,4,4,4,4,4,0,2
		,2,2,2,0,4,4,4,4,4,4,4,4,4,4,0,2
		,2,2,2,0,4,4,4,4,4,4,4,4,4,4,0,2
		,2,2,2,0,4,4,4,4,4,4,4,4,4,4,0,2
		,2,2,2,0,4,4,4,4,4,4,4,4,4,4,0,2
		,2,2,2,0,4,4,4,4,4,4,4,4,4,4,0,2
		,2,2,2,0,4,4,4,4,4,4,4,4,4,4,0,2
		,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,2
	]

	new_colors = [                                      
		"0 0 0",
		"132 132 132",
		"BGCOLOR",
		"255 255 0",
		"255 255 255",
		""
	]

	open_bits = Uint8[
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,
		1,1,1,1,1,1,1,1,1,0,1,1,1,0,1,0,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,
		1,1,0,0,0,1,1,1,1,1,1,1,1,0,0,0,
		1,0,1,3,1,0,0,0,0,0,0,0,1,1,1,1,
		1,0,3,1,3,1,3,1,3,1,3,0,1,1,1,1,
		1,0,1,3,1,3,1,3,1,3,1,0,1,1,1,1,
		1,0,3,1,3,1,0,0,0,0,0,0,0,0,0,0,
		1,0,1,3,1,0,2,2,2,2,2,2,2,2,2,0,
		1,0,3,1,0,2,2,2,2,2,2,2,2,2,0,1,
		1,0,1,0,2,2,2,2,2,2,2,2,2,0,1,1,
		1,0,0,2,2,2,2,2,2,2,2,2,0,1,1,1,
		1,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	]

	open_colors = [
		"0 0 0",
		"BGCOLOR",
		"128 128 0",
		"255 255 0",
		""
	]

	line_bits = Uint8[
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,
		1,1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,
		1,1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,
		1,1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,
		1,1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,
		1,1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,
		1,1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,
		1,1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,
		1,1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,
		1,1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,
		1,1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,
		1,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,
		1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
	]

	CreateButtonImage(16,16, new_bits, new_colors, "imImgWinNewButton");
	CreateButtonImage(16,16, open_bits, open_colors, "imImgWinOpenButton");
	CreateButtonImage(16,16, line_bits, open_colors, "imImgWinLineButton");
end

# ----------------------------------------------------------------------------------------------
function CreateButtonImage(w::Int, h::Int, bits, colors, name::String)
	global total_images, images

	color_str = ["0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"]
	i = 1

	iup_image = IupImage(w, h, bits)
	IupSetHandle(name, iup_image)

	while (colors[i] != "")
		if (i > 16)
			aux_color_str = @sprintf("%d", i)
			IupStoreAttribute(iup_image, aux_color_str, colors[i]); 
		else
			IupStoreAttribute(iup_image, color_str[i], colors[i]); 
		end
		i += 1
	end

end


# ---------------------------------------------------------------------------------------------
function CreateMainMenu()

	# Creates items of menu File
	item_new   = IupItem ("New","");
	item_open  = IupItem ("Open Grid/Image", "");
	item_close = IupItem ("Close", "");
	item_exit  = IupItem ("Exit", "item_exit_act");

	# Creates items of menu Image
	item_copy  = IupItem ("Copy", "");
	item_paste = IupItem ("Paste", "")

	# Creates items for menu triangle
	item_scalenus = IupItem ("Scalenus","")
	item_isoceles = IupItem ("Isoceles", "")
	item_equilateral = IupItem ("Equilateral", "")

	# Create menu triangle
	menu_triangle = IupMenu(item_equilateral, item_isoceles, item_scalenus)

	# Creates submenu triangle
	submenu_triangle = IupSubmenu("Triangle", menu_triangle)

	# Creates items for menu create
	item_line = IupItem ("Line", "")
	item_circle = IupItem ("Circle", "")

	# Creates menu create
	menu_create = IupMenu(item_line, item_circle, submenu_triangle)

	# Creates submenu create
	submenu_create = IupSubmenu ("Create", menu_create)

	# Creates items of menu help
	item_help = IupItem ("Help", "item_help_act")
  
	# Creates menus
	menu_file  = IupMenu (item_new, item_open, item_close, IupSeparator(), item_exit)
	menu_image = IupMenu (item_copy, item_paste, IupSeparator(), submenu_create)
	menu_tools = IupMenu (IupItem("Tools",""))
	menu_help  = IupMenu (item_help);

	# Creates submenus
	submenu_file  = IupSubmenu ("File", menu_file)
	submenu_image = IupSubmenu ("Image", menu_image)
	submenu_tools = IupSubmenu ("Tools", menu_tools)
	submenu_help  = IupSubmenu ("Help", menu_help)

	# The menu Draw and its descendents
	menu_draw = IupMenu(IupItem("Draw",""))
	submenu_draw = IupSubmenu ("Draw", menu_draw)

	# The menu Geography and its descendents
	menu_geog = IupMenu(IupItem("Plot-coastline",""))
	submenu_geog = IupSubmenu ("Geography", menu_geog)

	# The menu Plates and its descendents
	menu_plates = IupMenu(IupItem("Plate calculator",""))
	submenu_plates = IupSubmenu ("Plates", menu_plates)

	# The menu Mag/Grav and its descendents
	menu_mag = IupMenu(IupItem("IGRF calculator",""))
	submenu_mag = IupSubmenu ("Mag/Grav", menu_mag)

	# The menu Seismology and its descendents
	menu_seismic = IupMenu(IupItem("Seismicity",""))
	submenu_seismic = IupSubmenu ("Seismology", menu_seismic)

	# The menu Tsunamis and its descendents
	menu_tsu = IupMenu(IupItem("Tsunami Travel Time",""))
	submenu_tsu = IupSubmenu("Tsunamis", menu_tsu)

	# The menu GMT and its descendents
	menu_gmt = IupMenu(IupItem("grdfilter",""))
	submenu_gmt = IupSubmenu("GMT", menu_gmt)

	# The menu Grid Tools and its descendents
	menu_grdtool = IupMenu(IupItem("grid calculator",""))
	submenu_grdtool = IupSubmenu("Grid Tools", menu_grdtool)

	# The menu Projections and its descendents
	menu_proj = IupMenu(IupItem("None",""))
	submenu_proj = IupSubmenu("Projections", menu_proj)

	# Creates main menu with file menu
	mainMenu = IupMenu(submenu_file, submenu_image, submenu_tools, submenu_draw, submenu_geog, submenu_plates,
	                   submenu_mag, submenu_seismic, submenu_tsu, submenu_gmt, submenu_grdtool, submenu_proj,
	                   submenu_help)

	return mainMenu
end

end 	# module
