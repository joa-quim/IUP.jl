# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iupweb.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IupWebBrowserOpen()
  ccall( (:IupWebBrowserOpen, iup), Cint, (), )
end
function IupWebBrowser()
  ccall( (:IupWebBrowser, iup), Ptr{Cint}, (), )
end

