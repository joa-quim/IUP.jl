# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iup_scintilla.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IupScintillaOpen()
  ccall( (:IupScintillaOpen, iup), None, (), )
end
function IupScintilla()
  ccall( (:IupScintilla, iup), Ptr{Cint}, (), )
end

