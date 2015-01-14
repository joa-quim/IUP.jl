
module gridbox_

using IUP

export
	gridbox

include("../src/libiup_h.jl")

#------------------------example html/examples/C/gridbox.c ----------------------------------
function gridbox()
	IupOpen()	            #Initializes IUP
	GridBoxTest()
	IupMainLoop()           # Initializes IUP main loop
	IupClose()              # And close it when ready
end

# ------------------------------------------------------------------------------------------
function GridBoxTest()

	gbox = IupGridBox(
		IupSetAttributes(IupLabel(""), ""),
		IupSetAttributes(IupLabel("col1"), "FONTSTYLE=Bold"),
		IupSetAttributes(IupLabel("col2"), "FONTSTYLE=Bold"),

		IupSetAttributes(IupLabel("lin1"), "FONTSTYLE=Bold"),
		IupSetAttributes(IupLabel("lbl"), "XSIZE=50x12"),
		IupSetAttributes(IupButton("but"), "XSIZE=50"),

		IupSetAttributes(IupLabel("lin2"), "FONTSTYLE=Bold"),
		IupSetAttributes(IupLabel("label"), "XSIZE=x12"),
		IupSetAttributes(IupButton("button"), "XEXPAND=Horizontal"),

		IupSetAttributes(IupLabel("lin3"), "FONTSTYLE=Bold"),
		IupSetAttributes(IupLabel("label large"), "XSIZE=x12"),
		IupSetAttributes(IupButton("button large"), "")
	)
	fr1 = IupFrame(gbox)

	IupSetAttribute(gbox, "SIZECOL", "2")
	IupSetAttribute(gbox, "SIZELIN", "3")
	#IupSetAttribute(gbox, "HOMOGENEOUSLIN", "Yes");
	#IupSetAttribute(gbox, "HOMOGENEOUSCOL", "Yes");
	#IupSetAttribute(gbox, "EXPANDCHILDREN", "HORIZONTAL");
	#IupSetAttribute(gbox, "NORMALIZESIZE", "BOTH");
	#IupSetAttribute(gbox, "NORMALIZESIZE", "HORIZONTAL");

	IupSetAttribute(gbox, "NUMDIV", "3")
	#IupSetAttribute(gbox, "ORIENTATION", "VERTICAL")
	#IupSetAttribute(gbox, "NUMDIV", "2")
	#IupSetAttribute(gbox, "NUMDIV", "AUTO")

	IupSetAttribute(gbox, "ALIGNMENTLIN", "ACENTER")
	IupSetAttribute(gbox, "MARGIN", "10x10")
	IupSetAttribute(gbox, "GAPLIN", "5")
	IupSetAttribute(gbox, "GAPCOL", "5")

	dlg = IupDialog(IupHbox(fr1))

	IupSetAttribute(dlg, "TITLE", "IupGridBox Test")
	IupSetAttribute(dlg, "MARGIN", "10x10")
	IupSetAttribute(fr1, "MARGIN", "0x0")       # avoid attribute propagation */

	IupShowXY(dlg, IUP_CENTER, IUP_CENTER)      # Shows dlg in the center of the screen
end

end 	# module