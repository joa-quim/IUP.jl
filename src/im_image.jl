# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libim_image_/include/im_image.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const libim_image_ = "im") : (const libim_image_ = "libim")  # Name of IM shared lib.


function imImageCreate(width::Int, height::Int, color_space::Int, data_type::Int)
  ccall( (:imImageCreate, libim_image_), Ptr{imImage}, (Cint, Cint, Cint, Cint), width, height, color_space, data_type)
end
function imImageInit(width::Int, height::Int, color_mode::Int, data_type::Int, data_buffer::Ptr{None}, palette::Ptr{Clong}, palette_count::Int)
  ccall( (:imImageInit, libim_image_), Ptr{imImage}, (Cint, Cint, Cint, Cint, Ptr{None}, Ptr{Clong}, Cint), width, height, color_mode, data_type, data_buffer, palette, palette_count)
end
function imImageCreateBased(image::Ptr{imImage}, width::Int, height::Int, color_space::Int, data_type::Int)
  ccall( (:imImageCreateBased, libim_image_), Ptr{imImage}, (Ptr{imImage}, Cint, Cint, Cint, Cint), image, width, height, color_space, data_type)
end
function imImageDestroy(image::Ptr{imImage})
  ccall( (:imImageDestroy, libim_image_), None, (Ptr{imImage},), image)
end
function imImageAddAlpha(image::Ptr{imImage})
  ccall( (:imImageAddAlpha, libim_image_), None, (Ptr{imImage},), image)
end
function imImageSetAlpha(image::Ptr{imImage}, alpha::Cfloat)
  ccall( (:imImageSetAlpha, libim_image_), None, (Ptr{imImage}, Cfloat), image, alpha)
end
function imImageRemoveAlpha(image::Ptr{imImage})
  ccall( (:imImageRemoveAlpha, libim_image_), None, (Ptr{imImage},), image)
end
function imImageReshape(image::Ptr{imImage}, width::Int, height::Int)
  ccall( (:imImageReshape, libim_image_), None, (Ptr{imImage}, Cint, Cint), image, width, height)
end
function imImageCopy(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopy, libim_image_), None, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyData(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopyData, libim_image_), None, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyAttributes(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopyAttributes, libim_image_), None, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageMergeAttributes(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageMergeAttributes, libim_image_), None, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyPlane(src_image::Ptr{imImage}, src_plane::Int, dst_image::Ptr{imImage}, dst_plane::Int)
  ccall( (:imImageCopyPlane, libim_image_), None, (Ptr{imImage}, Cint, Ptr{imImage}, Cint), src_image, src_plane, dst_image, dst_plane)
end
function imImageDuplicate(image::Ptr{imImage})
  ccall( (:imImageDuplicate, libim_image_), Ptr{imImage}, (Ptr{imImage},), image)
end
function imImageClone(image::Ptr{imImage})
  ccall( (:imImageClone, libim_image_), Ptr{imImage}, (Ptr{imImage},), image)
end
function imImageSetAttribute(image::Ptr{imImage}, attrib::String, data_type::Int, count::Int, data::Ptr{None})
  ccall( (:imImageSetAttribute, libim_image_), None, (Ptr{imImage}, Ptr{Uint8}, Cint, Cint, Ptr{None}), image, attrib, data_type, count, data)
end
function imImageGetAttribute(image::Ptr{imImage}, attrib::String, data_type::Ptr{Cint}, count::Ptr{Cint})
  ccall( (:imImageGetAttribute, libim_image_), Ptr{None}, (Ptr{imImage}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), image, attrib, data_type, count)
end
function imImageGetAttributeList(image::Ptr{imImage}, attrib::Ptr{Ptr{Uint8}}, attrib_count::Ptr{Cint})
  ccall( (:imImageGetAttributeList, libim_image_), None, (Ptr{imImage}, Ptr{Ptr{Uint8}}, Ptr{Cint}), image, attrib, attrib_count)
end
function imImageClear(image::Ptr{imImage})
  ccall( (:imImageClear, libim_image_), None, (Ptr{imImage},), image)
end
function imImageIsBitmap(image::Ptr{imImage})
  ccall( (:imImageIsBitmap, libim_image_), Cint, (Ptr{imImage},), image)
end
function imImageSetPalette(image::Ptr{imImage}, palette::Ptr{Clong}, palette_count::Int)
  ccall( (:imImageSetPalette, libim_image_), None, (Ptr{imImage}, Ptr{Clong}, Cint), image, palette, palette_count)
end
function imImageMatchSize(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatchSize, libim_image_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageMatchColor(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatchColor, libim_image_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageMatchDataType(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatchDataType, libim_image_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageMatchColorSpace(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatchColorSpace, libim_image_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageMatch(image1::Ptr{imImage}, image2::Ptr{imImage})
  ccall( (:imImageMatch, libim_image_), Cint, (Ptr{imImage}, Ptr{imImage}), image1, image2)
end
function imImageSetMap(image::Ptr{imImage})
  ccall( (:imImageSetMap, libim_image_), None, (Ptr{imImage},), image)
end
function imImageSetBinary(image::Ptr{imImage})
  ccall( (:imImageSetBinary, libim_image_), None, (Ptr{imImage},), image)
end
function imImageSetGray(image::Ptr{imImage})
  ccall( (:imImageSetGray, libim_image_), None, (Ptr{imImage},), image)
end
function imImageMakeBinary(image::Ptr{imImage})
  ccall( (:imImageMakeBinary, libim_image_), None, (Ptr{imImage},), image)
end
function imImageMakeGray(image::Ptr{imImage})
  ccall( (:imImageMakeGray, libim_image_), None, (Ptr{imImage},), image)
end
function imFileLoadImage(ifile::Ptr{Cint}, index::Int, error::Ptr{Cint})
  ccall( (:imFileLoadImage, libim_image_), Ptr{imImage}, (Ptr{Cint}, Cint, Ptr{Cint}), ifile, index, error)
end
function imFileLoadImageFrame(ifile::Ptr{Cint}, index::Int, image::Ptr{imImage}, error::Ptr{Cint})
  ccall( (:imFileLoadImageFrame, libim_image_), None, (Ptr{Cint}, Cint, Ptr{imImage}, Ptr{Cint}), ifile, index, image, error)
end
function imFileLoadBitmap(ifile::Ptr{Cint}, index::Int, error::Ptr{Cint})
  ccall( (:imFileLoadBitmap, libim_image_), Ptr{imImage}, (Ptr{Cint}, Cint, Ptr{Cint}), ifile, index, error)
end
function imFileLoadImageRegion(ifile::Ptr{Cint}, index::Int, bitmap::Int, error::Ptr{Cint}, xmin::Int, xmax::Int, ymin::Int, ymax::Int, width::Int, height::Int)
  ccall( (:imFileLoadImageRegion, libim_image_), Ptr{imImage}, (Ptr{Cint}, Cint, Cint, Ptr{Cint}, Cint, Cint, Cint, Cint, Cint, Cint), ifile, index, bitmap, error, xmin, xmax, ymin, ymax, width, height)
end
function imFileLoadBitmapFrame(ifile::Ptr{Cint}, index::Int, image::Ptr{imImage}, error::Ptr{Cint})
  ccall( (:imFileLoadBitmapFrame, libim_image_), None, (Ptr{Cint}, Cint, Ptr{imImage}, Ptr{Cint}), ifile, index, image, error)
end
function imFileSaveImage(ifile::Ptr{Cint}, image::Ptr{imImage})
  ccall( (:imFileSaveImage, libim_image_), Cint, (Ptr{Cint}, Ptr{imImage}), ifile, image)
end
function imFileImageLoad(file_name::String, index::Int, error::Ptr{Cint})
  ccall( (:imFileImageLoad, libim_image_), Ptr{imImage}, (Ptr{Uint8}, Cint, Ptr{Cint}), file_name, index, error)
end
function imFileImageLoadBitmap(file_name::String, index::Int, error::Ptr{Cint})
  ccall( (:imFileImageLoadBitmap, libim_image_), Ptr{imImage}, (Ptr{Uint8}, Cint, Ptr{Cint}), file_name, index, error)
end
function imFileImageLoadRegion(file_name::String, index::Int, bitmap::Int, error::Ptr{Cint}, xmin::Int, xmax::Int, ymin::Int, ymax::Int, width::Int, height::Int)
  ccall( (:imFileImageLoadRegion, libim_image_), Ptr{imImage}, (Ptr{Uint8}, Cint, Cint, Ptr{Cint}, Cint, Cint, Cint, Cint, Cint, Cint), file_name, index, bitmap, error, xmin, xmax, ymin, ymax, width, height)
end
function imFileImageSave(file_name::String, format::String, image::Ptr{imImage})
  ccall( (:imFileImageSave, libim_image_), Cint, (Ptr{Uint8}, Ptr{Uint8}, Ptr{imImage}), file_name, format, image)
end

