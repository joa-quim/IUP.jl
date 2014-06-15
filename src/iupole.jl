# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iupole.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IupOleControl()
  ccall( (:IupOleControl, iup), Ptr{Cint}, (), )
end
function IupOleControlOpen()
  ccall( (:IupOleControlOpen, iup), Cint, (), )
end

