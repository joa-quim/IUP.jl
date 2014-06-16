# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libcd/include/cd.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libcd_ = "cd") : (const libcd_ = "libcd")  # Name of IUP shared lib.


function cdVersion()
  ccall( (:cdVersion, libcd_), Ptr{Uint8}, (), )
end
function cdVersionDate()
  ccall( (:cdVersionDate, libcd_), Ptr{Uint8}, (), )
end
function cdVersionNumber()
  ccall( (:cdVersionNumber, libcd_), Cint, (), )
end
function cdCreateCanvas(context::Ptr{cdContext}, data::Ptr{None})
  ccall( (:cdCreateCanvas, libcd_), Ptr{cdCanvas}, (Ptr{cdContext}, Ptr{None}), context, data)
end
function cdKillCanvas(canvas::Ptr{cdCanvas})
  ccall( (:cdKillCanvas, libcd_), None, (Ptr{cdCanvas},), canvas)
end
function cdCanvasGetContext(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasGetContext, libcd_), Ptr{cdContext}, (Ptr{cdCanvas},), canvas)
end
function cdCanvasActivate(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasActivate, libcd_), Cint, (Ptr{cdCanvas},), canvas)
end
function cdCanvasDeactivate(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasDeactivate, libcd_), None, (Ptr{cdCanvas},), canvas)
end
function cdUseContextPlus(use::Cint)
  ccall( (:cdUseContextPlus, libcd_), Cint, (Cint,), use)
end
function cdInitContextPlus()
  ccall( (:cdInitContextPlus, libcd_), None, (), )
end
function cdFinishContextPlus()
  ccall( (:cdFinishContextPlus, libcd_), None, (), )
end
function cdContextRegisterCallback(context::Ptr{cdContext}, cb::Cint, func::cdCallback)
  ccall( (:cdContextRegisterCallback, libcd_), Cint, (Ptr{cdContext}, Cint, cdCallback), context, cb, func)
end
function cdContextCaps(context::Ptr{cdContext})
  ccall( (:cdContextCaps, libcd_), Culong, (Ptr{cdContext},), context)
end
function cdContextIsPlus(context::Ptr{cdContext})
  ccall( (:cdContextIsPlus, libcd_), Cint, (Ptr{cdContext},), context)
end
function cdContextType(context::Ptr{cdContext})
  ccall( (:cdContextType, libcd_), Cint, (Ptr{cdContext},), context)
end
function cdCanvasSimulate(canvas::Ptr{cdCanvas}, mode::Cint)
  ccall( (:cdCanvasSimulate, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasFlush(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasFlush, libcd_), None, (Ptr{cdCanvas},), canvas)
end
function cdCanvasClear(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasClear, libcd_), None, (Ptr{cdCanvas},), canvas)
end
function cdCanvasSaveState(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasSaveState, libcd_), Ptr{cdState}, (Ptr{cdCanvas},), canvas)
end
function cdCanvasRestoreState(canvas::Ptr{cdCanvas}, state::Ptr{cdState})
  ccall( (:cdCanvasRestoreState, libcd_), None, (Ptr{cdCanvas}, Ptr{cdState}), canvas, state)
end
function cdReleaseState(state::Ptr{cdState})
  ccall( (:cdReleaseState, libcd_), None, (Ptr{cdState},), state)
end
function cdCanvasSetAttribute(canvas::Ptr{cdCanvas}, name::Ptr{Uint8}, data::Ptr{Uint8})
  ccall( (:cdCanvasSetAttribute, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Ptr{Uint8}), canvas, name, data)
end
function cdCanvasGetAttribute(canvas::Ptr{cdCanvas}, name::Ptr{Uint8})
  ccall( (:cdCanvasGetAttribute, libcd_), Ptr{Uint8}, (Ptr{cdCanvas}, Ptr{Uint8}), canvas, name)
end
function cdCanvasPlay(canvas::Ptr{cdCanvas}, context::Ptr{cdContext}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint, data::Ptr{None})
  ccall( (:cdCanvasPlay, libcd_), Cint, (Ptr{cdCanvas}, Ptr{cdContext}, Cint, Cint, Cint, Cint, Ptr{None}), canvas, context, xmin, xmax, ymin, ymax, data)
end
function cdCanvasGetSize(canvas::Ptr{cdCanvas}, width::Ptr{Cint}, height::Ptr{Cint}, width_mm::Ptr{Cdouble}, height_mm::Ptr{Cdouble})
  ccall( (:cdCanvasGetSize, libcd_), None, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, width, height, width_mm, height_mm)
end
function cdCanvasUpdateYAxis(canvas::Ptr{cdCanvas}, y::Ptr{Cint})
  ccall( (:cdCanvasUpdateYAxis, libcd_), Cint, (Ptr{cdCanvas}, Ptr{Cint}), canvas, y)
end
function cdfCanvasUpdateYAxis(canvas::Ptr{cdCanvas}, y::Ptr{Cdouble})
  ccall( (:cdfCanvasUpdateYAxis, libcd_), Cdouble, (Ptr{cdCanvas}, Ptr{Cdouble}), canvas, y)
end
function cdCanvasInvertYAxis(canvas::Ptr{cdCanvas}, y::Cint)
  ccall( (:cdCanvasInvertYAxis, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, y)
end
function cdfCanvasInvertYAxis(canvas::Ptr{cdCanvas}, y::Cdouble)
  ccall( (:cdfCanvasInvertYAxis, libcd_), Cdouble, (Ptr{cdCanvas}, Cdouble), canvas, y)
end
function cdCanvasMM2Pixel(canvas::Ptr{cdCanvas}, mm_dx::Cdouble, mm_dy::Cdouble, dx::Ptr{Cint}, dy::Ptr{Cint})
  ccall( (:cdCanvasMM2Pixel, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), canvas, mm_dx, mm_dy, dx, dy)
end
function cdCanvasPixel2MM(canvas::Ptr{cdCanvas}, dx::Cint, dy::Cint, mm_dx::Ptr{Cdouble}, mm_dy::Ptr{Cdouble})
  ccall( (:cdCanvasPixel2MM, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), canvas, dx, dy, mm_dx, mm_dy)
end
function cdfCanvasMM2Pixel(canvas::Ptr{cdCanvas}, mm_dx::Cdouble, mm_dy::Cdouble, dx::Ptr{Cdouble}, dy::Ptr{Cdouble})
  ccall( (:cdfCanvasMM2Pixel, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), canvas, mm_dx, mm_dy, dx, dy)
end
function cdfCanvasPixel2MM(canvas::Ptr{cdCanvas}, dx::Cdouble, dy::Cdouble, mm_dx::Ptr{Cdouble}, mm_dy::Ptr{Cdouble})
  ccall( (:cdfCanvasPixel2MM, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), canvas, dx, dy, mm_dx, mm_dy)
end
function cdCanvasOrigin(canvas::Ptr{cdCanvas}, x::Cint, y::Cint)
  ccall( (:cdCanvasOrigin, libcd_), None, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdfCanvasOrigin(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble)
  ccall( (:cdfCanvasOrigin, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, x, y)
end
function cdCanvasGetOrigin(canvas::Ptr{cdCanvas}, x::Ptr{Cint}, y::Ptr{Cint})
  ccall( (:cdCanvasGetOrigin, libcd_), None, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}), canvas, x, y)
end
function cdfCanvasGetOrigin(canvas::Ptr{cdCanvas}, x::Ptr{Cdouble}, y::Ptr{Cdouble})
  ccall( (:cdfCanvasGetOrigin, libcd_), None, (Ptr{cdCanvas}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, x, y)
end
function cdCanvasTransform(canvas::Ptr{cdCanvas}, matrix::Ptr{Cdouble})
  ccall( (:cdCanvasTransform, libcd_), None, (Ptr{cdCanvas}, Ptr{Cdouble}), canvas, matrix)
end
function cdCanvasGetTransform(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasGetTransform, libcd_), Ptr{Cdouble}, (Ptr{cdCanvas},), canvas)
end
function cdCanvasTransformMultiply(canvas::Ptr{cdCanvas}, matrix::Ptr{Cdouble})
  ccall( (:cdCanvasTransformMultiply, libcd_), None, (Ptr{cdCanvas}, Ptr{Cdouble}), canvas, matrix)
end
function cdCanvasTransformRotate(canvas::Ptr{cdCanvas}, angle::Cdouble)
  ccall( (:cdCanvasTransformRotate, libcd_), None, (Ptr{cdCanvas}, Cdouble), canvas, angle)
end
function cdCanvasTransformScale(canvas::Ptr{cdCanvas}, sx::Cdouble, sy::Cdouble)
  ccall( (:cdCanvasTransformScale, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, sx, sy)
end
function cdCanvasTransformTranslate(canvas::Ptr{cdCanvas}, dx::Cdouble, dy::Cdouble)
  ccall( (:cdCanvasTransformTranslate, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, dx, dy)
end
function cdCanvasTransformPoint(canvas::Ptr{cdCanvas}, x::Cint, y::Cint, tx::Ptr{Cint}, ty::Ptr{Cint})
  ccall( (:cdCanvasTransformPoint, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cint}, Ptr{Cint}), canvas, x, y, tx, ty)
end
function cdfCanvasTransformPoint(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, tx::Ptr{Cdouble}, ty::Ptr{Cdouble})
  ccall( (:cdfCanvasTransformPoint, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), canvas, x, y, tx, ty)
end
function cdCanvasClip(canvas::Ptr{cdCanvas}, mode::Cint)
  ccall( (:cdCanvasClip, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasClipArea(canvas::Ptr{cdCanvas}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdCanvasClipArea, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax)
end
function cdCanvasGetClipArea(canvas::Ptr{cdCanvas}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdCanvasGetClipArea, libcd_), Cint, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, xmin, xmax, ymin, ymax)
end
function cdfCanvasClipArea(canvas::Ptr{cdCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:cdfCanvasClipArea, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function cdfCanvasGetClipArea(canvas::Ptr{cdCanvas}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:cdfCanvasGetClipArea, libcd_), Cint, (Ptr{cdCanvas}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, xmin, xmax, ymin, ymax)
end
function cdCanvasIsPointInRegion(canvas::Ptr{cdCanvas}, x::Cint, y::Cint)
  ccall( (:cdCanvasIsPointInRegion, libcd_), Cint, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdCanvasOffsetRegion(canvas::Ptr{cdCanvas}, x::Cint, y::Cint)
  ccall( (:cdCanvasOffsetRegion, libcd_), None, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdCanvasGetRegionBox(canvas::Ptr{cdCanvas}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdCanvasGetRegionBox, libcd_), None, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, xmin, xmax, ymin, ymax)
end
function cdCanvasRegionCombineMode(canvas::Ptr{cdCanvas}, mode::Cint)
  ccall( (:cdCanvasRegionCombineMode, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasPixel(canvas::Ptr{cdCanvas}, x::Cint, y::Cint, color::Clong)
  ccall( (:cdCanvasPixel, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Clong), canvas, x, y, color)
end
function cdCanvasMark(canvas::Ptr{cdCanvas}, x::Cint, y::Cint)
  ccall( (:cdCanvasMark, libcd_), None, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdCanvasBegin(canvas::Ptr{cdCanvas}, mode::Cint)
  ccall( (:cdCanvasBegin, libcd_), None, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasPathSet(canvas::Ptr{cdCanvas}, action::Cint)
  ccall( (:cdCanvasPathSet, libcd_), None, (Ptr{cdCanvas}, Cint), canvas, action)
end
function cdCanvasEnd(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasEnd, libcd_), None, (Ptr{cdCanvas},), canvas)
end
function cdCanvasLine(canvas::Ptr{cdCanvas}, x1::Cint, y1::Cint, x2::Cint, y2::Cint)
  ccall( (:cdCanvasLine, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, x1, y1, x2, y2)
end
function cdCanvasVertex(canvas::Ptr{cdCanvas}, x::Cint, y::Cint)
  ccall( (:cdCanvasVertex, libcd_), None, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdCanvasRect(canvas::Ptr{cdCanvas}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdCanvasRect, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax)
end
function cdCanvasBox(canvas::Ptr{cdCanvas}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdCanvasBox, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax)
end
function cdCanvasArc(canvas::Ptr{cdCanvas}, xc::Cint, yc::Cint, w::Cint, h::Cint, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdCanvasArc, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdCanvasSector(canvas::Ptr{cdCanvas}, xc::Cint, yc::Cint, w::Cint, h::Cint, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdCanvasSector, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdCanvasChord(canvas::Ptr{cdCanvas}, xc::Cint, yc::Cint, w::Cint, h::Cint, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdCanvasChord, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdCanvasText(canvas::Ptr{cdCanvas}, x::Cint, y::Cint, s::Ptr{Uint8})
  ccall( (:cdCanvasText, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}), canvas, x, y, s)
end
function cdfCanvasLine(canvas::Ptr{cdCanvas}, x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:cdfCanvasLine, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, x1, y1, x2, y2)
end
function cdfCanvasVertex(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble)
  ccall( (:cdfCanvasVertex, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, x, y)
end
function cdfCanvasRect(canvas::Ptr{cdCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:cdfCanvasRect, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function cdfCanvasBox(canvas::Ptr{cdCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:cdfCanvasBox, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xmin, xmax, ymin, ymax)
end
function cdfCanvasArc(canvas::Ptr{cdCanvas}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdfCanvasArc, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdfCanvasSector(canvas::Ptr{cdCanvas}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdfCanvasSector, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdfCanvasChord(canvas::Ptr{cdCanvas}, xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdfCanvasChord, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdfCanvasText(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:cdfCanvasText, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Uint8}), canvas, x, y, s)
end
function cdCanvasSetBackground(canvas::Ptr{cdCanvas}, color::Clong)
  ccall( (:cdCanvasSetBackground, libcd_), None, (Ptr{cdCanvas}, Clong), canvas, color)
end
function cdCanvasSetForeground(canvas::Ptr{cdCanvas}, color::Clong)
  ccall( (:cdCanvasSetForeground, libcd_), None, (Ptr{cdCanvas}, Clong), canvas, color)
end
function cdCanvasBackground(canvas::Ptr{cdCanvas}, color::Clong)
  ccall( (:cdCanvasBackground, libcd_), Clong, (Ptr{cdCanvas}, Clong), canvas, color)
end
function cdCanvasForeground(canvas::Ptr{cdCanvas}, color::Clong)
  ccall( (:cdCanvasForeground, libcd_), Clong, (Ptr{cdCanvas}, Clong), canvas, color)
end
function cdCanvasBackOpacity(canvas::Ptr{cdCanvas}, opacity::Cint)
  ccall( (:cdCanvasBackOpacity, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, opacity)
end
function cdCanvasWriteMode(canvas::Ptr{cdCanvas}, mode::Cint)
  ccall( (:cdCanvasWriteMode, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasLineStyle(canvas::Ptr{cdCanvas}, style::Cint)
  ccall( (:cdCanvasLineStyle, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, style)
end
function cdCanvasLineStyleDashes(canvas::Ptr{cdCanvas}, dashes::Ptr{Cint}, count::Cint)
  ccall( (:cdCanvasLineStyleDashes, libcd_), None, (Ptr{cdCanvas}, Ptr{Cint}, Cint), canvas, dashes, count)
end
function cdCanvasLineWidth(canvas::Ptr{cdCanvas}, width::Cint)
  ccall( (:cdCanvasLineWidth, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, width)
end
function cdCanvasLineJoin(canvas::Ptr{cdCanvas}, join::Cint)
  ccall( (:cdCanvasLineJoin, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, join)
end
function cdCanvasLineCap(canvas::Ptr{cdCanvas}, cap::Cint)
  ccall( (:cdCanvasLineCap, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, cap)
end
function cdCanvasInteriorStyle(canvas::Ptr{cdCanvas}, style::Cint)
  ccall( (:cdCanvasInteriorStyle, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, style)
end
function cdCanvasHatch(canvas::Ptr{cdCanvas}, style::Cint)
  ccall( (:cdCanvasHatch, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, style)
end
function cdCanvasStipple(canvas::Ptr{cdCanvas}, w::Cint, h::Cint, stipple::Ptr{Cuchar})
  ccall( (:cdCanvasStipple, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}), canvas, w, h, stipple)
end
function cdCanvasGetStipple(canvas::Ptr{cdCanvas}, n::Ptr{Cint}, m::Ptr{Cint})
  ccall( (:cdCanvasGetStipple, libcd_), Ptr{Cuchar}, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}), canvas, n, m)
end
function cdCanvasPattern(canvas::Ptr{cdCanvas}, w::Cint, h::Cint, pattern::Ptr{Clong})
  ccall( (:cdCanvasPattern, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Clong}), canvas, w, h, pattern)
end
function cdCanvasGetPattern(canvas::Ptr{cdCanvas}, n::Ptr{Cint}, m::Ptr{Cint})
  ccall( (:cdCanvasGetPattern, libcd_), Ptr{Clong}, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}), canvas, n, m)
end
function cdCanvasFillMode(canvas::Ptr{cdCanvas}, mode::Cint)
  ccall( (:cdCanvasFillMode, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasFont(canvas::Ptr{cdCanvas}, type_face::Ptr{Uint8}, style::Cint, size::Cint)
  ccall( (:cdCanvasFont, libcd_), Cint, (Ptr{cdCanvas}, Ptr{Uint8}, Cint, Cint), canvas, type_face, style, size)
end
function cdCanvasGetFont(canvas::Ptr{cdCanvas}, type_face::Ptr{Uint8}, style::Ptr{Cint}, size::Ptr{Cint})
  ccall( (:cdCanvasGetFont, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), canvas, type_face, style, size)
end
function cdCanvasNativeFont(canvas::Ptr{cdCanvas}, font::Ptr{Uint8})
  ccall( (:cdCanvasNativeFont, libcd_), Ptr{Uint8}, (Ptr{cdCanvas}, Ptr{Uint8}), canvas, font)
end
function cdCanvasTextAlignment(canvas::Ptr{cdCanvas}, alignment::Cint)
  ccall( (:cdCanvasTextAlignment, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, alignment)
end
function cdCanvasTextOrientation(canvas::Ptr{cdCanvas}, angle::Cdouble)
  ccall( (:cdCanvasTextOrientation, libcd_), Cdouble, (Ptr{cdCanvas}, Cdouble), canvas, angle)
end
function cdCanvasMarkType(canvas::Ptr{cdCanvas}, _type::Cint)
  ccall( (:cdCanvasMarkType, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, _type)
end
function cdCanvasMarkSize(canvas::Ptr{cdCanvas}, size::Cint)
  ccall( (:cdCanvasMarkSize, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, size)
end
function cdCanvasVectorText(canvas::Ptr{cdCanvas}, x::Cint, y::Cint, s::Ptr{Uint8})
  ccall( (:cdCanvasVectorText, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}), canvas, x, y, s)
end
function cdCanvasMultiLineVectorText(canvas::Ptr{cdCanvas}, x::Cint, y::Cint, s::Ptr{Uint8})
  ccall( (:cdCanvasMultiLineVectorText, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}), canvas, x, y, s)
end
function cdCanvasVectorFont(canvas::Ptr{cdCanvas}, filename::Ptr{Uint8})
  ccall( (:cdCanvasVectorFont, libcd_), Ptr{Uint8}, (Ptr{cdCanvas}, Ptr{Uint8}), canvas, filename)
end
function cdCanvasVectorTextDirection(canvas::Ptr{cdCanvas}, x1::Cint, y1::Cint, x2::Cint, y2::Cint)
  ccall( (:cdCanvasVectorTextDirection, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, x1, y1, x2, y2)
end
function cdCanvasVectorTextTransform(canvas::Ptr{cdCanvas}, matrix::Ptr{Cdouble})
  ccall( (:cdCanvasVectorTextTransform, libcd_), Ptr{Cdouble}, (Ptr{cdCanvas}, Ptr{Cdouble}), canvas, matrix)
end
function cdCanvasVectorTextSize(canvas::Ptr{cdCanvas}, size_x::Cint, size_y::Cint, s::Ptr{Uint8})
  ccall( (:cdCanvasVectorTextSize, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}), canvas, size_x, size_y, s)
end
function cdCanvasVectorCharSize(canvas::Ptr{cdCanvas}, size::Cint)
  ccall( (:cdCanvasVectorCharSize, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, size)
end
function cdCanvasVectorFontSize(canvas::Ptr{cdCanvas}, size_x::Cdouble, size_y::Cdouble)
  ccall( (:cdCanvasVectorFontSize, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble), canvas, size_x, size_y)
end
function cdCanvasGetVectorFontSize(canvas::Ptr{cdCanvas}, size_x::Ptr{Cdouble}, size_y::Ptr{Cdouble})
  ccall( (:cdCanvasGetVectorFontSize, libcd_), None, (Ptr{cdCanvas}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, size_x, size_y)
end
function cdCanvasGetVectorTextSize(canvas::Ptr{cdCanvas}, s::Ptr{Uint8}, x::Ptr{Cint}, y::Ptr{Cint})
  ccall( (:cdCanvasGetVectorTextSize, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), canvas, s, x, y)
end
function cdCanvasGetVectorTextBounds(canvas::Ptr{cdCanvas}, s::Ptr{Uint8}, x::Cint, y::Cint, rect::Ptr{Cint})
  ccall( (:cdCanvasGetVectorTextBounds, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Cint, Cint, Ptr{Cint}), canvas, s, x, y, rect)
end
function cdCanvasGetVectorTextBox(canvas::Ptr{cdCanvas}, x::Cint, y::Cint, s::Ptr{Uint8}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdCanvasGetVectorTextBox, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, x, y, s, xmin, xmax, ymin, ymax)
end
function cdfCanvasVectorTextDirection(canvas::Ptr{cdCanvas}, x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:cdfCanvasVectorTextDirection, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), canvas, x1, y1, x2, y2)
end
function cdfCanvasVectorTextSize(canvas::Ptr{cdCanvas}, size_x::Cdouble, size_y::Cdouble, s::Ptr{Uint8})
  ccall( (:cdfCanvasVectorTextSize, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Uint8}), canvas, size_x, size_y, s)
end
function cdfCanvasGetVectorTextSize(canvas::Ptr{cdCanvas}, s::Ptr{Uint8}, x::Ptr{Cdouble}, y::Ptr{Cdouble})
  ccall( (:cdfCanvasGetVectorTextSize, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, s, x, y)
end
function cdfCanvasVectorCharSize(canvas::Ptr{cdCanvas}, size::Cdouble)
  ccall( (:cdfCanvasVectorCharSize, libcd_), Cdouble, (Ptr{cdCanvas}, Cdouble), canvas, size)
end
function cdfCanvasVectorText(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:cdfCanvasVectorText, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Uint8}), canvas, x, y, s)
end
function cdfCanvasMultiLineVectorText(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::Ptr{Uint8})
  ccall( (:cdfCanvasMultiLineVectorText, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Uint8}), canvas, x, y, s)
end
function cdfCanvasGetVectorTextBounds(canvas::Ptr{cdCanvas}, s::Ptr{Uint8}, x::Cdouble, y::Cdouble, rect::Ptr{Cdouble})
  ccall( (:cdfCanvasGetVectorTextBounds, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Cdouble, Cdouble, Ptr{Cdouble}), canvas, s, x, y, rect)
end
function cdfCanvasGetVectorTextBox(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, s::Ptr{Uint8}, xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:cdfCanvasGetVectorTextBox, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Uint8}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), canvas, x, y, s, xmin, xmax, ymin, ymax)
end
function cdCanvasGetFontDim(canvas::Ptr{cdCanvas}, max_width::Ptr{Cint}, height::Ptr{Cint}, ascent::Ptr{Cint}, descent::Ptr{Cint})
  ccall( (:cdCanvasGetFontDim, libcd_), None, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, max_width, height, ascent, descent)
end
function cdCanvasGetTextSize(canvas::Ptr{cdCanvas}, s::Ptr{Uint8}, width::Ptr{Cint}, height::Ptr{Cint})
  ccall( (:cdCanvasGetTextSize, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), canvas, s, width, height)
end
function cdCanvasGetTextBox(canvas::Ptr{cdCanvas}, x::Cint, y::Cint, s::Ptr{Uint8}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdCanvasGetTextBox, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, x, y, s, xmin, xmax, ymin, ymax)
end
function cdCanvasGetTextBounds(canvas::Ptr{cdCanvas}, x::Cint, y::Cint, s::Ptr{Uint8}, rect::Ptr{Cint})
  ccall( (:cdCanvasGetTextBounds, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}, Ptr{Cint}), canvas, x, y, s, rect)
end
function cdCanvasGetColorPlanes(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasGetColorPlanes, libcd_), Cint, (Ptr{cdCanvas},), canvas)
end
function cdCanvasPalette(canvas::Ptr{cdCanvas}, n::Cint, palette::Ptr{Clong}, mode::Cint)
  ccall( (:cdCanvasPalette, libcd_), None, (Ptr{cdCanvas}, Cint, Ptr{Clong}, Cint), canvas, n, palette, mode)
end
function cdCanvasGetImageRGB(canvas::Ptr{cdCanvas}, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Cint, y::Cint, w::Cint, h::Cint)
  ccall( (:cdCanvasGetImageRGB, libcd_), None, (Ptr{cdCanvas}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint), canvas, r, g, b, x, y, w, h)
end
function cdCanvasPutImageRectRGB(canvas::Ptr{cdCanvas}, iw::Cint, ih::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Cint, y::Cint, w::Cint, h::Cint, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdCanvasPutImageRectRGB, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdCanvasPutImageRectRGBA(canvas::Ptr{cdCanvas}, iw::Cint, ih::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Cint, y::Cint, w::Cint, h::Cint, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdCanvasPutImageRectRGBA, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdCanvasPutImageRectMap(canvas::Ptr{cdCanvas}, iw::Cint, ih::Cint, index::Ptr{Cuchar}, colors::Ptr{Clong}, x::Cint, y::Cint, w::Cint, h::Cint, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdCanvasPutImageRectMap, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Clong}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), canvas, iw, ih, index, colors, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdCanvasCreateImage(canvas::Ptr{cdCanvas}, w::Cint, h::Cint)
  ccall( (:cdCanvasCreateImage, libcd_), Ptr{cdImage}, (Ptr{cdCanvas}, Cint, Cint), canvas, w, h)
end
function cdKillImage(image::Ptr{cdImage})
  ccall( (:cdKillImage, libcd_), None, (Ptr{cdImage},), image)
end
function cdCanvasGetImage(canvas::Ptr{cdCanvas}, image::Ptr{cdImage}, x::Cint, y::Cint)
  ccall( (:cdCanvasGetImage, libcd_), None, (Ptr{cdCanvas}, Ptr{cdImage}, Cint, Cint), canvas, image, x, y)
end
function cdCanvasPutImageRect(canvas::Ptr{cdCanvas}, image::Ptr{cdImage}, x::Cint, y::Cint, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdCanvasPutImageRect, libcd_), None, (Ptr{cdCanvas}, Ptr{cdImage}, Cint, Cint, Cint, Cint, Cint, Cint), canvas, image, x, y, xmin, xmax, ymin, ymax)
end
function cdCanvasScrollArea(canvas::Ptr{cdCanvas}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint, dx::Cint, dy::Cint)
  ccall( (:cdCanvasScrollArea, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax, dx, dy)
end
function cdCreateBitmap(w::Cint, h::Cint, _type::Cint)
  ccall( (:cdCreateBitmap, libcd_), Ptr{cdBitmap}, (Cint, Cint, Cint), w, h, _type)
end
function cdKillBitmap(bitmap::Ptr{cdBitmap})
  ccall( (:cdKillBitmap, libcd_), None, (Ptr{cdBitmap},), bitmap)
end
function cdBitmapGetData(bitmap::Ptr{cdBitmap}, dataptr::Cint)
  ccall( (:cdBitmapGetData, libcd_), Ptr{Cuchar}, (Ptr{cdBitmap}, Cint), bitmap, dataptr)
end
function cdBitmapSetRect(bitmap::Ptr{cdBitmap}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdBitmapSetRect, libcd_), None, (Ptr{cdBitmap}, Cint, Cint, Cint, Cint), bitmap, xmin, xmax, ymin, ymax)
end
function cdCanvasPutBitmap(canvas::Ptr{cdCanvas}, bitmap::Ptr{cdBitmap}, x::Cint, y::Cint, w::Cint, h::Cint)
  ccall( (:cdCanvasPutBitmap, libcd_), None, (Ptr{cdCanvas}, Ptr{cdBitmap}, Cint, Cint, Cint, Cint), canvas, bitmap, x, y, w, h)
end
function cdCanvasGetBitmap(canvas::Ptr{cdCanvas}, bitmap::Ptr{cdBitmap}, x::Cint, y::Cint)
  ccall( (:cdCanvasGetBitmap, libcd_), None, (Ptr{cdCanvas}, Ptr{cdBitmap}, Cint, Cint), canvas, bitmap, x, y)
end
function cdBitmapRGB2Map(bitmap_rgb::Ptr{cdBitmap}, bitmap_map::Ptr{cdBitmap})
  ccall( (:cdBitmapRGB2Map, libcd_), None, (Ptr{cdBitmap}, Ptr{cdBitmap}), bitmap_rgb, bitmap_map)
end
function cdEncodeColor(red::Cuchar, green::Cuchar, blue::Cuchar)
  ccall( (:cdEncodeColor, libcd_), Clong, (Cuchar, Cuchar, Cuchar), red, green, blue)
end
function cdDecodeColor(color::Clong, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar})
  ccall( (:cdDecodeColor, libcd_), None, (Clong, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}), color, red, green, blue)
end
function cdDecodeAlpha(color::Clong)
  ccall( (:cdDecodeAlpha, libcd_), Cuchar, (Clong,), color)
end
function cdEncodeAlpha(color::Clong, alpha::Cuchar)
  ccall( (:cdEncodeAlpha, libcd_), Clong, (Clong, Cuchar), color, alpha)
end
function cdRGB2Map(width::Cint, height::Cint, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, index::Ptr{Cuchar}, pal_size::Cint, color::Ptr{Clong})
  ccall( (:cdRGB2Map, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Ptr{Clong}), width, height, red, green, blue, index, pal_size, color)
end
function cdActivate(canvas::Ptr{cdCanvas})
  ccall( (:cdActivate, libcd_), Cint, (Ptr{cdCanvas},), canvas)
end
function cdActiveCanvas()
  ccall( (:cdActiveCanvas, libcd_), Ptr{cdCanvas}, (), )
end
function cdSimulate(mode::Cint)
  ccall( (:cdSimulate, libcd_), Cint, (Cint,), mode)
end
function cdFlush()
  ccall( (:cdFlush, libcd_), None, (), )
end
function cdClear()
  ccall( (:cdClear, libcd_), None, (), )
end
function cdSaveState()
  ccall( (:cdSaveState, libcd_), Ptr{cdState}, (), )
end
function cdRestoreState(state::Ptr{cdState})
  ccall( (:cdRestoreState, libcd_), None, (Ptr{cdState},), state)
end
function cdSetAttribute(name::Ptr{Uint8}, data::Ptr{Uint8})
  ccall( (:cdSetAttribute, libcd_), None, (Ptr{Uint8}, Ptr{Uint8}), name, data)
end
function cdGetAttribute(name::Ptr{Uint8})
  ccall( (:cdGetAttribute, libcd_), Ptr{Uint8}, (Ptr{Uint8},), name)
end
function cdGetContext(canvas::Ptr{cdCanvas})
  ccall( (:cdGetContext, libcd_), Ptr{cdContext}, (Ptr{cdCanvas},), canvas)
end
function cdRegisterCallback(context::Ptr{cdContext}, cb::Cint, func::cdCallback)
  ccall( (:cdRegisterCallback, libcd_), Cint, (Ptr{cdContext}, Cint, cdCallback), context, cb, func)
end
function cdPlay(context::Ptr{cdContext}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint, data::Ptr{None})
  ccall( (:cdPlay, libcd_), Cint, (Ptr{cdContext}, Cint, Cint, Cint, Cint, Ptr{None}), context, xmin, xmax, ymin, ymax, data)
end
function cdGetCanvasSize(width::Ptr{Cint}, height::Ptr{Cint}, width_mm::Ptr{Cdouble}, height_mm::Ptr{Cdouble})
  ccall( (:cdGetCanvasSize, libcd_), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cdouble}, Ptr{Cdouble}), width, height, width_mm, height_mm)
end
function cdUpdateYAxis(y::Ptr{Cint})
  ccall( (:cdUpdateYAxis, libcd_), Cint, (Ptr{Cint},), y)
end
function cdMM2Pixel(mm_dx::Cdouble, mm_dy::Cdouble, dx::Ptr{Cint}, dy::Ptr{Cint})
  ccall( (:cdMM2Pixel, libcd_), None, (Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), mm_dx, mm_dy, dx, dy)
end
function cdPixel2MM(dx::Cint, dy::Cint, mm_dx::Ptr{Cdouble}, mm_dy::Ptr{Cdouble})
  ccall( (:cdPixel2MM, libcd_), None, (Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), dx, dy, mm_dx, mm_dy)
end
function cdOrigin(x::Cint, y::Cint)
  ccall( (:cdOrigin, libcd_), None, (Cint, Cint), x, y)
end
function cdClip(mode::Cint)
  ccall( (:cdClip, libcd_), Cint, (Cint,), mode)
end
function cdGetClipPoly(n::Ptr{Cint})
  ccall( (:cdGetClipPoly, libcd_), Ptr{Cint}, (Ptr{Cint},), n)
end
function cdClipArea(xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdClipArea, libcd_), None, (Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax)
end
function cdGetClipArea(xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdGetClipArea, libcd_), Cint, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xmin, xmax, ymin, ymax)
end
function cdPointInRegion(x::Cint, y::Cint)
  ccall( (:cdPointInRegion, libcd_), Cint, (Cint, Cint), x, y)
end
function cdOffsetRegion(x::Cint, y::Cint)
  ccall( (:cdOffsetRegion, libcd_), None, (Cint, Cint), x, y)
end
function cdRegionBox(xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdRegionBox, libcd_), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xmin, xmax, ymin, ymax)
end
function cdRegionCombineMode(mode::Cint)
  ccall( (:cdRegionCombineMode, libcd_), Cint, (Cint,), mode)
end
function cdPixel(x::Cint, y::Cint, color::Clong)
  ccall( (:cdPixel, libcd_), None, (Cint, Cint, Clong), x, y, color)
end
function cdMark(x::Cint, y::Cint)
  ccall( (:cdMark, libcd_), None, (Cint, Cint), x, y)
end
function cdLine(x1::Cint, y1::Cint, x2::Cint, y2::Cint)
  ccall( (:cdLine, libcd_), None, (Cint, Cint, Cint, Cint), x1, y1, x2, y2)
end
function cdBegin(mode::Cint)
  ccall( (:cdBegin, libcd_), None, (Cint,), mode)
end
function cdVertex(x::Cint, y::Cint)
  ccall( (:cdVertex, libcd_), None, (Cint, Cint), x, y)
end
function cdEnd()
  ccall( (:cdEnd, libcd_), None, (), )
end
function cdRect(xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdRect, libcd_), None, (Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax)
end
function cdBox(xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdBox, libcd_), None, (Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax)
end
function cdArc(xc::Cint, yc::Cint, w::Cint, h::Cint, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdArc, libcd_), None, (Cint, Cint, Cint, Cint, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function cdSector(xc::Cint, yc::Cint, w::Cint, h::Cint, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdSector, libcd_), None, (Cint, Cint, Cint, Cint, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function cdChord(xc::Cint, yc::Cint, w::Cint, h::Cint, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdChord, libcd_), None, (Cint, Cint, Cint, Cint, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function cdText(x::Cint, y::Cint, s::Ptr{Uint8})
  ccall( (:cdText, libcd_), None, (Cint, Cint, Ptr{Uint8}), x, y, s)
end
function cdBackground(color::Clong)
  ccall( (:cdBackground, libcd_), Clong, (Clong,), color)
end
function cdForeground(color::Clong)
  ccall( (:cdForeground, libcd_), Clong, (Clong,), color)
end
function cdBackOpacity(opacity::Cint)
  ccall( (:cdBackOpacity, libcd_), Cint, (Cint,), opacity)
end
function cdWriteMode(mode::Cint)
  ccall( (:cdWriteMode, libcd_), Cint, (Cint,), mode)
end
function cdLineStyle(style::Cint)
  ccall( (:cdLineStyle, libcd_), Cint, (Cint,), style)
end
function cdLineStyleDashes(dashes::Ptr{Cint}, count::Cint)
  ccall( (:cdLineStyleDashes, libcd_), None, (Ptr{Cint}, Cint), dashes, count)
end
function cdLineWidth(width::Cint)
  ccall( (:cdLineWidth, libcd_), Cint, (Cint,), width)
end
function cdLineJoin(join::Cint)
  ccall( (:cdLineJoin, libcd_), Cint, (Cint,), join)
end
function cdLineCap(cap::Cint)
  ccall( (:cdLineCap, libcd_), Cint, (Cint,), cap)
end
function cdInteriorStyle(style::Cint)
  ccall( (:cdInteriorStyle, libcd_), Cint, (Cint,), style)
end
function cdHatch(style::Cint)
  ccall( (:cdHatch, libcd_), Cint, (Cint,), style)
end
function cdStipple(w::Cint, h::Cint, stipple::Ptr{Cuchar})
  ccall( (:cdStipple, libcd_), None, (Cint, Cint, Ptr{Cuchar}), w, h, stipple)
end
function cdGetStipple(n::Ptr{Cint}, m::Ptr{Cint})
  ccall( (:cdGetStipple, libcd_), Ptr{Cuchar}, (Ptr{Cint}, Ptr{Cint}), n, m)
end
function cdPattern(w::Cint, h::Cint, pattern::Ptr{Clong})
  ccall( (:cdPattern, libcd_), None, (Cint, Cint, Ptr{Clong}), w, h, pattern)
end
function cdGetPattern(n::Ptr{Cint}, m::Ptr{Cint})
  ccall( (:cdGetPattern, libcd_), Ptr{Clong}, (Ptr{Cint}, Ptr{Cint}), n, m)
end
function cdFillMode(mode::Cint)
  ccall( (:cdFillMode, libcd_), Cint, (Cint,), mode)
end
function cdFont(type_face::Cint, style::Cint, size::Cint)
  ccall( (:cdFont, libcd_), None, (Cint, Cint, Cint), type_face, style, size)
end
function cdGetFont(type_face::Ptr{Cint}, style::Ptr{Cint}, size::Ptr{Cint})
  ccall( (:cdGetFont, libcd_), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), type_face, style, size)
end
function cdNativeFont(font::Ptr{Uint8})
  ccall( (:cdNativeFont, libcd_), Ptr{Uint8}, (Ptr{Uint8},), font)
end
function cdTextAlignment(alignment::Cint)
  ccall( (:cdTextAlignment, libcd_), Cint, (Cint,), alignment)
end
function cdTextOrientation(angle::Cdouble)
  ccall( (:cdTextOrientation, libcd_), Cdouble, (Cdouble,), angle)
end
function cdMarkType(_type::Cint)
  ccall( (:cdMarkType, libcd_), Cint, (Cint,), _type)
end
function cdMarkSize(size::Cint)
  ccall( (:cdMarkSize, libcd_), Cint, (Cint,), size)
end
function cdVectorText(x::Cint, y::Cint, s::Ptr{Uint8})
  ccall( (:cdVectorText, libcd_), None, (Cint, Cint, Ptr{Uint8}), x, y, s)
end
function cdMultiLineVectorText(x::Cint, y::Cint, s::Ptr{Uint8})
  ccall( (:cdMultiLineVectorText, libcd_), None, (Cint, Cint, Ptr{Uint8}), x, y, s)
end
function cdVectorFont(filename::Ptr{Uint8})
  ccall( (:cdVectorFont, libcd_), Ptr{Uint8}, (Ptr{Uint8},), filename)
end
function cdVectorTextDirection(x1::Cint, y1::Cint, x2::Cint, y2::Cint)
  ccall( (:cdVectorTextDirection, libcd_), None, (Cint, Cint, Cint, Cint), x1, y1, x2, y2)
end
function cdVectorTextTransform(matrix::Ptr{Cdouble})
  ccall( (:cdVectorTextTransform, libcd_), Ptr{Cdouble}, (Ptr{Cdouble},), matrix)
end
function cdVectorTextSize(size_x::Cint, size_y::Cint, s::Ptr{Uint8})
  ccall( (:cdVectorTextSize, libcd_), None, (Cint, Cint, Ptr{Uint8}), size_x, size_y, s)
end
function cdVectorCharSize(size::Cint)
  ccall( (:cdVectorCharSize, libcd_), Cint, (Cint,), size)
end
function cdGetVectorTextSize(s::Ptr{Uint8}, x::Ptr{Cint}, y::Ptr{Cint})
  ccall( (:cdGetVectorTextSize, libcd_), None, (Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), s, x, y)
end
function cdGetVectorTextBounds(s::Ptr{Uint8}, x::Cint, y::Cint, rect::Ptr{Cint})
  ccall( (:cdGetVectorTextBounds, libcd_), None, (Ptr{Uint8}, Cint, Cint, Ptr{Cint}), s, x, y, rect)
end
function cdFontDim(max_width::Ptr{Cint}, height::Ptr{Cint}, ascent::Ptr{Cint}, descent::Ptr{Cint})
  ccall( (:cdFontDim, libcd_), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), max_width, height, ascent, descent)
end
function cdTextSize(s::Ptr{Uint8}, width::Ptr{Cint}, height::Ptr{Cint})
  ccall( (:cdTextSize, libcd_), None, (Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), s, width, height)
end
function cdTextBox(x::Cint, y::Cint, s::Ptr{Uint8}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdTextBox, libcd_), None, (Cint, Cint, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), x, y, s, xmin, xmax, ymin, ymax)
end
function cdTextBounds(x::Cint, y::Cint, s::Ptr{Uint8}, rect::Ptr{Cint})
  ccall( (:cdTextBounds, libcd_), None, (Cint, Cint, Ptr{Uint8}, Ptr{Cint}), x, y, s, rect)
end
function cdGetColorPlanes()
  ccall( (:cdGetColorPlanes, libcd_), Cint, (), )
end
function cdPalette(n::Cint, palette::Ptr{Clong}, mode::Cint)
  ccall( (:cdPalette, libcd_), None, (Cint, Ptr{Clong}, Cint), n, palette, mode)
end
function cdGetImageRGB(r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Cint, y::Cint, w::Cint, h::Cint)
  ccall( (:cdGetImageRGB, libcd_), None, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint), r, g, b, x, y, w, h)
end
function cdPutImageRectRGB(iw::Cint, ih::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Cint, y::Cint, w::Cint, h::Cint, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdPutImageRectRGB, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdPutImageRectRGBA(iw::Cint, ih::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Cint, y::Cint, w::Cint, h::Cint, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdPutImageRectRGBA, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdPutImageRectMap(iw::Cint, ih::Cint, index::Ptr{Cuchar}, colors::Ptr{Clong}, x::Cint, y::Cint, w::Cint, h::Cint, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdPutImageRectMap, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Clong}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), iw, ih, index, colors, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdCreateImage(w::Cint, h::Cint)
  ccall( (:cdCreateImage, libcd_), Ptr{cdImage}, (Cint, Cint), w, h)
end
function cdGetImage(image::Ptr{cdImage}, x::Cint, y::Cint)
  ccall( (:cdGetImage, libcd_), None, (Ptr{cdImage}, Cint, Cint), image, x, y)
end
function cdPutImageRect(image::Ptr{cdImage}, x::Cint, y::Cint, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint)
  ccall( (:cdPutImageRect, libcd_), None, (Ptr{cdImage}, Cint, Cint, Cint, Cint, Cint, Cint), image, x, y, xmin, xmax, ymin, ymax)
end
function cdScrollArea(xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint, dx::Cint, dy::Cint)
  ccall( (:cdScrollArea, libcd_), None, (Cint, Cint, Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax, dx, dy)
end
function cdPutBitmap(bitmap::Ptr{cdBitmap}, x::Cint, y::Cint, w::Cint, h::Cint)
  ccall( (:cdPutBitmap, libcd_), None, (Ptr{cdBitmap}, Cint, Cint, Cint, Cint), bitmap, x, y, w, h)
end
function cdGetBitmap(bitmap::Ptr{cdBitmap}, x::Cint, y::Cint)
  ccall( (:cdGetBitmap, libcd_), None, (Ptr{cdBitmap}, Cint, Cint), bitmap, x, y)
end

