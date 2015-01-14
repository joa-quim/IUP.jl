module button_

using IUP

export
	button

include("../src/libiup_h.jl")

#------------------ example html/examples/C/button.c --------------------------------------------
function button()
	IupOpen()	#Initializes IUP

	IupSetGlobal("UTF8MODE", "Yes")

	text = IupText("")	# Creates a text

	# Turns on read-only mode
	IupSetAttribute(text, "READONLY", "YES")

	# Associates text with handle "text"
	IupSetHandle ("text", text)
	
	pixmap_release = uint8([
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,4,4,3,3,3,3,2,2,
		1,1,3,3,3,3,3,4,4,4,4,3,3,3,2,2,
		1,1,3,3,3,3,3,4,4,4,4,3,3,3,2,2,
		1,1,3,3,3,3,3,3,4,4,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
		2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2])

	pixmap_press = uint8([
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,4,4,3,3,3,3,3,2,2,
		1,1,3,3,3,3,4,4,4,4,3,3,3,3,2,2,
		1,1,3,3,3,3,4,4,4,4,3,3,3,3,2,2,
		1,1,3,3,3,3,3,4,4,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
		2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2])

	pixmap_inactive = uint8([
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
		1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,4,4,3,3,3,3,2,2,
		1,1,3,3,3,3,3,4,4,4,4,3,3,3,2,2,
		1,1,3,3,3,3,3,4,4,4,4,3,3,3,2,2,
		1,1,3,3,3,3,3,3,4,4,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,1,3,3,3,3,3,3,3,3,3,3,3,3,2,2,
		1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,
		2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2])

	#Defines released button's image size
	img_release = IupImage (16, 16, pixmap_release);

	# Defines released button's image colors
	IupSetAttribute (img_release, "1", "215 215 215")
	IupSetAttribute (img_release, "2", "40 40 40") 
	IupSetAttribute (img_release, "3", "30 50 210")
	IupSetAttribute (img_release, "4", "240 0 0")

	# Associates img_release with handle "img_release" 
	IupSetHandle ("img_release", img_release)

	# Defines pressed button's image size
	img_press = IupImage (16, 16, pixmap_press)         

	# Defines pressed button's image colors
	IupSetAttribute (img_press, "1", "40 40 40")
	IupSetAttribute (img_press, "2", "215 215 215")
	IupSetAttribute (img_press, "3", "0 20 180")
	IupSetAttribute (img_press, "4", "210 0 0")

	# Associates img_press with handle "img_press"
	IupSetHandle ("img_press", img_press)

	# Defines inactive button's image size
	img_inactive = IupImage (16, 16, pixmap_inactive)

	# Defines inactive button's image colors
	IupSetAttribute (img_inactive, "1", "215 215 215")
	IupSetAttribute (img_inactive, "2", "40 40 40")
	IupSetAttribute (img_inactive, "3", "100 100 100")
	IupSetAttribute (img_inactive, "4", "200 200 200")

	# Associates img_inactive with handle "img_inactive"
	IupSetHandle ("img_inactive", img_inactive)

	# Creates a button
	btn_image = IupButton("Button with image", "btn_image")

	# Sets released, pressed and inactive button images
	IupSetAttribute (btn_image, "IMAGE", "img_release")
	IupSetAttribute (btn_image, "IMPRESS", "img_press")
	IupSetAttribute (btn_image, "IMINACTIVE", "img_inactive")

	# Associates button callback with action bti_button_act
	IupSetAttribute (btn_image, "BUTTON_CB", "btn_image_button")

	# Associates btn_image with handle "btn_image"
	IupSetHandle ("btn_image", btn_image)

	# Creates a button
	btn_big = IupButton ("Big useless button", "")     

	# Sets big button size
	IupSetAttribute (btn_big, "SIZE", "EIGHTHxEIGHTH")

	# Creates a button entitled Exit associated with action exit_act
	btn_exit = IupButton ("Exit", "btn_exit")

	# Creates a button entitled on/off associated with action onoff_act
	btn_on_off = IupButton("on/off", "btn_on_off")

	# Creates dialog with the four buttons and the text
	dlg = IupDialog (IupVbox (
							IupHbox (btn_image, btn_on_off, btn_exit, C_NULL),
							text,
							btn_big,
							C_NULL
							)
					);
  
	# Sets dialogs title to IupButton turns resize, maximize, minimize and menubox off
	IupSetAttributes (dlg, "EXPAND = YES, TITLE = IupButton, RESIZE = NO")
	IupSetAttributes (dlg, "MENUBOX = NO, MAXBOX = NO, MINBOX = NO")

	# Registers callbacks
	IupSetCallback (btn_exit,   "ACTION", cfunction(btn_exit_cb,   Int, (),))
	IupSetCallback (btn_on_off, "ACTION", cfunction(btn_on_off_cb, Int, (),))
	IupSetCallback (btn_image,  "ACTION", cfunction(btn_image_button_cb, Int, (Ptr{Ihandle}, Cint, Cint, Cint, Cint, Ptr{Uint8})))

	IupSetAttribute(btn_big, "BUTTON_CB", "bigtest");
	IupSetFunction("bigtest", cfunction(btn_big_button_cb, Int, (Ptr{Ihandle}, Cint, Cint)))

	# Shows dialog on the center of the screen
	IupShowXY (dlg, IUP_CENTER, IUP_CENTER)

	IupMainLoop()		# Initializes IUP main loop
	IupClose()			# And close it when ready
end

function btn_image_button_cb(self::Ptr{Ihandle}, b::Cint, e::Cint, x::Cint, y::Cint, t::Ptr{Uint8})
	# If the left button changed its state...
	if (b == IUP_BUTTON1)
    
		# Recovers "text" handle
		text = IupGetHandle("text")
    
		# If the button was pressed...
		if (e == 1)
			IupSetAttribute (text, "VALUE", "Red button pressed")
		else		# the button was released
			IupSetAttribute (text, "VALUE", "Red button released")
		end
	end
  
	# Executed function successfully
	return IUP_DEFAULT
end

function btn_on_off_cb()
	btn_image = IupGetHandle("btn_image")		#Recovers "btn_image" handle
  
	# If the button with with image is active...
	if (bytestring(IupGetAttribute (btn_image, "ACTIVE")) == "YES")
		# Deactivates the button with image */
		IupSetAttribute (btn_image, "ACTIVE","NO")
	else
		# Activates the button with image */
		IupSetAttribute (btn_image, "ACTIVE", "YES")
	end

	return IUP_DEFAULT
end

function btn_exit_cb()
  	return IUP_CLOSE		# Exits the program
end

function btn_big_button_cb(self::Ptr{Ihandle}, button::Cint, press::Cint)
	@printf("BUTTON_CB(button=%d, press=%d)\n", button, press)
	return IUP_DEFAULT
end

end 	# module