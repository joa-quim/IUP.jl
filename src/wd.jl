# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/wd.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@static is_windows()? (const libwd_ = "cd") : (const libwd_ = "libcd")  # Name of IUP shared lib.

# These used to be in wd_h.jl (meanwhile removed)
const wdVectorTextTransform = cdVectorTextTransform
const wdActivate = cdActivate
# Skipping MacroDefinition: wdClip(mode)cdClip(mode)
# Skipping MacroDefinition: wdBegin(mode)cdBegin(mode)
# Skipping MacroDefinition: wdEnd()cdEnd();
# Skipping MacroDefinition: wdMM2Pixel(mm_dx,mm_dy,dx,dy)cdMM2Pixel(mm_dx,mm_dy,dx,dy)
# Skipping MacroDefinition: wdPixel2MM(dx,dy,mm_dx,mm_dy)cdPixel2MM(dx,dy,mm_dx,mm_dy)

function wdCanvasWindow(canvas::Ptr{cdCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdCanvasWindow, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasGetWindow(canvas::Ptr{cdCanvas}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetWindow, libwd_), Void, (Ptr{cdCanvas}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasViewport(canvas::Ptr{cdCanvas}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdCanvasViewport, libwd_), Void, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasGetViewport(canvas::Ptr{cdCanvas}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:wdCanvasGetViewport, libwd_), Void, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasWorld2Canvas(canvas::Ptr{cdCanvas}, xw::Cdouble, yw::Cdouble, xv::Ptr{Cint}, yv::Ptr{Cint})
  ccall( (:wdCanvasWorld2Canvas, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), canvas, xw, yw, xv, yv)
end
function wdCanvasWorld2CanvasSize(canvas::Ptr{cdCanvas}, hw::Cdouble, vw::Cdouble, hv::Ptr{Cint}, vv::Ptr{Cint})
  ccall( (:wdCanvasWorld2CanvasSize, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), canvas, hw, vw, hv, vv)
end
function wdCanvasCanvas2World(canvas::Ptr{cdCanvas}, xv::Integer, yv::Integer, xw::Ptr{Cdouble}, yw::Ptr{Cdouble})
  ccall( (:wdCanvasCanvas2World, libwd_), Void, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xv, yv, xw, yw)
end
function wdCanvasSetTransform(canvas::Ptr{cdCanvas}, sx::Cdouble, sy::Cdouble, tx::Cdouble, ty::Cdouble)
  ccall( (:wdCanvasSetTransform, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, sx, sy, tx, ty)
end
function wdCanvasGetTransform(canvas::Ptr{cdCanvas}, sx::Ptr{Cdouble}, sy::Ptr{Cdouble}, tx::Ptr{Cdouble}, ty::Ptr{Cdouble})
  ccall( (:wdCanvasGetTransform, libwd_), Void, (Ptr{cdCanvas}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, sx, sy, tx, ty)
end
function wdCanvasTranslate(canvas::Ptr{cdCanvas}, dtx::Cdouble, dty::Cdouble)
  ccall( (:wdCanvasTranslate, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, dtx, dty)
end
function wdCanvasScale(canvas::Ptr{cdCanvas}, dsx::Cdouble, dsy::Cdouble)
  ccall( (:wdCanvasScale, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, dsx, dsy)
end
function wdCanvasClipArea(canvas::Ptr{cdCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdCanvasClipArea, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasGetClipArea(canvas::Ptr{cdCanvas}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetClipArea, libwd_), Cint, (Ptr{cdCanvas}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasIsPointInRegion(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble)
  ccall( (:wdCanvasIsPointInRegion, libwd_), Cint, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, x, y)
end
function wdCanvasOffsetRegion(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble)
  ccall( (:wdCanvasOffsetRegion, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, x, y)
end
function wdCanvasGetRegionBox(canvas::Ptr{cdCanvas}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetRegionBox, libwd_), Void, (Ptr{cdCanvas}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasHardcopy(canvas::Ptr{cdCanvas}, ctx::Ptr{Cint}, data::Ptr{Void}, draw_func::Ptr{Void})
  ccall( (:wdCanvasHardcopy, libwd_), Void, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Void}, Ptr{Void}), canvas, ctx, data, draw_func)
end
function wdCanvasPixel(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, color::Clong)
  ccall( (:wdCanvasPixel, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Clong), canvas, x, y, color)
end
function wdCanvasMark(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble)
  ccall( (:wdCanvasMark, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, x, y)
end
function wdCanvasLine(canvas::Ptr{cdCanvas}, x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:wdCanvasLine, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, x1, y1, x2, y2)
end
function wdCanvasVertex(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble)
  ccall( (:wdCanvasVertex, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, x, y)
end
function wdCanvasRect(canvas::Ptr{cdCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdCanvasRect, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasBox(canvas::Ptr{cdCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdCanvasBox, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasArc(canvas::Ptr{cdCanvas}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdCanvasArc, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function wdCanvasSector(canvas::Ptr{cdCanvas}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdCanvasSector, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function wdCanvasChord(canvas::Ptr{cdCanvas}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdCanvasChord, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function wdCanvasText(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::String)
  ccall( (:wdCanvasText, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{UInt8}), canvas, x, y, s)
end
function wdCanvasPutImageRect(canvas::Ptr{cdCanvas}, image::Ptr{Cint}, x::Cdouble, y::Cdouble, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdCanvasPutImageRect, libwd_), Void, (Ptr{cdCanvas}, Ptr{Cint}, Cdouble, Cdouble, Cint, Cint, Cint, Cint), canvas, image, x, y, xmin, xmax, ymin, ymax)
end
function wdCanvasPutImageRectRGB(canvas::Ptr{cdCanvas}, iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdCanvasPutImageRectRGB, libwd_), Void, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdCanvasPutImageRectRGBA(canvas::Ptr{cdCanvas}, iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdCanvasPutImageRectRGBA, libwd_), Void, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdCanvasPutImageRectMap(canvas::Ptr{cdCanvas}, iw::Integer, ih::Integer, index::Ptr{Cuchar}, colors::Ptr{Clong}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdCanvasPutImageRectMap, libwd_), Void, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Clong}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), canvas, iw, ih, index, colors, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdCanvasPutBitmap(canvas::Ptr{cdCanvas}, bitmap::Ptr{Cint}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble)
  ccall( (:wdCanvasPutBitmap, libwd_), Void, (Ptr{cdCanvas}, Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, bitmap, x, y, w, h)
end
function wdCanvasLineWidth(canvas::Ptr{cdCanvas}, width::Cdouble)
  ccall( (:wdCanvasLineWidth, libwd_), Cdouble, (Ptr{cdCanvas}, Cdouble), canvas, width)
end
function wdCanvasFont(canvas::Ptr{cdCanvas}, type_face::String, style::Integer, size::Cdouble)
  ccall( (:wdCanvasFont, libwd_), Cint, (Ptr{cdCanvas}, Ptr{UInt8}, Cint, Cdouble), canvas, type_face, style, size)
end
function wdCanvasGetFont(canvas::Ptr{cdCanvas}, type_face::String, style::Ptr{Cint}, size::Ptr{Cdouble})
  ccall( (:wdCanvasGetFont, libwd_), Void, (Ptr{cdCanvas}, Ptr{UInt8}, Ptr{Cint}, Ptr{Cdouble}), canvas, type_face, style, size)
end
function wdCanvasMarkSize(canvas::Ptr{cdCanvas}, size::Cdouble)
  ccall( (:wdCanvasMarkSize, libwd_), Cdouble, (Ptr{cdCanvas}, Cdouble), canvas, size)
end
function wdCanvasGetFontDim(canvas::Ptr{cdCanvas}, max_width::Ptr{Cdouble}, height::Ptr{Cdouble}, ascent::Ptr{Cdouble}, descent::Ptr{Cdouble})
  ccall( (:wdCanvasGetFontDim, libwd_), Void, (Ptr{cdCanvas}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, max_width, height, ascent, descent)
end
function wdCanvasGetTextSize(canvas::Ptr{cdCanvas}, s::String, width::Ptr{Cdouble}, height::Ptr{Cdouble})
  ccall( (:wdCanvasGetTextSize, libwd_), Void, (Ptr{cdCanvas}, Ptr{UInt8}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, s, width, height)
end
function wdCanvasGetTextBox(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::String, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetTextBox, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{UInt8}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, x, y, s, xmin, xmax, ymin, ymax)
end
function wdCanvasGetTextBounds(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::String, rect::Ptr{Cdouble})
  ccall( (:wdCanvasGetTextBounds, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{UInt8}, Ptr{Cdouble}), canvas, x, y, s, rect)
end
function wdCanvasStipple(canvas::Ptr{cdCanvas}, w::Integer, h::Integer, fgbg::Ptr{Cuchar}, w_mm::Cdouble, h_mm::Cdouble)
  ccall( (:wdCanvasStipple, libwd_), Void, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Cdouble, Cdouble), canvas, w, h, fgbg, w_mm, h_mm)
end
function wdCanvasPattern(canvas::Ptr{cdCanvas}, w::Integer, h::Integer, color::Ptr{Clong}, w_mm::Cdouble, h_mm::Cdouble)
  ccall( (:wdCanvasPattern, libwd_), Void, (Ptr{cdCanvas}, Cint, Cint, Ptr{Clong}, Cdouble, Cdouble), canvas, w, h, color, w_mm, h_mm)
end
function wdCanvasVectorTextDirection(canvas::Ptr{cdCanvas}, x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:wdCanvasVectorTextDirection, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, x1, y1, x2, y2)
end
function wdCanvasVectorTextSize(canvas::Ptr{cdCanvas}, size_x::Cdouble, size_y::Cdouble, s::String)
  ccall( (:wdCanvasVectorTextSize, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{UInt8}), canvas, size_x, size_y, s)
end
function wdCanvasGetVectorTextSize(canvas::Ptr{cdCanvas}, s::String, x::Ptr{Cdouble}, y::Ptr{Cdouble})
  ccall( (:wdCanvasGetVectorTextSize, libwd_), Void, (Ptr{cdCanvas}, Ptr{UInt8}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, s, x, y)
end
function wdCanvasVectorCharSize(canvas::Ptr{cdCanvas}, size::Cdouble)
  ccall( (:wdCanvasVectorCharSize, libwd_), Cdouble, (Ptr{cdCanvas}, Cdouble), canvas, size)
end
function wdCanvasVectorText(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::String)
  ccall( (:wdCanvasVectorText, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{UInt8}), canvas, x, y, s)
end
function wdCanvasMultiLineVectorText(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::String)
  ccall( (:wdCanvasMultiLineVectorText, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{UInt8}), canvas, x, y, s)
end
function wdCanvasGetVectorTextBounds(canvas::Ptr{cdCanvas}, s::String, x::Cdouble, y::Cdouble, rect::Ptr{Cdouble})
  ccall( (:wdCanvasGetVectorTextBounds, libwd_), Void, (Ptr{cdCanvas}, Ptr{UInt8}, Cdouble, Cdouble, Ptr{Cdouble}), canvas, s, x, y, rect)
end
function wdCanvasGetVectorTextBox(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::String, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetVectorTextBox, libwd_), Void, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{UInt8}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, x, y, s, xmin, xmax, ymin, ymax)
end
function wdWindow(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdWindow, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble), xmin, xmax, ymin, ymax)
end
function wdGetWindow(xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdGetWindow, libwd_), Void, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), xmin, xmax, ymin, ymax)
end
function wdViewport(xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdViewport, libwd_), Void, (Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax)
end
function wdGetViewport(xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:wdGetViewport, libwd_), Void, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xmin, xmax, ymin, ymax)
end
function wdWorld2Canvas(xw::Cdouble, yw::Cdouble, xv::Ptr{Cint}, yv::Ptr{Cint})
  ccall( (:wdWorld2Canvas, libwd_), Void, (Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), xw, yw, xv, yv)
end
function wdWorld2CanvasSize(hw::Cdouble, vw::Cdouble, hv::Ptr{Cint}, vv::Ptr{Cint})
  ccall( (:wdWorld2CanvasSize, libwd_), Void, (Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), hw, vw, hv, vv)
end
function wdCanvas2World(xv::Integer, yv::Integer, xw::Ptr{Cdouble}, yw::Ptr{Cdouble})
  ccall( (:wdCanvas2World, libwd_), Void, (Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), xv, yv, xw, yw)
end
function wdClipArea(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdClipArea, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble), xmin, xmax, ymin, ymax)
end
function wdGetClipArea(xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdGetClipArea, libwd_), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), xmin, xmax, ymin, ymax)
end
function wdGetClipPoly(n::Ptr{Cint})
  ccall( (:wdGetClipPoly, libwd_), Ptr{Cdouble}, (Ptr{Cint},), n)
end
function wdPointInRegion(x::Cdouble, y::Cdouble)
  ccall( (:wdPointInRegion, libwd_), Cint, (Cdouble, Cdouble), x, y)
end
function wdOffsetRegion(x::Cdouble, y::Cdouble)
  ccall( (:wdOffsetRegion, libwd_), Void, (Cdouble, Cdouble), x, y)
end
function wdRegionBox(xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdRegionBox, libwd_), Void, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), xmin, xmax, ymin, ymax)
end
function wdHardcopy(ctx::Ptr{Cint}, data::Ptr{Void}, cnv::Ptr{Cint}, draw_func::Ptr{Void})
  ccall( (:wdHardcopy, libwd_), Void, (Ptr{Cint}, Ptr{Void}, Ptr{Cint}, Ptr{Void}), ctx, data, cnv, draw_func)
end
function wdPixel(x::Cdouble, y::Cdouble, color::Clong)
  ccall( (:wdPixel, libwd_), Void, (Cdouble, Cdouble, Clong), x, y, color)
end
function wdMark(x::Cdouble, y::Cdouble)
  ccall( (:wdMark, libwd_), Void, (Cdouble, Cdouble), x, y)
end
function wdLine(x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:wdLine, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble), x1, y1, x2, y2)
end
function wdVertex(x::Cdouble, y::Cdouble)
  ccall( (:wdVertex, libwd_), Void, (Cdouble, Cdouble), x, y)
end
function wdRect(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdRect, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble), xmin, xmax, ymin, ymax)
end
function wdBox(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdBox, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble), xmin, xmax, ymin, ymax)
end
function wdArc(xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdArc, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function wdSector(xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdSector, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function wdChord(xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdChord, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function wdText(x::Cdouble, y::Cdouble, s::String)
  ccall( (:wdText, libwd_), Void, (Cdouble, Cdouble, Ptr{UInt8}), x, y, s)
end
function wdPutImageRect(image::Ptr{Cint}, x::Cdouble, y::Cdouble, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdPutImageRect, libwd_), Void, (Ptr{Cint}, Cdouble, Cdouble, Cint, Cint, Cint, Cint), image, x, y, xmin, xmax, ymin, ymax)
end
function wdPutImageRectRGB(iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdPutImageRectRGB, libwd_), Void, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdPutImageRectRGBA(iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdPutImageRectRGBA, libwd_), Void, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdPutImageRectMap(iw::Integer, ih::Integer, index::Ptr{Cuchar}, colors::Ptr{Clong}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:wdPutImageRectMap, libwd_), Void, (Cint, Cint, Ptr{Cuchar}, Ptr{Clong}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), iw, ih, index, colors, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdPutBitmap(bitmap::Ptr{Cint}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble)
  ccall( (:wdPutBitmap, libwd_), Void, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), bitmap, x, y, w, h)
end
function wdLineWidth(width::Cdouble)
  ccall( (:wdLineWidth, libwd_), Cdouble, (Cdouble,), width)
end
function wdFont(type_face::Integer, style::Integer, size::Cdouble)
  ccall( (:wdFont, libwd_), Void, (Cint, Cint, Cdouble), type_face, style, size)
end
function wdGetFont(type_face::Ptr{Cint}, style::Ptr{Cint}, size::Ptr{Cdouble})
  ccall( (:wdGetFont, libwd_), Void, (Ptr{Cint}, Ptr{Cint}, Ptr{Cdouble}), type_face, style, size)
end
function wdMarkSize(size::Cdouble)
  ccall( (:wdMarkSize, libwd_), Cdouble, (Cdouble,), size)
end
function wdFontDim(max_width::Ptr{Cdouble}, height::Ptr{Cdouble}, ascent::Ptr{Cdouble}, descent::Ptr{Cdouble})
  ccall( (:wdFontDim, libwd_), Void, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), max_width, height, ascent, descent)
end
function wdTextSize(s::String, width::Ptr{Cdouble}, height::Ptr{Cdouble})
  ccall( (:wdTextSize, libwd_), Void, (Ptr{UInt8}, Ptr{Cdouble}, Ptr{Cdouble}), s, width, height)
end
function wdTextBox(x::Cdouble, y::Cdouble, s::String, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdTextBox, libwd_), Void, (Cdouble, Cdouble, Ptr{UInt8}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), x, y, s, xmin, xmax, ymin, ymax)
end
function wdTextBounds(x::Cdouble, y::Cdouble, s::String, rect::Ptr{Cdouble})
  ccall( (:wdTextBounds, libwd_), Void, (Cdouble, Cdouble, Ptr{UInt8}, Ptr{Cdouble}), x, y, s, rect)
end
function wdStipple(w::Integer, h::Integer, stipple::Ptr{Cuchar}, w_mm::Cdouble, h_mm::Cdouble)
  ccall( (:wdStipple, libwd_), Void, (Cint, Cint, Ptr{Cuchar}, Cdouble, Cdouble), w, h, stipple, w_mm, h_mm)
end
function wdPattern(w::Integer, h::Integer, pattern::Ptr{Clong}, w_mm::Cdouble, h_mm::Cdouble)
  ccall( (:wdPattern, libwd_), Void, (Cint, Cint, Ptr{Clong}, Cdouble, Cdouble), w, h, pattern, w_mm, h_mm)
end
function wdVectorTextDirection(x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:wdVectorTextDirection, libwd_), Void, (Cdouble, Cdouble, Cdouble, Cdouble), x1, y1, x2, y2)
end
function wdVectorTextSize(size_x::Cdouble, size_y::Cdouble, s::String)
  ccall( (:wdVectorTextSize, libwd_), Void, (Cdouble, Cdouble, Ptr{UInt8}), size_x, size_y, s)
end
function wdGetVectorTextSize(s::String, x::Ptr{Cdouble}, y::Ptr{Cdouble})
  ccall( (:wdGetVectorTextSize, libwd_), Void, (Ptr{UInt8}, Ptr{Cdouble}, Ptr{Cdouble}), s, x, y)
end
function wdVectorCharSize(size::Cdouble)
  ccall( (:wdVectorCharSize, libwd_), Cdouble, (Cdouble,), size)
end
function wdVectorText(x::Cdouble, y::Cdouble, s::String)
  ccall( (:wdVectorText, libwd_), Void, (Cdouble, Cdouble, Ptr{UInt8}), x, y, s)
end
function wdMultiLineVectorText(x::Cdouble, y::Cdouble, s::String)
  ccall( (:wdMultiLineVectorText, libwd_), Void, (Cdouble, Cdouble, Ptr{UInt8}), x, y, s)
end
function wdGetVectorTextBounds(s::String, x::Cdouble, y::Cdouble, rect::Ptr{Cdouble})
  ccall( (:wdGetVectorTextBounds, libwd_), Void, (Ptr{UInt8}, Cdouble, Cdouble, Ptr{Cdouble}), s, x, y, rect)
end
