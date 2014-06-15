# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libim_/include/im.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libim_ = "im") : (const libim_ = "libim")  # Name of im shared lib.


function imFileOpen(file_name::String, error::Ptr{Cint})
  ccall( (:imFileOpen, libim_), Ptr{imFile}, (Ptr{Uint8}, Ptr{Cint}), file_name, error)
end
function imFileOpenAs(file_name::String, format::String, error::Ptr{Cint})
  ccall( (:imFileOpenAs, libim_), Ptr{imFile}, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}), file_name, format, error)
end
function imFileNew(file_name::String, format::String, error::Ptr{Cint})
  ccall( (:imFileNew, libim_), Ptr{imFile}, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}), file_name, format, error)
end
function imFileClose(ifile::Ptr{imFile})
  ccall( (:imFileClose, libim_), None, (Ptr{imFile},), ifile)
end
function imFileHandle(ifile::Ptr{imFile}, index::Cint)
  ccall( (:imFileHandle, libim_), Ptr{None}, (Ptr{imFile}, Cint), ifile, index)
end
function imFileGetInfo(ifile::Ptr{imFile}, format::String, compression::String, image_count::Ptr{Cint})
  ccall( (:imFileGetInfo, libim_), None, (Ptr{imFile}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}), ifile, format, compression, image_count)
end
function imFileSetInfo(ifile::Ptr{imFile}, compression::String)
  ccall( (:imFileSetInfo, libim_), None, (Ptr{imFile}, Ptr{Uint8}), ifile, compression)
end
function imFileSetAttribute(ifile::Ptr{imFile}, attrib::String, data_type::Cint, count::Cint, data::Ptr{None})
  ccall( (:imFileSetAttribute, libim_), None, (Ptr{imFile}, Ptr{Uint8}, Cint, Cint, Ptr{None}), ifile, attrib, data_type, count, data)
end
function imFileGetAttribute(ifile::Ptr{imFile}, attrib::String, data_type::Ptr{Cint}, count::Ptr{Cint})
  ccall( (:imFileGetAttribute, libim_), Ptr{None}, (Ptr{imFile}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), ifile, attrib, data_type, count)
end
function imFileGetAttributeList(ifile::Ptr{imFile}, attrib::Ptr{Ptr{Uint8}}, attrib_count::Ptr{Cint})
  ccall( (:imFileGetAttributeList, libim_), None, (Ptr{imFile}, Ptr{Ptr{Uint8}}, Ptr{Cint}), ifile, attrib, attrib_count)
end
function imFileGetPalette(ifile::Ptr{imFile}, palette::Ptr{Clong}, palette_count::Ptr{Cint})
  ccall( (:imFileGetPalette, libim_), None, (Ptr{imFile}, Ptr{Clong}, Ptr{Cint}), ifile, palette, palette_count)
end
function imFileSetPalette(ifile::Ptr{imFile}, palette::Ptr{Clong}, palette_count::Cint)
  ccall( (:imFileSetPalette, libim_), None, (Ptr{imFile}, Ptr{Clong}, Cint), ifile, palette, palette_count)
end
function imFileReadImageInfo(ifile::Ptr{imFile}, index::Cint, width::Ptr{Cint}, height::Ptr{Cint}, file_color_mode::Ptr{Cint}, file_data_type::Ptr{Cint})
  ccall( (:imFileReadImageInfo, libim_), Cint, (Ptr{imFile}, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), ifile, index, width, height, file_color_mode, file_data_type)
end
function imFileWriteImageInfo(ifile::Ptr{imFile}, width::Cint, height::Cint, user_color_mode::Cint, user_data_type::Cint)
  ccall( (:imFileWriteImageInfo, libim_), Cint, (Ptr{imFile}, Cint, Cint, Cint, Cint), ifile, width, height, user_color_mode, user_data_type)
end
function imFileReadImageData(ifile::Ptr{imFile}, data::Ptr{None}, convert2bitmap::Cint, color_mode_flags::Cint)
  ccall( (:imFileReadImageData, libim_), Cint, (Ptr{imFile}, Ptr{None}, Cint, Cint), ifile, data, convert2bitmap, color_mode_flags)
end
function imFileWriteImageData(ifile::Ptr{imFile}, data::Ptr{None})
  ccall( (:imFileWriteImageData, libim_), Cint, (Ptr{imFile}, Ptr{None}), ifile, data)
end
function imFormatRegisterInternal()
  ccall( (:imFormatRegisterInternal, libim_), None, (), )
end
function imFormatRemoveAll()
  ccall( (:imFormatRemoveAll, libim_), None, (), )
end
function imFormatList(format_list::Ptr{Ptr{Uint8}}, format_count::Ptr{Cint})
  ccall( (:imFormatList, libim_), None, (Ptr{Ptr{Uint8}}, Ptr{Cint}), format_list, format_count)
end
function imFormatInfo(format::String, desc::String, ext::String, can_sequence::Ptr{Cint})
  ccall( (:imFormatInfo, libim_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}), format, desc, ext, can_sequence)
end
function imFormatInfoExtra(format::String, extra::String)
  ccall( (:imFormatInfoExtra, libim_), Cint, (Ptr{Uint8}, Ptr{Uint8}), format, extra)
end
function imFormatCompressions(format::String, comp::Ptr{Ptr{Uint8}}, comp_count::Ptr{Cint}, color_mode::Cint, data_type::Cint)
  ccall( (:imFormatCompressions, libim_), Cint, (Ptr{Uint8}, Ptr{Ptr{Uint8}}, Ptr{Cint}, Cint, Cint), format, comp, comp_count, color_mode, data_type)
end
function imFormatCanWriteImage(format::String, compression::String, color_mode::Cint, data_type::Cint)
  ccall( (:imFormatCanWriteImage, libim_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint), format, compression, color_mode, data_type)
end
function imEncodeColor(red::Cuchar, green::Cuchar, blue::Cuchar)
  ccall( (:imEncodeColor, libim_), Clong, (Cuchar, Cuchar, Cuchar), red, green, blue)
end
function imDecodeColor(red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, palette::Clong)
  ccall( (:imDecodeColor, libim_), None, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Clong), red, green, blue, palette)
end
function imFileFormat(filename::String, format::Ptr{Cint})
  ccall( (:imFileFormat, libim_), Cint, (Ptr{Uint8}, Ptr{Cint}), filename, format)
end
function imImageInfo(filename::String, width::Ptr{Cint}, height::Ptr{Cint}, _type::Ptr{Cint}, palette_count::Ptr{Cint})
  ccall( (:imImageInfo, libim_), Cint, (Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), filename, width, height, _type, palette_count)
end
function imLoadRGB(filename::String, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar})
  ccall( (:imLoadRGB, libim_), Cint, (Ptr{Uint8}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}), filename, red, green, blue)
end
function imSaveRGB(width::Cint, height::Cint, format::Cint, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, filename::String)
  ccall( (:imSaveRGB, libim_), Cint, (Cint, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Uint8}), width, height, format, red, green, blue, filename)
end
function imLoadMap(filename::String, map::Ptr{Cuchar}, palette::Ptr{Clong})
  ccall( (:imLoadMap, libim_), Cint, (Ptr{Uint8}, Ptr{Cuchar}, Ptr{Clong}), filename, map, palette)
end
function imSaveMap(width::Cint, height::Cint, format::Cint, map::Ptr{Cuchar}, palette_count::Cint, palette::Ptr{Clong}, filename::String)
  ccall( (:imSaveMap, libim_), Cint, (Cint, Cint, Cint, Ptr{Cuchar}, Cint, Ptr{Clong}, Ptr{Uint8}), width, height, format, map, palette_count, palette, filename)
end
function imRGB2Map(width::Cint, height::Cint, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, map::Ptr{Cuchar}, palette_count::Cint, palette::Ptr{Clong})
  ccall( (:imRGB2Map, libim_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Ptr{Clong}), width, height, red, green, blue, map, palette_count, palette)
end
function imMap2RGB(width::Cint, height::Cint, map::Ptr{Cuchar}, palette_count::Cint, colors::Ptr{Clong}, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar})
  ccall( (:imMap2RGB, libim_), None, (Cint, Cint, Ptr{Cuchar}, Cint, Ptr{Clong}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}), width, height, map, palette_count, colors, red, green, blue)
end
function imRGB2Gray(width::Cint, height::Cint, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, map::Ptr{Cuchar}, grays::Ptr{Clong})
  ccall( (:imRGB2Gray, libim_), None, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Clong}), width, height, red, green, blue, map, grays)
end
function imMap2Gray(width::Cint, height::Cint, map::Ptr{Cuchar}, palette_count::Cint, colors::Ptr{Clong}, grey_map::Ptr{Cuchar}, grays::Ptr{Clong})
  ccall( (:imMap2Gray, libim_), None, (Cint, Cint, Ptr{Cuchar}, Cint, Ptr{Clong}, Ptr{Cuchar}, Ptr{Clong}), width, height, map, palette_count, colors, grey_map, grays)
end
function imResize(src_width::Cint, src_height::Cint, src_map::Ptr{Cuchar}, dst_width::Cint, dst_height::Cint, dst_map::Ptr{Cuchar})
  ccall( (:imResize, libim_), None, (Cint, Cint, Ptr{Cuchar}, Cint, Cint, Ptr{Cuchar}), src_width, src_height, src_map, dst_width, dst_height, dst_map)
end
function imStretch(src_width::Cint, src_height::Cint, src_map::Ptr{Cuchar}, dst_width::Cint, dst_height::Cint, dst_map::Ptr{Cuchar})
  ccall( (:imStretch, libim_), None, (Cint, Cint, Ptr{Cuchar}, Cint, Cint, Ptr{Cuchar}), src_width, src_height, src_map, dst_width, dst_height, dst_map)
end
function imRegisterCallback(cb::imCallback, cb_id::Cint, format::Cint)
  ccall( (:imRegisterCallback, libim_), Cint, (imCallback, Cint, Cint), cb, cb_id, format)
end

