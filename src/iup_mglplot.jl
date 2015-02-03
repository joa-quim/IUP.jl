# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libiup_mglplot_/include/libiup_mglplot_.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libiup_mglplot_ = "iup_mglplot") : (const libiup_mglplot_ = "libiup_mglplot")  # Name of shared lib.


function IupMglPlotOpen()
  ccall( (:IupMglPlotOpen, libiup_mglplot_), Void, (), )
end
function IupMglPlot()
  ccall( (:IupMglPlot, libiup_mglplot_), Ptr{Ihandle}, (), )
end
function IupMglPlotBegin(ih::Ptr{Cint}, dim::Int)
  ccall( (:IupMglPlotBegin, libiup_mglplot_), Void, (Ptr{Cint}, Cint), ih, dim)
end
function IupMglPlotAdd1D(ih::Ptr{Cint}, name::String, y::Cfloat)
  ccall( (:IupMglPlotAdd1D, libiup_mglplot_), Void, (Ptr{Cint}, Ptr{Uint8}, Cfloat), ih, name, y)
end
function IupMglPlotAdd2D(ih::Ptr{Cint}, x::Cfloat, y::Cfloat)
  ccall( (:IupMglPlotAdd2D, libiup_mglplot_), Void, (Ptr{Cint}, Cfloat, Cfloat), ih, x, y)
end
function IupMglPlotAdd3D(ih::Ptr{Cint}, x::Cfloat, y::Cfloat, z::Cfloat)
  ccall( (:IupMglPlotAdd3D, libiup_mglplot_), Void, (Ptr{Cint}, Cfloat, Cfloat, Cfloat), ih, x, y, z)
end
function IupMglPlotEnd(ih::Ptr{Cint})
  ccall( (:IupMglPlotEnd, libiup_mglplot_), Cint, (Ptr{Cint},), ih)
end
function IupMglPlotNewDataSet(ih::Ptr{Ihandle}, dim::Int)
  ccall( (:IupMglPlotNewDataSet, libiup_mglplot_), Cint, (Ptr{Ihandle}, Cint), ih, dim)
end
function IupMglPlotInsert1D(ih::Ptr{Ihandle}, ds_index::Int, sample_index::Int, names::Ptr{Ptr{Uint8}}, y::Ptr{Cfloat}, count::Int)
  ccall( (:IupMglPlotInsert1D, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{Ptr{Uint8}}, Ptr{Cfloat}, Cint), ih, ds_index, sample_index, names, y, count)
end
function IupMglPlotInsert2D(ih::Ptr{Ihandle}, ds_index::Int, sample_index::Int, x::Ptr{Cfloat}, y::Ptr{Cfloat}, count::Int)
  ccall( (:IupMglPlotInsert2D, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{Cfloat}, Ptr{Cfloat}, Cint), ih, ds_index, sample_index, x, y, count)
end
function IupMglPlotInsert3D(ih::Ptr{Ihandle}, ds_index::Int, sample_index::Int, x::Ptr{Cfloat}, y::Ptr{Cfloat}, z::Ptr{Cfloat}, count::Int)
  ccall( (:IupMglPlotInsert3D, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cint), ih, ds_index, sample_index, x, y, z, count)
end
function IupMglPlotSet1D(ih::Ptr{Ihandle}, ds_index::Int, names::Ptr{Ptr{Uint8}}, y::Ptr{Cfloat}, count::Int)
  ccall( (:IupMglPlotSet1D, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Ptr{Ptr{Uint8}}, Ptr{Cfloat}, Cint), ih, ds_index, names, y, count)
end
function IupMglPlotSet2D(ih::Ptr{Ihandle}, ds_index::Int, x::Ptr{Cfloat}, y::Ptr{Cfloat}, count::Int)
  ccall( (:IupMglPlotSet2D, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Ptr{Cfloat}, Ptr{Cfloat}, Cint), ih, ds_index, x, y, count)
end
function IupMglPlotSet3D(ih::Ptr{Ihandle}, ds_index::Int, x::Ptr{Cfloat}, y::Ptr{Cfloat}, z::Ptr{Cfloat}, count::Int)
  ccall( (:IupMglPlotSet3D, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}, Cint), ih, ds_index, x, y, z, count)
end
function IupMglPlotSetFormula(ih::Ptr{Ihandle}, ds_index::Int, formulaX::String, formulaY::String, formulaZ::String, count::Int)
  ccall( (:IupMglPlotSetFormula, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Cint), ih, ds_index, formulaX, formulaY, formulaZ, count)
end
function IupMglPlotSetData(ih::Ptr{Ihandle}, ds_index::Int, data::Ptr{Cfloat}, count_x::Int, count_y::Int, count_z::Int)
  ccall( (:IupMglPlotSetData, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Ptr{Cfloat}, Cint, Cint, Cint), ih, ds_index, data, count_x, count_y, count_z)
end
function IupMglPlotLoadData(ih::Ptr{Ihandle}, ds_index::Int, filename::String, count_x::Int, count_y::Int, count_z::Int)
  ccall( (:IupMglPlotLoadData, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Ptr{Uint8}, Cint, Cint, Cint), ih, ds_index, filename, count_x, count_y, count_z)
end
function IupMglPlotSetFromFormula(ih::Ptr{Ihandle}, ds_index::Int, formula::String, count_x::Int, count_y::Int, count_z::Int)
  ccall( (:IupMglPlotSetFromFormula, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Ptr{Uint8}, Cint, Cint, Cint), ih, ds_index, formula, count_x, count_y, count_z)
end
function IupMglPlotTransform(ih::Ptr{Ihandle}, x::Cfloat, y::Cfloat, z::Cfloat, ix::Ptr{Cint}, iy::Ptr{Cint})
  ccall( (:IupMglPlotTransform, libiup_mglplot_), Void, (Ptr{Ihandle}, Cfloat, Cfloat, Cfloat, Ptr{Cint}, Ptr{Cint}), ih, x, y, z, ix, iy)
end
function IupMglPlotTransformXYZ(ih::Ptr{Ihandle}, ix::Int, iy::Int, x::Ptr{Cfloat}, y::Ptr{Cfloat}, z::Ptr{Cfloat})
  ccall( (:IupMglPlotTransformXYZ, libiup_mglplot_), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{Cfloat}, Ptr{Cfloat}, Ptr{Cfloat}), ih, ix, iy, x, y, z)
end
function IupMglPlotDrawMark(ih::Ptr{Ihandle}, x, y, z)
  ccall( (:IupMglPlotDrawMark, libiup_mglplot_), Void, (Ptr{Ihandle}, Cfloat, Cfloat, Cfloat), ih, x, y, z)
end
function IupMglPlotDrawLine(ih::Ptr{Ihandle}, x1, y1, z1, x2, y2, z2)
  ccall( (:IupMglPlotDrawLine, libiup_mglplot_), Void, (Ptr{Ihandle}, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat, Cfloat), ih, x1, y1, z1, x2, y2, z2)
end
function IupMglPlotDrawText(ih::Ptr{Ihandle}, text::String, x, y, z)
  ccall( (:IupMglPlotDrawText, libiup_mglplot_), Void, (Ptr{Ihandle}, Ptr{Uint8}, Cfloat, Cfloat, Cfloat), ih, text, x, y, z)
end
function IupMglPlotPaintTo(ih::Ptr{Ihandle}, format::String, w::Int, h::Int, dpi::Cfloat, data::Ptr{Void})
  ccall( (:IupMglPlotPaintTo, libiup_mglplot_), Void, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint, Cfloat, Ptr{Void}), ih, format, w, h, dpi, data)
end

