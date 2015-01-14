module item_

using IUP

export
	item

include("../src/libiup_h.jl")

#------------------------example html/examples/C/item.c ----------------------------------
function item()
	IupOpen()	#Initializes IUP

	text = IupText()

	IupSetAttribute(text, "VALUE", "This is an empty text");

	item_save = IupItem("Save\tCtrl+S")     # this is NOT related with the Ctrl+S key callback, it will just align the text at right */
	item_autosave = IupItem("&Auto Save")
	item_exit = IupItem("Exit", "item_exit_act")

	IupSetAttribute(item_exit, "KEY", "x")  # this is NOT related with the K_X key callback, it will just underline the letter */

	IupSetCallback(item_exit, "ACTION", cfunction(item_exit_cb, Int, (),))
	IupSetCallback(item_autosave, "ACTION", cfunction(item_autosave_cb, Int, (),))

	IupSetAttribute(item_autosave, "VALUE", "ON")
	IupSetHandle("item_autosave", item_autosave)        # giving a name to a iup handle

	menu_file = IupMenu(item_save, item_autosave, item_exit)

	submenu_file = IupSubmenu("File", menu_file)

	menu = IupMenu(submenu_file)

	IupSetHandle("menu", menu)

	dlg = IupDialog(IupVbox(text, IupButton("Test")))

	IupSetAttribute(dlg, "MARGIN", "10x10")
	IupSetAttribute(dlg, "GAP", "10")
	IupSetAttribute(dlg, "TITLE", "IupItem")
	IupSetAttribute(dlg, "MENU", "menu")
	IupSetCallback(dlg, "K_cX", cfunction(item_exit_cb, Int, (),))     # this will also affect the IupText if at focus, since it is used for clipboard cut */
	IupSetCallback(dlg, "K_cA", cfunction(item_autosave_cb, Int, (),)) # this will also affect the IupText if at focus, since it is used for select all */
	IupSetCallback(dlg, "K_cS", cfunction(item_save_cb, Int, (),))

	IupShowXY(dlg, IUP_CENTER, IUP_CENTER)
	IupMainLoop()                               # Initializes IUP main loop
	IupClose()                                  # And close it when ready
end

function item_save_cb()
	IupMessage("Test","Saved!")
	return IUP_DEFAULT
end

function item_autosave_cb()
	item_autosave = IupGetHandle("item_autosave")
	if (IupGetInt(item_autosave, "VALUE"))
		IupMessage("Auto Save","OFF")
		IupSetAttribute(item_autosave, "VALUE", "OFF")
	else
		IupMessage("Auto Save","ON")
		IupSetAttribute(item_autosave, "VALUE", "ON")
	end
  
	return IUP_DEFAULT
end

function item_exit_cb()
	return IUP_CLOSE
end

end 	# module