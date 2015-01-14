# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/cd/include/cd.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libcd_ = "cd") : (const libcd_ = "libcd")  # Name of IUP shared lib.


function cdBaseDriver()
  ccall( (:cdBaseDriver, libcd_), Cint, (), )
end
function cdRegisterAttribute(canvas::Ptr{Cint}, attrib::Ptr{cdAttribute})
  ccall( (:cdRegisterAttribute, libcd_), None, (Ptr{Cint}, Ptr{cdAttribute}), canvas, attrib)
end
function cdUpdateAttributes(canvas::Ptr{Cint})
  ccall( (:cdUpdateAttributes, libcd_), None, (Ptr{Cint},), canvas)
end
function cdCreateVectorFont(canvas::Ptr{Cint})
  ccall( (:cdCreateVectorFont, libcd_), Ptr{cdVectorFont}, (Ptr{Cint},), canvas)
end
function cdKillVectorFont(vector_font_data::Ptr{cdVectorFont})
  ccall( (:cdKillVectorFont, libcd_), None, (Ptr{cdVectorFont},), vector_font_data)
end
function wdSetDefaults(canvas::Ptr{Cint})
  ccall( (:wdSetDefaults, libcd_), None, (Ptr{Cint},), canvas)
end
function cdInitContextPlusList(ctx_list::Ptr{Ptr{Cint}})
  ccall( (:cdInitContextPlusList, libcd_), None, (Ptr{Ptr{Cint}},), ctx_list)
end
function cdGetContextPlus()
  ccall( (:cdGetContextPlus, libcd_), Ptr{Cint}, (), )
end
function cdRound(x::Cdouble)
  ccall( (:cdRound, libcd_), Cint, (Cdouble,), x)
end
function cdCheckBoxSize(xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdCheckBoxSize, libcd_), Cint, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xmin, xmax, ymin, ymax)
end
function cdfCheckBoxSize(xmin::Ptr{Cdouble}, xmax::Ptr{Cdouble}, ymin::Ptr{Cdouble}, ymax::Ptr{Cdouble})
  ccall( (:cdfCheckBoxSize, libcd_), Cint, (Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), xmin, xmax, ymin, ymax)
end
function cdNormalizeLimits(w::Integer, h::Integer, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdNormalizeLimits, libcd_), None, (Cint, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), w, h, xmin, xmax, ymin, ymax)
end
function cdGetFileName(strdata::Ptr{Uint8}, filename::Ptr{Uint8})
  ccall( (:cdGetFileName, libcd_), Cint, (Ptr{Uint8}, Ptr{Uint8}), strdata, filename)
end
function cdStrEqualNoCase(str1::Ptr{Uint8}, str2::Ptr{Uint8})
  ccall( (:cdStrEqualNoCase, libcd_), Cint, (Ptr{Uint8}, Ptr{Uint8}), str1, str2)
end
function cdStrEqualNoCasePartial(str1::Ptr{Uint8}, str2::Ptr{Uint8})
  ccall( (:cdStrEqualNoCasePartial, libcd_), Cint, (Ptr{Uint8}, Ptr{Uint8}), str1, str2)
end
function cdStrLineCount(str::Ptr{Uint8})
  ccall( (:cdStrLineCount, libcd_), Cint, (Ptr{Uint8},), str)
end
function cdStrDup(str::Ptr{Uint8})
  ccall( (:cdStrDup, libcd_), Ptr{Uint8}, (Ptr{Uint8},), str)
end
function cdStrDupN(str::Ptr{Uint8}, len::Integer)
  ccall( (:cdStrDupN, libcd_), Ptr{Uint8}, (Ptr{Uint8}, Cint), str, len)
end
function cdStrIsAscii(str::Ptr{Uint8})
  ccall( (:cdStrIsAscii, libcd_), Cint, (Ptr{Uint8},), str)
end
function cdSetPaperSize(size::Integer, w_pt::Ptr{Cdouble}, h_pt::Ptr{Cdouble})
  ccall( (:cdSetPaperSize, libcd_), None, (Cint, Ptr{Cdouble}, Ptr{Cdouble}), size, w_pt, h_pt)
end
function cdGetFontFileName(type_face::Ptr{Uint8}, filename::Ptr{Uint8})
  ccall( (:cdGetFontFileName, libcd_), Cint, (Ptr{Uint8}, Ptr{Uint8}), type_face, filename)
end
function cdGetFontFileNameDefault(type_face::Ptr{Uint8}, style::Integer, filename::Ptr{Uint8})
  ccall( (:cdGetFontFileNameDefault, libcd_), Cint, (Ptr{Uint8}, Cint, Ptr{Uint8}), type_face, style, filename)
end
function cdGetFontFileNameSystem(type_face::Ptr{Uint8}, style::Integer, filename::Ptr{Uint8})
  ccall( (:cdGetFontFileNameSystem, libcd_), Cint, (Ptr{Uint8}, Cint, Ptr{Uint8}), type_face, style, filename)
end
function cdStrTmpFileName(filename::Ptr{Uint8})
  ccall( (:cdStrTmpFileName, libcd_), Cint, (Ptr{Uint8},), filename)
end
function cdCanvasPoly(canvas::Ptr{Cint}, mode::Integer, points::Ptr{cdPoint}, n::Integer)
  ccall( (:cdCanvasPoly, libcd_), None, (Ptr{Cint}, Cint, Ptr{cdPoint}, Cint), canvas, mode, points, n)
end
function cdCanvasGetArcBox(xc::Integer, yc::Integer, w::Integer, h::Integer, a1::Cdouble, a2::Cdouble, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdCanvasGetArcBox, libcd_), None, (Cint, Cint, Cint, Cint, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xc, yc, w, h, a1, a2, xmin, xmax, ymin, ymax)
end
function cdCanvasGetArcPathF(poly::Ptr{cdPoint}, xc::Ptr{Cdouble}, yc::Ptr{Cdouble}, w::Ptr{Cdouble}, h::Ptr{Cdouble}, a1::Ptr{Cdouble}, a2::Ptr{Cdouble})
  ccall( (:cdCanvasGetArcPathF, libcd_), Cint, (Ptr{cdPoint}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), poly, xc, yc, w, h, a1, a2)
end
function cdfCanvasGetArcPath(poly::Ptr{cdfPoint}, xc::Ptr{Cdouble}, yc::Ptr{Cdouble}, w::Ptr{Cdouble}, h::Ptr{Cdouble}, a1::Ptr{Cdouble}, a2::Ptr{Cdouble})
  ccall( (:cdfCanvasGetArcPath, libcd_), Cint, (Ptr{cdfPoint}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), poly, xc, yc, w, h, a1, a2)
end
function cdCanvasGetArcPath(poly::Ptr{cdPoint}, xc::Ptr{Cint}, yc::Ptr{Cint}, w::Ptr{Cint}, h::Ptr{Cint}, a1::Ptr{Cdouble}, a2::Ptr{Cdouble})
  ccall( (:cdCanvasGetArcPath, libcd_), Cint, (Ptr{cdPoint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cdouble}, Ptr{Cdouble}), poly, xc, yc, w, h, a1, a2)
end
function cdCanvasGetArcStartEnd(xc::Integer, yc::Integer, w::Integer, h::Integer, a1::Cdouble, a2::Cdouble, x1::Ptr{Cint}, y1::Ptr{Cint}, x2::Ptr{Cint}, y2::Ptr{Cint})
  ccall( (:cdCanvasGetArcStartEnd, libcd_), None, (Cint, Cint, Cint, Cint, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xc, yc, w, h, a1, a2, x1, y1, x2, y2)
end
function cdfCanvasGetArcStartEnd(xc::Cdouble, yc::Cdouble, w::Cdouble, h::Cdouble, a1::Cdouble, a2::Cdouble, x1::Ptr{Cdouble}, y1::Ptr{Cdouble}, x2::Ptr{Cdouble}, y2::Ptr{Cdouble})
  ccall( (:cdfCanvasGetArcStartEnd, libcd_), None, (Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), xc, yc, w, h, a1, a2, x1, y1, x2, y2)
end
function cdMatrixTransformPoint(matrix::Ptr{Cdouble}, x::Integer, y::Integer, rx::Ptr{Cint}, ry::Ptr{Cint})
  ccall( (:cdMatrixTransformPoint, libcd_), None, (Ptr{Cdouble}, Cint, Cint, Ptr{Cint}, Ptr{Cint}), matrix, x, y, rx, ry)
end
function cdfMatrixTransformPoint(matrix::Ptr{Cdouble}, x::Cdouble, y::Cdouble, rx::Ptr{Cdouble}, ry::Ptr{Cdouble})
  ccall( (:cdfMatrixTransformPoint, libcd_), None, (Ptr{Cdouble}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), matrix, x, y, rx, ry)
end
function cdMatrixMultiply(matrix::Ptr{Cdouble}, mul_matrix::Ptr{Cdouble})
  ccall( (:cdMatrixMultiply, libcd_), None, (Ptr{Cdouble}, Ptr{Cdouble}), matrix, mul_matrix)
end
function cdMatrixInverse(matrix::Ptr{Cdouble}, inv_matrix::Ptr{Cdouble})
  ccall( (:cdMatrixInverse, libcd_), None, (Ptr{Cdouble}, Ptr{Cdouble}), matrix, inv_matrix)
end
function cdfRotatePoint(canvas::Ptr{Cint}, x::Cdouble, y::Cdouble, cx::Cdouble, cy::Cdouble, rx::Ptr{Cdouble}, ry::Ptr{Cdouble}, sin_theta::Cdouble, cos_theta::Cdouble)
  ccall( (:cdfRotatePoint, libcd_), None, (Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble, Cdouble), canvas, x, y, cx, cy, rx, ry, sin_theta, cos_theta)
end
function cdRotatePoint(canvas::Ptr{Cint}, x::Integer, y::Integer, cx::Integer, cy::Integer, rx::Ptr{Cint}, ry::Ptr{Cint}, sin_teta::Cdouble, cos_teta::Cdouble)
  ccall( (:cdRotatePoint, libcd_), None, (Ptr{Cint}, Cint, Cint, Cint, Cint, Ptr{Cint}, Ptr{Cint}, Cdouble, Cdouble), canvas, x, y, cx, cy, rx, ry, sin_teta, cos_teta)
end
function cdRotatePointY(canvas::Ptr{Cint}, x::Integer, y::Integer, cx::Integer, cy::Integer, ry::Ptr{Cint}, sin_theta::Cdouble, cos_theta::Cdouble)
  ccall( (:cdRotatePointY, libcd_), None, (Ptr{Cint}, Cint, Cint, Cint, Cint, Ptr{Cint}, Cdouble, Cdouble), canvas, x, y, cx, cy, ry, sin_theta, cos_theta)
end
function cdTextTranslatePoint(canvas::Ptr{Cint}, x::Integer, y::Integer, w::Integer, h::Integer, baseline::Integer, rx::Ptr{Cint}, ry::Ptr{Cint})
  ccall( (:cdTextTranslatePoint, libcd_), None, (Ptr{Cint}, Cint, Cint, Cint, Cint, Cint, Ptr{Cint}, Ptr{Cint}), canvas, x, y, w, h, baseline, rx, ry)
end
function cdMovePoint(x::Ptr{Cint}, y::Ptr{Cint}, dx::Cdouble, dy::Cdouble, sin_theta::Cdouble, cos_theta::Cdouble)
  ccall( (:cdMovePoint, libcd_), None, (Ptr{Cint}, Ptr{Cint}, Cdouble, Cdouble, Cdouble, Cdouble), x, y, dx, dy, sin_theta, cos_theta)
end
function cdfMovePoint(x::Ptr{Cdouble}, y::Ptr{Cdouble}, dx::Cdouble, dy::Cdouble, sin_theta::Cdouble, cos_theta::Cdouble)
  ccall( (:cdfMovePoint, libcd_), None, (Ptr{Cdouble}, Ptr{Cdouble}, Cdouble, Cdouble, Cdouble, Cdouble), x, y, dx, dy, sin_theta, cos_theta)
end
function cdParsePangoFont(nativefont::Ptr{Uint8}, type_face::Ptr{Uint8}, style::Ptr{Cint}, size::Ptr{Cint})
  ccall( (:cdParsePangoFont, libcd_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), nativefont, type_face, style, size)
end
function cdParseIupWinFont(nativefont::Ptr{Uint8}, type_face::Ptr{Uint8}, style::Ptr{Cint}, size::Ptr{Cint})
  ccall( (:cdParseIupWinFont, libcd_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), nativefont, type_face, style, size)
end
function cdParseXWinFont(nativefont::Ptr{Uint8}, type_face::Ptr{Uint8}, style::Ptr{Cint}, size::Ptr{Cint})
  ccall( (:cdParseXWinFont, libcd_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), nativefont, type_face, style, size)
end
function cdGetFontSizePixels(canvas::Ptr{Cint}, size::Integer)
  ccall( (:cdGetFontSizePixels, libcd_), Cint, (Ptr{Cint}, Cint), canvas, size)
end
function cdGetFontSizePoints(canvas::Ptr{Cint}, size::Integer)
  ccall( (:cdGetFontSizePoints, libcd_), Cint, (Ptr{Cint}, Cint), canvas, size)
end
function cdgetfontdimEX(ctxcanvas::Ptr{cdCtxCanvas}, max_width::Ptr{Cint}, height::Ptr{Cint}, ascent::Ptr{Cint}, descent::Ptr{Cint})
  ccall( (:cdgetfontdimEX, libcd_), None, (Ptr{cdCtxCanvas}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), ctxcanvas, max_width, height, ascent, descent)
end
function cdgettextsizeEX(ctxcanvas::Ptr{cdCtxCanvas}, s::Ptr{Uint8}, len::Integer, width::Ptr{Cint}, height::Ptr{Cint})
  ccall( (:cdgettextsizeEX, libcd_), None, (Ptr{cdCtxCanvas}, Ptr{Uint8}, Cint, Ptr{Cint}, Ptr{Cint}), ctxcanvas, s, len, width, height)
end
function cdZeroOrderInterpolation(width::Integer, height::Integer, map::Ptr{Cuchar}, xl::Cdouble, yl::Cdouble)
  ccall( (:cdZeroOrderInterpolation, libcd_), Cuchar, (Cint, Cint, Ptr{Cuchar}, Cdouble, Cdouble), width, height, map, xl, yl)
end
function cdBilinearInterpolation(width::Integer, height::Integer, map::Ptr{Cuchar}, xl::Cdouble, yl::Cdouble)
  ccall( (:cdBilinearInterpolation, libcd_), Cuchar, (Cint, Cint, Ptr{Cuchar}, Cdouble, Cdouble), width, height, map, xl, yl)
end
function cdImageRGBInitInverseTransform(w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer, xfactor::Ptr{Cdouble}, yfactor::Ptr{Cdouble}, matrix::Ptr{Cdouble}, inv_matrix::Ptr{Cdouble})
  ccall( (:cdImageRGBInitInverseTransform, libcd_), None, (Cint, Cint, Cint, Cint, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}, Ptr{Cdouble}), w, h, xmin, xmax, ymin, ymax, xfactor, yfactor, matrix, inv_matrix)
end
function cdImageRGBInverseTransform(t_x::Integer, t_y::Integer, i_x::Ptr{Cdouble}, i_y::Ptr{Cdouble}, xfactor::Cdouble, yfactor::Cdouble, xmin::Integer, ymin::Integer, x::Integer, y::Integer, inv_matrix::Ptr{Cdouble})
  ccall( (:cdImageRGBInverseTransform, libcd_), None, (Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Cdouble, Cdouble, Cint, Cint, Cint, Cint, Ptr{Cdouble}), t_x, t_y, i_x, i_y, xfactor, yfactor, xmin, ymin, x, y, inv_matrix)
end
function cdImageRGBCalcDstLimits(canvas::Ptr{Cint}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint}, rect::Ptr{Cint})
  ccall( (:cdImageRGBCalcDstLimits, libcd_), None, (Ptr{Cint}, Cint, Cint, Cint, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, x, y, w, h, xmin, xmax, ymin, ymax, rect)
end
function cdRGB2Gray(width::Integer, height::Integer, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, index::Ptr{Cuchar}, color::Ptr{Clong})
  ccall( (:cdRGB2Gray, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Clong}), width, height, red, green, blue, index, color)
end
function cdGetZoomTable(w::Integer, rw::Integer, xmin::Integer)
  ccall( (:cdGetZoomTable, libcd_), Ptr{Cint}, (Cint, Cint, Cint), w, rw, xmin)
end
function cdCalcZoom(canvas_size::Integer, cnv_rect_pos::Integer, cnv_rect_size::Integer, new_cnv_rect_pos::Ptr{Cint}, new_cnv_rect_size::Ptr{Cint}, img_rect_pos::Integer, img_rect_size::Integer, new_img_rect_pos::Ptr{Cint}, new_img_rect_size::Ptr{Cint}, is_horizontal::Integer)
  ccall( (:cdCalcZoom, libcd_), Cint, (Cint, Cint, Cint, Ptr{Cint}, Ptr{Cint}, Cint, Cint, Ptr{Cint}, Ptr{Cint}, Cint), canvas_size, cnv_rect_pos, cnv_rect_size, new_cnv_rect_pos, new_cnv_rect_size, img_rect_pos, img_rect_size, new_img_rect_pos, new_img_rect_size, is_horizontal)
end
function cdCreateSimulation(canvas::Ptr{Cint})
  ccall( (:cdCreateSimulation, libcd_), Ptr{cdSimulation}, (Ptr{Cint},), canvas)
end
function cdKillSimulation(simulation::Ptr{cdSimulation})
  ccall( (:cdKillSimulation, libcd_), None, (Ptr{cdSimulation},), simulation)
end
function cdSimInitText(simulation::Ptr{cdSimulation})
  ccall( (:cdSimInitText, libcd_), None, (Ptr{cdSimulation},), simulation)
end
function cdSimTextFT(ctxcanvas::Ptr{cdCtxCanvas}, x::Integer, y::Integer, s::Ptr{Uint8}, len::Integer)
  ccall( (:cdSimTextFT, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Cint, Ptr{Uint8}, Cint), ctxcanvas, x, y, s, len)
end
function cdSimFontFT(ctxcanvas::Ptr{cdCtxCanvas}, type_face::Ptr{Uint8}, style::Integer, size::Integer)
  ccall( (:cdSimFontFT, libcd_), Cint, (Ptr{cdCtxCanvas}, Ptr{Uint8}, Cint, Cint), ctxcanvas, type_face, style, size)
end
function cdSimGetFontDimFT(ctxcanvas::Ptr{cdCtxCanvas}, max_width::Ptr{Cint}, height::Ptr{Cint}, ascent::Ptr{Cint}, descent::Ptr{Cint})
  ccall( (:cdSimGetFontDimFT, libcd_), None, (Ptr{cdCtxCanvas}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), ctxcanvas, max_width, height, ascent, descent)
end
function cdSimGetTextSizeFT(ctxcanvas::Ptr{cdCtxCanvas}, s::Ptr{Uint8}, len::Integer, width::Ptr{Cint}, height::Ptr{Cint})
  ccall( (:cdSimGetTextSizeFT, libcd_), None, (Ptr{cdCtxCanvas}, Ptr{Uint8}, Cint, Ptr{Cint}, Ptr{Cint}), ctxcanvas, s, len, width, height)
end
function cdSimMark(canvas::Ptr{Cint}, x::Integer, y::Integer)
  ccall( (:cdSimMark, libcd_), None, (Ptr{Cint}, Cint, Cint), canvas, x, y)
end
function cdSimPutImageRectRGBA(canvas::Ptr{Cint}, iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdSimPutImageRectRGBA, libcd_), None, (Ptr{Cint}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdSimPutImageRectRGB(canvas::Ptr{Cint}, iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdSimPutImageRectRGB, libcd_), None, (Ptr{Cint}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdSimLine(ctxcanvas::Ptr{cdCtxCanvas}, x1::Integer, y1::Integer, x2::Integer, y2::Integer)
  ccall( (:cdSimLine, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Cint, Cint, Cint), ctxcanvas, x1, y1, x2, y2)
end
function cdSimRect(ctxcanvas::Ptr{cdCtxCanvas}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdSimRect, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Cint, Cint, Cint), ctxcanvas, xmin, xmax, ymin, ymax)
end
function cdSimBox(ctxcanvas::Ptr{cdCtxCanvas}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdSimBox, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Cint, Cint, Cint), ctxcanvas, xmin, xmax, ymin, ymax)
end
function cdSimArc(ctxcanvas::Ptr{cdCtxCanvas}, xc::Integer, yc::Integer, width::Integer, height::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdSimArc, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), ctxcanvas, xc, yc, width, height, angle1, angle2)
end
function cdSimSector(ctxcanvas::Ptr{cdCtxCanvas}, xc::Integer, yc::Integer, width::Integer, height::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdSimSector, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), ctxcanvas, xc, yc, width, height, angle1, angle2)
end
function cdSimChord(ctxcanvas::Ptr{cdCtxCanvas}, xc::Integer, yc::Integer, width::Integer, height::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdSimChord, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), ctxcanvas, xc, yc, width, height, angle1, angle2)
end
function cdSimPoly(ctxcanvas::Ptr{cdCtxCanvas}, mode::Integer, points::Ptr{cdPoint}, n::Integer)
  ccall( (:cdSimPoly, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Ptr{cdPoint}, Cint), ctxcanvas, mode, points, n)
end
function cdSimPolyBezier(canvas::Ptr{Cint}, points::Ptr{cdPoint}, n::Integer)
  ccall( (:cdSimPolyBezier, libcd_), None, (Ptr{Cint}, Ptr{cdPoint}, Cint), canvas, points, n)
end
function cdSimPolyPath(canvas::Ptr{Cint}, points::Ptr{cdPoint}, n::Integer)
  ccall( (:cdSimPolyPath, libcd_), None, (Ptr{Cint}, Ptr{cdPoint}, Cint), canvas, points, n)
end
function cdfSimLine(ctxcanvas::Ptr{cdCtxCanvas}, x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)
  ccall( (:cdfSimLine, libcd_), None, (Ptr{cdCtxCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), ctxcanvas, x1, y1, x2, y2)
end
function cdfSimRect(ctxcanvas::Ptr{cdCtxCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:cdfSimRect, libcd_), None, (Ptr{cdCtxCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), ctxcanvas, xmin, xmax, ymin, ymax)
end
function cdfSimBox(ctxcanvas::Ptr{cdCtxCanvas}, xmin::Cdouble, xmax::Cdouble, ymin::Cdouble, ymax::Cdouble)
  ccall( (:cdfSimBox, libcd_), None, (Ptr{cdCtxCanvas}, Cdouble, Cdouble, Cdouble, Cdouble), ctxcanvas, xmin, xmax, ymin, ymax)
end
function cdfSimArc(ctxcanvas::Ptr{cdCtxCanvas}, xc::Cdouble, yc::Cdouble, width::Cdouble, height::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdfSimArc, libcd_), None, (Ptr{cdCtxCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), ctxcanvas, xc, yc, width, height, angle1, angle2)
end
function cdfSimSector(ctxcanvas::Ptr{cdCtxCanvas}, xc::Cdouble, yc::Cdouble, width::Cdouble, height::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdfSimSector, libcd_), None, (Ptr{cdCtxCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), ctxcanvas, xc, yc, width, height, angle1, angle2)
end
function cdfSimChord(ctxcanvas::Ptr{cdCtxCanvas}, xc::Cdouble, yc::Cdouble, width::Cdouble, height::Cdouble, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdfSimChord, libcd_), None, (Ptr{cdCtxCanvas}, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble, Cdouble), ctxcanvas, xc, yc, width, height, angle1, angle2)
end
function cdfSimPoly(ctxcanvas::Ptr{cdCtxCanvas}, mode::Integer, fpoly::Ptr{cdfPoint}, n::Integer)
  ccall( (:cdfSimPoly, libcd_), None, (Ptr{cdCtxCanvas}, Cint, Ptr{cdfPoint}, Cint), ctxcanvas, mode, fpoly, n)
end
function cdfSimPolyBezier(canvas::Ptr{Cint}, points::Ptr{cdfPoint}, n::Integer)
  ccall( (:cdfSimPolyBezier, libcd_), None, (Ptr{Cint}, Ptr{cdfPoint}, Cint), canvas, points, n)
end
function cdfSimPolyPath(canvas::Ptr{Cint}, points::Ptr{cdfPoint}, n::Integer)
  ccall( (:cdfSimPolyPath, libcd_), None, (Ptr{Cint}, Ptr{cdfPoint}, Cint), canvas, points, n)
end
function cdVersion()
  ccall( (:cdVersion, libcd_), Ptr{Uint8}, (), )
end
function cdVersionDate()
  ccall( (:cdVersionDate, libcd_), Ptr{Uint8}, (), )
end
function cdVersionNumber()
  ccall( (:cdVersionNumber, libcd_), Cint, (), )
end
function cdCreateCanvas(context::Ptr{cdContext}, data::Ptr{Void})
  ccall( (:cdCreateCanvas, libcd_), Ptr{cdCanvas}, (Ptr{cdContext}, Ptr{Void}), context, data)
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
function cdUseContextPlus(use::Integer)
  ccall( (:cdUseContextPlus, libcd_), Cint, (Cint,), use)
end
function cdInitContextPlus()
  ccall( (:cdInitContextPlus, libcd_), None, (), )
end
function cdFinishContextPlus()
  ccall( (:cdFinishContextPlus, libcd_), None, (), )
end
function cdContextRegisterCallback(context::Ptr{cdContext}, cb::Integer, func::cdCallback)
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
function cdCanvasSimulate(canvas::Ptr{cdCanvas}, mode::Integer)
  ccall( (:cdCanvasSimulate, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasFlush(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasFlush, libcd_), None, (Ptr{cdCanvas},), canvas)
end
function cdCanvasClear(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasClear, libcd_), None, (Ptr{cdCanvas},), canvas)
end
function cdCanvasSaveState(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasSaveState, libcd_), Ptr{cdCanvas}, (Ptr{cdCanvas},), canvas)
end
function cdCanvasRestoreState(canvas::Ptr{cdCanvas}, state::Ptr{cdCanvas})
  ccall( (:cdCanvasRestoreState, libcd_), None, (Ptr{cdCanvas}, Ptr{cdCanvas}), canvas, state)
end
function cdReleaseState(state::Ptr{cdCanvas})
  ccall( (:cdReleaseState, libcd_), None, (Ptr{cdCanvas},), state)
end
function cdCanvasSetAttribute(canvas::Ptr{cdCanvas}, name, data)
  ccall( (:cdCanvasSetAttribute, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Ptr{Uint8}), canvas, name, data)
end
function cdCanvasGetAttribute(canvas::Ptr{cdCanvas}, name::Ptr{Uint8})
  ccall( (:cdCanvasGetAttribute, libcd_), Ptr{Uint8}, (Ptr{cdCanvas}, Ptr{Uint8}), canvas, name)
end
function cdCanvasPlay(canvas::Ptr{cdCanvas}, context::Ptr{cdContext}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer, data::Ptr{None})
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
function cdCanvasInvertYAxis(canvas::Ptr{cdCanvas}, y::Integer)
  ccall( (:cdCanvasInvertYAxis, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, y)
end
function cdfCanvasInvertYAxis(canvas::Ptr{cdCanvas}, y::Cdouble)
  ccall( (:cdfCanvasInvertYAxis, libcd_), Cdouble, (Ptr{cdCanvas}, Cdouble), canvas, y)
end
function cdCanvasMM2Pixel(canvas::Ptr{cdCanvas}, mm_dx::Cdouble, mm_dy::Cdouble, dx::Ptr{Cint}, dy::Ptr{Cint})
  ccall( (:cdCanvasMM2Pixel, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cint}, Ptr{Cint}), canvas, mm_dx, mm_dy, dx, dy)
end
function cdCanvasPixel2MM(canvas::Ptr{cdCanvas}, dx::Integer, dy::Integer, mm_dx::Ptr{Cdouble}, mm_dy::Ptr{Cdouble})
  ccall( (:cdCanvasPixel2MM, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), canvas, dx, dy, mm_dx, mm_dy)
end
function cdfCanvasMM2Pixel(canvas::Ptr{cdCanvas}, mm_dx::Cdouble, mm_dy::Cdouble, dx::Ptr{Cdouble}, dy::Ptr{Cdouble})
  ccall( (:cdfCanvasMM2Pixel, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), canvas, mm_dx, mm_dy, dx, dy)
end
function cdfCanvasPixel2MM(canvas::Ptr{cdCanvas}, dx::Cdouble, dy::Cdouble, mm_dx::Ptr{Cdouble}, mm_dy::Ptr{Cdouble})
  ccall( (:cdfCanvasPixel2MM, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), canvas, dx, dy, mm_dx, mm_dy)
end
function cdCanvasOrigin(canvas::Ptr{cdCanvas}, x::Integer, y::Integer)
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
function cdCanvasTransformPoint(canvas::Ptr{cdCanvas}, x::Integer, y::Integer, tx::Ptr{Cint}, ty::Ptr{Cint})
  ccall( (:cdCanvasTransformPoint, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cint}, Ptr{Cint}), canvas, x, y, tx, ty)
end
function cdfCanvasTransformPoint(canvas::Ptr{cdCanvas}, x::Cdouble, y::Cdouble, tx::Ptr{Cdouble}, ty::Ptr{Cdouble})
  ccall( (:cdfCanvasTransformPoint, libcd_), None, (Ptr{cdCanvas}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), canvas, x, y, tx, ty)
end
function cdCanvasClip(canvas::Ptr{cdCanvas}, mode::Integer)
  ccall( (:cdCanvasClip, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasClipArea(canvas::Ptr{cdCanvas}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
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
function cdCanvasIsPointInRegion(canvas::Ptr{cdCanvas}, x::Integer, y::Integer)
  ccall( (:cdCanvasIsPointInRegion, libcd_), Cint, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdCanvasOffsetRegion(canvas::Ptr{cdCanvas}, x::Integer, y::Integer)
  ccall( (:cdCanvasOffsetRegion, libcd_), None, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdCanvasGetRegionBox(canvas::Ptr{cdCanvas}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdCanvasGetRegionBox, libcd_), None, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, xmin, xmax, ymin, ymax)
end
function cdCanvasRegionCombineMode(canvas::Ptr{cdCanvas}, mode::Integer)
  ccall( (:cdCanvasRegionCombineMode, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasPixel(canvas::Ptr{cdCanvas}, x::Integer, y::Integer, color::Clong)
  ccall( (:cdCanvasPixel, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Clong), canvas, x, y, color)
end
function cdCanvasMark(canvas::Ptr{cdCanvas}, x::Integer, y::Integer)
  ccall( (:cdCanvasMark, libcd_), None, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdCanvasBegin(canvas::Ptr{cdCanvas}, mode::Integer)
  ccall( (:cdCanvasBegin, libcd_), None, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasPathSet(canvas::Ptr{cdCanvas}, action::Integer)
  ccall( (:cdCanvasPathSet, libcd_), None, (Ptr{cdCanvas}, Cint), canvas, action)
end
function cdCanvasEnd(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasEnd, libcd_), None, (Ptr{cdCanvas},), canvas)
end
function cdCanvasLine(canvas::Ptr{cdCanvas}, x1::Integer, y1::Integer, x2::Integer, y2::Integer)
  ccall( (:cdCanvasLine, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, x1, y1, x2, y2)
end
function cdCanvasVertex(canvas::Ptr{cdCanvas}, x::Integer, y::Integer)
  ccall( (:cdCanvasVertex, libcd_), None, (Ptr{cdCanvas}, Cint, Cint), canvas, x, y)
end
function cdCanvasRect(canvas::Ptr{cdCanvas}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdCanvasRect, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax)
end
function cdCanvasBox(canvas::Ptr{cdCanvas}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdCanvasBox, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax)
end
function cdCanvasArc(canvas::Ptr{cdCanvas}, xc::Integer, yc::Integer, w::Integer, h::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdCanvasArc, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdCanvasSector(canvas::Ptr{cdCanvas}, xc::Integer, yc::Integer, w::Integer, h::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdCanvasSector, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdCanvasChord(canvas::Ptr{cdCanvas}, xc::Integer, yc::Integer, w::Integer, h::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdCanvasChord, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint, Cdouble, Cdouble), canvas, xc, yc, w, h, angle1, angle2)
end
function cdCanvasText(canvas::Ptr{cdCanvas}, x::Integer, y::Integer, s::Ptr{Uint8})
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
function cdCanvasBackOpacity(canvas::Ptr{cdCanvas}, opacity::Integer)
  ccall( (:cdCanvasBackOpacity, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, opacity)
end
function cdCanvasWriteMode(canvas::Ptr{cdCanvas}, mode::Integer)
  ccall( (:cdCanvasWriteMode, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasLineStyle(canvas::Ptr{cdCanvas}, style::Integer)
  ccall( (:cdCanvasLineStyle, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, style)
end
function cdCanvasLineStyleDashes(canvas::Ptr{cdCanvas}, dashes::Ptr{Cint}, count::Integer)
  ccall( (:cdCanvasLineStyleDashes, libcd_), None, (Ptr{cdCanvas}, Ptr{Cint}, Cint), canvas, dashes, count)
end
function cdCanvasLineWidth(canvas::Ptr{cdCanvas}, width::Integer)
  ccall( (:cdCanvasLineWidth, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, width)
end
function cdCanvasLineJoin(canvas::Ptr{cdCanvas}, join::Integer)
  ccall( (:cdCanvasLineJoin, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, join)
end
function cdCanvasLineCap(canvas::Ptr{cdCanvas}, cap::Integer)
  ccall( (:cdCanvasLineCap, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, cap)
end
function cdCanvasInteriorStyle(canvas::Ptr{cdCanvas}, style::Integer)
  ccall( (:cdCanvasInteriorStyle, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, style)
end
function cdCanvasHatch(canvas::Ptr{cdCanvas}, style::Integer)
  ccall( (:cdCanvasHatch, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, style)
end
function cdCanvasStipple(canvas::Ptr{cdCanvas}, w::Integer, h::Integer, stipple::Ptr{Cuchar})
  ccall( (:cdCanvasStipple, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}), canvas, w, h, stipple)
end
function cdCanvasGetStipple(canvas::Ptr{cdCanvas}, n::Ptr{Cint}, m::Ptr{Cint})
  ccall( (:cdCanvasGetStipple, libcd_), Ptr{Cuchar}, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}), canvas, n, m)
end
function cdCanvasPattern(canvas::Ptr{cdCanvas}, w::Integer, h::Integer, pattern::Ptr{Clong})
  ccall( (:cdCanvasPattern, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Clong}), canvas, w, h, pattern)
end
function cdCanvasGetPattern(canvas::Ptr{cdCanvas}, n::Ptr{Cint}, m::Ptr{Cint})
  ccall( (:cdCanvasGetPattern, libcd_), Ptr{Clong}, (Ptr{cdCanvas}, Ptr{Cint}, Ptr{Cint}), canvas, n, m)
end
function cdCanvasFillMode(canvas::Ptr{cdCanvas}, mode::Integer)
  ccall( (:cdCanvasFillMode, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, mode)
end
function cdCanvasFont(canvas::Ptr{cdCanvas}, type_face::Ptr{Uint8}, style::Integer, size::Integer)
  ccall( (:cdCanvasFont, libcd_), Cint, (Ptr{cdCanvas}, Ptr{Uint8}, Cint, Cint), canvas, type_face, style, size)
end
function cdCanvasGetFont(canvas::Ptr{cdCanvas}, type_face::Ptr{Uint8}, style::Ptr{Cint}, size::Ptr{Cint})
  ccall( (:cdCanvasGetFont, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), canvas, type_face, style, size)
end
function cdCanvasNativeFont(canvas::Ptr{cdCanvas}, font::Ptr{Uint8})
  ccall( (:cdCanvasNativeFont, libcd_), Ptr{Uint8}, (Ptr{cdCanvas}, Ptr{Uint8}), canvas, font)
end
function cdCanvasTextAlignment(canvas::Ptr{cdCanvas}, alignment::Integer)
  ccall( (:cdCanvasTextAlignment, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, alignment)
end
function cdCanvasTextOrientation(canvas::Ptr{cdCanvas}, angle::Cdouble)
  ccall( (:cdCanvasTextOrientation, libcd_), Cdouble, (Ptr{cdCanvas}, Cdouble), canvas, angle)
end
function cdCanvasMarkType(canvas::Ptr{cdCanvas}, _type::Integer)
  ccall( (:cdCanvasMarkType, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, _type)
end
function cdCanvasMarkSize(canvas::Ptr{cdCanvas}, size::Integer)
  ccall( (:cdCanvasMarkSize, libcd_), Cint, (Ptr{cdCanvas}, Cint), canvas, size)
end
function cdCanvasVectorText(canvas::Ptr{cdCanvas}, x::Integer, y::Integer, s::Ptr{Uint8})
  ccall( (:cdCanvasVectorText, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}), canvas, x, y, s)
end
function cdCanvasMultiLineVectorText(canvas::Ptr{cdCanvas}, x::Integer, y::Integer, s::Ptr{Uint8})
  ccall( (:cdCanvasMultiLineVectorText, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}), canvas, x, y, s)
end
function cdCanvasVectorFont(canvas::Ptr{cdCanvas}, filename::Ptr{Uint8})
  ccall( (:cdCanvasVectorFont, libcd_), Ptr{Uint8}, (Ptr{cdCanvas}, Ptr{Uint8}), canvas, filename)
end
function cdCanvasVectorTextDirection(canvas::Ptr{cdCanvas}, x1::Integer, y1::Integer, x2::Integer, y2::Integer)
  ccall( (:cdCanvasVectorTextDirection, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint), canvas, x1, y1, x2, y2)
end
function cdCanvasVectorTextTransform(canvas::Ptr{cdCanvas}, matrix::Ptr{Cdouble})
  ccall( (:cdCanvasVectorTextTransform, libcd_), Ptr{Cdouble}, (Ptr{cdCanvas}, Ptr{Cdouble}), canvas, matrix)
end
function cdCanvasVectorTextSize(canvas::Ptr{cdCanvas}, size_x::Integer, size_y::Integer, s::Ptr{Uint8})
  ccall( (:cdCanvasVectorTextSize, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}), canvas, size_x, size_y, s)
end
function cdCanvasVectorCharSize(canvas::Ptr{cdCanvas}, size::Integer)
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
function cdCanvasGetVectorTextBounds(canvas::Ptr{cdCanvas}, s::Ptr{Uint8}, x::Integer, y::Integer, rect::Ptr{Cint})
  ccall( (:cdCanvasGetVectorTextBounds, libcd_), None, (Ptr{cdCanvas}, Ptr{Uint8}, Cint, Cint, Ptr{Cint}), canvas, s, x, y, rect)
end
function cdCanvasGetVectorTextBox(canvas::Ptr{cdCanvas}, x::Integer, y::Integer, s::Ptr{Uint8}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
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
function cdCanvasGetTextBox(canvas::Ptr{cdCanvas}, x::Integer, y::Integer, s::Ptr{Uint8}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdCanvasGetTextBox, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), canvas, x, y, s, xmin, xmax, ymin, ymax)
end
function cdCanvasGetTextBounds(canvas::Ptr{cdCanvas}, x::Integer, y::Integer, s::Ptr{Uint8}, rect::Ptr{Cint})
  ccall( (:cdCanvasGetTextBounds, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Uint8}, Ptr{Cint}), canvas, x, y, s, rect)
end
function cdCanvasGetColorPlanes(canvas::Ptr{cdCanvas})
  ccall( (:cdCanvasGetColorPlanes, libcd_), Cint, (Ptr{cdCanvas},), canvas)
end
function cdCanvasPalette(canvas::Ptr{cdCanvas}, n::Integer, palette::Ptr{Clong}, mode::Integer)
  ccall( (:cdCanvasPalette, libcd_), None, (Ptr{cdCanvas}, Cint, Ptr{Clong}, Cint), canvas, n, palette, mode)
end
function cdCanvasGetImageRGB(canvas::Ptr{cdCanvas}, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Integer, y::Integer, w::Integer, h::Integer)
  ccall( (:cdCanvasGetImageRGB, libcd_), None, (Ptr{cdCanvas}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint), canvas, r, g, b, x, y, w, h)
end
function cdCanvasPutImageRectRGB(canvas::Ptr{cdCanvas}, iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdCanvasPutImageRectRGB, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdCanvasPutImageRectRGBA(canvas::Ptr{cdCanvas}, iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdCanvasPutImageRectRGBA, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), canvas, iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdCanvasPutImageRectMap(canvas::Ptr{cdCanvas}, iw::Integer, ih::Integer, index::Ptr{Cuchar}, colors::Ptr{Clong}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdCanvasPutImageRectMap, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Ptr{Cuchar}, Ptr{Clong}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), canvas, iw, ih, index, colors, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdCanvasCreateImage(canvas::Ptr{cdCanvas}, w::Integer, h::Integer)
  ccall( (:cdCanvasCreateImage, libcd_), Ptr{cdImage}, (Ptr{cdCanvas}, Cint, Cint), canvas, w, h)
end
function cdKillImage(image::Ptr{cdImage})
  ccall( (:cdKillImage, libcd_), None, (Ptr{cdImage},), image)
end
function cdCanvasGetImage(canvas::Ptr{cdCanvas}, image::Ptr{cdImage}, x::Integer, y::Integer)
  ccall( (:cdCanvasGetImage, libcd_), None, (Ptr{cdCanvas}, Ptr{cdImage}, Cint, Cint), canvas, image, x, y)
end
function cdCanvasPutImageRect(canvas::Ptr{cdCanvas}, image::Ptr{cdImage}, x::Integer, y::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdCanvasPutImageRect, libcd_), None, (Ptr{cdCanvas}, Ptr{cdImage}, Cint, Cint, Cint, Cint, Cint, Cint), canvas, image, x, y, xmin, xmax, ymin, ymax)
end
function cdCanvasScrollArea(canvas::Ptr{cdCanvas}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer, dx::Integer, dy::Integer)
  ccall( (:cdCanvasScrollArea, libcd_), None, (Ptr{cdCanvas}, Cint, Cint, Cint, Cint, Cint, Cint), canvas, xmin, xmax, ymin, ymax, dx, dy)
end
function cdCreateBitmap(w::Integer, h::Integer, _type::Integer)
  ccall( (:cdCreateBitmap, libcd_), Ptr{cdBitmap}, (Cint, Cint, Cint), w, h, _type)
end
function cdKillBitmap(bitmap::Ptr{cdBitmap})
  ccall( (:cdKillBitmap, libcd_), None, (Ptr{cdBitmap},), bitmap)
end
function cdBitmapGetData(bitmap::Ptr{cdBitmap}, dataptr::Integer)
  ccall( (:cdBitmapGetData, libcd_), Ptr{Cuchar}, (Ptr{cdBitmap}, Cint), bitmap, dataptr)
end
function cdBitmapSetRect(bitmap::Ptr{cdBitmap}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdBitmapSetRect, libcd_), None, (Ptr{cdBitmap}, Cint, Cint, Cint, Cint), bitmap, xmin, xmax, ymin, ymax)
end
function cdCanvasPutBitmap(canvas::Ptr{cdCanvas}, bitmap::Ptr{cdBitmap}, x::Integer, y::Integer, w::Integer, h::Integer)
  ccall( (:cdCanvasPutBitmap, libcd_), None, (Ptr{cdCanvas}, Ptr{cdBitmap}, Cint, Cint, Cint, Cint), canvas, bitmap, x, y, w, h)
end
function cdCanvasGetBitmap(canvas::Ptr{cdCanvas}, bitmap::Ptr{cdBitmap}, x::Integer, y::Integer)
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
function cdRGB2Map(width::Integer, height::Integer, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, index::Ptr{Cuchar}, pal_size::Integer, color::Ptr{Clong})
  ccall( (:cdRGB2Map, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Ptr{Clong}), width, height, red, green, blue, index, pal_size, color)
end
function cdActivate(canvas::Ptr{cdCanvas})
  ccall( (:cdActivate, libcd_), Cint, (Ptr{cdCanvas},), canvas)
end
function cdActiveCanvas()
  ccall( (:cdActiveCanvas, libcd_), Ptr{cdCanvas}, (), )
end
function cdSimulate(mode::Integer)
  ccall( (:cdSimulate, libcd_), Cint, (Cint,), mode)
end
function cdFlush()
  ccall( (:cdFlush, libcd_), None, (), )
end
function cdClear()
  ccall( (:cdClear, libcd_), None, (), )
end
function cdSaveState()
  ccall( (:cdSaveState, libcd_), Ptr{cdCanvas}, (), )
end
function cdRestoreState(state::Ptr{cdCanvas})
  ccall( (:cdRestoreState, libcd_), None, (Ptr{cdCanvas},), state)
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
function cdRegisterCallback(context::Ptr{cdContext}, cb::Integer, func::cdCallback)
  ccall( (:cdRegisterCallback, libcd_), Cint, (Ptr{cdContext}, Cint, cdCallback), context, cb, func)
end
function cdPlay(context::Ptr{cdContext}, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer, data::Ptr{None})
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
function cdPixel2MM(dx::Integer, dy::Integer, mm_dx::Ptr{Cdouble}, mm_dy::Ptr{Cdouble})
  ccall( (:cdPixel2MM, libcd_), None, (Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), dx, dy, mm_dx, mm_dy)
end
function cdOrigin(x::Integer, y::Integer)
  ccall( (:cdOrigin, libcd_), None, (Cint, Cint), x, y)
end
function cdClip(mode::Integer)
  ccall( (:cdClip, libcd_), Cint, (Cint,), mode)
end
function cdGetClipPoly(n::Ptr{Cint})
  ccall( (:cdGetClipPoly, libcd_), Ptr{Cint}, (Ptr{Cint},), n)
end
function cdClipArea(xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdClipArea, libcd_), None, (Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax)
end
function cdGetClipArea(xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdGetClipArea, libcd_), Cint, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xmin, xmax, ymin, ymax)
end
function cdPointInRegion(x::Integer, y::Integer)
  ccall( (:cdPointInRegion, libcd_), Cint, (Cint, Cint), x, y)
end
function cdOffsetRegion(x::Integer, y::Integer)
  ccall( (:cdOffsetRegion, libcd_), None, (Cint, Cint), x, y)
end
function cdRegionBox(xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdRegionBox, libcd_), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), xmin, xmax, ymin, ymax)
end
function cdRegionCombineMode(mode::Integer)
  ccall( (:cdRegionCombineMode, libcd_), Cint, (Cint,), mode)
end
function cdPixel(x::Integer, y::Integer, color::Clong)
  ccall( (:cdPixel, libcd_), None, (Cint, Cint, Clong), x, y, color)
end
function cdMark(x::Integer, y::Integer)
  ccall( (:cdMark, libcd_), None, (Cint, Cint), x, y)
end
function cdLine(x1::Integer, y1::Integer, x2::Integer, y2::Integer)
  ccall( (:cdLine, libcd_), None, (Cint, Cint, Cint, Cint), x1, y1, x2, y2)
end
function cdBegin(mode::Integer)
  ccall( (:cdBegin, libcd_), None, (Cint,), mode)
end
function cdVertex(x::Integer, y::Integer)
  ccall( (:cdVertex, libcd_), None, (Cint, Cint), x, y)
end
function cdEnd()
  ccall( (:cdEnd, libcd_), None, (), )
end
function cdBox(xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdBox, libcd_), None, (Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax)
end
function cdArc(xc::Integer, yc::Integer, w::Integer, h::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdArc, libcd_), None, (Cint, Cint, Cint, Cint, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function cdSector(xc::Integer, yc::Integer, w::Integer, h::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdSector, libcd_), None, (Cint, Cint, Cint, Cint, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function cdChord(xc::Integer, yc::Integer, w::Integer, h::Integer, angle1::Cdouble, angle2::Cdouble)
  ccall( (:cdChord, libcd_), None, (Cint, Cint, Cint, Cint, Cdouble, Cdouble), xc, yc, w, h, angle1, angle2)
end
function cdText(x::Integer, y::Integer, s::Ptr{Uint8})
  ccall( (:cdText, libcd_), None, (Cint, Cint, Ptr{Uint8}), x, y, s)
end
function cdBackground(color::Clong)
  ccall( (:cdBackground, libcd_), Clong, (Clong,), color)
end
function cdForeground(color::Clong)
  ccall( (:cdForeground, libcd_), Clong, (Clong,), color)
end
function cdBackOpacity(opacity::Integer)
  ccall( (:cdBackOpacity, libcd_), Cint, (Cint,), opacity)
end
function cdWriteMode(mode::Integer)
  ccall( (:cdWriteMode, libcd_), Cint, (Cint,), mode)
end
function cdLineStyle(style::Integer)
  ccall( (:cdLineStyle, libcd_), Cint, (Cint,), style)
end
function cdLineStyleDashes(dashes::Ptr{Cint}, count::Integer)
  ccall( (:cdLineStyleDashes, libcd_), None, (Ptr{Cint}, Cint), dashes, count)
end
function cdLineWidth(width::Integer)
  ccall( (:cdLineWidth, libcd_), Cint, (Cint,), width)
end
function cdLineJoin(join::Integer)
  ccall( (:cdLineJoin, libcd_), Cint, (Cint,), join)
end
function cdLineCap(cap::Integer)
  ccall( (:cdLineCap, libcd_), Cint, (Cint,), cap)
end
function cdInteriorStyle(style::Integer)
  ccall( (:cdInteriorStyle, libcd_), Cint, (Cint,), style)
end
function cdHatch(style::Integer)
  ccall( (:cdHatch, libcd_), Cint, (Cint,), style)
end
function cdStipple(w::Integer, h::Integer, stipple::Ptr{Cuchar})
  ccall( (:cdStipple, libcd_), None, (Cint, Cint, Ptr{Cuchar}), w, h, stipple)
end
function cdGetStipple(n::Ptr{Cint}, m::Ptr{Cint})
  ccall( (:cdGetStipple, libcd_), Ptr{Cuchar}, (Ptr{Cint}, Ptr{Cint}), n, m)
end
function cdPattern(w::Integer, h::Integer, pattern::Ptr{Clong})
  ccall( (:cdPattern, libcd_), None, (Cint, Cint, Ptr{Clong}), w, h, pattern)
end
function cdGetPattern(n::Ptr{Cint}, m::Ptr{Cint})
  ccall( (:cdGetPattern, libcd_), Ptr{Clong}, (Ptr{Cint}, Ptr{Cint}), n, m)
end
function cdFillMode(mode::Integer)
  ccall( (:cdFillMode, libcd_), Cint, (Cint,), mode)
end
function cdFont(type_face::Integer, style::Integer, size::Integer)
  ccall( (:cdFont, libcd_), None, (Cint, Cint, Cint), type_face, style, size)
end
function cdGetFont(type_face::Ptr{Cint}, style::Ptr{Cint}, size::Ptr{Cint})
  ccall( (:cdGetFont, libcd_), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), type_face, style, size)
end
function cdNativeFont(font::Ptr{Uint8})
  ccall( (:cdNativeFont, libcd_), Ptr{Uint8}, (Ptr{Uint8},), font)
end
function cdTextAlignment(alignment::Integer)
  ccall( (:cdTextAlignment, libcd_), Cint, (Cint,), alignment)
end
function cdTextOrientation(angle::Cdouble)
  ccall( (:cdTextOrientation, libcd_), Cdouble, (Cdouble,), angle)
end
function cdMarkType(_type::Integer)
  ccall( (:cdMarkType, libcd_), Cint, (Cint,), _type)
end
function cdMarkSize(size::Integer)
  ccall( (:cdMarkSize, libcd_), Cint, (Cint,), size)
end
function cdVectorText(x::Integer, y::Integer, s::Ptr{Uint8})
  ccall( (:cdVectorText, libcd_), None, (Cint, Cint, Ptr{Uint8}), x, y, s)
end
function cdMultiLineVectorText(x::Integer, y::Integer, s::Ptr{Uint8})
  ccall( (:cdMultiLineVectorText, libcd_), None, (Cint, Cint, Ptr{Uint8}), x, y, s)
end
function cdVectorTextDirection(x1::Integer, y1::Integer, x2::Integer, y2::Integer)
  ccall( (:cdVectorTextDirection, libcd_), None, (Cint, Cint, Cint, Cint), x1, y1, x2, y2)
end
function cdVectorTextTransform(matrix::Ptr{Cdouble})
  ccall( (:cdVectorTextTransform, libcd_), Ptr{Cdouble}, (Ptr{Cdouble},), matrix)
end
function cdVectorTextSize(size_x::Integer, size_y::Integer, s::Ptr{Uint8})
  ccall( (:cdVectorTextSize, libcd_), None, (Cint, Cint, Ptr{Uint8}), size_x, size_y, s)
end
function cdVectorCharSize(size::Integer)
  ccall( (:cdVectorCharSize, libcd_), Cint, (Cint,), size)
end
function cdGetVectorTextSize(s::Ptr{Uint8}, x::Ptr{Cint}, y::Ptr{Cint})
  ccall( (:cdGetVectorTextSize, libcd_), None, (Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), s, x, y)
end
function cdGetVectorTextBounds(s::Ptr{Uint8}, x::Integer, y::Integer, rect::Ptr{Cint})
  ccall( (:cdGetVectorTextBounds, libcd_), None, (Ptr{Uint8}, Cint, Cint, Ptr{Cint}), s, x, y, rect)
end
function cdFontDim(max_width::Ptr{Cint}, height::Ptr{Cint}, ascent::Ptr{Cint}, descent::Ptr{Cint})
  ccall( (:cdFontDim, libcd_), None, (Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), max_width, height, ascent, descent)
end
function cdTextSize(s::Ptr{Uint8}, width::Ptr{Cint}, height::Ptr{Cint})
  ccall( (:cdTextSize, libcd_), None, (Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), s, width, height)
end
function cdTextBox(x::Integer, y::Integer, s::Ptr{Uint8}, xmin::Ptr{Cint}, xmax::Ptr{Cint}, ymin::Ptr{Cint}, ymax::Ptr{Cint})
  ccall( (:cdTextBox, libcd_), None, (Cint, Cint, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), x, y, s, xmin, xmax, ymin, ymax)
end
function cdTextBounds(x::Integer, y::Integer, s::Ptr{Uint8}, rect::Ptr{Cint})
  ccall( (:cdTextBounds, libcd_), None, (Cint, Cint, Ptr{Uint8}, Ptr{Cint}), x, y, s, rect)
end
function cdGetColorPlanes()
  ccall( (:cdGetColorPlanes, libcd_), Cint, (), )
end
function cdPalette(n::Integer, palette::Ptr{Clong}, mode::Integer)
  ccall( (:cdPalette, libcd_), None, (Cint, Ptr{Clong}, Cint), n, palette, mode)
end
function cdGetImageRGB(r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Integer, y::Integer, w::Integer, h::Integer)
  ccall( (:cdGetImageRGB, libcd_), None, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint), r, g, b, x, y, w, h)
end
function cdPutImageRectRGB(iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdPutImageRectRGB, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), iw, ih, r, g, b, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdPutImageRectRGBA(iw::Integer, ih::Integer, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar}, a::Ptr{Cuchar}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdPutImageRectRGBA, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), iw, ih, r, g, b, a, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdPutImageRectMap(iw::Integer, ih::Integer, index::Ptr{Cuchar}, colors::Ptr{Clong}, x::Integer, y::Integer, w::Integer, h::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdPutImageRectMap, libcd_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Clong}, Cint, Cint, Cint, Cint, Cint, Cint, Cint, Cint), iw, ih, index, colors, x, y, w, h, xmin, xmax, ymin, ymax)
end
function cdCreateImage(w::Integer, h::Integer)
  ccall( (:cdCreateImage, libcd_), Ptr{cdImage}, (Cint, Cint), w, h)
end
function cdGetImage(image::Ptr{cdImage}, x::Integer, y::Integer)
  ccall( (:cdGetImage, libcd_), None, (Ptr{cdImage}, Cint, Cint), image, x, y)
end
function cdPutImageRect(image::Ptr{cdImage}, x::Integer, y::Integer, xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer)
  ccall( (:cdPutImageRect, libcd_), None, (Ptr{cdImage}, Cint, Cint, Cint, Cint, Cint, Cint), image, x, y, xmin, xmax, ymin, ymax)
end
function cdScrollArea(xmin::Integer, xmax::Integer, ymin::Integer, ymax::Integer, dx::Integer, dy::Integer)
  ccall( (:cdScrollArea, libcd_), None, (Cint, Cint, Cint, Cint, Cint, Cint), xmin, xmax, ymin, ymax, dx, dy)
end
function cdPutBitmap(bitmap::Ptr{cdBitmap}, x::Integer, y::Integer, w::Integer, h::Integer)
  ccall( (:cdPutBitmap, libcd_), None, (Ptr{cdBitmap}, Cint, Cint, Cint, Cint), bitmap, x, y, w, h)
end
function cdGetBitmap(bitmap::Ptr{cdBitmap}, x::Integer, y::Integer)
  ccall( (:cdGetBitmap, libcd_), None, (Ptr{cdBitmap}, Cint, Cint), bitmap, x, y)
end

function cdContextDBuffer()
    ccall( (:cdContextDBuffer, libcd_), Ptr{cdContext}, (),)
end
