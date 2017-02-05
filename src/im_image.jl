# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/libim_image_/include/im_image.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@static is_windows()? (const libim_image_ = "im") : (const libim_image_ = "libim")  # Name of IM shared lib.


function imImageCreate(width::Integer, height::Integer, color_space::Integer, data_type::Integer)
  ccall( (:imImageCreate, libim_image_), Ptr{imImage}, (Cint, Cint, Cint, Cint), width, height, color_space, data_type)
end
function imImageInit(width::Integer, height::Integer, color_mode::Integer, data_type::Integer, data_buffer::Ptr{Void}, palette::Ptr{Clong}, palette_count::Integer)
  ccall( (:imImageInit, libim_image_), Ptr{imImage}, (Cint, Cint, Cint, Cint, Ptr{Void}, Ptr{Clong}, Cint), width, height, color_mode, data_type, data_buffer, palette, palette_count)
end
function imImageCreateBased(image::Ptr{imImage}, width::Integer, height::Integer, color_space::Integer, data_type::Integer)
  ccall( (:imImageCreateBased, libim_image_), Ptr{imImage}, (Ptr{imImage}, Cint, Cint, Cint, Cint), image, width, height, color_space, data_type)
end
function imImageDestroy(image::Ptr{imImage})
	ccall( (:imImageDestroy, libim_image_), Void, (Ptr{imImage},), image)
end
function imImageAddAlpha(image::Ptr{imImage})
  ccall( (:imImageAddAlpha, libim_image_), Void, (Ptr{imImage},), image)
end
function imImageSetAlpha(image::Ptr{imImage}, alpha::Cfloat)
  ccall( (:imImageSetAlpha, libim_image_), Void, (Ptr{imImage}, Cfloat), image, alpha)
end
function imImageRemoveAlpha(image::Ptr{imImage})
  ccall( (:imImageRemoveAlpha, libim_image_), Void, (Ptr{imImage},), image)
end
function imImageReshape(image::Ptr{imImage}, width::Integer, height::Integer)
  ccall( (:imImageReshape, libim_image_), Void, (Ptr{imImage}, Cint, Cint), image, width, height)
end
function imImageCopy(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopy, libim_image_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyData(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopyData, libim_image_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyAttributes(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageCopyAttributes, libim_image_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageMergeAttributes(src_image::Ptr{imImage}, dst_image::Ptr{imImage})
  ccall( (:imImageMergeAttributes, libim_image_), Void, (Ptr{imImage}, Ptr{imImage}), src_image, dst_image)
end
function imImageCopyPlane(src_image::Ptr{imImage}, src_plane::Integer, dst_image::Ptr{imImage}, dst_plane::Integer)
  ccall( (:imImageCopyPlane, libim_image_), Void, (Ptr{imImage}, Cint, Ptr{imImage}, Cint), src_image, src_plane, dst_image, dst_plane)
end
function imImageDuplicate(image::Ptr{imImage})
  ccall( (:imImageDuplicate, libim_image_), Ptr{imImage}, (Ptr{imImage},), image)
end
function imImageClone(image::Ptr{imImage})
  ccall( (:imImageClone, libim_image_), Ptr{imImage}, (Ptr{imImage},), image)
end
function imImageSetAttribute(image::Ptr{imImage}, attrib::String, data_type::Integer, count::Integer, data::Ptr{Void})
  ccall( (:imImageSetAttribute, libim_image_), Void, (Ptr{imImage}, Ptr{UInt8}, Cint, Cint, Ptr{Void}), image, attrib, data_type, count, data)
end
function imImageGetAttribute(image::Ptr{imImage}, attrib::String, data_type::Ptr{Int}, count::Ptr{Int})
  ccall( (:imImageGetAttribute, libim_image_), Ptr{Void}, (Ptr{imImage}, Ptr{UInt8}, Ptr{Cint}, Ptr{Cint}), image, attrib, data_type, count)
end
function imImageGetAttribInteger(image::Ptr{imImage}, attrib::String, index::Integer)
  ccall( (:imImageGetAttribInteger, libim_image_), Ptr{Void}, (Ptr{imImage}, Ptr{UInt8}, Ptr{Cint}), image, attrib, index)
end
function imImageGetAttribReal(image::Ptr{imImage}, attrib::String, index::Integer)
  ccall( (:imImageGetAttribReal, libim_image_), Ptr{Void}, (Ptr{imImage}, Ptr{UInt8}, Ptr{Cint}), image, attrib, index)
end
function imImageGetAttribString(image::Ptr{imImage}, attrib::Ptr{UInt8})
  ccall( (:imImageGetAttribString, libim_image_), Ptr{UInt8}, (Ptr{imImage}, Ptr{UInt8}), image, attrib)
end
function imImageGetAttributeList(image::Ptr{imImage}, attrib::Ptr{Ptr{UInt8}}, attrib_count::Ptr{Int})
  ccall( (:imImageGetAttributeList, libim_image_), Void, (Ptr{imImage}, Ptr{Ptr{UInt8}}, Cint), image, attrib, attrib_count)
end
function imImageClear(image::Ptr{imImage})
  ccall( (:imImageClear, libim_image_), Void, (Ptr{imImage},), image)
end
function imImageIsBitmap(image::Ptr{imImage})
  ccall( (:imImageIsBitmap, libim_image_), Cint, (Ptr{imImage},), image)
end
function imImageSetPalette(image::Ptr{imImage}, palette::Ptr{Int}, palette_count::Integer)
  ccall( (:imImageSetPalette, libim_image_), Void, (Ptr{imImage}, Ptr{Clong}, Cint), image, palette, palette_count)
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
  ccall( (:imImageSetMap, libim_image_), Void, (Ptr{imImage},), image)
end
function imImageSetBinary(image::Ptr{imImage})
  ccall( (:imImageSetBinary, libim_image_), Void, (Ptr{imImage},), image)
end
function imImageSetGray(image::Ptr{imImage})
  ccall( (:imImageSetGray, libim_image_), Void, (Ptr{imImage},), image)
end
function imImageMakeBinary(image::Ptr{imImage})
  ccall( (:imImageMakeBinary, libim_image_), Void, (Ptr{imImage},), image)
end
function imImageMakeGray(image::Ptr{imImage})
  ccall( (:imImageMakeGray, libim_image_), Void, (Ptr{imImage},), image)
end
function imFileLoadImage(ifile::Ptr{Int}, index::Integer, error::Ptr{Int})
  ccall( (:imFileLoadImage, libim_image_), Ptr{imImage}, (Ptr{Cint}, Cint, Ptr{Cint}), ifile, index, error)
end
function imFileLoadImageFrame(ifile::Ptr{Int}, index::Integer, image::Ptr{imImage}, error::Ptr{Int})
    ccall( (:imFileLoadImageFrame, libim_image_), Void, (Ptr{Cint}, Cint, Ptr{imImage}, Ptr{Cint}), ifile,
            index, image, error)
end
function imFileLoadBitmap(ifile::Ptr{Int}, index::Integer, error::Ptr{Int})
  ccall( (:imFileLoadBitmap, libim_image_), Ptr{imImage}, (Ptr{Cint}, Cint, Ptr{Cint}), ifile, index, error)
end
function imFileLoadImageRegion(ifile::Ptr{Int}, index::Integer, bitmap::Integer, error::Ptr{Cint}, xmin::Integer,
                               xmax::Integer, ymin::Integer, ymax::Integer, width::Integer, height::Integer)
    ccall( (:imFileLoadImageRegion, libim_image_), Ptr{imImage}, (Ptr{Cint}, Cint, Cint, Ptr{Cint}, Cint, Cint,
          Cint, Cint, Cint, Cint), ifile, index, bitmap, error, xmin, xmax, ymin, ymax, width, height)
end
function imFileLoadBitmapFrame(ifile::Ptr{Int}, index::Integer, image::Ptr{imImage}, error::Ptr{Int})
    ccall( (:imFileLoadBitmapFrame, libim_image_), Void, (Ptr{Cint}, Cint, Ptr{imImage}, Ptr{Cint}), ifile,
            index, image, error)
end
function imFileSaveImage(ifile::Ptr{Int}, image::Ptr{imImage})
  ccall( (:imFileSaveImage, libim_image_), Cint, (Ptr{Cint}, Ptr{imImage}), ifile, image)
end
function imFileImageLoad(file_name::String, index::Integer, error::Ptr{Cint})
  ccall( (:imFileImageLoad, libim_image_), Ptr{imImage}, (Ptr{UInt8}, Cint, Ptr{Cint}), file_name, index, error)
end
function imFileImageLoadBitmap(file_name::String, index::Integer, error::Ptr{Int})
  ccall( (:imFileImageLoadBitmap, libim_image_), Ptr{imImage}, (Ptr{UInt8}, Cint, Ptr{Cint}), file_name, index, error)
end
function imFileImageLoadRegion(file_name::String, index::Integer, bitmap::Integer, error::Ptr{Int}, xmin::Integer,
                               xmax::Integer, ymin::Integer, ymax::Integer, width::Integer, height::Integer)
    ccall( (:imFileImageLoadRegion, libim_image_), Ptr{imImage}, (Ptr{UInt8}, Cint, Cint, Ptr{Cint}, Cint, Cint,
             Cint, Cint, Cint, Cint), file_name, index, bitmap, error, xmin, xmax, ymin, ymax, width, height)
end
function imFileImageSave(file_name::String, format::String, image::Ptr{imImage})
  ccall( (:imFileImageSave, libim_image_), Cint, (Ptr{UInt8}, Ptr{UInt8}, Ptr{imImage}), file_name, format, image)
end

