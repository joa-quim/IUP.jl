#=
  IupGetAttribute/Int/Float: Example
  
  Uses IupGetAttribute/IupGetInt and IupGetFloat to print a number entered by the user.
  The printing will occur when the user exits the program. The number will be printed as an integer,
  a floating point and a text.
=#

module getattribute_

using IUP

export
	getattribute

include("../src/libiup_h.jl")

#------------------------example html/examples/C/getattribute.c ----------------------------------
function getattribute()
	IupOpen()                   # Initializes IUP

	field = IupText("")                                         # creates TEXT field
	IupSetCallback(field, "ACTION", cfunction(number_action, Int, (Ptr{Ihandle}, Cint)))   # registers callback
	IupSetCallback(field, "K_ANY", cfunction(k_any, Int, (Ptr{Ihandle}, Cint)))            # registers callback
  
	IupSetAttribute(field, "VALUE", "1.0")                      # defines initial value

	message = IupLabel("Please, type any number: ")             # creates message
	prompt = IupHbox(message, field)                            # creates prompt

	dlg = IupDialog(prompt)
	IupShow(dlg)                  # displays and creates dialog
	IupMainLoop()                 # interacts with user

	@printf("Integer number: %d\n", IupGetInt(field, "VALUE"))       # prints the integer number entered by the user
	@printf("Real number...: %f\n", IupGetFloat(field, "VALUE"))     # prints the real number entered by the user
	@printf("Text entered..: %s\n", bytestring(IupGetAttribute(field, "VALUE"))) # prints the text entered by the user

	IupClose()                                  # And close it when ready
end

function k_any(self::Ptr{Ihandle}, c::Cint)
	if (c == K_CR)
		return IUP_CLOSE
	end
	return IUP_CONTINUE
end

function number_action (self::Ptr{Ihandle}, c::Cint)
	caracteres_validos = "0123456789.+-Ee"

	if ((search(caracteres_validos, char(c))) > 0)     # c is a valid character
		return IUP_DEFAULT
	elseif (iscntrl(char(c)))                          # c is a control character (TAB, BACKSPACE, ...)
		return IUP_DEFAULT
	end

	return IUP_IGNORE
end

end 	# module