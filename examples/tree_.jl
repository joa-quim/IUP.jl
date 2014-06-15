module tree_

using IUP

export
	tree

include("../src/libiup_h.jl")

#------------------------example html/examples/C/tree.c ----------------------------------
function tree()
	IupOpen()	#Initializes IUP

	init_tree()								    # Initializes IupTree */
	init_dlg()                                  # Initializes the dialog
	dlg = IupGetHandle("dlg")                   # Retrieves the dialog handle
	IupShowXY (dlg, IUP_CENTER, IUP_CENTER)     # Displays the dialog (at screen center)
	init_tree_atributes()                       # Initializes attributes, can be done here or anywhere */

	IupMainLoop()                               # Initializes IUP main loop
	IupClose()                                  # And close it when ready
end

# Initializes IupTree and registers callbacks */
function init_tree()
	tree = IupTree()

	IupSetCallback(tree, "RENAME_CB", cfunction(rename_cb, Cint, (Ptr{Ihandle}, Cint, Ptr{Uint8})))
	IupSetCallback(tree, "EXECUTELEAF_CB", cfunction(executeleaf_cb, Cint, (Ptr{Ihandle}, Cint)))
	IupSetCallback(tree, "BRANCHCLOSE_CB", cfunction(branchclose_cb, Cint, (Ptr{Ihandle}, Cint)))
	IupSetCallback(tree, "BRANCHOPEN_CB",  cfunction(branchopen_cb,  Cint, (Ptr{Ihandle}, Cint)))
	IupSetCallback(tree, "RIGHTCLICK_CB",  cfunction(rightclick_cb,  Cint, (Ptr{Ihandle}, Cint)))
	IupSetCallback(tree, "DRAGDROP_CB",    cfunction(dragdrop_cb, Cint, (Ptr{Ihandle},Cint,Cint,Cint,Cint)))
	IupSetCallback(tree, "K_ANY",          cfunction(k_any_cb, Cint, (Ptr{Ihandle},Cint)))

	#IupSetAttribute(tree, "FONT","COURIER_NORMAL");
	#IupSetAttribute(tree, "CTRL","YES");
	#IupSetAttribute(tree, "SHIFT","YES");
	#IupSetAttribute(tree, "ADDEXPANDED", "NO");
	IupSetAttribute(tree, "SHOWDRAGDROP", "YES");
	IupSetAttribute(tree, "SHOWRENAME", "YES");

	IupSetHandle("tree",tree)
end

# Initializes the IupTree’s attributes
function init_tree_atributes()
	tree = IupGetHandle("tree")
	IupSetAttribute(tree, "NAME","Figures")
	IupSetAttribute(tree, "ADDBRANCH","3D")
	IupSetAttribute(tree, "ADDBRANCH","2D")
	IupSetAttribute(tree, "ADDLEAF","test")
	IupSetAttribute(tree, "ADDBRANCH1","parallelogram")
	IupSetAttribute(tree, "ADDLEAF2","diamond")
	IupSetAttribute(tree, "ADDLEAF2","square")
	IupSetAttribute(tree, "ADDBRANCH1","triangle")
	IupSetAttribute(tree, "ADDLEAF2","scalenus")
	IupSetAttribute(tree, "ADDLEAF2","isoceles")
	IupSetAttribute(tree, "ADDLEAF2","equilateral")
	IupSetAttribute(tree, "VALUE","6")
end

# Initializes the dialog
function init_dlg()
	tree = IupGetHandle("tree")
	box  = IupVbox(IupHbox(tree, IupButton("test", ""), C_NULL), C_NULL);
	dlg  = IupDialog(box)
	IupSetAttribute(dlg, "TITLE", "IupTree")
	IupSetAttribute(box, "MARGIN", "20x20")
	IupSetHandle("dlg",dlg)
end

function rename_cb(h::Ptr{Ihandle}, id::Cint, name::Ptr{Uint8})
	@printf("rename_cb (%d=%s)\n", id, name)
	if (name == "fool")
		return convert(Cint, IUP_IGNORE)
	end
	return convert(Cint, IUP_DEFAULT)
end

function executeleaf_cb(h::Ptr{Ihandle}, id::Cint)
	@printf("executeleaf_cb (%d)\n", id)
	return convert(Cint, IUP_DEFAULT)
end

function branchopen_cb(h::Ptr{Ihandle}, id::Cint)
	@printf("branchopen_cb (%d)\n", id);
	return convert(Cint, IUP_DEFAULT)
end

function branchclose_cb(h::Ptr{Ihandle}, id::Cint)
	@printf("branchclose_cb (%d)\n", id)
	return convert(Cint, IUP_DEFAULT)
end

function rightclick_cb(h::Ptr{Ihandle}, id::Cint)

	#static char id_string[10];

	popup_menu = IupMenu(
		IupItem ("Add Leaf","addleaf"),
		IupItem ("Add Branch","addbranch"),
		IupItem ("Rename Node","renamenode"),
		IupItem ("Remove Node","removenode"),
			IupSubmenu("Selection", IupMenu(
				IupItem ("ROOT", "selectnode"),
				IupItem ("LAST", "selectnode"),
				IupItem ("PGUP", "selectnode"),
				IupItem ("PGDN", "selectnode"),
				IupItem ("NEXT", "selectnode"),
				IupItem ("PREVIOUS", "selectnode"),
				IupSeparator(),
				IupItem ("INVERT", "selectnode"),
				IupItem ("BLOCK", "selectnode"),
				IupItem ("CLEARALL", "selectnode"),
				IupItem ("MARKALL", "selectnode"),
				IupItem ("INVERTALL", "selectnode"),
				C_NULL)),
	C_NULL);
    
	IupSetFunction("selectnode", cfunction(selectnode, Cint, (Ptr{Ihandle},)))
	IupSetFunction("addleaf",    cfunction(addleaf, Cint, ()))
	IupSetFunction("addbranch",  cfunction(addbranch, Cint, ()))
	IupSetFunction("removenode", cfunction(removenode, Cint, ()))
	IupSetFunction("renamenode", cfunction(renamenode, Cint, ()))

	id_string = @sprintf("%d",id)
	IupSetAttribute(h, "VALUE", id_string)
	IupPopup(popup_menu, IUP_MOUSEPOS, IUP_MOUSEPOS)

	IupDestroy(popup_menu)

	return convert(Cint, IUP_DEFAULT)
end

function selectnode(h::Ptr{Ihandle})
	tree = IupGetHandle("tree")
	IupSetAttribute(tree,"VALUE",bytestring(IupGetAttribute(h, "TITLE")))
	return convert(Cint, IUP_DEFAULT)
end

# Callback called when a node is removed by the menu.
function removenode()
	tree = IupGetHandle("tree")
	IupSetAttribute(tree,"DELNODE","MARKED")
	return convert(Cint, IUP_DEFAULT)
end

# Callback called when a leaf is added by the menu.
function addleaf()
	tree = IupGetHandle("tree")
	id = IupGetInt(tree,"VALUE")
	attr = @sprintf("ADDLEAF%d",id)
	IupSetAttribute(tree,attr,"")
	return convert(Cint, IUP_DEFAULT)
end

# Callback called when a branch is added by the menu
function addbranch()
	tree = IupGetHandle("tree")
	id   = IupGetInt(tree,"VALUE")
	attr = @sprintf("ADDBRANCH%d",id)
	IupSetAttribute(tree,attr,"")
	return convert(Cint, IUP_DEFAULT)
end

# from the menu
function renamenode()
	return convert(Cint, IUP_DEFAULT)
end

function dragdrop_cb(h::Ptr{Ihandle}, drag_id::Cint, drop_id::Cint, isshift::Cint, iscontrol::Cint)
	@printf("dragdrop_cb (%d)->(%d)\n", drag_id, drop_id);
	return convert(Cint, IUP_DEFAULT)
end

# Callback called when a key is hit
function k_any_cb(h::Ptr{Ihandle}, c::Cint)
	if (c == K_DEL) 
		IupSetAttribute(h,"DELNODE","MARKED")
	end
	return convert(Cint, IUP_DEFAULT)
end

end 	# module