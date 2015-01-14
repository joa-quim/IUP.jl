module backgroundbox_

using IUP

export
	backgroundbox

include("../src/libiup_h.jl")

# example html/examples/C/IupBackgroundBox.c
function backgroundbox()
	IupOpen()
	# Creates a backgroundbox
	btn = IupBackgroundBox(IupVbox(IupButton("This button does nothing"), IupText(), C_NULL))

	# Creates dialog
	dlg = IupDialog(IupVbox (btn, C_NULL));

	IupSetAttributes(dlg, "MARGIN=10x10, GAP=10, TITLE = \"IupBackgroundBox Example\"");
	IupShowXY(dlg, IUP_CENTER, IUP_CENTER)
	IupMainLoop();

	IupClose()
end

end 	# module