# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iuptuio.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IupTuioOpen()
  ccall( (:IupTuioOpen, iup), Cint, (), )
end
function IupTuioClient()
  ccall( (:IupTuioClient, iup), Ptr{Cint}, (), )
end

