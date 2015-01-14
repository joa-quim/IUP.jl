module frame_

export
	frame

include("../src/libiup_h.jl")

using IUP

#------------------------example html/examples/C/frame.c ----------------------------------
# IupFrame Example
# Draws a frame around a button. Note that "FGCOLOR" is added to the frame but it is inherited by the button.

function frame()
	IupOpen()	#Initializes IUP

	# Creates frame with a label
	thisframe = IupFrame(
				IupHbox(IupFill(),
					IupLabel ("IupFrame Attributes:\nFGCOLOR = \"255 0 0\"\nSIZE = \"EIGHTHxEIGHTH\"\nTITLE = \"This is the frame\"\nMARGIN = \"10x10\""),
					IupFill(),
 				)
			)

	# Sets frame's attributes
	IupSetAttributes(thisframe, "FGCOLOR=\"255 0 0\", SIZE=EIGHTHxEIGHTH, TITLE=\"This is the frame\", MARGIN=10x10")

	# Creates dialog
	dialog = IupDialog(thisframe)

	# Sets dialog's title
	IupSetAttribute(dialog, "TITLE", "IupFrame")

	IupShow(dialog)                          # Shows dialog in the center of the screen */
	IupMainLoop()                            # Initializes IUP main loop
	IupClose()                               # And close it when ready
end

end 	# module