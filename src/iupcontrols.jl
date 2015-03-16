# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iupcontrols.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libiupcontrols_ = "iupcontrols") : (const libiupcontrols_ = "libiupcontrols")  # Name of the shared lib.

const IUP_PRIMARY = -1
const IUP_SECONDARY = -2

function IupControlsOpen()
	ccall((:IupControlsOpen, libiupcontrols_), Cint, (),)
end
function IupControlsClose()
	ccall((:IupControlsClose, libiupcontrols_), Void, (),)
end
function IupColorbar()
	ccall((:IupColorbar, libiupcontrols_), Ptr{Cint}, (),)
end
function IupCells()
	ccall((:IupCells, libiupcontrols_), Ptr{Cint}, (),)
end
function IupColorBrowser()
	ccall((:IupColorBrowser, libiupcontrols_), Ptr{Cint}, (),)
end
function IupGauge()
	ccall((:IupGauge, libiupcontrols_), Ptr{Cint}, (),)
end
function IupDial(orient::String="")
	ccall((:IupDial, libiupcontrols_), Ptr{Ihandle}, (Ptr{Uint8},), orient)
end
function IupMatrix(action::String="")
	ccall((:IupMatrix, libiupcontrols_), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupMatrix(action::Ptr{Void})
	ccall((:IupMatrix, libiupcontrols_), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupMatrixList()
	ccall((:IupMatrixList, libiupcontrols_), Ptr{Ihandle}, (),)
end
# DEPRECATED
function IupMatSetAttribute(ih::Ptr{Int}, name::String, lin::Int, col::Int, value::String)
	ccall((:IupMatSetAttribute, libiupcontrols_), Void, (Ptr{Cint}, Ptr{Uint8}, Cint, Cint, Ptr{Uint8}), ih, name, lin, col, value)
end
function IupMatStoreAttribute(ih::Ptr{Int}, name::String, lin::Int, col::Int, value::String)
	ccall((:IupMatStoreAttribute, libiupcontrols_), Void, (Ptr{Cint}, Ptr{Uint8}, Cint, Cint, Ptr{Uint8}), ih, name, lin, col, value)
end
function IupMatGetAttribute(ih::Ptr{Int}, name::String, lin::Int, col::Int)
	ccall((:IupMatGetAttribute, libiupcontrols_), Ptr{Uint8}, (Ptr{Cint}, Ptr{Uint8}, Cint, Cint), ih, name, lin, col)
end
function IupMatGetInt(ih::Ptr{Int}, name::String, lin::Int, col::Int)
	ccall((:IupMatGetInt, libiupcontrols_), Cint, (Ptr{Cint}, Ptr{Uint8}, Cint, Cint), ih, name, lin, col)
end
function IupMatGetFloat(ih::Ptr{Int}, name::String, lin::Int, col::Int)
	ccall((:IupMatGetFloat, libiupcontrols_), Cfloat, (Ptr{Cint}, Ptr{Uint8}, Cint, Cint), ih, name, lin, col)
end

