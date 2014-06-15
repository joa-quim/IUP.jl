# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iupim.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libiupim_ = "iupim") : (const libiupim_ = "libiupim")  # Name of shared lib.


function IupLoadImage()
	ccall((:IupLoadImage, libiupim_), Ptr{Cint}, (), )
end
function IupSaveImage(ih::Ptr{Cint}, file_name::String, format::String)
	ccall((:IupSaveImage, libiupim_), Cint, (Ptr{Cint}, Ptr{Uint8}, Ptr{Uint8}), ih, file_name, format)
end
