# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iup_plot.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@static is_windows()? (const iup_plot = "iup_plot") : (const iup_plot = "libiup_plot")  # Name of IUP shared lib.


function IupPlotOpen()
  ccall( (:IupPlotOpen, iup_plot), Void, (), )
end
function IupPlot()
    ccall((:IupPlot, iup_plot), Ptr{Ihandle}, (),)
end
function IupPlotBegin(ih::Ptr{Ihandle}, strXdata::Integer)
  ccall( (:IupPlotBegin, iup_plot), Void, (Ptr{Ihandle}, Cint), ih, strXdata)
end
function IupPlotAdd(ih::Ptr{Ihandle}, x::Cdouble, y::Cdouble)
  ccall( (:IupPlotAdd, iup_plot), Void, (Ptr{Ihandle}, Cdouble, Cdouble), ih, x, y)
end
function IupPlotAddStr(ih::Ptr{Ihandle}, x::String, y::Cdouble)
  ccall( (:IupPlotAddStr, iup_plot), Void, (Ptr{Ihandle}, Ptr{UInt8}, Cdouble), ih, x, y)
end
function IupPlotEnd(ih::Ptr{Ihandle})
  ccall( (:IupPlotEnd, iup_plot), Cint, (Ptr{Ihandle},), ih)
end
function IupPlotLoadData(ih::Ptr{Ihandle}, filename::Ptr{UInt8}, strXdata::Integer)
  ccall( (:IupPlotLoadData, iup_plot), Cint, (Ptr{Ihandle}, Ptr{UInt8}, Cint), ih, filename, strXdata)
end
function IupPlotInsertStr(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, x::Ptr{UInt8}, y::Cdouble)
  ccall( (:IupPlotInsertStr, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{UInt8}, Cdouble), ih, ds_index, sample_index, x, y)
end
function IupPlotInsert(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, x::Cdouble, y::Cdouble)
  ccall( (:IupPlotInsert, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Cdouble, Cdouble), ih, ds_index, sample_index, x, y)
end
function IupPlotInsertStrPoints(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, x::Ptr{Ptr{UInt8}}, y::Ptr{Cdouble}, count::Integer)
  ccall( (:IupPlotInsertStrPoints, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{Ptr{UInt8}}, Ptr{Cdouble}, Cint), ih, ds_index, sample_index, x, y, count)
end
function IupPlotInsertPoints(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, x::Ptr{Cdouble}, y::Ptr{Cdouble}, count::Integer)
  ccall( (:IupPlotInsertPoints, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Cint), ih, ds_index, sample_index, x, y, count)
end
function IupPlotAddPoints(ih::Ptr{Ihandle}, ds_index::Integer, x::Ptr{Cdouble}, y::Ptr{Cdouble}, count::Integer)
  ccall( (:IupPlotAddPoints, iup_plot), Void, (Ptr{Ihandle}, Cint, Ptr{Cdouble}, Ptr{Cdouble}, Cint), ih, ds_index, x, y, count)
end
function IupPlotAddStrPoints(ih::Ptr{Ihandle}, ds_index::Integer, x::Ptr{Ptr{UInt8}}, y::Ptr{Cdouble}, count::Integer)
  ccall( (:IupPlotAddStrPoints, iup_plot), Void, (Ptr{Ihandle}, Cint, Ptr{Ptr{UInt8}}, Ptr{Cdouble}, Cint), ih, ds_index, x, y, count)
end
function IupPlotGetSample(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, x::Ptr{Cdouble}, y::Ptr{Cdouble})
  ccall( (:IupPlotGetSample, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{Cdouble}, Ptr{Cdouble}), ih, ds_index, sample_index, x, y)
end
function IupPlotGetSampleStr(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, x::Ptr{Ptr{UInt8}}, y::Ptr{Cdouble})
  ccall( (:IupPlotGetSampleStr, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{Ptr{UInt8}}, Ptr{Cdouble}), ih, ds_index, sample_index, x, y)
end
function IupPlotGetSampleSelection(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer)
  ccall( (:IupPlotGetSampleSelection, iup_plot), Cint, (Ptr{Ihandle}, Cint, Cint), ih, ds_index, sample_index)
end
function IupPlotSetSample(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, x::Cdouble, y::Cdouble)
  ccall( (:IupPlotSetSample, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Cdouble, Cdouble), ih, ds_index, sample_index, x, y)
end
function IupPlotSetSampleStr(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, x::Ptr{UInt8}, y::Cdouble)
  ccall( (:IupPlotSetSampleStr, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Ptr{UInt8}, Cdouble), ih, ds_index, sample_index, x, y)
end
function IupPlotSetSampleSelection(ih::Ptr{Ihandle}, ds_index::Integer, sample_index::Integer, selected::Integer)
  ccall( (:IupPlotSetSampleSelection, iup_plot), Void, (Ptr{Ihandle}, Cint, Cint, Cint), ih, ds_index, sample_index, selected)
end
function IupPlotTransform(ih::Ptr{Ihandle}, x::Cdouble, y::Cdouble, cnv_x::Ptr{Cdouble}, cnv_y::Ptr{Cdouble})
    ccall( (:IupPlotTransform, iup_plot), Void, (Ptr{Ihandle}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), ih, x, y, cnv_x, cnv_y)
end
function IupPlotTransformTo(ih::Ptr{Ihandle}, cnv_x::Cdouble, cnv_y::Cdouble, x::Ptr{Cdouble}, y::Ptr{Cdouble})
    ccall( (:IupPlotTransformTo, iup_plot), Void, (Ptr{Ihandle}, Cdouble, Cdouble, Ptr{Cdouble}, Ptr{Cdouble}), ih, cnv_x, cnv_y, x, y)
end
# COMMENTED because cdCanvas is not known here
#function IupPlotPaintTo(ih::Ptr{Ihandle}, cnv::Ptr{cdCanvas})
#  ccall( (:IupPlotPaintTo, iup_plot), Void, (Ptr{Ihandle}, Ptr{cdCanvas}), ih, cnv)
#end
