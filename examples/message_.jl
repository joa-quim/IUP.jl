# IupMessage Example

module message_

using IUP

export
	message

#include("libiup_h.jl")

#------------------------example html/examples/C/message.c ----------------------------------
function message()
	IupOpen()	 #Initializes IUP

	# Executes IupMessage
	IupMessage("IupMessage Example", "Press the button")

	IupClose()   # And close it when ready
end

end 	# module