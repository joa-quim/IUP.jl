# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iupgl.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function IupGLCanvasOpen()
  ccall( (:IupGLCanvasOpen, iup), Void, (), )
end
function IupGLCanvas()
  ccall( (:IupGLCanvas, iup), Ptr{Cint}, (), )
end
function IupGLMakeCurrent(ih::Ptr{Cint})
  ccall( (:IupGLMakeCurrent, iup), Void, (Ptr{Cint},), ih)
end
function IupGLIsCurrent(ih::Ptr{Cint})
  ccall( (:IupGLIsCurrent, iup), Cint, (Ptr{Cint},), ih)
end
function IupGLSwapBuffers(ih::Ptr{Cint})
  ccall( (:IupGLSwapBuffers, iup), Void, (Ptr{Cint},), ih)
end
function IupGLPalette(ih::Ptr{Cint}, index::Cint, r::Cfloat, g::Cfloat, b::Cfloat)
  ccall( (:IupGLPalette, iup), Void, (Ptr{Cint}, Cint, Cfloat, Cfloat, Cfloat), ih, index, r, g, b)
end
function IupGLUseFont(ih::Ptr{Cint}, first::Cint, count::Cint, list_base::Cint)
  ccall( (:IupGLUseFont, iup), Void, (Ptr{Cint}, Cint, Cint, Cint), ih, first, count, list_base)
end
function IupGLWait(gl::Cint)
  ccall( (:IupGLWait, iup), Void, (Cint,), gl)
end

