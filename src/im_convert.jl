# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libim_convert_/include/im_convert.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libim_convert_ = "im") : (const libim_convert_ = "libim")  # Name of IM shared lib.


function imImageCreate(width::Cint, height::Cint, color_space::Cint, data_type::Cint)
  ccall( (:imImageCreate, libim_convert_), Ptr{imImage}, (Cint, Cint, Cint, Cint), width, height, color_space, data_type)
end
function imImageInit(width::Cint, height::Cint, color_mode::Cint, data_type::Cint, data_buffer::Ptr{None}, palette::Ptr{Clong}, palette_count::Cint)
  ccall( (:imImageInit, libim_convert_), Ptr{imImage}, (Cint, Cint, Cint, Cint, Ptr{None}, Ptr{Clong}, Cint), width, height, color_mode, data_type, data_buffer, palette, palette_count)
end
function imImageCreateBased(image::Ptr{imImage}, width::Cint, height::Cint, color_space::Cint, data_type::Cint)
  ccall( (:imImageCreateBased, libim_convert_), Ptr{imImage}, (Ptr{imImage}, Cint, Cint, Cint, Cint), image, width, height, color_space, data_type)
end
function imImageDestroy(image::Ptr{imImage})
  ccall( (:imImageDestroy, libim_convert_), None, (Ptr{imImage},), image)
end
function imImageAddAlpha(image::Ptr{imImage})
  ccall( (:imImageAddAlpha, libim_convert_), None, (Ptr{imImage},), image)
end
function imImageSetAlpha(image::Ptr{imImage}, alpha::Cfloat)
  ccall( (:imImageSetAlpha, libim_convert_), None, (Ptr{imImage}, Cfloat), image, alpha)
end
function imImageRemoveAlpha(image::Ptr{imImage})
  ccall( (:imImageRemoveAlpha, libim_convert_), None, (Ptr{imImage},), image)
end
function imImageReshape(image::Ptr{imImage}, width::Cint, height::Cint)
  ccall( (:imImageReshape, libim_convert_), None, (Ptr{imImage}, Cint, Cint), image, width, height)
end
function imImageCopy(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopy, libim_convert_), None, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyData(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopyData, libim_convert_), None, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyAttributes(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopyAttributes, libim_convert_), None, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageMergeAttributes(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageMergeAttributes, libim_convert_), None, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyPlane(src_image::Ptr{imImage}, src_plane::Cint, dst_image::Ptr{imImage}, dst_plane::Cint)
  ccall( (:imImageCopyPlane, libim_convert_), None, (Ptr{imImage}, Cint, Ptr{imImage}, Cint), src_image, src_plane, dst_image, dst_plane)
end
function imImageDuplicate(image::Ptr{imImage})
  ccall( (:imImageDuplicate, libim_convert_), Ptr{imImage}, (Ptr{imImage},), image)
end
function imImageClone(image::Ptr{imImage})
  ccall( (:imImageClone, libim_convert_), Ptr{imImage}, (Ptr{imImage},), image)
end
function imImageSetAttribute(image::Ptr{imImage}, attrib::Ptr{Uint8}, data_type::Cint, count::Cint, data::Ptr{None})
  ccall( (:imImageSetAttribute, libim_convert_), None, (Ptr{imImage}, Ptr{Uint8}, Cint, Cint, Ptr{None}), image, attrib, data_type, count, data)
end
function imImageGetAttribute(image::Ptr{imImage}, attrib::Ptr{Uint8}, data_type::Ptr{Cint}, count::Ptr{Cint})
  ccall( (:imImageGetAttribute, libim_convert_), Ptr{None}, (Ptr{imImage}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), image, attrib, data_type, count)
end
function imImageGetAttributeList(image::Ptr{imImage}, attrib::Ptr{Ptr{Uint8}}, attrib_count::Ptr{Cint})
  ccall( (:imImageGetAttributeList, libim_convert_), None, (Ptr{imImage}, Ptr{Ptr{Uint8}}, Ptr{Cint}), image, attrib, attrib_count)
end
function imImageClear(image::Ptr{imImage})
  ccall( (:imImageClear, libim_convert_), None, (Ptr{imImage},), image)
end
function imImageIsBitmap(image::Ptr{imImage})
  ccall( (:imImageIsBitmap, libim_convert_), Cint, (Ptr{imImage},), image)
end
function imImageSetPalette(image::Ptr{imImage}, palette::Ptr{Clong}, palette_count::Cint)
  ccall( (:imImageSetPalette, libim_convert_), None, (Ptr{imImage}, Ptr{Clong}, Cint), image, palette, palette_count)
end
function imImageMatchSize(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatchSize, libim_convert_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageMatchColor(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatchColor, libim_convert_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageMatchDataType(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatchDataType, libim_convert_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageMatchColorSpace(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatchColorSpace, libim_convert_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageMatch(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatch, libim_convert_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageSetMap(image::Ptr{imImage})
  ccall( (:imImageSetMap, libim_convert_), None, (Ptr{imImage},), image)
end
function imImageSetBinary(image::Ptr{imImage})
  ccall( (:imImageSetBinary, libim_convert_), None, (Ptr{imImage},), image)
end
function imImageSetGray(image::Ptr{imImage})
  ccall( (:imImageSetGray, libim_convert_), None, (Ptr{imImage},), image)
end
function imImageMakeBinary(image::Ptr{imImage})
  ccall( (:imImageMakeBinary, libim_convert_), None, (Ptr{imImage},), image)
end
function imImageMakeGray(image::Ptr{imImage})
  ccall( (:imImageMakeGray, libim_convert_), None, (Ptr{imImage},), image)
end
function imFileLoadImage(ifile::Ptr{Cint}, index::Cint, error::Ptr{Cint})
  ccall( (:imFileLoadImage, libim_convert_), Ptr{imImage}, (Ptr{Cint}, Cint, Ptr{Cint}), ifile, index, error)
end
function imFileLoadImageFrame(ifile::Ptr{Cint}, index::Cint, image::Ptr{imImage}, error::Ptr{Cint})
  ccall( (:imFileLoadImageFrame, libim_convert_), None, (Ptr{Cint}, Cint, Ptr{imImage}, Ptr{Cint}), ifile, index, image, error)
end
function imFileLoadBitmap(ifile::Ptr{Cint}, index::Cint, error::Ptr{Cint})
  ccall( (:imFileLoadBitmap, libim_convert_), Ptr{imImage}, (Ptr{Cint}, Cint, Ptr{Cint}), ifile, index, error)
end
function imFileLoadImageRegion(ifile::Ptr{Cint}, index::Cint, bitmap::Cint, error::Ptr{Cint}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint, width::Cint, height::Cint)
  ccall( (:imFileLoadImageRegion, libim_convert_), Ptr{imImage}, (Ptr{Cint}, Cint, Cint, Ptr{Cint}, Cint, Cint, Cint, Cint, Cint, Cint), ifile, index, bitmap, error, xmin, xmax, ymin, ymax, width, height)
end
function imFileLoadBitmapFrame(ifile::Ptr{Cint}, index::Cint, image::Ptr{imImage}, error::Ptr{Cint})
  ccall( (:imFileLoadBitmapFrame, libim_convert_), None, (Ptr{Cint}, Cint, Ptr{imImage}, Ptr{Cint}), ifile, index, image, error)
end
function imFileSaveImage(ifile::Ptr{Cint}, image::Ptr{imImage})
  ccall( (:imFileSaveImage, libim_convert_), Cint, (Ptr{Cint}, Ptr{imImage}), ifile, image)
end
function imFileImageLoad(file_name::Ptr{Uint8}, index::Cint, error::Ptr{Cint})
  ccall( (:imFileImageLoad, libim_convert_), Ptr{imImage}, (Ptr{Uint8}, Cint, Ptr{Cint}), file_name, index, error)
end
function imFileImageLoadBitmap(file_name::Ptr{Uint8}, index::Cint, error::Ptr{Cint})
  ccall( (:imFileImageLoadBitmap, libim_convert_), Ptr{imImage}, (Ptr{Uint8}, Cint, Ptr{Cint}), file_name, index, error)
end
function imFileImageLoadRegion(file_name::Ptr{Uint8}, index::Cint, bitmap::Cint, error::Ptr{Cint}, xmin::Cint, xmax::Cint, ymin::Cint, ymax::Cint, width::Cint, height::Cint)
  ccall( (:imFileImageLoadRegion, libim_convert_), Ptr{imImage}, (Ptr{Uint8}, Cint, Cint, Ptr{Cint}, Cint, Cint, Cint, Cint, Cint, Cint), file_name, index, bitmap, error, xmin, xmax, ymin, ymax, width, height)
end
function imFileImageSave(file_name::Ptr{Uint8}, format::Ptr{Uint8}, image::Ptr{imImage})
  ccall( (:imFileImageSave, libim_convert_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Ptr{imImage}), file_name, format, image)
end
function imConvertDataType(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, cpx2real::Cint, gamma::Cfloat, abssolute::Cint, cast_mode::Cint)
  ccall( (:imConvertDataType, libim_convert_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cfloat, Cint, Cint), src_image, dst_image, cpx2real, gamma, abssolute, cast_mode)
end
function imConvertColorSpace(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imConvertColorSpace, libim_convert_), Cint, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imConvertToBitmap(src_image::Ptr{imImage}, dst_image::Ptr{imImage}, cpx2real::Cint, gamma::Cfloat, abssolute::Cint, cast_mode::Cint)
  ccall( (:imConvertToBitmap, libim_convert_), Cint, (Ptr{imImage}, Ptr{imImage}, Cint, Cfloat, Cint, Cint), src_image, dst_image, cpx2real, gamma, abssolute, cast_mode)
end
function imImageGetOpenGLData(image::Ptr{imImage}, glformat::Ptr{Cint})
  ccall( (:imImageGetOpenGLData, libim_convert_), Ptr{None}, (Ptr{imImage}, Ptr{Cint}), image, glformat)
end
function imImageCreateFromOpenGLData(width::Cint, height::Cint, glformat::Cint, gldata::Ptr{None})
  ccall( (:imImageCreateFromOpenGLData, libim_convert_), Ptr{imImage}, (Cint, Cint, Cint, Ptr{None}), width, height, glformat, gldata)
end
function imConvertPacking(src_data::Ptr{None}, dst_data::Ptr{None}, width::Cint, height::Cint, src_depth::Cint, dst_depth::Cint, data_type::Cint, src_is_packed::Cint)
  ccall( (:imConvertPacking, libim_convert_), None, (Ptr{None}, Ptr{None}, Cint, Cint, Cint, Cint, Cint, Cint), src_data, dst_data, width, height, src_depth, dst_depth, data_type, src_is_packed)
end
function imConvertMapToRGB(data::Ptr{Cuchar}, count::Cint, depth::Cint, packed::Cint, palette::Ptr{Clong}, palette_count::Cint)
  ccall( (:imConvertMapToRGB, libim_convert_), None, (Ptr{Cuchar}, Cint, Cint, Cint, Ptr{Clong}, Cint), data, count, depth, packed, palette, palette_count)
end
function imConvertRGB2Map(width::Cint, height::Cint, red::Ptr{Cuchar}, green::Ptr{Cuchar}, blue::Ptr{Cuchar}, map::Ptr{Cuchar}, palette::Ptr{Clong}, palette_count::Ptr{Cint})
  ccall( (:imConvertRGB2Map, libim_convert_), Cint, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Clong}, Ptr{Cint}), width, height, red, green, blue, map, palette, palette_count)
end

