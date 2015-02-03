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
  ccall( (:imFileClose, libim_), Void, (Ptr{imFile},), ifile)
end
function imFileHandle(ifile::Ptr{imFile}, index::Integer)
  ccall( (:imFileHandle, libim_), Ptr{Void}, (Ptr{imFile}, Cint), ifile, index)
end
function imFileGetInfo(ifile::Ptr{imFile}, format::String, compression::String, image_count::Ptr{Cint})
  ccall( (:imFileGetInfo, libim_), Void, (Ptr{imFile}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}), ifile, format, compression, image_count)
end
function imFileSetInfo(ifile::Ptr{imFile}, compression::String)
  ccall( (:imFileSetInfo, libim_), Void, (Ptr{imFile}, Ptr{Uint8}), ifile, compression)
end
function imFileSetAttribute(ifile::Ptr{imFile}, attrib::String, data_type::Integer, count::Integer, data::Ptr{Void})
  ccall( (:imFileSetAttribute, libim_), Void, (Ptr{imFile}, Ptr{Uint8}, Cint, Cint, Ptr{Void}), ifile, attrib, data_type, count, data)
end
function imFileGetAttribute(ifile::Ptr{imFile}, attrib::String, data_type::Ptr{Cint}, count::Ptr{Cint})
  ccall( (:imFileGetAttribute, libim_), Ptr{Void}, (Ptr{imFile}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), ifile, attrib, data_type, count)
end
function imFileGetAttributeList(ifile::Ptr{imFile}, attrib::Ptr{Ptr{Uint8}}, attrib_count::Ptr{Cint})
  ccall( (:imFileGetAttributeList, libim_), Void, (Ptr{imFile}, Ptr{Ptr{Uint8}}, Ptr{Cint}), ifile, attrib, attrib_count)
end
function imFileGetPalette(ifile::Ptr{imFile}, palette::Ptr{Clong}, palette_count::Ptr{Cint})
  ccall( (:imFileGetPalette, libim_), Void, (Ptr{imFile}, Ptr{Clong}, Ptr{Cint}), ifile, palette, palette_count)
end
function imFileSetPalette(ifile::Ptr{imFile}, palette::Ptr{Clong}, palette_count::Integer)
  ccall( (:imFileSetPalette, libim_), Void, (Ptr{imFile}, Ptr{Clong}, Cint), ifile, palette, palette_count)
end
function imFileReadImageInfo(ifile::Ptr{imFile}, index::Integer, width::Ptr{Cint}, height::Ptr{Cint}, file_color_mode::Ptr{Cint}, file_data_type::Ptr{Cint})
  ccall( (:imFileReadImageInfo, libim_), Cint, (Ptr{imFile}, Cint, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}, Ptr{Cint}), ifile, index, width, height, file_color_mode, file_data_type)
end
function imFileWriteImageInfo(ifile::Ptr{imFile}, width::Integer, height::Integer, user_color_mode::Integer, user_data_type::Integer)
  ccall( (:imFileWriteImageInfo, libim_), Cint, (Ptr{imFile}, Cint, Cint, Cint, Cint), ifile, width, height, user_color_mode, user_data_type)
end
function imFileReadImageData(ifile::Ptr{imFile}, data::Ptr{Void}, convert2bitmap::Integer, color_mode_flags::Integer)
  ccall( (:imFileReadImageData, libim_), Cint, (Ptr{imFile}, Ptr{Void}, Cint, Cint), ifile, data, convert2bitmap, color_mode_flags)
end
function imFileWriteImageData(ifile::Ptr{imFile}, data::Ptr{Void})
  ccall( (:imFileWriteImageData, libim_), Cint, (Ptr{imFile}, Ptr{Void}), ifile, data)
end
function imFormatRegisterInternal()
  ccall( (:imFormatRegisterInternal, libim_), Void, (), )
end
function imFormatRemoveAll()
  ccall( (:imFormatRemoveAll, libim_), Void, (), )
end
function imFormatList(format_list::Ptr{Ptr{Uint8}}, format_count::Ptr{Cint})
  ccall( (:imFormatList, libim_), Void, (Ptr{Ptr{Uint8}}, Ptr{Cint}), format_list, format_count)
end
function imFormatInfo(format::String, desc::String, ext::String, can_sequence::Ptr{Cint})
  ccall( (:imFormatInfo, libim_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Cint}), format, desc, ext, can_sequence)
end
function imFormatInfoExtra(format::String, extra::String)
  ccall( (:imFormatInfoExtra, libim_), Cint, (Ptr{Uint8}, Ptr{Uint8}), format, extra)
end
function imFormatCompressions(format::String, comp::Ptr{Ptr{Uint8}}, comp_count::Ptr{Cint}, color_mode::Integer, data_type::Integer)
  ccall( (:imFormatCompressions, libim_), Cint, (Ptr{Uint8}, Ptr{Ptr{Uint8}}, Ptr{Cint}, Cint, Cint), format, comp, comp_count, color_mode, data_type)
end
function imFormatCanWriteImage(format::String, compression::String, color_mode::Integer, data_type::Integer)
  ccall( (:imFormatCanWriteImage, libim_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Cint, Cint), format, compression, color_mode, data_type)
end
function imEncodeColor(red::Cuchar, green::Cuchar, blue::Cuchar)
  ccall( (:imEncodeColor, libim_), Clong, (Cuchar, Cuchar, Cuchar), red, green, blue)
end
function imDecodeColor(red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, palette::Clong)
  ccall( (:imDecodeColor, libim_), Void, (Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Clong), red, green, blue, palette)
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
function imSaveRGB(width::Integer, height::Integer, format::Integer, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, filename::String)
  ccall( (:imSaveRGB, libim_), Cint, (Cint, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Uint8}), width, height, format, red, green, blue, filename)
end
function imLoadMap(filename::String, map::Ptr{Cuchar}, palette::Ptr{Clong})
  ccall( (:imLoadMap, libim_), Cint, (Ptr{Uint8}, Ptr{Cuchar}, Ptr{Clong}), filename, map, palette)
end
function imSaveMap(width::Integer, height::Integer, format::Integer, map::Ptr{Cuchar}, palette_count::Integer, palette::Ptr{Clong}, filename::String)
  ccall( (:imSaveMap, libim_), Cint, (Cint, Cint, Cint, Ptr{Cuchar}, Cint, Ptr{Clong}, Ptr{Uint8}), width, height, format, map, palette_count, palette, filename)
end
function imRGB2Map(width::Integer, height::Integer, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, map::Ptr{Cuchar}, palette_count::Integer, palette::Ptr{Clong})
  ccall( (:imRGB2Map, libim_), Void, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Cint, Ptr{Clong}), width, height, red, green, blue, map, palette_count, palette)
end
function imMap2RGB(width::Integer, height::Integer, map::Ptr{Cuchar}, palette_count::Integer, colors::Ptr{Clong}, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar})
  ccall( (:imMap2RGB, libim_), Void, (Cint, Cint, Ptr{Cuchar}, Cint, Ptr{Clong}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}), width, height, map, palette_count, colors, red, green, blue)
end
function imRGB2Gray(width::Integer, height::Integer, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, map::Ptr{Cuchar}, grays::Ptr{Clong})
  ccall( (:imRGB2Gray, libim_), Void, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Clong}), width, height, red, green, blue, map, grays)
end
function imMap2Gray(width::Integer, height::Integer, map::Ptr{Cuchar}, palette_count::Integer, colors::Ptr{Clong}, grey_map::Ptr{Cuchar}, grays::Ptr{Clong})
  ccall( (:imMap2Gray, libim_), Void, (Cint, Cint, Ptr{Cuchar}, Cint, Ptr{Clong}, Ptr{Cuchar}, Ptr{Clong}), width, height, map, palette_count, colors, grey_map, grays)
end
function imResize(src_width::Integer, src_height::Integer, src_map::Ptr{Cuchar}, dst_width::Integer, dst_height::Integer, dst_map::Ptr{Cuchar})
  ccall( (:imResize, libim_), Void, (Cint, Cint, Ptr{Cuchar}, Cint, Cint, Ptr{Cuchar}), src_width, src_height, src_map, dst_width, dst_height, dst_map)
end
function imStretch(src_width::Integer, src_height::Integer, src_map::Ptr{Cuchar}, dst_width::Integer, dst_height::Integer, dst_map::Ptr{Cuchar})
  ccall( (:imStretch, libim_), Void, (Cint, Cint, Ptr{Cuchar}, Cint, Cint, Ptr{Cuchar}), src_width, src_height, src_map, dst_width, dst_height, dst_map)
end
function imRegisterCallback(cb::imCallback, cb_id::Integer, format::Integer)
  ccall( (:imRegisterCallback, libim_), Cint, (imCallback, Cint, Cint), cb, cb_id, format)
end
