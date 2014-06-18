const OBJC_NEW_PROPERTIES = 1
# Skipping MacroDefinition: imcdCanvasPutImage(_canvas,_image,_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax){if(_image->color_space==IM_RGB){if(_image->has_alpha)cdCanvasPutImageRectRGBA(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],(unsignedchar*)_image->data[1],(unsignedchar*)_image->data[2],(unsignedchar*)_image->data[3],_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);elsecdCanvasPutImageRectRGB(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],(unsignedchar*)_image->data[1],(unsignedchar*)_image->data[2],_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);}elsecdCanvasPutImageRectMap(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],_image->palette,_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);}
type imImage
    width::Cint
    height::Cint
    color_space::Cint
    data_type::Cint
    has_alpha::Cint
    depth::Cint
    line_size::Cint
    plane_size::Cint
    size::Cint
    count::Cint
    data::Ptr{Ptr{None}}
    palette::Ptr{Clong}
    palette_count::Cint
    attrib_table::Ptr{None}
end
# begin enum imComplex2Real
typealias imComplex2Real Uint32
const IM_CPX_REAL = 0
const IM_CPX_IMAG = 1
const IM_CPX_MAG = 2
const IM_CPX_PHASE = 3
# end enum imComplex2Real
# begin enum imGammaFactor
typealias imGammaFactor Cint
const IM_GAMMA_LINEAR = 0
const IM_GAMMA_LOGLITE = -10
const IM_GAMMA_LOGHEAVY = -1000
const IM_GAMMA_EXPLITE = 2
const IM_GAMMA_EXPHEAVY = 7
# end enum imGammaFactor
# begin enum imCastMode
typealias imCastMode Uint32
const IM_CAST_MINMAX = 0
const IM_CAST_FIXED = 1
const IM_CAST_DIRECT = 2
const IM_CAST_USER = 3
# end enum imCastMode
