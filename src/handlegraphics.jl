# This file has simple functions that mimic (part of) the behavior of the Matlab functions with the same name
# Figure properties like for example WindowButtonDownFcn() were implemented as functions too.

include("libiup_h.jl")
include("libiup.jl")

type Handles
	figure1::Ptr{Ihandle}
	iup_canvas::Ptr{Ihandle}
	cd_canvas::Ptr{cdCanvas}	# cdCanvas is a composite type
end

### Garbage collection [prevention]
const gc_preserve = ObjectIdDict() # reference counted closures
function gc_ref(x::ANY)
	global gc_preserve
	#isbits(x) && error("can't gc-preserve an isbits object")
	gc_preserve[x] = (get(gc_preserve, x, 0)::Int)+1
	x
end
function gc_unref(x::ANY)
	global gc_preserve
	#@assert !isbits(x)
	count = get(gc_preserve, x, 0)::Int-1
	if count <= 0
		delete!(gc_preserve, x)
	end
	nothing
end

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

# -------------------------------------------------------------------------------
function KeyPressFcn(canvas::Ptr{Ihandle}, f::Function)
	# Sets the Key press callback function, which is invoked when a key is pressed or released.
	# The interface for the callback function is described in IUP docs under KEYPRESS_CB
	# int function(Ihandle *ih, int c, int press); [in C]
	IupSetCallback(canvas, "KEYPRESS_CB", cfunction(f, Int, (Ptr{Ihandle}, Char, Cint)))
end

# -------------------------------------------------------------------------------
function set_current_point(canvas::Ptr{Ihandle}, pt)
	# Stores the coordinates of the last clicked point in the canva's "CurrentPoint" attribute.
	# ATTENTION: this function MUST be called from inside the WindowButtonDownFcn() callback function
	setappdata(canvas, "CurrentPoint", pt)
end

# -------------------------------------------------------------------------------
function get_current_point(canvas::Ptr{Ihandle})
	# Get the location of last button clicked.
	# In Matlab the corresponding property depends if it refers to a Figure, case in which
	# it returns a two elements vector with [x-coordinate, y-coordinate], or an Axes object,
	# the output is a 2x3 matrix with [xfront yfront zfront; xback yback zback].
	# For the time being here we are only returning teh 1x2 Array version ... or empty is prop not set
	# MANDATORY: for this to work it is crutial that the WindowButtonDownFcn() callback function
	# is set and calls the set_current_point() function (which sets the appropriate attribute)
	cpt = getappdata(canvas, "CurrentPoint")
	return cpt
end

# -------------------------------------------------------------------------------
function set_current_character(canvas::Ptr{Ihandle}, s::Char)
	# PROBABLY, NOT FINISHED
	setappdata(canvas, "CurrentCharacter", s)
end

# -------------------------------------------------------------------------------
function get_current_character(canvas::Ptr{Ihandle})
	# Get the last key pressed. We store this info as an attribute in the canvas handle. 
	# MANDATORY: for this to work it is crutial that the WindowButtonDownFcn() callback function
	# is set and calls the set_current_character() function (which sets the appropriate attribute)
	cc = getappdata(canvas, "CurrentCharacter")
	return cc
end

# -------------------------------------------------------------------------------
function isnada(x::Any)
	# Replacement for isempty that works for any type
	empty = false
	try
		isempty(x)
		empty = true
	catch
		empty = false
	end
	return empty
end