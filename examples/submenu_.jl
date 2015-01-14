module submenu_

export
	submenu

include("../src/libiup_h.jl")

using IUP

function submenu()
	IupOpen()	#Initializes IUP

	# Creates a multiline
	text = IupText ("")
  
	# Sets value of the text and turns on expand
	IupSetAttributes (text, "VALUE = \"This text is here only to compose\", EXPAND = YES");
     
	# Creates items of menu file
	item_new = IupItem ("New","");
	item_open = IupItem ("Open", "");
	item_close = IupItem ("Close", "");
	item_exit = IupItem ("Exit", "item_exit_act");

	# Creates items of menu edit
	item_copy = IupItem ("Copy", "");
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
  
	# Creates three menus
	menu_file = IupMenu (item_new, item_open, item_close, IupSeparator(), item_exit)
	menu_edit = IupMenu (item_copy, item_paste, IupSeparator(), submenu_create)
	menu_help = IupMenu (item_help);

	# Creates three submenus
	submenu_file = IupSubmenu ("File", menu_file)
	submenu_edit = IupSubmenu ("Edit", menu_edit)
	submenu_help = IupSubmenu ("Help", menu_help)
  
	# Creates main menu with file menu
	menu = IupMenu (submenu_file, submenu_edit, submenu_help)

	# Registers callbacks
	#IupSetCallback (item_help, "ACTION", (Icallback) item_help_cb)
	#IupSetCallback (item_exit, "ACTION", (Icallback) item_exit_cb)
 
	# Associates handle "menu" with menu
	IupSetHandle ("menu", menu)

	# Creates dialog with a text
	dlg = IupDialog (text);

	# Sets title and size of the dialog and associates a menu to it
	IupSetAttributes (dlg, "TITLE=\"IupSubmenu Example\", SIZE = QUARTERxEIGHTH, MENU = menu");

	IupShowXY (dlg, IUP_CENTER, IUP_CENTER)     # Displays the dialog (at screen center)
	IupMainLoop()                               # Initializes IUP main loop
	IupClose()                                  # And close it when ready

end

end 	# module
