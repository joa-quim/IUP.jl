# IupGetParam: Example
#  Shows a dialog with all the possible fields. 

module getparam_

using IUP

export
	getparam

include("../src/libiup_h.jl")
include("../src/iupcontrols.jl")

#------------------------example html/examples/C/getparam.c ----------------------------------
function getparam()

	pboolean::Cint = 1
	pinteger::Cint = 3456
	preal::Float32 = 3.543
	pinteger2::Cint = 192
	preal2::Float32 = 0.5
	pangle::Float32 = 90
	pstring = "string text"
	pcolor = "255 0 128"
	plist::Cint = 2
	pstring2 = "second text\nsecond line"
	pfile_name = "test.jpg"

	IupOpen()                       #Initializes IUP
	IupControlsOpen()   			# so we can show the IupDial, but can be tested without it
	IupSetLanguage("ENGLISH")

	if (IupGetParam("Title", param_action, 0,
	               "Boolean: %b[No,Yes]{Boolean Tip}\n
	               Integer: %i{Integer Tip}\n
	               Real 1: %r{Real Tip}\n
	               Sep1 %t\n
	               Integer: %i[0,255]{Integer Tip 2}\n
	               Real 2: %r[-1.5,1.5]{Real Tip 2}\n
	               Sep2 %t\n
	               Angle: %a[0,360]{Angle Tip}\n
	               String: %s{String Tip}\n
	               List: %l|item1|item2|item3|{List Tip}\n
	               File: %f[OPEN|*.bmp;*.jpg|CURRENT|NO|NO]{File Tip}\n
	               Color: %c{Color Tip}\n
	               Sep3 %t\n
	               Multiline: %m{Multiline Tip}\n",
	               pointer(pboolean), pointer(pinteger), pointer(preal), pointer(pinteger2), pointer(preal2),
	               pointer(pangle), pstring, pointer(plist), pfile_name, pcolor, pstring2, C_NULL) != 0)
		return IUP_DEFAULT
	end

	IupMessagef("IupGetParam",
	          "Boolean Value: %d\n
	          Integer: %d\n
	          Real 1: %g\n
	          Integer: %d\n
	          Real 2: %g\n
	          Angle: %g\n
	          String: %s\n
	          List Index: %d\n 
	          FileName: %s\n
	          Color: %s\n
	          Multiline: %s",
	          pboolean, pinteger, float64(preal), pinteger2, float64(preal2), float64(pangle),
	          pstring, plist, pfile_name, pcolor, pstring2)
 
	IupClose()                                  # And close it when ready
end

function param_action(dialog::Ptr{Ihandle}, param_index::Int, user_data::Ptr{None})
	if (param_index == IUP_GETPARAM_OK)
		@printf("OK\n")
	elseif (param_index == IUP_GETPARAM_INIT)
		@printf("Map\n")
	elseif (param_index == IUP_GETPARAM_CANCEL)
		@printf("Cancel\n")
	elseif (param_index == IUP_GETPARAM_HELP)
		@printf("Help\n")
	else
		param_str = sprintf("PARAM%d", param_index)
		param = convert(Ptr{Ihandle}, IupGetAttribute(dialog, param_str))
		@printf("%s = %s\n", param_str, IupGetAttribute(param, "VALUE"))
	end
	return 1
end

end 	# module