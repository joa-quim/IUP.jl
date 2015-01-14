module val_

export
	val

include("../src/libiup_h.jl")

using IUP

#------------------------example html/examples/C/val.c ----------------------------------
function val()
	global lbl_v, lbl_h         # In a real case we would probably like to avoid the globals
	IupOpen()                   # Initializes IUP

	val_v = IupVal("VERTICAL")
	val_h = IupVal("HORIZONTAL")
	lbl_v = IupLabel("VALUE=")
	lbl_h = IupLabel("VALUE=")
	IupSetAttribute(lbl_v, "SIZE", "50x")
	IupSetAttribute(lbl_h, "SIZE", "50x")
	IupSetAttribute(val_v, "SHOWTICKS", "5")

	dlg_val = IupDialog(
		IupHbox(
			IupSetAttributes(IupHbox(val_v, lbl_v), "ALIGNMENT=ACENTER"),
			IupSetAttributes(IupVbox(val_h, lbl_h), "ALIGNMENT=ACENTER")
		)
	)

	IupSetCallback(val_v, "BUTTON_PRESS_CB",   cfunction(button_press, Int, (Ptr{Ihandle}, Float64)))
	IupSetCallback(val_v, "BUTTON_RELEASE_CB", cfunction(button_release, Int, (Ptr{Ihandle}, Float64)))
	IupSetCallback(val_v, "MOUSEMOVE_CB",      cfunction(mousemove, Int, (Ptr{Ihandle}, Float64)))

	IupSetCallback(val_h, "BUTTON_PRESS_CB",   cfunction(button_press, Int, (Ptr{Ihandle}, Float64)))
	IupSetCallback(val_h, "BUTTON_RELEASE_CB", cfunction(button_release, Int, (Ptr{Ihandle}, Float64)))
	IupSetCallback(val_h, "MOUSEMOVE_CB",      cfunction(mousemove, Int, (Ptr{Ihandle}, Float64)))

	IupSetAttribute(dlg_val, "TITLE", "IupVal")
	IupSetAttribute(dlg_val, "MARGIN", "10x10")
	IupShowXY(dlg_val, IUP_CENTER, IUP_CENTER)  # Displays the dialog (at screen center)

	IupMainLoop()                               # Initializes IUP main loop
	IupClose()                                  # And close it when ready
end

function button_press(c::Ptr{Ihandle}, a::Float64)
	global lbl_v, lbl_h
	type_ = bytestring(IupGetAttribute(c, "ORIENTATION"))

	if (type_[1] == 'V')
		IupSetAttribute(lbl_v, "FGCOLOR", "255 0 0")
	elseif (type_[1] == 'H')
		IupSetAttribute(lbl_h, "FGCOLOR", "255 0 0")
	end

	mousemove(c, a)

	return IUP_DEFAULT
end

function button_release(c::Ptr{Ihandle}, a::Float64)
	global lbl_v, lbl_h
	type_ = bytestring(IupGetAttribute(c, "ORIENTATION"))

	if (type_[1] == 'V')
		IupSetAttribute(lbl_v, "FGCOLOR", "0 0 0")
	elseif (type_[1] == 'H')
		IupSetAttribute(lbl_h, "FGCOLOR", "0 0 0")
	end

	mousemove(c, a)

	return IUP_DEFAULT
end

function mousemove(c::Ptr{Ihandle}, a::Float64)
	global lbl_v, lbl_h

	buffer = @sprintf("VALUE=%.2f", a)
	type_ = bytestring(IupGetAttribute(c, "ORIENTATION"))

	if (type_[1] == 'V')
		IupStoreAttribute(lbl_v, "TITLE", buffer)
	elseif (type_[1] == 'H')
		IupStoreAttribute(lbl_h, "TITLE", buffer)
	end

	return IUP_DEFAULT
end

end 	# module