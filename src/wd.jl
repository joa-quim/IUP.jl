# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/wd.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

function wdCanvasWindow(canvas::Ptr{Cint}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdCanvasWindow, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasGetWindow(canvas::Ptr{Cint}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetWindow, iup), None, (Ptr{Cint}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasViewport(canvas::Ptr{Cint}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdCanvasViewport, iup), None, (Ptr{Cint}, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasGetViewport(canvas::Ptr{Cint}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:wdCanvasGetViewport, iup), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasWorld2Canvas(canvas::Ptr{Cint}, xw::Cdouble, yw::Cdouble, xv::Ptr{Cint}, yv::Ptr{Cint})
  ccall( (:wdCanvasWorld2Canvas, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), canvas, xw, yw, xv, yv)
end
function wdCanvasWorld2CanvasSize(canvas::Ptr{Cint}, hw::Cdouble, vw::Cdouble, hv::Ptr{Cint}, vv::Ptr{Cint})
  ccall( (:wdCanvasWorld2CanvasSize, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), canvas, hw, vw, hv, vv)
end
function wdCanvasCanvas2World(canvas::Ptr{Cint}, xv::Cint, yv::Cint, xw::Ptr{Cdouble}, yw::Ptr{Cdouble})
  ccall( (:wdCanvasCanvas2World, iup), None, (Ptr{Cint}, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xv, yv, xw, yw)
end
function wdCanvasSetTransform(canvas::Ptr{Cint}, sx::Cdouble, sy::Cdouble, tx::Cdouble, ty::Cdouble)
  ccall( (:wdCanvasSetTransform, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, sx, sy, tx, ty)
end
function wdCanvasGetTransform(canvas::Ptr{Cint}, sx::Ptr{Cdouble}, sy::Ptr{Cdouble}, tx::Ptr{Cdouble}, ty::Ptr{Cdouble})
  ccall( (:wdCanvasGetTransform, iup), None, (Ptr{Cint}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, sx, sy, tx, ty)
end
function wdCanvasTranslate(canvas::Ptr{Cint}, dtx::Cdouble, dty::Cdouble)
  ccall( (:wdCanvasTranslate, iup), None, (Ptr{Cint}, Cdouble, Cdouble), canvas, dtx, dty)
end
function wdCanvasScale(canvas::Ptr{Cint}, dsx::Cdouble, dsy::Cdouble)
  ccall( (:wdCanvasScale, iup), None, (Ptr{Cint}, Cdouble, Cdouble), canvas, dsx, dsy)
end
function wdCanvasClipArea(canvas::Ptr{Cint}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdCanvasClipArea, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasGetClipArea(canvas::Ptr{Cint}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetClipArea, iup), Cint, (Ptr{Cint}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasIsPointInRegion(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble)
  ccall( (:wdCanvasIsPointInRegion, iup), Cint, (Ptr{Cint}, Cdouble, Cdouble), canvas, x, y)
end
function wdCanvasOffsetRegion(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble)
  ccall( (:wdCanvasOffsetRegion, iup), None, (Ptr{Cint}, Cdouble, Cdouble), canvas, x, y)
end
function wdCanvasGetRegionBox(canvas::Ptr{Cint}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetRegionBox, iup), None, (Ptr{Cint}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasHardcopy(canvas::Ptr{Cint}, ctx::Ptr{Cint}, data::Ptr{None}, draw_func::Ptr{Void})
  ccall( (:wdCanvasHardcopy, iup), None, (Ptr{Cint}, Ptr{Cint}, Ptr{None}, Ptr{Void}), canvas, ctx, data, draw_func)
end
function wdCanvasPixel(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble, color::Clong)
  ccall( (:wdCanvasPixel, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Clong), canvas, x, y, color)
end
function wdCanvasMark(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble)
  ccall( (:wdCanvasMark, iup), None, (Ptr{Cint}, Cdouble, Cdouble), canvas, x, y)
end
function wdCanvasLine(canvas::Ptr{Cint}, x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:wdCanvasLine, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, x1, y1, x2, y2)
end
function wdCanvasVertex(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble)
  ccall( (:wdCanvasVertex, iup), None, (Ptr{Cint}, Cdouble, Cdouble), canvas, x, y)
end
function wdCanvasRect(canvas::Ptr{Cint}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdCanvasRect, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasBox(canvas::Ptr{Cint}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdCanvasBox, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function wdCanvasArc(canvas::Ptr{Cint}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdCanvasArc, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function wdCanvasSector(canvas::Ptr{Cint}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdCanvasSector, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function wdCanvasChord(canvas::Ptr{Cint}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdCanvasChord, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function wdCanvasText(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:wdCanvasText, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Uint8}), canvas, x, y, s)
end
function wdCanvasPutImageRect(canvas::Ptr{Cint}, image::Ptr{Cint}, x::Cdouble, y::Cdouble, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdCanvasPutImageRect, iup), None, (Ptr{Cint}, Ptr{Cint}, Cdouble, Cdouble, Cint, Cint, Cint, Cint), canvas, image, x, y, xmin, xmax, ymin, ymax)
end
function wdCanvasPutImageRectRGB(canvas::Ptr{Cint}, iw::Cint, ih::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdCanvasPutImageRectRGB, iup), None, (Ptr{Cint}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdCanvasPutImageRectRGBA(canvas::Ptr{Cint}, iw::Cint, ih::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdCanvasPutImageRectRGBA, iup), None, (Ptr{Cint}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdCanvasPutImageRectMap(canvas::Ptr{Cint}, iw::Cint, ih::Cint, index::Ptr{Cuchar}, colors::Ptr{Clong}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdCanvasPutImageRectMap, iup), None, (Ptr{Cint}, Cint, Cint, Ptr{Cuchar}, Ptr{Clong}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), canvas, iw, ih, index, colors, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdCanvasPutBitmap(canvas::Ptr{Cint}, bitmap::Ptr{Cint}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble)
  ccall( (:wdCanvasPutBitmap, iup), None, (Ptr{Cint}, Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, bitmap, x, y, w, h)
end
function wdCanvasLineWidth(canvas::Ptr{Cint}, width::Cdouble)
  ccall( (:wdCanvasLineWidth, iup), Cdouble, (Ptr{Cint}, Cdouble), canvas, width)
end
function wdCanvasFont(canvas::Ptr{Cint}, type_face::Ptr{Uint8}, style::Cint, size::Cdouble)
  ccall( (:wdCanvasFont, iup), Cint, (Ptr{Cint}, Ptr{Uint8}, Cint, Cdouble), canvas, type_face, style, size)
end
function wdCanvasGetFont(canvas::Ptr{Cint}, type_face::Ptr{Uint8}, style::Ptr{Cint}, size::Ptr{Cdouble})
  ccall( (:wdCanvasGetFont, iup), None, (Ptr{Cint}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cdouble}), canvas, type_face, style, size)
end
function wdCanvasMarkSize(canvas::Ptr{Cint}, size::Cdouble)
  ccall( (:wdCanvasMarkSize, iup), Cdouble, (Ptr{Cint}, Cdouble), canvas, size)
end
function wdCanvasGetFontDim(canvas::Ptr{Cint}, max_width::Ptr{Cdouble}, height::Ptr{Cdouble}, ascent::Ptr{Cdouble}, descent::Ptr{Cdouble})
  ccall( (:wdCanvasGetFontDim, iup), None, (Ptr{Cint}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, max_width, height, ascent, descent)
end
function wdCanvasGetTextSize(canvas::Ptr{Cint}, s::Ptr{Uint8}, width::Ptr{Cdouble}, height::Ptr{Cdouble})
  ccall( (:wdCanvasGetTextSize, iup), None, (Ptr{Cint}, Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, s, width, height)
end
function wdCanvasGetTextBox(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble, s::Ptr{Uint8}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetTextBox, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, x, y, s, xmin, xmax, ymin, ymax)
end
function wdCanvasGetTextBounds(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble, s::Ptr{Uint8}, rect::Ptr{Cdouble})
  ccall( (:wdCanvasGetTextBounds, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Uint8}, Ptr{Cdouble}), canvas, x, y, s, rect)
end
function wdCanvasStipple(canvas::Ptr{Cint}, w::Cint, h::Cint, fgbg::Ptr{Cuchar}, w_mm::Cdouble, h_mm::Cdouble)
  ccall( (:wdCanvasStipple, iup), None, (Ptr{Cint}, Cint, Cint, Ptr{Cuchar}, Cdouble, Cdouble), canvas, w, h, fgbg, w_mm, h_mm)
end
function wdCanvasPattern(canvas::Ptr{Cint}, w::Cint, h::Cint, color::Ptr{Clong}, w_mm::Cdouble, h_mm::Cdouble)
  ccall( (:wdCanvasPattern, iup), None, (Ptr{Cint}, Cint, Cint, Ptr{Clong}, Cdouble, Cdouble), canvas, w, h, color, w_mm, h_mm)
end
function wdCanvasVectorTextDirection(canvas::Ptr{Cint}, x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:wdCanvasVectorTextDirection, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, x1, y1, x2, y2)
end
function wdCanvasVectorTextSize(canvas::Ptr{Cint}, size_x::Cdouble, size_y::Cdouble, s::Ptr{Uint8})
  ccall( (:wdCanvasVectorTextSize, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Uint8}), canvas, size_x, size_y, s)
end
function wdCanvasGetVectorTextSize(canvas::Ptr{Cint}, s::Ptr{Uint8}, x::Ptr{Cdouble}, y::Ptr{Cdouble})
  ccall( (:wdCanvasGetVectorTextSize, iup), None, (Ptr{Cint}, Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, s, x, y)
end
function wdCanvasVectorCharSize(canvas::Ptr{Cint}, size::Cdouble)
  ccall( (:wdCanvasVectorCharSize, iup), Cdouble, (Ptr{Cint}, Cdouble), canvas, size)
end
function wdCanvasVectorText(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:wdCanvasVectorText, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Uint8}), canvas, x, y, s)
end
function wdCanvasMultiLineVectorText(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:wdCanvasMultiLineVectorText, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Uint8}), canvas, x, y, s)
end
function wdCanvasGetVectorTextBounds(canvas::Ptr{Cint}, s::Ptr{Uint8}, x::Cdouble, y::Cdouble, rect::Ptr{Cdouble})
  ccall( (:wdCanvasGetVectorTextBounds, iup), None, (Ptr{Cint}, Ptr{Uint8}, Cdouble, Cdouble, Ptr{Cdouble}), canvas, s, x, y, rect)
end
function wdCanvasGetVectorTextBox(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble, s::Ptr{Uint8}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdCanvasGetVectorTextBox, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, x, y, s, xmin, xmax, ymin, ymax)
end
function wdWindow(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdWindow, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble), xmin, xmax, ymin, ymax)
end
function wdGetWindow(xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdGetWindow, iup), None, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), xmin, xmax, ymin, ymax)
end
function wdViewport(xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdViewport, iup), None, (Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax)
end
function wdGetViewport(xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:wdGetViewport, iup), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xmin, xmax, ymin, ymax)
end
function wdWorld2Canvas(xw::Cdouble, yw::Cdouble, xv::Ptr{Cint}, yv::Ptr{Cint})
  ccall( (:wdWorld2Canvas, iup), None, (Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), xw, yw, xv, yv)
end
function wdWorld2CanvasSize(hw::Cdouble, vw::Cdouble, hv::Ptr{Cint}, vv::Ptr{Cint})
  ccall( (:wdWorld2CanvasSize, iup), None, (Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), hw, vw, hv, vv)
end
function wdCanvas2World(xv::Cint, yv::Cint, xw::Ptr{Cdouble}, yw::Ptr{Cdouble})
  ccall( (:wdCanvas2World, iup), None, (Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), xv, yv, xw, yw)
end
function wdClipArea(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdClipArea, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble), xmin, xmax, ymin, ymax)
end
function wdGetClipArea(xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdGetClipArea, iup), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), xmin, xmax, ymin, ymax)
end
function wdGetClipPoly(n::Ptr{Cint})
  ccall( (:wdGetClipPoly, iup), Ptr{Cdouble}, (Ptr{Cint},), n)
end
function wdPointInRegion(x::Cdouble, y::Cdouble)
  ccall( (:wdPointInRegion, iup), Cint, (Cdouble, Cdouble), x, y)
end
function wdOffsetRegion(x::Cdouble, y::Cdouble)
  ccall( (:wdOffsetRegion, iup), None, (Cdouble, Cdouble), x, y)
end
function wdRegionBox(xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdRegionBox, iup), None, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), xmin, xmax, ymin, ymax)
end
function wdHardcopy(ctx::Ptr{Cint}, data::Ptr{None}, cnv::Ptr{Cint}, draw_func::Ptr{Void})
  ccall( (:wdHardcopy, iup), None, (Ptr{Cint}, Ptr{None}, Ptr{Cint}, Ptr{Void}), ctx, data, cnv, draw_func)
end
function wdPixel(x::Cdouble, y::Cdouble, color::Clong)
  ccall( (:wdPixel, iup), None, (Cdouble, Cdouble, Clong), x, y, color)
end
function wdMark(x::Cdouble, y::Cdouble)
  ccall( (:wdMark, iup), None, (Cdouble, Cdouble), x, y)
end
function wdLine(x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:wdLine, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble), x1, y1, x2, y2)
end
function wdVertex(x::Cdouble, y::Cdouble)
  ccall( (:wdVertex, iup), None, (Cdouble, Cdouble), x, y)
end
function wdRect(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdRect, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble), xmin, xmax, ymin, ymax)
end
function wdBox(xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:wdBox, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble), xmin, xmax, ymin, ymax)
end
function wdArc(xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdArc, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function wdSector(xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdSector, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function wdChord(xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:wdChord, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function wdText(x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:wdText, iup), None, (Cdouble, Cdouble, Ptr{Uint8}), x, y, s)
end
function wdPutImageRect(image::Ptr{Cint}, x::Cdouble, y::Cdouble, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdPutImageRect, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cint, Cint, Cint, Cint), image, x, y, xmin, xmax, ymin, ymax)
end
function wdPutImageRectRGB(iw::Cint, ih::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdPutImageRectRGB, iup), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdPutImageRectRGBA(iw::Cint, ih::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdPutImageRectRGBA, iup), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdPutImageRectMap(iw::Cint, ih::Cint, index::Ptr{Cuchar}, colors::Ptr{Clong}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:wdPutImageRectMap, iup), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Clong}, Cdouble, Cdouble, Cdouble, Cdouble, Cint, Cint, Cint, Cint), iw, ih, index, colors, x, y, w, h, xmin, xmax, ymin, ymax)
end
function wdPutBitmap(bitmap::Ptr{Cint}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble)
  ccall( (:wdPutBitmap, iup), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), bitmap, x, y, w, h)
end
function wdLineWidth(width::Cdouble)
  ccall( (:wdLineWidth, iup), Cdouble, (Cdouble,), width)
end
function wdFont(type_face::Cint, style::Cint, size::Cdouble)
  ccall( (:wdFont, iup), None, (Cint, Cint, Cdouble), type_face, style, size)
end
function wdGetFont(type_face::Ptr{Cint}, style::Ptr{Cint}, size::Ptr{Cdouble})
  ccall( (:wdGetFont, iup), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cdouble}), type_face, style, size)
end
function wdMarkSize(size::Cdouble)
  ccall( (:wdMarkSize, iup), Cdouble, (Cdouble,), size)
end
function wdFontDim(max_width::Ptr{Cdouble}, height::Ptr{Cdouble}, ascent::Ptr{Cdouble}, descent::Ptr{Cdouble})
  ccall( (:wdFontDim, iup), None, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), max_width, height, ascent, descent)
end
function wdTextSize(s::Ptr{Uint8}, width::Ptr{Cdouble}, height::Ptr{Cdouble})
  ccall( (:wdTextSize, iup), None, (Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}), s, width, height)
end
function wdTextBox(x::Cdouble, y::Cdouble, s::Ptr{Uint8}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:wdTextBox, iup), None, (Cdouble, Cdouble, Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), x, y, s, xmin, xmax, ymin, ymax)
end
function wdTextBounds(x::Cdouble, y::Cdouble, s::Ptr{Uint8}, rect::Ptr{Cdouble})
  ccall( (:wdTextBounds, iup), None, (Cdouble, Cdouble, Ptr{Uint8}, Ptr{Cdouble}), x, y, s, rect)
end
function wdStipple(w::Cint, h::Cint, stipple::Ptr{Cuchar}, w_mm::Cdouble, h_mm::Cdouble)
  ccall( (:wdStipple, iup), None, (Cint, Cint, Ptr{Cuchar}, Cdouble, Cdouble), w, h, stipple, w_mm, h_mm)
end
function wdPattern(w::Cint, h::Cint, pattern::Ptr{Clong}, w_mm::Cdouble, h_mm::Cdouble)
  ccall( (:wdPattern, iup), None, (Cint, Cint, Ptr{Clong}, Cdouble, Cdouble), w, h, pattern, w_mm, h_mm)
end
function wdVectorTextDirection(x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:wdVectorTextDirection, iup), None, (Cdouble, Cdouble, Cdouble, Cdouble), x1, y1, x2, y2)
end
function wdVectorTextSize(size_x::Cdouble, size_y::Cdouble, s::Ptr{Uint8})
  ccall( (:wdVectorTextSize, iup), None, (Cdouble, Cdouble, Ptr{Uint8}), size_x, size_y, s)
end
function wdGetVectorTextSize(s::Ptr{Uint8}, x::Ptr{Cdouble}, y::Ptr{Cdouble})
  ccall( (:wdGetVectorTextSize, iup), None, (Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}), s, x, y)
end
function wdVectorCharSize(size::Cdouble)
  ccall( (:wdVectorCharSize, iup), Cdouble, (Cdouble,), size)
end
function wdVectorText(x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:wdVectorText, iup), None, (Cdouble, Cdouble, Ptr{Uint8}), x, y, s)
end
function wdMultiLineVectorText(x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:wdMultiLineVectorText, iup), None, (Cdouble, Cdouble, Ptr{Uint8}), x, y, s)
end
function wdGetVectorTextBounds(s::Ptr{Uint8}, x::Cdouble, y::Cdouble, rect::Ptr{Cdouble})
  ccall( (:wdGetVectorTextBounds, iup), None, (Ptr{Uint8}, Cdouble, Cdouble, Ptr{Cdouble}), s, x, y, rect)
end

