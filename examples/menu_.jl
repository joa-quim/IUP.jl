module menu_

using IUP

export
	menu

include("../src/libiup_h.jl")

#------------------------example html/examples/C/menu.c ----------------------------------
function menu()
	IupOpen()	#Initializes IUP

	item_open = IupItem ("Open", "");
	IupSetAttribute(item_open, "KEY", "O");

	item_save = IupItem ("Save", "");
	IupSetAttribute(item_save, "KEY", "S");

	item_undo = IupItem ("Undo", "");
	IupSetAttribute(item_undo, "KEY", "U");
	IupSetAttribute(item_undo, "ACTIVE", "NO");
	item_exit = IupItem ("Exit", "");
	IupSetAttribute(item_exit, "KEY", "x");
	IupSetCallback(item_exit, "ACTION", cfunction(exit_cb, Cint, (Ptr{Ihandle},)))

	file_menu = IupMenu(item_open, 
	                  item_save, 
	                  IupSeparator(),
	                  item_undo,
	                  item_exit)

	sub1_menu = IupSubmenu("File", file_menu);

	thismenu = IupMenu(sub1_menu)
	IupSetHandle("mymenu", thismenu)
	dlg = IupDialog(IupCanvas(""))
	IupSetAttribute(dlg, "MENU", "mymenu")
	IupSetAttribute(dlg, "TITLE", "IupMenu")

	IupShow(dlg)
	IupMainLoop()                               # Initializes IUP main loop
	IupClose()                                  # And close it when ready
end

function exit_cb(h::Ptr{Ihandle})
	return convert(Cint, IUP_CLOSE)
end

end 	# module