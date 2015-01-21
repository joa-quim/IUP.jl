# This file has simple functions that mimic (part of) the behavior of the Matlab functions with the same name
# Figure properties like for example WindowButtonDownFcn() were implemented as functions too.

function guidata(hand::Ptr{Ihandle})
	# Get the handles stored in the Ihandle hand
	handles = unsafe_pointer_to_objref(IupGetAttribute(hand, "handles"))
	return handles
end

# -------------------------------------------------------------------------------
function guidata(hand::Ptr{Ihandle}, handles::Handles)
	# Store the handles in the Ihandle hand
	IupSetAttribute(hand, "handles", pointer_from_objref(handles))
end
#guidata(hand::Ptr{Void}, handles::Handles) = guidata(convert(Ptr{Ihandle}, hand), handles)

# -------------------------------------------------------------------------------
function setappdata(hand::Ptr{Ihandle}, name::String, val)
	# Store the pointer of the whatever in 'val' in a container names 'name'
	IupSetAttribute(hand, name, pointer_from_objref(val))	
end

# -------------------------------------------------------------------------------
function getappdata(hand::Ptr{Ihandle}, name::String)
	# Do the oposite of setappdata
	att = IupGetAttribute(hand, name)
	if (att != C_NULL)
		val = unsafe_pointer_to_objref(att)
	else
		val = []
	end
	return val
end

# -------------------------------------------------------------------------------
function current_point(canvas::Ptr{Ihandle})


end

# -------------------------------------------------------------------------------
function WindowButtonDownFcn(canvas::Ptr{Ihandle}, f::Function)
	# Sets the Button press callback function which is executed whenever a mouse button is pressed
	# The interface for the callback function is described in IUP docs under BUTTON_CB
	# int function(Ihandle* ih, int button, int pressed, int x, int y, char* status); [in C]
	# Warning: the macros that make use of the status variable are not yet implemented
	IupSetCallback(canvas, "BUTTON_CB", cfunction(f, Int, (Ptr{Ihandle}, Char, Cint, Cint, Cint, Ptr{Uint8})))
end

# -------------------------------------------------------------------------------
function WindowButtonMotionFcn(canvas::Ptr{Ihandle}, f::Function)
	# Sets the Mouse motion callback function
	# The interface for the callback function is described in IUP docs under MOTION_CB
	# int function(Ihandle *ih, int x, int y, char *status); [in C]
	# Warning: the macros that make use of the status variable are not yet implemented
	IupSetCallback(canvas, "MOTION_CB", cfunction(f, Int, (Ptr{Ihandle}, Cint, Cint, Ptr{Uint8})))
end
