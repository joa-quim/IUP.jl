# Skipping MacroDefinition: va_start(ap,param)__builtin_va_start(ap,param)
# Skipping MacroDefinition: va_end(ap)__builtin_va_end(ap)
# Skipping MacroDefinition: va_arg(ap,type)__builtin_va_arg(ap,type)
# Skipping MacroDefinition: va_copy(dest,src)__builtin_va_copy(dest,src)
const CD_CTXPLUS_COUNT = 6
const CD_CTX_PLUS = 0xFF00
# Skipping MacroDefinition: CD_ALPHA_BLEND(_src,_dst,_alpha)(unsignedchar)(((_src)*(_alpha)+(_dst)*(255-(_alpha)))/255)
const CD_NAME = "CD - Canvas Draw"
const CD_DESCRIPTION = "A 2D Graphics Library"
const CD_COPYRIGHT = "Copyright (C) 1994-2014 Tecgraf, PUC-Rio."
const CD_VERSION = "5.8"
const CD_VERSION_NUMBER = 508000
const CD_VERSION_DATE = "2014/07/25"
# Skipping MacroDefinition: cdAlpha(_)(unsignedchar)(~(((_)>>24)&0xFF))
# Skipping MacroDefinition: cdReserved(_)(unsignedchar)(((_)>>24)&0xFF)
# Skipping MacroDefinition: cdRed(_)(unsignedchar)(((_)>>16)&0xFF)
# Skipping MacroDefinition: cdGreen(_)(unsignedchar)(((_)>>8)&0xFF)
# Skipping MacroDefinition: cdBlue(_)(unsignedchar)(((_)>>0)&0xFF)
const CD_QUERY = -1
const CD_POLYCUSTOM = 10
const CD_CAP_NONE = 0x00000000
const CD_CAP_FLUSH = 0x00000001
const CD_CAP_CLEAR = 0x00000002
const CD_CAP_PLAY = 0x00000004
const CD_CAP_YAXIS = 0x00000008
const CD_CAP_CLIPAREA = 0x00000010
const CD_CAP_CLIPPOLY = 0x00000020
const CD_CAP_REGION = 0x00000040
const CD_CAP_RECT = 0x00000080
const CD_CAP_CHORD = 0x00000100
const CD_CAP_IMAGERGB = 0x00000200
const CD_CAP_IMAGERGBA = 0x00000400
const CD_CAP_IMAGEMAP = 0x00000800
const CD_CAP_GETIMAGERGB = 0x00001000
const CD_CAP_IMAGESRV = 0x00002000
const CD_CAP_BACKGROUND = 0x00004000
const CD_CAP_BACKOPACITY = 0x00008000
const CD_CAP_WRITEMODE = 0x00010000
const CD_CAP_LINESTYLE = 0x00020000
const CD_CAP_LINEWITH = 0x00040000
const CD_CAP_FPRIMTIVES = 0x00080000
const CD_CAP_HATCH = 0x00100000
const CD_CAP_STIPPLE = 0x00200000
const CD_CAP_PATTERN = 0x00400000
const CD_CAP_FONT = 0x00800000
const CD_CAP_FONTDIM = 0x01000000
const CD_CAP_TEXTSIZE = 0x02000000
const CD_CAP_TEXTORIENTATION = 0x04000000
const CD_CAP_PALETTE = 0x08000000
const CD_CAP_LINECAP = 0x10000000
const CD_CAP_LINEJOIN = 0x20000000
const CD_CAP_PATH = 0x40000000
const CD_CAP_BEZIER = 0x80000000
const CD_CAP_ALL = 0xFFFFFFFF
const CD_SIZECB = 0
const CD_ABORT = 1
const CD_CONTINUE = 0
const CD_SIM_NONE = 0x0000
const CD_SIM_LINE = 0x0001
const CD_SIM_RECT = 0x0002
const CD_SIM_BOX = 0x0004
const CD_SIM_ARC = 0x0008
const CD_SIM_SECTOR = 0x0010
const CD_SIM_CHORD = 0x0020
const CD_SIM_POLYLINE = 0x0040
const CD_SIM_POLYGON = 0x0080
const CD_SIM_TEXT = 0x0100
const CD_SIM_ALL = 0xFFFF
const CD_SIM_LINES = (CD_SIM_LINE|CD_SIM_RECT|CD_SIM_ARC|CD_SIM_POLYLINE)
const CD_SIM_FILLS = (CD_SIM_BOX|CD_SIM_SECTOR|CD_SIM_CHORD|CD_SIM_POLYGON)
const CD_RED = 0xFF0000
const CD_DARK_RED = 0x800000
const CD_GREEN = 0x00FF00
const CD_DARK_GREEN = 0x008000
const CD_BLUE = 0x0000FF
const CD_DARK_BLUE = 0x000080
const CD_YELLOW = 0xFFFF00
const CD_DARK_YELLOW = 0x808000
const CD_MAGENTA = 0xFF00FF
const CD_DARK_MAGENTA = 0x800080
const CD_CYAN = 0x00FFFF
const CD_DARK_CYAN = 0x008080
const CD_WHITE = 0xFFFFFF
const CD_BLACK = 0x000000
const CD_DARK_GRAY = 0x808080
const CD_GRAY = 0xC0C0C0
const CD_MM2PT = 2.834645669
const CD_RAD2DEG = 57.295779513
const CD_DEG2RAD = 0.01745329252
# Skipping MacroDefinition: cdPutImageRGB(iw,ih,r,g,b,x,y,w,h)cdPutImageRectRGB((iw),(ih),(r),(g),(b),(x),(y),(w),(h),0,0,0,0)
# Skipping MacroDefinition: cdPutImageRGBA(iw,ih,r,g,b,a,x,y,w,h)cdPutImageRectRGBA((iw),(ih),(r),(g),(b),(a),(x),(y),(w),(h),0,0,0,0)
# Skipping MacroDefinition: cdPutImageMap(iw,ih,index,colors,x,y,w,h)cdPutImageRectMap((iw),(ih),(index),(colors),(x),(y),(w),(h),0,0,0,0)
# Skipping MacroDefinition: cdPutImage(image,x,y)cdPutImageRect((image),(x),(y),0,0,0,0)
# Skipping MacroDefinition: cdCanvas2Raster(x,y){(void)x;cdUpdateYAxis(y);}
#		typealias va_list __builtin_va_list

type cdCtxCanvasBase
    canvas::Ptr{Cint}
end

type cdPoint
    x::Cint
    y::Cint
end
type cdfPoint
    x::Cdouble
    y::Cdouble
end
type cdRect
    xmin::Cint
    xmax::Cint
    ymin::Cint
    ymax::Cint
end
type cdfRect
    xmin::Cdouble
    xmax::Cdouble
    ymin::Cdouble
    ymax::Cdouble
end
type cdAttribute
    name::Ptr{UInt8}
    set::Ptr{Void}
    get::Ptr{Void}
end
type cdImage
    w::Cint
    h::Cint
    ctximage::Ptr{Void}
    cxGetImage::Ptr{Void}
    cxPutImageRect::Ptr{Void}
    cxKillImage::Ptr{Void}
end
type cdContext
    caps::Culong
    _type::Cint
    cxCreateCanvas::Ptr{Void}
    cxInitTable::Ptr{Void}
    cxPlay::Ptr{Void}
    cxRegisterCallback::Ptr{Void}
end

immutable Array_2_UInt8
    d1::UInt8
    d2::UInt8
end
immutable Array_6_Cdouble
    d1::Cdouble
    d2::Cdouble
    d3::Cdouble
    d4::Cdouble
    d5::Cdouble
    d6::Cdouble
end
immutable Array_1024_UInt8
    d1::UInt8
    d2::UInt8
    d3::UInt8
    d4::UInt8
    d5::UInt8
    d6::UInt8
    d7::UInt8
    d8::UInt8
    d9::UInt8
    d10::UInt8
    d11::UInt8
    d12::UInt8
    d13::UInt8
    d14::UInt8
    d15::UInt8
    d16::UInt8
    d17::UInt8
    d18::UInt8
    d19::UInt8
    d20::UInt8
    d21::UInt8
    d22::UInt8
    d23::UInt8
    d24::UInt8
    d25::UInt8
    d26::UInt8
    d27::UInt8
    d28::UInt8
    d29::UInt8
    d30::UInt8
    d31::UInt8
    d32::UInt8
    d33::UInt8
    d34::UInt8
    d35::UInt8
    d36::UInt8
    d37::UInt8
    d38::UInt8
    d39::UInt8
    d40::UInt8
    d41::UInt8
    d42::UInt8
    d43::UInt8
    d44::UInt8
    d45::UInt8
    d46::UInt8
    d47::UInt8
    d48::UInt8
    d49::UInt8
    d50::UInt8
    d51::UInt8
    d52::UInt8
    d53::UInt8
    d54::UInt8
    d55::UInt8
    d56::UInt8
    d57::UInt8
    d58::UInt8
    d59::UInt8
    d60::UInt8
    d61::UInt8
    d62::UInt8
    d63::UInt8
    d64::UInt8
    d65::UInt8
    d66::UInt8
    d67::UInt8
    d68::UInt8
    d69::UInt8
    d70::UInt8
    d71::UInt8
    d72::UInt8
    d73::UInt8
    d74::UInt8
    d75::UInt8
    d76::UInt8
    d77::UInt8
    d78::UInt8
    d79::UInt8
    d80::UInt8
    d81::UInt8
    d82::UInt8
    d83::UInt8
    d84::UInt8
    d85::UInt8
    d86::UInt8
    d87::UInt8
    d88::UInt8
    d89::UInt8
    d90::UInt8
    d91::UInt8
    d92::UInt8
    d93::UInt8
    d94::UInt8
    d95::UInt8
    d96::UInt8
    d97::UInt8
    d98::UInt8
    d99::UInt8
    d100::UInt8
    d101::UInt8
    d102::UInt8
    d103::UInt8
    d104::UInt8
    d105::UInt8
    d106::UInt8
    d107::UInt8
    d108::UInt8
    d109::UInt8
    d110::UInt8
    d111::UInt8
    d112::UInt8
    d113::UInt8
    d114::UInt8
    d115::UInt8
    d116::UInt8
    d117::UInt8
    d118::UInt8
    d119::UInt8
    d120::UInt8
    d121::UInt8
    d122::UInt8
    d123::UInt8
    d124::UInt8
    d125::UInt8
    d126::UInt8
    d127::UInt8
    d128::UInt8
    d129::UInt8
    d130::UInt8
    d131::UInt8
    d132::UInt8
    d133::UInt8
    d134::UInt8
    d135::UInt8
    d136::UInt8
    d137::UInt8
    d138::UInt8
    d139::UInt8
    d140::UInt8
    d141::UInt8
    d142::UInt8
    d143::UInt8
    d144::UInt8
    d145::UInt8
    d146::UInt8
    d147::UInt8
    d148::UInt8
    d149::UInt8
    d150::UInt8
    d151::UInt8
    d152::UInt8
    d153::UInt8
    d154::UInt8
    d155::UInt8
    d156::UInt8
    d157::UInt8
    d158::UInt8
    d159::UInt8
    d160::UInt8
    d161::UInt8
    d162::UInt8
    d163::UInt8
    d164::UInt8
    d165::UInt8
    d166::UInt8
    d167::UInt8
    d168::UInt8
    d169::UInt8
    d170::UInt8
    d171::UInt8
    d172::UInt8
    d173::UInt8
    d174::UInt8
    d175::UInt8
    d176::UInt8
    d177::UInt8
    d178::UInt8
    d179::UInt8
    d180::UInt8
    d181::UInt8
    d182::UInt8
    d183::UInt8
    d184::UInt8
    d185::UInt8
    d186::UInt8
    d187::UInt8
    d188::UInt8
    d189::UInt8
    d190::UInt8
    d191::UInt8
    d192::UInt8
    d193::UInt8
    d194::UInt8
    d195::UInt8
    d196::UInt8
    d197::UInt8
    d198::UInt8
    d199::UInt8
    d200::UInt8
    d201::UInt8
    d202::UInt8
    d203::UInt8
    d204::UInt8
    d205::UInt8
    d206::UInt8
    d207::UInt8
    d208::UInt8
    d209::UInt8
    d210::UInt8
    d211::UInt8
    d212::UInt8
    d213::UInt8
    d214::UInt8
    d215::UInt8
    d216::UInt8
    d217::UInt8
    d218::UInt8
    d219::UInt8
    d220::UInt8
    d221::UInt8
    d222::UInt8
    d223::UInt8
    d224::UInt8
    d225::UInt8
    d226::UInt8
    d227::UInt8
    d228::UInt8
    d229::UInt8
    d230::UInt8
    d231::UInt8
    d232::UInt8
    d233::UInt8
    d234::UInt8
    d235::UInt8
    d236::UInt8
    d237::UInt8
    d238::UInt8
    d239::UInt8
    d240::UInt8
    d241::UInt8
    d242::UInt8
    d243::UInt8
    d244::UInt8
    d245::UInt8
    d246::UInt8
    d247::UInt8
    d248::UInt8
    d249::UInt8
    d250::UInt8
    d251::UInt8
    d252::UInt8
    d253::UInt8
    d254::UInt8
    d255::UInt8
    d256::UInt8
    d257::UInt8
    d258::UInt8
    d259::UInt8
    d260::UInt8
    d261::UInt8
    d262::UInt8
    d263::UInt8
    d264::UInt8
    d265::UInt8
    d266::UInt8
    d267::UInt8
    d268::UInt8
    d269::UInt8
    d270::UInt8
    d271::UInt8
    d272::UInt8
    d273::UInt8
    d274::UInt8
    d275::UInt8
    d276::UInt8
    d277::UInt8
    d278::UInt8
    d279::UInt8
    d280::UInt8
    d281::UInt8
    d282::UInt8
    d283::UInt8
    d284::UInt8
    d285::UInt8
    d286::UInt8
    d287::UInt8
    d288::UInt8
    d289::UInt8
    d290::UInt8
    d291::UInt8
    d292::UInt8
    d293::UInt8
    d294::UInt8
    d295::UInt8
    d296::UInt8
    d297::UInt8
    d298::UInt8
    d299::UInt8
    d300::UInt8
    d301::UInt8
    d302::UInt8
    d303::UInt8
    d304::UInt8
    d305::UInt8
    d306::UInt8
    d307::UInt8
    d308::UInt8
    d309::UInt8
    d310::UInt8
    d311::UInt8
    d312::UInt8
    d313::UInt8
    d314::UInt8
    d315::UInt8
    d316::UInt8
    d317::UInt8
    d318::UInt8
    d319::UInt8
    d320::UInt8
    d321::UInt8
    d322::UInt8
    d323::UInt8
    d324::UInt8
    d325::UInt8
    d326::UInt8
    d327::UInt8
    d328::UInt8
    d329::UInt8
    d330::UInt8
    d331::UInt8
    d332::UInt8
    d333::UInt8
    d334::UInt8
    d335::UInt8
    d336::UInt8
    d337::UInt8
    d338::UInt8
    d339::UInt8
    d340::UInt8
    d341::UInt8
    d342::UInt8
    d343::UInt8
    d344::UInt8
    d345::UInt8
    d346::UInt8
    d347::UInt8
    d348::UInt8
    d349::UInt8
    d350::UInt8
    d351::UInt8
    d352::UInt8
    d353::UInt8
    d354::UInt8
    d355::UInt8
    d356::UInt8
    d357::UInt8
    d358::UInt8
    d359::UInt8
    d360::UInt8
    d361::UInt8
    d362::UInt8
    d363::UInt8
    d364::UInt8
    d365::UInt8
    d366::UInt8
    d367::UInt8
    d368::UInt8
    d369::UInt8
    d370::UInt8
    d371::UInt8
    d372::UInt8
    d373::UInt8
    d374::UInt8
    d375::UInt8
    d376::UInt8
    d377::UInt8
    d378::UInt8
    d379::UInt8
    d380::UInt8
    d381::UInt8
    d382::UInt8
    d383::UInt8
    d384::UInt8
    d385::UInt8
    d386::UInt8
    d387::UInt8
    d388::UInt8
    d389::UInt8
    d390::UInt8
    d391::UInt8
    d392::UInt8
    d393::UInt8
    d394::UInt8
    d395::UInt8
    d396::UInt8
    d397::UInt8
    d398::UInt8
    d399::UInt8
    d400::UInt8
    d401::UInt8
    d402::UInt8
    d403::UInt8
    d404::UInt8
    d405::UInt8
    d406::UInt8
    d407::UInt8
    d408::UInt8
    d409::UInt8
    d410::UInt8
    d411::UInt8
    d412::UInt8
    d413::UInt8
    d414::UInt8
    d415::UInt8
    d416::UInt8
    d417::UInt8
    d418::UInt8
    d419::UInt8
    d420::UInt8
    d421::UInt8
    d422::UInt8
    d423::UInt8
    d424::UInt8
    d425::UInt8
    d426::UInt8
    d427::UInt8
    d428::UInt8
    d429::UInt8
    d430::UInt8
    d431::UInt8
    d432::UInt8
    d433::UInt8
    d434::UInt8
    d435::UInt8
    d436::UInt8
    d437::UInt8
    d438::UInt8
    d439::UInt8
    d440::UInt8
    d441::UInt8
    d442::UInt8
    d443::UInt8
    d444::UInt8
    d445::UInt8
    d446::UInt8
    d447::UInt8
    d448::UInt8
    d449::UInt8
    d450::UInt8
    d451::UInt8
    d452::UInt8
    d453::UInt8
    d454::UInt8
    d455::UInt8
    d456::UInt8
    d457::UInt8
    d458::UInt8
    d459::UInt8
    d460::UInt8
    d461::UInt8
    d462::UInt8
    d463::UInt8
    d464::UInt8
    d465::UInt8
    d466::UInt8
    d467::UInt8
    d468::UInt8
    d469::UInt8
    d470::UInt8
    d471::UInt8
    d472::UInt8
    d473::UInt8
    d474::UInt8
    d475::UInt8
    d476::UInt8
    d477::UInt8
    d478::UInt8
    d479::UInt8
    d480::UInt8
    d481::UInt8
    d482::UInt8
    d483::UInt8
    d484::UInt8
    d485::UInt8
    d486::UInt8
    d487::UInt8
    d488::UInt8
    d489::UInt8
    d490::UInt8
    d491::UInt8
    d492::UInt8
    d493::UInt8
    d494::UInt8
    d495::UInt8
    d496::UInt8
    d497::UInt8
    d498::UInt8
    d499::UInt8
    d500::UInt8
    d501::UInt8
    d502::UInt8
    d503::UInt8
    d504::UInt8
    d505::UInt8
    d506::UInt8
    d507::UInt8
    d508::UInt8
    d509::UInt8
    d510::UInt8
    d511::UInt8
    d512::UInt8
    d513::UInt8
    d514::UInt8
    d515::UInt8
    d516::UInt8
    d517::UInt8
    d518::UInt8
    d519::UInt8
    d520::UInt8
    d521::UInt8
    d522::UInt8
    d523::UInt8
    d524::UInt8
    d525::UInt8
    d526::UInt8
    d527::UInt8
    d528::UInt8
    d529::UInt8
    d530::UInt8
    d531::UInt8
    d532::UInt8
    d533::UInt8
    d534::UInt8
    d535::UInt8
    d536::UInt8
    d537::UInt8
    d538::UInt8
    d539::UInt8
    d540::UInt8
    d541::UInt8
    d542::UInt8
    d543::UInt8
    d544::UInt8
    d545::UInt8
    d546::UInt8
    d547::UInt8
    d548::UInt8
    d549::UInt8
    d550::UInt8
    d551::UInt8
    d552::UInt8
    d553::UInt8
    d554::UInt8
    d555::UInt8
    d556::UInt8
    d557::UInt8
    d558::UInt8
    d559::UInt8
    d560::UInt8
    d561::UInt8
    d562::UInt8
    d563::UInt8
    d564::UInt8
    d565::UInt8
    d566::UInt8
    d567::UInt8
    d568::UInt8
    d569::UInt8
    d570::UInt8
    d571::UInt8
    d572::UInt8
    d573::UInt8
    d574::UInt8
    d575::UInt8
    d576::UInt8
    d577::UInt8
    d578::UInt8
    d579::UInt8
    d580::UInt8
    d581::UInt8
    d582::UInt8
    d583::UInt8
    d584::UInt8
    d585::UInt8
    d586::UInt8
    d587::UInt8
    d588::UInt8
    d589::UInt8
    d590::UInt8
    d591::UInt8
    d592::UInt8
    d593::UInt8
    d594::UInt8
    d595::UInt8
    d596::UInt8
    d597::UInt8
    d598::UInt8
    d599::UInt8
    d600::UInt8
    d601::UInt8
    d602::UInt8
    d603::UInt8
    d604::UInt8
    d605::UInt8
    d606::UInt8
    d607::UInt8
    d608::UInt8
    d609::UInt8
    d610::UInt8
    d611::UInt8
    d612::UInt8
    d613::UInt8
    d614::UInt8
    d615::UInt8
    d616::UInt8
    d617::UInt8
    d618::UInt8
    d619::UInt8
    d620::UInt8
    d621::UInt8
    d622::UInt8
    d623::UInt8
    d624::UInt8
    d625::UInt8
    d626::UInt8
    d627::UInt8
    d628::UInt8
    d629::UInt8
    d630::UInt8
    d631::UInt8
    d632::UInt8
    d633::UInt8
    d634::UInt8
    d635::UInt8
    d636::UInt8
    d637::UInt8
    d638::UInt8
    d639::UInt8
    d640::UInt8
    d641::UInt8
    d642::UInt8
    d643::UInt8
    d644::UInt8
    d645::UInt8
    d646::UInt8
    d647::UInt8
    d648::UInt8
    d649::UInt8
    d650::UInt8
    d651::UInt8
    d652::UInt8
    d653::UInt8
    d654::UInt8
    d655::UInt8
    d656::UInt8
    d657::UInt8
    d658::UInt8
    d659::UInt8
    d660::UInt8
    d661::UInt8
    d662::UInt8
    d663::UInt8
    d664::UInt8
    d665::UInt8
    d666::UInt8
    d667::UInt8
    d668::UInt8
    d669::UInt8
    d670::UInt8
    d671::UInt8
    d672::UInt8
    d673::UInt8
    d674::UInt8
    d675::UInt8
    d676::UInt8
    d677::UInt8
    d678::UInt8
    d679::UInt8
    d680::UInt8
    d681::UInt8
    d682::UInt8
    d683::UInt8
    d684::UInt8
    d685::UInt8
    d686::UInt8
    d687::UInt8
    d688::UInt8
    d689::UInt8
    d690::UInt8
    d691::UInt8
    d692::UInt8
    d693::UInt8
    d694::UInt8
    d695::UInt8
    d696::UInt8
    d697::UInt8
    d698::UInt8
    d699::UInt8
    d700::UInt8
    d701::UInt8
    d702::UInt8
    d703::UInt8
    d704::UInt8
    d705::UInt8
    d706::UInt8
    d707::UInt8
    d708::UInt8
    d709::UInt8
    d710::UInt8
    d711::UInt8
    d712::UInt8
    d713::UInt8
    d714::UInt8
    d715::UInt8
    d716::UInt8
    d717::UInt8
    d718::UInt8
    d719::UInt8
    d720::UInt8
    d721::UInt8
    d722::UInt8
    d723::UInt8
    d724::UInt8
    d725::UInt8
    d726::UInt8
    d727::UInt8
    d728::UInt8
    d729::UInt8
    d730::UInt8
    d731::UInt8
    d732::UInt8
    d733::UInt8
    d734::UInt8
    d735::UInt8
    d736::UInt8
    d737::UInt8
    d738::UInt8
    d739::UInt8
    d740::UInt8
    d741::UInt8
    d742::UInt8
    d743::UInt8
    d744::UInt8
    d745::UInt8
    d746::UInt8
    d747::UInt8
    d748::UInt8
    d749::UInt8
    d750::UInt8
    d751::UInt8
    d752::UInt8
    d753::UInt8
    d754::UInt8
    d755::UInt8
    d756::UInt8
    d757::UInt8
    d758::UInt8
    d759::UInt8
    d760::UInt8
    d761::UInt8
    d762::UInt8
    d763::UInt8
    d764::UInt8
    d765::UInt8
    d766::UInt8
    d767::UInt8
    d768::UInt8
    d769::UInt8
    d770::UInt8
    d771::UInt8
    d772::UInt8
    d773::UInt8
    d774::UInt8
    d775::UInt8
    d776::UInt8
    d777::UInt8
    d778::UInt8
    d779::UInt8
    d780::UInt8
    d781::UInt8
    d782::UInt8
    d783::UInt8
    d784::UInt8
    d785::UInt8
    d786::UInt8
    d787::UInt8
    d788::UInt8
    d789::UInt8
    d790::UInt8
    d791::UInt8
    d792::UInt8
    d793::UInt8
    d794::UInt8
    d795::UInt8
    d796::UInt8
    d797::UInt8
    d798::UInt8
    d799::UInt8
    d800::UInt8
    d801::UInt8
    d802::UInt8
    d803::UInt8
    d804::UInt8
    d805::UInt8
    d806::UInt8
    d807::UInt8
    d808::UInt8
    d809::UInt8
    d810::UInt8
    d811::UInt8
    d812::UInt8
    d813::UInt8
    d814::UInt8
    d815::UInt8
    d816::UInt8
    d817::UInt8
    d818::UInt8
    d819::UInt8
    d820::UInt8
    d821::UInt8
    d822::UInt8
    d823::UInt8
    d824::UInt8
    d825::UInt8
    d826::UInt8
    d827::UInt8
    d828::UInt8
    d829::UInt8
    d830::UInt8
    d831::UInt8
    d832::UInt8
    d833::UInt8
    d834::UInt8
    d835::UInt8
    d836::UInt8
    d837::UInt8
    d838::UInt8
    d839::UInt8
    d840::UInt8
    d841::UInt8
    d842::UInt8
    d843::UInt8
    d844::UInt8
    d845::UInt8
    d846::UInt8
    d847::UInt8
    d848::UInt8
    d849::UInt8
    d850::UInt8
    d851::UInt8
    d852::UInt8
    d853::UInt8
    d854::UInt8
    d855::UInt8
    d856::UInt8
    d857::UInt8
    d858::UInt8
    d859::UInt8
    d860::UInt8
    d861::UInt8
    d862::UInt8
    d863::UInt8
    d864::UInt8
    d865::UInt8
    d866::UInt8
    d867::UInt8
    d868::UInt8
    d869::UInt8
    d870::UInt8
    d871::UInt8
    d872::UInt8
    d873::UInt8
    d874::UInt8
    d875::UInt8
    d876::UInt8
    d877::UInt8
    d878::UInt8
    d879::UInt8
    d880::UInt8
    d881::UInt8
    d882::UInt8
    d883::UInt8
    d884::UInt8
    d885::UInt8
    d886::UInt8
    d887::UInt8
    d888::UInt8
    d889::UInt8
    d890::UInt8
    d891::UInt8
    d892::UInt8
    d893::UInt8
    d894::UInt8
    d895::UInt8
    d896::UInt8
    d897::UInt8
    d898::UInt8
    d899::UInt8
    d900::UInt8
    d901::UInt8
    d902::UInt8
    d903::UInt8
    d904::UInt8
    d905::UInt8
    d906::UInt8
    d907::UInt8
    d908::UInt8
    d909::UInt8
    d910::UInt8
    d911::UInt8
    d912::UInt8
    d913::UInt8
    d914::UInt8
    d915::UInt8
    d916::UInt8
    d917::UInt8
    d918::UInt8
    d919::UInt8
    d920::UInt8
    d921::UInt8
    d922::UInt8
    d923::UInt8
    d924::UInt8
    d925::UInt8
    d926::UInt8
    d927::UInt8
    d928::UInt8
    d929::UInt8
    d930::UInt8
    d931::UInt8
    d932::UInt8
    d933::UInt8
    d934::UInt8
    d935::UInt8
    d936::UInt8
    d937::UInt8
    d938::UInt8
    d939::UInt8
    d940::UInt8
    d941::UInt8
    d942::UInt8
    d943::UInt8
    d944::UInt8
    d945::UInt8
    d946::UInt8
    d947::UInt8
    d948::UInt8
    d949::UInt8
    d950::UInt8
    d951::UInt8
    d952::UInt8
    d953::UInt8
    d954::UInt8
    d955::UInt8
    d956::UInt8
    d957::UInt8
    d958::UInt8
    d959::UInt8
    d960::UInt8
    d961::UInt8
    d962::UInt8
    d963::UInt8
    d964::UInt8
    d965::UInt8
    d966::UInt8
    d967::UInt8
    d968::UInt8
    d969::UInt8
    d970::UInt8
    d971::UInt8
    d972::UInt8
    d973::UInt8
    d974::UInt8
    d975::UInt8
    d976::UInt8
    d977::UInt8
    d978::UInt8
    d979::UInt8
    d980::UInt8
    d981::UInt8
    d982::UInt8
    d983::UInt8
    d984::UInt8
    d985::UInt8
    d986::UInt8
    d987::UInt8
    d988::UInt8
    d989::UInt8
    d990::UInt8
    d991::UInt8
    d992::UInt8
    d993::UInt8
    d994::UInt8
    d995::UInt8
    d996::UInt8
    d997::UInt8
    d998::UInt8
    d999::UInt8
    d1000::UInt8
    d1001::UInt8
    d1002::UInt8
    d1003::UInt8
    d1004::UInt8
    d1005::UInt8
    d1006::UInt8
    d1007::UInt8
    d1008::UInt8
    d1009::UInt8
    d1010::UInt8
    d1011::UInt8
    d1012::UInt8
    d1013::UInt8
    d1014::UInt8
    d1015::UInt8
    d1016::UInt8
    d1017::UInt8
    d1018::UInt8
    d1019::UInt8
    d1020::UInt8
    d1021::UInt8
    d1022::UInt8
    d1023::UInt8
    d1024::UInt8
end

immutable Array_50_Ptr
    d1::Ptr{cdAttribute}
    d2::Ptr{cdAttribute}
    d3::Ptr{cdAttribute}
    d4::Ptr{cdAttribute}
    d5::Ptr{cdAttribute}
    d6::Ptr{cdAttribute}
    d7::Ptr{cdAttribute}
    d8::Ptr{cdAttribute}
    d9::Ptr{cdAttribute}
    d10::Ptr{cdAttribute}
    d11::Ptr{cdAttribute}
    d12::Ptr{cdAttribute}
    d13::Ptr{cdAttribute}
    d14::Ptr{cdAttribute}
    d15::Ptr{cdAttribute}
    d16::Ptr{cdAttribute}
    d17::Ptr{cdAttribute}
    d18::Ptr{cdAttribute}
    d19::Ptr{cdAttribute}
    d20::Ptr{cdAttribute}
    d21::Ptr{cdAttribute}
    d22::Ptr{cdAttribute}
    d23::Ptr{cdAttribute}
    d24::Ptr{cdAttribute}
    d25::Ptr{cdAttribute}
    d26::Ptr{cdAttribute}
    d27::Ptr{cdAttribute}
    d28::Ptr{cdAttribute}
    d29::Ptr{cdAttribute}
    d30::Ptr{cdAttribute}
    d31::Ptr{cdAttribute}
    d32::Ptr{cdAttribute}
    d33::Ptr{cdAttribute}
    d34::Ptr{cdAttribute}
    d35::Ptr{cdAttribute}
    d36::Ptr{cdAttribute}
    d37::Ptr{cdAttribute}
    d38::Ptr{cdAttribute}
    d39::Ptr{cdAttribute}
    d40::Ptr{cdAttribute}
    d41::Ptr{cdAttribute}
    d42::Ptr{cdAttribute}
    d43::Ptr{cdAttribute}
    d44::Ptr{cdAttribute}
    d45::Ptr{cdAttribute}
    d46::Ptr{cdAttribute}
    d47::Ptr{cdAttribute}
    d48::Ptr{cdAttribute}
    d49::Ptr{cdAttribute}
    d50::Ptr{cdAttribute}
end

type cdCanvas
    signature::Array_2_UInt8
    cxPixel::Ptr{Void}
    cxLine::Ptr{Void}
    cxPoly::Ptr{Void}
    cxRect::Ptr{Void}
    cxBox::Ptr{Void}
    cxArc::Ptr{Void}
    cxSector::Ptr{Void}
    cxChord::Ptr{Void}
    cxText::Ptr{Void}
    cxKillCanvas::Ptr{Void}
    cxFont::Ptr{Void}
    cxPutImageRectMap::Ptr{Void}
    cxPutImageRectRGB::Ptr{Void}
    cxGetFontDim::Ptr{Void}
    cxGetTextSize::Ptr{Void}
    cxFlush::Ptr{Void}
    cxClear::Ptr{Void}
    cxFLine::Ptr{Void}
    cxFPoly::Ptr{Void}
    cxFRect::Ptr{Void}
    cxFBox::Ptr{Void}
    cxFArc::Ptr{Void}
    cxFSector::Ptr{Void}
    cxFChord::Ptr{Void}
    cxFText::Ptr{Void}
    cxClip::Ptr{Void}
    cxClipArea::Ptr{Void}
    cxFClipArea::Ptr{Void}
    cxBackOpacity::Ptr{Void}
    cxWriteMode::Ptr{Void}
    cxLineStyle::Ptr{Void}
    cxLineWidth::Ptr{Void}
    cxLineJoin::Ptr{Void}
    cxLineCap::Ptr{Void}
    cxInteriorStyle::Ptr{Void}
    cxHatch::Ptr{Void}
    cxStipple::Ptr{Void}
    cxPattern::Ptr{Void}
    cxNativeFont::Ptr{Void}
    cxTextAlignment::Ptr{Void}
    cxTextOrientation::Ptr{Void}
    cxPalette::Ptr{Void}
    cxBackground::Ptr{Void}
    cxForeground::Ptr{Void}
    cxTransform::Ptr{Void}
    cxPutImageRectRGBA::Ptr{Void}
    cxGetImageRGB::Ptr{Void}
    cxScrollArea::Ptr{Void}
    cxCreateImage::Ptr{Void}
    cxKillImage::Ptr{Void}
    cxGetImage::Ptr{Void}
    cxPutImageRect::Ptr{Void}
    cxNewRegion::Ptr{Void}
    cxIsPointInRegion::Ptr{Void}
    cxOffsetRegion::Ptr{Void}
    cxGetRegionBox::Ptr{Void}
    cxActivate::Ptr{Void}
    cxDeactivate::Ptr{Void}
    w::Cint
    h::Cint
    w_mm::Cdouble
    h_mm::Cdouble
    xres::Cdouble
    yres::Cdouble
    bpp::Cint
    invert_yaxis::Cint
    matrix::Array_6_Cdouble
    use_matrix::Cint
    clip_mode::Cint
    clip_rect::cdRect
    clip_frect::cdfRect
    clip_poly_n::Cint
    clip_poly::Ptr{cdPoint}
    clip_fpoly::Ptr{cdfPoint}
    new_region::Cint
    combine_mode::Cint
    foreground::Clong
    background::Clong
    back_opacity::Cint
    write_mode::Cint
    mark_type::Cint
    mark_size::Cint
    line_style::Cint
    line_width::Cint
    line_cap::Cint
    line_join::Cint
    line_dashes::Ptr{Cint}
    line_dashes_count::Cint
    interior_style::Cint
    hatch_style::Cint
    fill_mode::Cint
    font_type_face::Array_1024_UInt8
    font_style::Cint
    font_size::Cint
    text_alignment::Cint
    text_orientation::Cdouble
    native_font::Array_1024_UInt8
    pattern_w::Cint
    pattern_h::Cint
    pattern_size::Cint
    pattern::Ptr{Clong}
    stipple_w::Cint
    stipple_h::Cint
    stipple_size::Cint
    stipple::Ptr{Cuchar}
    use_origin::Cint
    origin::cdPoint
    forigin::cdfPoint
    poly_mode::Cint
    poly_n::Cint
    poly_size::Cint
    fpoly_size::Cint
    poly::Ptr{cdPoint}
    fpoly::Ptr{cdfPoint}
    use_fpoly::Cint
    path_n::Cint
    path_size::Cint
    path::Ptr{Cint}
    path_arc_index::Cint
    sim_mode::Cint
    s::Cdouble
    sx::Cdouble
    tx::Cdouble
    sy::Cdouble
    ty::Cdouble
    window::cdfRect
    viewport::cdRect
    attrib_list::Array_50_Ptr
    attrib_n::Cint
    vector_font::Ptr{Void}
    simulation::Ptr{Void}
    ctxcanvas::Ptr{Void}
    context::Ptr{Cint}
end

# begin enum ANONYMOUS_1
const CD_BASE_WIN = 0
const CD_BASE_X = 1
const CD_BASE_GDK = 2
const CD_BASE_HAIKU = 3
# end enum ANONYMOUS_1
# begin enum ANONYMOUS_2
const CD_CTXPLUS_NATIVEWINDOW = 0
const CD_CTXPLUS_IMAGE = 1
const CD_CTXPLUS_DBUFFER = 2
const CD_CTXPLUS_PRINTER = 3
const CD_CTXPLUS_EMF = 4
const CD_CTXPLUS_CLIPBOARD = 5
# end enum ANONYMOUS_2
type cdBitmap
    w::Cint
    h::Cint
    _type::Cint
    data::Ptr{Void}
end

typealias cdCallback Ptr{Void}
# begin enum ANONYMOUS_3
const CD_RGB = 0
const CD_MAP = 1
const CD_RGBA = 256
# end enum ANONYMOUS_3
# begin enum ANONYMOUS_4
const CD_IRED = 0
const CD_IGREEN = 1
const CD_IBLUE = 2
const CD_IALPHA = 3
const CD_INDEX = 4
const CD_COLORS = 5
# end enum ANONYMOUS_4
# begin enum ANONYMOUS_5
const CD_ERROR = -1
const CD_OK = 0
# end enum ANONYMOUS_5
# begin enum ANONYMOUS_6
const CD_CLIPOFF = 0
const CD_CLIPAREA = 1
const CD_CLIPPOLYGON = 2
const CD_CLIPREGION = 3
# end enum ANONYMOUS_6
# begin enum ANONYMOUS_7
const CD_UNION = 0
const CD_INTERSECT = 1
const CD_DIFFERENCE = 2
const CD_NOTINTERSECT = 3
# end enum ANONYMOUS_7
# begin enum ANONYMOUS_8
const CD_FILL = 0
const CD_OPEN_LINES = 1
const CD_CLOSED_LINES = 2
const CD_CLIP = 3
const CD_BEZIER = 4
const CD_REGION = 5
const CD_PATH = 6
# end enum ANONYMOUS_8
# begin enum ANONYMOUS_9
const CD_PATH_NEW = 0
const CD_PATH_MOVETO = 1
const CD_PATH_LINETO = 2
const CD_PATH_ARC = 3
const CD_PATH_CURVETO = 4
const CD_PATH_CLOSE = 5
const CD_PATH_FILL = 6
const CD_PATH_STROKE = 7
const CD_PATH_FILLSTROKE = 8
const CD_PATH_CLIP = 9
# end enum ANONYMOUS_9
# begin enum ANONYMOUS_10
const CD_EVENODD = 0
const CD_WINDING = 1
# end enum ANONYMOUS_10
# begin enum ANONYMOUS_11
const CD_MITER = 0
const CD_BEVEL = 1
const CD_ROUND = 2
# end enum ANONYMOUS_11
# begin enum ANONYMOUS_12
const CD_CAPFLAT = 0
const CD_CAPSQUARE = 1
const CD_CAPROUND = 2
# end enum ANONYMOUS_12
# begin enum ANONYMOUS_13
const CD_OPAQUE = 0
const CD_TRANSPARENT = 1
# end enum ANONYMOUS_13
# begin enum ANONYMOUS_14
const CD_REPLACE = 0
const CD_XOR = 1
const CD_NOT_XOR = 2
# end enum ANONYMOUS_14
# begin enum ANONYMOUS_15
const CD_POLITE = 0
const CD_FORCE = 1
# end enum ANONYMOUS_15
# begin enum ANONYMOUS_16
const CD_CONTINUOUS = 0
const CD_DASHED = 1
const CD_DOTTED = 2
const CD_DASH_DOT = 3
const CD_DASH_DOT_DOT = 4
const CD_CUSTOM = 5
# end enum ANONYMOUS_16
# begin enum ANONYMOUS_17
const CD_PLUS = 0
const CD_STAR = 1
const CD_CIRCLE = 2
const CD_X = 3
const CD_BOX = 4
const CD_DIAMOND = 5
const CD_HOLLOW_CIRCLE = 6
const CD_HOLLOW_BOX = 7
const CD_HOLLOW_DIAMOND = 8
# end enum ANONYMOUS_17
# begin enum ANONYMOUS_18
const CD_HORIZONTAL = 0
const CD_VERTICAL = 1
const CD_FDIAGONAL = 2
const CD_BDIAGONAL = 3
const CD_CROSS = 4
const CD_DIAGCROSS = 5
# end enum ANONYMOUS_18
# begin enum ANONYMOUS_19
const CD_SOLID = 0
const CD_HATCH = 1
const CD_STIPPLE = 2
const CD_PATTERN = 3
const CD_HOLLOW = 4
# end enum ANONYMOUS_19
# begin enum ANONYMOUS_20
const CD_NORTH = 0
const CD_SOUTH = 1
const CD_EAST = 2
const CD_WEST = 3
const CD_NORTH_EAST = 4
const CD_NORTH_WEST = 5
const CD_SOUTH_EAST = 6
const CD_SOUTH_WEST = 7
const CD_CENTER = 8
const CD_BASE_LEFT = 9
const CD_BASE_CENTER = 10
const CD_BASE_RIGHT = 11
# end enum ANONYMOUS_20
# begin enum ANONYMOUS_21
const CD_PLAIN = 0
const CD_BOLD = 1
const CD_ITALIC = 2
const CD_UNDERLINE = 4
const CD_STRIKEOUT = 8
# end enum ANONYMOUS_21
# begin enum ANONYMOUS_22
const CD_SMALL = 8
const CD_STANDARD = 12
const CD_LARGE = 18
# end enum ANONYMOUS_22
# begin enum ANONYMOUS_23
const CD_CTX_WINDOW = 0
const CD_CTX_DEVICE = 1
const CD_CTX_IMAGE = 2
const CD_CTX_FILE = 3
# end enum ANONYMOUS_23
typealias cdSizeCB Ptr{Void}
# begin enum ANONYMOUS_24
const CD_A0 = 0
const CD_A1 = 1
const CD_A2 = 2
const CD_A3 = 3
const CD_A4 = 4
const CD_A5 = 5
const CD_LETTER = 6
const CD_LEGAL = 7
# end enum ANONYMOUS_24
# begin enum ANONYMOUS_25
const CD_SYSTEM = 0
const CD_COURIER = 1
const CD_TIMES_ROMAN = 2
const CD_HELVETICA = 3
const CD_NATIVE = 4
# end enum ANONYMOUS_25

const CD_CLIPON = CD_CLIPAREA
const CD_CENTER_BASE = CD_BASE_CENTER
const CD_LEFT_BASE = CD_BASE_LEFT
const CD_RIGHT_BASE = CD_BASE_RIGHT
const CD_BOLD_ITALIC = (CD_BOLD|CD_ITALIC)
const CD_ITALIC_BOLD = CD_BOLD_ITALIC

# This one is in cd_old.h so probably a left-over
#const cdScrollImage = cdScrollArea
