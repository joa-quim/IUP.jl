# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iupim.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libiupim_ = "iupim") : (const libiupim_ = "libiupim")  # Name of shared lib.

typealias Ihandle Void

function IupLoadImage(file_name::String)
	ccall((:IupLoadImage, libiupim_), Ptr{Ihandle}, (Ptr{Uint8},), file_name)
end
function IupSaveImage(ih::Ptr{Ihandle}, file_name::String, format::String)
	ccall((:IupSaveImage, libiupim_), Cint, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Uint8}), ih, file_name, format)
end

function IupGetNativeHandleImage(handle::Ptr{Void})
	ccall((:IupGetNativeHandleImage, libiupim_), Ptr{imImage}, (Ptr{Void},), handle)
end
function IupGetImageNativeHandle(image::Ptr{imImage})
	ccall((:IupGetImageNativeHandle, libiupim_), Ptr{Void}, (Ptr{imImage},), image)
end
function IupImageFromImImage(image::Ptr{imImage})
	ccall((:IupImageFromImImage, libiupim_), Ptr{Ihandle}, (Ptr{imImage},), image)
end

