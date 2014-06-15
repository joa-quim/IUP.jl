# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/cdiup.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function cdContextIup()
  ccall( (:cdContextIup, iup), Ptr{Cint}, (), )
end

