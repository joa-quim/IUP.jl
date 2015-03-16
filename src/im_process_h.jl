# Skipping MacroDefinition: imcdCanvasPutImage(_canvas,_image,_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax){if(_image->color_space==IM_RGB){if(_image->has_alpha)cdCanvasPutImageRectRGBA(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],(unsignedchar*)_image->data[1],(unsignedchar*)_image->data[2],(unsignedchar*)_image->data[3],_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);elsecdCanvasPutImageRectRGB(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],(unsignedchar*)_image->data[1],(unsignedchar*)_image->data[2],_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);}elsecdCanvasPutImageRectMap(_canvas,_image->width,_image->height,(unsignedchar*)_image->data[0],_image->palette,_x,_y,_w,_h,_xmin,_xmax,_ymin,_ymax);}
# Skipping MacroDefinition: imImageGamma(_image,_gamma){floatparams[1];params[0]=_gamma;imProcessToneGamut(_image,_image,IM_GAMUT_POW,params);}
# Skipping MacroDefinition: imImageBrightnessContrast(_image,_bright_shift,_contrast_factor){float_params[2];_params[0]=bright_shift;_params[1]=contrast_factor;imProcessToneGamut(_image,_image,IM_GAMUT_BRIGHTCONT,_params);}
# Skipping MacroDefinition: imImageLevel(_image,_start,_end){float_params[2];_params[0]=_start;_params[1]=_end;imProcessToneGamut(_image,_image,IM_GAMUT_EXPAND,_params);}
# Skipping MacroDefinition: imImageEqualize(_image)imProcessEqualizeHistogram(_image,_image)
# Skipping MacroDefinition: imImageNegative(_image)imProcessNegative(_image,_image)
# Skipping MacroDefinition: imImageAutoLevel(_image,_percent)imProcessExpandHistogram(_image,_image,_percent)
typealias imUnaryPointOpFunc Ptr{Void}
typealias imUnaryPointColorOpFunc Ptr{Void}
typealias imMultiPointOpFunc Ptr{Void}
typealias imMultiPointColorOpFunc Ptr{Void}
# begin enum imUnaryOp
typealias imUnaryOp Uint32
const IM_UN_EQL = 0
const IM_UN_ABS = 1
const IM_UN_LESS = 2
const IM_UN_INV = 3
const IM_UN_SQR = 4
const IM_UN_SQRT = 5
const IM_UN_LOG = 6
const IM_UN_EXP = 7
const IM_UN_SIN = 8
const IM_UN_COS = 9
const IM_UN_CONJ = 10
const IM_UN_CPXNORM = 11
const IM_UN_POSITIVES = 12
const IM_UN_NEGATIVES = 13
# end enum imUnaryOp
# begin enum imBinaryOp
typealias imBinaryOp Uint32
const IM_BIN_ADD = 0
const IM_BIN_SUB = 1
const IM_BIN_MUL = 2
const IM_BIN_DIV = 3
const IM_BIN_DIFF = 4
const IM_BIN_POW = 5
const IM_BIN_MIN = 6
const IM_BIN_MAX = 7
# end enum imBinaryOp
# begin enum imLogicOp
typealias imLogicOp Uint32
const IM_BIT_AND = 0
const IM_BIT_OR = 1
const IM_BIT_XOR = 2
# end enum imLogicOp
typealias imRenderFunc Ptr{Void}
typealias imRenderCondFunc Ptr{Void}
# begin enum imToneGamut
typealias imToneGamut Uint32
const IM_GAMUT_NORMALIZE = 0
const IM_GAMUT_POW = 1
const IM_GAMUT_LOG = 2
const IM_GAMUT_EXP = 3
const IM_GAMUT_INVERT = 4
const IM_GAMUT_ZEROSTART = 5
const IM_GAMUT_SOLARIZE = 6
const IM_GAMUT_SLICE = 7
const IM_GAMUT_EXPAND = 8
const IM_GAMUT_CROP = 9
const IM_GAMUT_BRIGHTCONT = 10
# end enum imToneGamut
# begin enum imToneGamutFlags
typealias imToneGamutFlags Uint32
const IM_GAMUT_MINMAX = 256
# end enum imToneGamutFlags
type imStats
    max::Cfloat
    min::Cfloat
    positive::Culong
    negative::Culong
    zeros::Culong
    mean::Cfloat
    stddev::Cfloat
end
