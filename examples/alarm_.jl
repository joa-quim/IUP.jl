module alarm_

using IUP

export
	alarm

include("../src/libiup_h.jl")

# example html/examples/C/alarm.c
function alarm()
	IupOpen()
	r = IupAlarm("IupAlarm Example", "File not saved! Save it now?", "Yes", "No", "Cancel")
	if (r == 1)
		IupMessage("Save file", "File saved successfully - leaving program")
	elseif (r == 2)
		IupMessage ("Save file", "File not saved - leaving program anyway")
	elseif (r == 3)
		IupMessage ("Save file", "Operation canceled")
	end
	IupClose()
end

end 	# module