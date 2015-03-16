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
    name::Ptr{Uint8}
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
immutable Array_2_Uint8
    d1::Uint8
    d2::Uint8
end
immutable Array_6_Cdouble
    d1::Cdouble
    d2::Cdouble
    d3::Cdouble
    d4::Cdouble
    d5::Cdouble
    d6::Cdouble
end
immutable Array_1024_Uint8
    d1::Uint8
    d2::Uint8
    d3::Uint8
    d4::Uint8
    d5::Uint8
    d6::Uint8
    d7::Uint8
    d8::Uint8
    d9::Uint8
    d10::Uint8
    d11::Uint8
    d12::Uint8
    d13::Uint8
    d14::Uint8
    d15::Uint8
    d16::Uint8
    d17::Uint8
    d18::Uint8
    d19::Uint8
    d20::Uint8
    d21::Uint8
    d22::Uint8
    d23::Uint8
    d24::Uint8
    d25::Uint8
    d26::Uint8
    d27::Uint8
    d28::Uint8
    d29::Uint8
    d30::Uint8
    d31::Uint8
    d32::Uint8
    d33::Uint8
    d34::Uint8
    d35::Uint8
    d36::Uint8
    d37::Uint8
    d38::Uint8
    d39::Uint8
    d40::Uint8
    d41::Uint8
    d42::Uint8
    d43::Uint8
    d44::Uint8
    d45::Uint8
    d46::Uint8
    d47::Uint8
    d48::Uint8
    d49::Uint8
    d50::Uint8
    d51::Uint8
    d52::Uint8
    d53::Uint8
    d54::Uint8
    d55::Uint8
    d56::Uint8
    d57::Uint8
    d58::Uint8
    d59::Uint8
    d60::Uint8
    d61::Uint8
    d62::Uint8
    d63::Uint8
    d64::Uint8
    d65::Uint8
    d66::Uint8
    d67::Uint8
    d68::Uint8
    d69::Uint8
    d70::Uint8
    d71::Uint8
    d72::Uint8
    d73::Uint8
    d74::Uint8
    d75::Uint8
    d76::Uint8
    d77::Uint8
    d78::Uint8
    d79::Uint8
    d80::Uint8
    d81::Uint8
    d82::Uint8
    d83::Uint8
    d84::Uint8
    d85::Uint8
    d86::Uint8
    d87::Uint8
    d88::Uint8
    d89::Uint8
    d90::Uint8
    d91::Uint8
    d92::Uint8
    d93::Uint8
    d94::Uint8
    d95::Uint8
    d96::Uint8
    d97::Uint8
    d98::Uint8
    d99::Uint8
    d100::Uint8
    d101::Uint8
    d102::Uint8
    d103::Uint8
    d104::Uint8
    d105::Uint8
    d106::Uint8
    d107::Uint8
    d108::Uint8
    d109::Uint8
    d110::Uint8
    d111::Uint8
    d112::Uint8
    d113::Uint8
    d114::Uint8
    d115::Uint8
    d116::Uint8
    d117::Uint8
    d118::Uint8
    d119::Uint8
    d120::Uint8
    d121::Uint8
    d122::Uint8
    d123::Uint8
    d124::Uint8
    d125::Uint8
    d126::Uint8
    d127::Uint8
    d128::Uint8
    d129::Uint8
    d130::Uint8
    d131::Uint8
    d132::Uint8
    d133::Uint8
    d134::Uint8
    d135::Uint8
    d136::Uint8
    d137::Uint8
    d138::Uint8
    d139::Uint8
    d140::Uint8
    d141::Uint8
    d142::Uint8
    d143::Uint8
    d144::Uint8
    d145::Uint8
    d146::Uint8
    d147::Uint8
    d148::Uint8
    d149::Uint8
    d150::Uint8
    d151::Uint8
    d152::Uint8
    d153::Uint8
    d154::Uint8
    d155::Uint8
    d156::Uint8
    d157::Uint8
    d158::Uint8
    d159::Uint8
    d160::Uint8
    d161::Uint8
    d162::Uint8
    d163::Uint8
    d164::Uint8
    d165::Uint8
    d166::Uint8
    d167::Uint8
    d168::Uint8
    d169::Uint8
    d170::Uint8
    d171::Uint8
    d172::Uint8
    d173::Uint8
    d174::Uint8
    d175::Uint8
    d176::Uint8
    d177::Uint8
    d178::Uint8
    d179::Uint8
    d180::Uint8
    d181::Uint8
    d182::Uint8
    d183::Uint8
    d184::Uint8
    d185::Uint8
    d186::Uint8
    d187::Uint8
    d188::Uint8
    d189::Uint8
    d190::Uint8
    d191::Uint8
    d192::Uint8
    d193::Uint8
    d194::Uint8
    d195::Uint8
    d196::Uint8
    d197::Uint8
    d198::Uint8
    d199::Uint8
    d200::Uint8
    d201::Uint8
    d202::Uint8
    d203::Uint8
    d204::Uint8
    d205::Uint8
    d206::Uint8
    d207::Uint8
    d208::Uint8
    d209::Uint8
    d210::Uint8
    d211::Uint8
    d212::Uint8
    d213::Uint8
    d214::Uint8
    d215::Uint8
    d216::Uint8
    d217::Uint8
    d218::Uint8
    d219::Uint8
    d220::Uint8
    d221::Uint8
    d222::Uint8
    d223::Uint8
    d224::Uint8
    d225::Uint8
    d226::Uint8
    d227::Uint8
    d228::Uint8
    d229::Uint8
    d230::Uint8
    d231::Uint8
    d232::Uint8
    d233::Uint8
    d234::Uint8
    d235::Uint8
    d236::Uint8
    d237::Uint8
    d238::Uint8
    d239::Uint8
    d240::Uint8
    d241::Uint8
    d242::Uint8
    d243::Uint8
    d244::Uint8
    d245::Uint8
    d246::Uint8
    d247::Uint8
    d248::Uint8
    d249::Uint8
    d250::Uint8
    d251::Uint8
    d252::Uint8
    d253::Uint8
    d254::Uint8
    d255::Uint8
    d256::Uint8
    d257::Uint8
    d258::Uint8
    d259::Uint8
    d260::Uint8
    d261::Uint8
    d262::Uint8
    d263::Uint8
    d264::Uint8
    d265::Uint8
    d266::Uint8
    d267::Uint8
    d268::Uint8
    d269::Uint8
    d270::Uint8
    d271::Uint8
    d272::Uint8
    d273::Uint8
    d274::Uint8
    d275::Uint8
    d276::Uint8
    d277::Uint8
    d278::Uint8
    d279::Uint8
    d280::Uint8
    d281::Uint8
    d282::Uint8
    d283::Uint8
    d284::Uint8
    d285::Uint8
    d286::Uint8
    d287::Uint8
    d288::Uint8
    d289::Uint8
    d290::Uint8
    d291::Uint8
    d292::Uint8
    d293::Uint8
    d294::Uint8
    d295::Uint8
    d296::Uint8
    d297::Uint8
    d298::Uint8
    d299::Uint8
    d300::Uint8
    d301::Uint8
    d302::Uint8
    d303::Uint8
    d304::Uint8
    d305::Uint8
    d306::Uint8
    d307::Uint8
    d308::Uint8
    d309::Uint8
    d310::Uint8
    d311::Uint8
    d312::Uint8
    d313::Uint8
    d314::Uint8
    d315::Uint8
    d316::Uint8
    d317::Uint8
    d318::Uint8
    d319::Uint8
    d320::Uint8
    d321::Uint8
    d322::Uint8
    d323::Uint8
    d324::Uint8
    d325::Uint8
    d326::Uint8
    d327::Uint8
    d328::Uint8
    d329::Uint8
    d330::Uint8
    d331::Uint8
    d332::Uint8
    d333::Uint8
    d334::Uint8
    d335::Uint8
    d336::Uint8
    d337::Uint8
    d338::Uint8
    d339::Uint8
    d340::Uint8
    d341::Uint8
    d342::Uint8
    d343::Uint8
    d344::Uint8
    d345::Uint8
    d346::Uint8
    d347::Uint8
    d348::Uint8
    d349::Uint8
    d350::Uint8
    d351::Uint8
    d352::Uint8
    d353::Uint8
    d354::Uint8
    d355::Uint8
    d356::Uint8
    d357::Uint8
    d358::Uint8
    d359::Uint8
    d360::Uint8
    d361::Uint8
    d362::Uint8
    d363::Uint8
    d364::Uint8
    d365::Uint8
    d366::Uint8
    d367::Uint8
    d368::Uint8
    d369::Uint8
    d370::Uint8
    d371::Uint8
    d372::Uint8
    d373::Uint8
    d374::Uint8
    d375::Uint8
    d376::Uint8
    d377::Uint8
    d378::Uint8
    d379::Uint8
    d380::Uint8
    d381::Uint8
    d382::Uint8
    d383::Uint8
    d384::Uint8
    d385::Uint8
    d386::Uint8
    d387::Uint8
    d388::Uint8
    d389::Uint8
    d390::Uint8
    d391::Uint8
    d392::Uint8
    d393::Uint8
    d394::Uint8
    d395::Uint8
    d396::Uint8
    d397::Uint8
    d398::Uint8
    d399::Uint8
    d400::Uint8
    d401::Uint8
    d402::Uint8
    d403::Uint8
    d404::Uint8
    d405::Uint8
    d406::Uint8
    d407::Uint8
    d408::Uint8
    d409::Uint8
    d410::Uint8
    d411::Uint8
    d412::Uint8
    d413::Uint8
    d414::Uint8
    d415::Uint8
    d416::Uint8
    d417::Uint8
    d418::Uint8
    d419::Uint8
    d420::Uint8
    d421::Uint8
    d422::Uint8
    d423::Uint8
    d424::Uint8
    d425::Uint8
    d426::Uint8
    d427::Uint8
    d428::Uint8
    d429::Uint8
    d430::Uint8
    d431::Uint8
    d432::Uint8
    d433::Uint8
    d434::Uint8
    d435::Uint8
    d436::Uint8
    d437::Uint8
    d438::Uint8
    d439::Uint8
    d440::Uint8
    d441::Uint8
    d442::Uint8
    d443::Uint8
    d444::Uint8
    d445::Uint8
    d446::Uint8
    d447::Uint8
    d448::Uint8
    d449::Uint8
    d450::Uint8
    d451::Uint8
    d452::Uint8
    d453::Uint8
    d454::Uint8
    d455::Uint8
    d456::Uint8
    d457::Uint8
    d458::Uint8
    d459::Uint8
    d460::Uint8
    d461::Uint8
    d462::Uint8
    d463::Uint8
    d464::Uint8
    d465::Uint8
    d466::Uint8
    d467::Uint8
    d468::Uint8
    d469::Uint8
    d470::Uint8
    d471::Uint8
    d472::Uint8
    d473::Uint8
    d474::Uint8
    d475::Uint8
    d476::Uint8
    d477::Uint8
    d478::Uint8
    d479::Uint8
    d480::Uint8
    d481::Uint8
    d482::Uint8
    d483::Uint8
    d484::Uint8
    d485::Uint8
    d486::Uint8
    d487::Uint8
    d488::Uint8
    d489::Uint8
    d490::Uint8
    d491::Uint8
    d492::Uint8
    d493::Uint8
    d494::Uint8
    d495::Uint8
    d496::Uint8
    d497::Uint8
    d498::Uint8
    d499::Uint8
    d500::Uint8
    d501::Uint8
    d502::Uint8
    d503::Uint8
    d504::Uint8
    d505::Uint8
    d506::Uint8
    d507::Uint8
    d508::Uint8
    d509::Uint8
    d510::Uint8
    d511::Uint8
    d512::Uint8
    d513::Uint8
    d514::Uint8
    d515::Uint8
    d516::Uint8
    d517::Uint8
    d518::Uint8
    d519::Uint8
    d520::Uint8
    d521::Uint8
    d522::Uint8
    d523::Uint8
    d524::Uint8
    d525::Uint8
    d526::Uint8
    d527::Uint8
    d528::Uint8
    d529::Uint8
    d530::Uint8
    d531::Uint8
    d532::Uint8
    d533::Uint8
    d534::Uint8
    d535::Uint8
    d536::Uint8
    d537::Uint8
    d538::Uint8
    d539::Uint8
    d540::Uint8
    d541::Uint8
    d542::Uint8
    d543::Uint8
    d544::Uint8
    d545::Uint8
    d546::Uint8
    d547::Uint8
    d548::Uint8
    d549::Uint8
    d550::Uint8
    d551::Uint8
    d552::Uint8
    d553::Uint8
    d554::Uint8
    d555::Uint8
    d556::Uint8
    d557::Uint8
    d558::Uint8
    d559::Uint8
    d560::Uint8
    d561::Uint8
    d562::Uint8
    d563::Uint8
    d564::Uint8
    d565::Uint8
    d566::Uint8
    d567::Uint8
    d568::Uint8
    d569::Uint8
    d570::Uint8
    d571::Uint8
    d572::Uint8
    d573::Uint8
    d574::Uint8
    d575::Uint8
    d576::Uint8
    d577::Uint8
    d578::Uint8
    d579::Uint8
    d580::Uint8
    d581::Uint8
    d582::Uint8
    d583::Uint8
    d584::Uint8
    d585::Uint8
    d586::Uint8
    d587::Uint8
    d588::Uint8
    d589::Uint8
    d590::Uint8
    d591::Uint8
    d592::Uint8
    d593::Uint8
    d594::Uint8
    d595::Uint8
    d596::Uint8
    d597::Uint8
    d598::Uint8
    d599::Uint8
    d600::Uint8
    d601::Uint8
    d602::Uint8
    d603::Uint8
    d604::Uint8
    d605::Uint8
    d606::Uint8
    d607::Uint8
    d608::Uint8
    d609::Uint8
    d610::Uint8
    d611::Uint8
    d612::Uint8
    d613::Uint8
    d614::Uint8
    d615::Uint8
    d616::Uint8
    d617::Uint8
    d618::Uint8
    d619::Uint8
    d620::Uint8
    d621::Uint8
    d622::Uint8
    d623::Uint8
    d624::Uint8
    d625::Uint8
    d626::Uint8
    d627::Uint8
    d628::Uint8
    d629::Uint8
    d630::Uint8
    d631::Uint8
    d632::Uint8
    d633::Uint8
    d634::Uint8
    d635::Uint8
    d636::Uint8
    d637::Uint8
    d638::Uint8
    d639::Uint8
    d640::Uint8
    d641::Uint8
    d642::Uint8
    d643::Uint8
    d644::Uint8
    d645::Uint8
    d646::Uint8
    d647::Uint8
    d648::Uint8
    d649::Uint8
    d650::Uint8
    d651::Uint8
    d652::Uint8
    d653::Uint8
    d654::Uint8
    d655::Uint8
    d656::Uint8
    d657::Uint8
    d658::Uint8
    d659::Uint8
    d660::Uint8
    d661::Uint8
    d662::Uint8
    d663::Uint8
    d664::Uint8
    d665::Uint8
    d666::Uint8
    d667::Uint8
    d668::Uint8
    d669::Uint8
    d670::Uint8
    d671::Uint8
    d672::Uint8
    d673::Uint8
    d674::Uint8
    d675::Uint8
    d676::Uint8
    d677::Uint8
    d678::Uint8
    d679::Uint8
    d680::Uint8
    d681::Uint8
    d682::Uint8
    d683::Uint8
    d684::Uint8
    d685::Uint8
    d686::Uint8
    d687::Uint8
    d688::Uint8
    d689::Uint8
    d690::Uint8
    d691::Uint8
    d692::Uint8
    d693::Uint8
    d694::Uint8
    d695::Uint8
    d696::Uint8
    d697::Uint8
    d698::Uint8
    d699::Uint8
    d700::Uint8
    d701::Uint8
    d702::Uint8
    d703::Uint8
    d704::Uint8
    d705::Uint8
    d706::Uint8
    d707::Uint8
    d708::Uint8
    d709::Uint8
    d710::Uint8
    d711::Uint8
    d712::Uint8
    d713::Uint8
    d714::Uint8
    d715::Uint8
    d716::Uint8
    d717::Uint8
    d718::Uint8
    d719::Uint8
    d720::Uint8
    d721::Uint8
    d722::Uint8
    d723::Uint8
    d724::Uint8
    d725::Uint8
    d726::Uint8
    d727::Uint8
    d728::Uint8
    d729::Uint8
    d730::Uint8
    d731::Uint8
    d732::Uint8
    d733::Uint8
    d734::Uint8
    d735::Uint8
    d736::Uint8
    d737::Uint8
    d738::Uint8
    d739::Uint8
    d740::Uint8
    d741::Uint8
    d742::Uint8
    d743::Uint8
    d744::Uint8
    d745::Uint8
    d746::Uint8
    d747::Uint8
    d748::Uint8
    d749::Uint8
    d750::Uint8
    d751::Uint8
    d752::Uint8
    d753::Uint8
    d754::Uint8
    d755::Uint8
    d756::Uint8
    d757::Uint8
    d758::Uint8
    d759::Uint8
    d760::Uint8
    d761::Uint8
    d762::Uint8
    d763::Uint8
    d764::Uint8
    d765::Uint8
    d766::Uint8
    d767::Uint8
    d768::Uint8
    d769::Uint8
    d770::Uint8
    d771::Uint8
    d772::Uint8
    d773::Uint8
    d774::Uint8
    d775::Uint8
    d776::Uint8
    d777::Uint8
    d778::Uint8
    d779::Uint8
    d780::Uint8
    d781::Uint8
    d782::Uint8
    d783::Uint8
    d784::Uint8
    d785::Uint8
    d786::Uint8
    d787::Uint8
    d788::Uint8
    d789::Uint8
    d790::Uint8
    d791::Uint8
    d792::Uint8
    d793::Uint8
    d794::Uint8
    d795::Uint8
    d796::Uint8
    d797::Uint8
    d798::Uint8
    d799::Uint8
    d800::Uint8
    d801::Uint8
    d802::Uint8
    d803::Uint8
    d804::Uint8
    d805::Uint8
    d806::Uint8
    d807::Uint8
    d808::Uint8
    d809::Uint8
    d810::Uint8
    d811::Uint8
    d812::Uint8
    d813::Uint8
    d814::Uint8
    d815::Uint8
    d816::Uint8
    d817::Uint8
    d818::Uint8
    d819::Uint8
    d820::Uint8
    d821::Uint8
    d822::Uint8
    d823::Uint8
    d824::Uint8
    d825::Uint8
    d826::Uint8
    d827::Uint8
    d828::Uint8
    d829::Uint8
    d830::Uint8
    d831::Uint8
    d832::Uint8
    d833::Uint8
    d834::Uint8
    d835::Uint8
    d836::Uint8
    d837::Uint8
    d838::Uint8
    d839::Uint8
    d840::Uint8
    d841::Uint8
    d842::Uint8
    d843::Uint8
    d844::Uint8
    d845::Uint8
    d846::Uint8
    d847::Uint8
    d848::Uint8
    d849::Uint8
    d850::Uint8
    d851::Uint8
    d852::Uint8
    d853::Uint8
    d854::Uint8
    d855::Uint8
    d856::Uint8
    d857::Uint8
    d858::Uint8
    d859::Uint8
    d860::Uint8
    d861::Uint8
    d862::Uint8
    d863::Uint8
    d864::Uint8
    d865::Uint8
    d866::Uint8
    d867::Uint8
    d868::Uint8
    d869::Uint8
    d870::Uint8
    d871::Uint8
    d872::Uint8
    d873::Uint8
    d874::Uint8
    d875::Uint8
    d876::Uint8
    d877::Uint8
    d878::Uint8
    d879::Uint8
    d880::Uint8
    d881::Uint8
    d882::Uint8
    d883::Uint8
    d884::Uint8
    d885::Uint8
    d886::Uint8
    d887::Uint8
    d888::Uint8
    d889::Uint8
    d890::Uint8
    d891::Uint8
    d892::Uint8
    d893::Uint8
    d894::Uint8
    d895::Uint8
    d896::Uint8
    d897::Uint8
    d898::Uint8
    d899::Uint8
    d900::Uint8
    d901::Uint8
    d902::Uint8
    d903::Uint8
    d904::Uint8
    d905::Uint8
    d906::Uint8
    d907::Uint8
    d908::Uint8
    d909::Uint8
    d910::Uint8
    d911::Uint8
    d912::Uint8
    d913::Uint8
    d914::Uint8
    d915::Uint8
    d916::Uint8
    d917::Uint8
    d918::Uint8
    d919::Uint8
    d920::Uint8
    d921::Uint8
    d922::Uint8
    d923::Uint8
    d924::Uint8
    d925::Uint8
    d926::Uint8
    d927::Uint8
    d928::Uint8
    d929::Uint8
    d930::Uint8
    d931::Uint8
    d932::Uint8
    d933::Uint8
    d934::Uint8
    d935::Uint8
    d936::Uint8
    d937::Uint8
    d938::Uint8
    d939::Uint8
    d940::Uint8
    d941::Uint8
    d942::Uint8
    d943::Uint8
    d944::Uint8
    d945::Uint8
    d946::Uint8
    d947::Uint8
    d948::Uint8
    d949::Uint8
    d950::Uint8
    d951::Uint8
    d952::Uint8
    d953::Uint8
    d954::Uint8
    d955::Uint8
    d956::Uint8
    d957::Uint8
    d958::Uint8
    d959::Uint8
    d960::Uint8
    d961::Uint8
    d962::Uint8
    d963::Uint8
    d964::Uint8
    d965::Uint8
    d966::Uint8
    d967::Uint8
    d968::Uint8
    d969::Uint8
    d970::Uint8
    d971::Uint8
    d972::Uint8
    d973::Uint8
    d974::Uint8
    d975::Uint8
    d976::Uint8
    d977::Uint8
    d978::Uint8
    d979::Uint8
    d980::Uint8
    d981::Uint8
    d982::Uint8
    d983::Uint8
    d984::Uint8
    d985::Uint8
    d986::Uint8
    d987::Uint8
    d988::Uint8
    d989::Uint8
    d990::Uint8
    d991::Uint8
    d992::Uint8
    d993::Uint8
    d994::Uint8
    d995::Uint8
    d996::Uint8
    d997::Uint8
    d998::Uint8
    d999::Uint8
    d1000::Uint8
    d1001::Uint8
    d1002::Uint8
    d1003::Uint8
    d1004::Uint8
    d1005::Uint8
    d1006::Uint8
    d1007::Uint8
    d1008::Uint8
    d1009::Uint8
    d1010::Uint8
    d1011::Uint8
    d1012::Uint8
    d1013::Uint8
    d1014::Uint8
    d1015::Uint8
    d1016::Uint8
    d1017::Uint8
    d1018::Uint8
    d1019::Uint8
    d1020::Uint8
    d1021::Uint8
    d1022::Uint8
    d1023::Uint8
    d1024::Uint8
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
    signature::Array_2_Uint8
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
    font_type_face::Array_1024_Uint8
    font_style::Cint
    font_size::Cint
    text_alignment::Cint
    text_orientation::Cdouble
    native_font::Array_1024_Uint8
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
