const IM_INTERRUPTED = -1
const IM_ALL = -1
const IM_COUNTER_CB = 0
const IM_RESOLUTION_CB = 1
const IM_GIF_TRANSPARENT_COLOR_CB = 0
const IM_TIF_IMAGE_DESCRIPTION_CB = 0
# begin enum imDataType
typealias imDataType UInt32
const IM_BYTE = 0
const IM_SHORT = 1
const IM_USHORT = 2
const IM_INT = 3
const IM_FLOAT = 4
const IM_CFLOAT = 5
# end enum imDataType
# begin enum imColorSpace
typealias imColorSpace UInt32
const IM_RGB = 0
const IM_MAP = 1
const IM_GRAY = 2
const IM_BINARY = 3
const IM_CMYK = 4
const IM_YCBCR = 5
const IM_LAB = 6
const IM_LUV = 7
const IM_XYZ = 8
# end enum imColorSpace
# begin enum imColorModeConfig
typealias imColorModeConfig UInt32
const IM_ALPHA = 256
const IM_PACKED = 512
const IM_TOPDOWN = 1024
# end enum imColorModeConfig
# begin enum imErrorCodes
typealias imErrorCodes UInt32
const IM_ERR_NONE = 0
const IM_ERR_OPEN = 1
const IM_ERR_ACCESS = 2
const IM_ERR_FORMAT = 3
const IM_ERR_DATA = 4
const IM_ERR_COMPRESS = 5
const IM_ERR_MEM = 6
const IM_ERR_COUNTER = 7
const IM_ERR_READ = IM_ERR_ACCESS
const IM_ERR_WRITE = IM_ERR_ACCESS
const IM_ERR_TYPE = IM_ERR_DATA
const IM_ERR_COMP = IM_ERR_COMPRESS
# end enum imErrorCodes
typealias imFile Void
# begin enum ANONYMOUS_1
typealias ANONYMOUS_1 UInt32
const IM_BMP = 0
const IM_PCX = 1
const IM_GIF = 2
const IM_TIF = 3
const IM_RAS = 4
const IM_SGI = 5
const IM_JPG = 6
const IM_LED = 7
const IM_TGA = 8
# end enum ANONYMOUS_1
# begin enum ANONYMOUS_2
typealias ANONYMOUS_2 UInt32
const IM_NONE = 0
const IM_DEFAULT = 256
const IM_COMPRESSED = 512
# end enum ANONYMOUS_2
typealias imCallback Ptr{Void}
typealias imFileCounterCallback Ptr{Void}
typealias imResolutionCallback Ptr{Void}
# begin enum ANONYMOUS_3
typealias ANONYMOUS_3 UInt32
const IM_RES_NONE = 0
const IM_RES_DPI = 1
const IM_RES_DPC = 2
# end enum ANONYMOUS_3
typealias imGifTranspIndex Ptr{Void}
typealias imTiffImageDesc Ptr{Void}
