const OBJC_NEW_PROPERTIES = 1
const MAXPOINTS = 300
# Skipping MacroDefinition: isdigit(_)(((_)>='0')&&((_)<='9'))
# Skipping MacroDefinition: ignore(_)(void)(_)
# begin enum ANONYMOUS_1
const LINE = 0
const RECT = 1
const BOX = 2
const ARC = 3
const SECTOR = 4
const CHORD = 5
const PIXEL = 6
const MARK = 7
const TEXT = 8
const POLY = 9
const CLIP = 10
const IMAGE = 11
const RGB = 12
const META = 13
# end enum ANONYMOUS_1
# begin enum tPrim
typealias tPrim Uint32
const LINE = 0
const RECT = 1
const BOX = 2
const ARC = 3
const SECTOR = 4
const CHORD = 5
const PIXEL = 6
const MARK = 7
const TEXT = 8
const POLY = 9
const CLIP = 10
const IMAGE = 11
const RGB = 12
const META = 13
# begin enum ANONYMOUS_2
const BACKGROUND = 0
const FOREGROUND = 1
# end enum ANONYMOUS_2
# begin enum ANONYMOUS_3
const NO_BUFFER = 0
const IMAGE_BUFFER = 1
const IMAGERGB_BUFFER = 2
# end enum ANONYMOUS_3
# begin enum ANONYMOUS_4
const NEWPOINT = 0
const MOVE = 1
const CLOSE = 2
const CENTER = 3
const REPAINT = 4
# end enum ANONYMOUS_4
# begin enum tRubber
typealias tRubber Uint32
const NEWPOINT = 0
const MOVE = 1
const CLOSE = 2
const CENTER = 3
const REPAINT = 4
# end enum tRubber
# begin enum ANONYMOUS_5
const FALSE = 0
const TRUE = 1
# end enum ANONYMOUS_5
# begin enum tBoolean
typealias tBoolean Uint32
# end enum tBoolean
type tPoint
    x::Cint
    y::Cint
end
type tMeta
    ctx::Ptr{Cint}
    filename::Ptr{Uint8}
end
type tLB
    x1::Cint
    y1::Cint
    x2::Cint
    y2::Cint
    write_mode::Cint
    line_style::Cint
    line_width::Cint
    line_cap::Cint
    line_join::Cint
    interior_style::Cint
    back_opacity::Cint
    hatch::Cint
    foreground::Clong
    background::Clong
end
type tAS
    xc::Cint
    yc::Cint
    w::Cint
    h::Cint
    angle1::Cdouble
    angle2::Cdouble
    write_mode::Cint
    line_style::Cint
    line_width::Cint
    line_cap::Cint
    line_join::Cint
    interior_style::Cint
    back_opacity::Cint
    hatch::Cint
    foreground::Clong
    background::Clong
end
type tPixel
    x::Cint
    y::Cint
    write_mode::Cint
    foreground::Clong
end
type tMark
    x::Cint
    y::Cint
    write_mode::Cint
    mark_type::Cint
    mark_size::Cint
    foreground::Clong
end
type tText
    x::Cint
    y::Cint
    s::Ptr{Uint8}
    write_mode::Cint
    font_size::Cint
    font_style::Cint
    font_typeface::Cint
    back_opacity::Cint
    text_orientation::Cdouble
    text_alignment::Cint
    foreground::Clong
    background::Clong
end
type tPoly
    poly_mode::Cint
    write_mode::Cint
    line_style::Cint
    line_width::Cint
    line_cap::Cint
    line_join::Cint
    fill_mode::Cint
    back_opacity::Cint
    interior_style::Cint
    hatch::Cint
    foreground::Clong
    background::Clong
    num_points::Cint
    points::Ptr{tPoint}
end
type tnode
    _type::tPrim
    par::Union(tLB, tAS, tPoly, tPixel, tMark, tText, tMeta)
    next::Ptr{tnode}
end
type tList
    _type::tPrim
    par::Union(tLB, tAS, tPoly, tPixel, tMark, tText, tMeta)
    next::Ptr{tnode}
end
immutable Array_100_Cuchar
    d1::Cuchar
    d2::Cuchar
    d3::Cuchar
    d4::Cuchar
    d5::Cuchar
    d6::Cuchar
    d7::Cuchar
    d8::Cuchar
    d9::Cuchar
    d10::Cuchar
    d11::Cuchar
    d12::Cuchar
    d13::Cuchar
    d14::Cuchar
    d15::Cuchar
    d16::Cuchar
    d17::Cuchar
    d18::Cuchar
    d19::Cuchar
    d20::Cuchar
    d21::Cuchar
    d22::Cuchar
    d23::Cuchar
    d24::Cuchar
    d25::Cuchar
    d26::Cuchar
    d27::Cuchar
    d28::Cuchar
    d29::Cuchar
    d30::Cuchar
    d31::Cuchar
    d32::Cuchar
    d33::Cuchar
    d34::Cuchar
    d35::Cuchar
    d36::Cuchar
    d37::Cuchar
    d38::Cuchar
    d39::Cuchar
    d40::Cuchar
    d41::Cuchar
    d42::Cuchar
    d43::Cuchar
    d44::Cuchar
    d45::Cuchar
    d46::Cuchar
    d47::Cuchar
    d48::Cuchar
    d49::Cuchar
    d50::Cuchar
    d51::Cuchar
    d52::Cuchar
    d53::Cuchar
    d54::Cuchar
    d55::Cuchar
    d56::Cuchar
    d57::Cuchar
    d58::Cuchar
    d59::Cuchar
    d60::Cuchar
    d61::Cuchar
    d62::Cuchar
    d63::Cuchar
    d64::Cuchar
    d65::Cuchar
    d66::Cuchar
    d67::Cuchar
    d68::Cuchar
    d69::Cuchar
    d70::Cuchar
    d71::Cuchar
    d72::Cuchar
    d73::Cuchar
    d74::Cuchar
    d75::Cuchar
    d76::Cuchar
    d77::Cuchar
    d78::Cuchar
    d79::Cuchar
    d80::Cuchar
    d81::Cuchar
    d82::Cuchar
    d83::Cuchar
    d84::Cuchar
    d85::Cuchar
    d86::Cuchar
    d87::Cuchar
    d88::Cuchar
    d89::Cuchar
    d90::Cuchar
    d91::Cuchar
    d92::Cuchar
    d93::Cuchar
    d94::Cuchar
    d95::Cuchar
    d96::Cuchar
    d97::Cuchar
    d98::Cuchar
    d99::Cuchar
    d100::Cuchar
end
immutable Array_100_Clong
    d1::Clong
    d2::Clong
    d3::Clong
    d4::Clong
    d5::Clong
    d6::Clong
    d7::Clong
    d8::Clong
    d9::Clong
    d10::Clong
    d11::Clong
    d12::Clong
    d13::Clong
    d14::Clong
    d15::Clong
    d16::Clong
    d17::Clong
    d18::Clong
    d19::Clong
    d20::Clong
    d21::Clong
    d22::Clong
    d23::Clong
    d24::Clong
    d25::Clong
    d26::Clong
    d27::Clong
    d28::Clong
    d29::Clong
    d30::Clong
    d31::Clong
    d32::Clong
    d33::Clong
    d34::Clong
    d35::Clong
    d36::Clong
    d37::Clong
    d38::Clong
    d39::Clong
    d40::Clong
    d41::Clong
    d42::Clong
    d43::Clong
    d44::Clong
    d45::Clong
    d46::Clong
    d47::Clong
    d48::Clong
    d49::Clong
    d50::Clong
    d51::Clong
    d52::Clong
    d53::Clong
    d54::Clong
    d55::Clong
    d56::Clong
    d57::Clong
    d58::Clong
    d59::Clong
    d60::Clong
    d61::Clong
    d62::Clong
    d63::Clong
    d64::Clong
    d65::Clong
    d66::Clong
    d67::Clong
    d68::Clong
    d69::Clong
    d70::Clong
    d71::Clong
    d72::Clong
    d73::Clong
    d74::Clong
    d75::Clong
    d76::Clong
    d77::Clong
    d78::Clong
    d79::Clong
    d80::Clong
    d81::Clong
    d82::Clong
    d83::Clong
    d84::Clong
    d85::Clong
    d86::Clong
    d87::Clong
    d88::Clong
    d89::Clong
    d90::Clong
    d91::Clong
    d92::Clong
    d93::Clong
    d94::Clong
    d95::Clong
    d96::Clong
    d97::Clong
    d98::Clong
    d99::Clong
    d100::Clong
end
immutable Array_4_Cint
    d1::Cint
    d2::Cint
    d3::Cint
    d4::Cint
end
immutable Array_300_tPoint
    d1::tPoint
    d2::tPoint
    d3::tPoint
    d4::tPoint
    d5::tPoint
    d6::tPoint
    d7::tPoint
    d8::tPoint
    d9::tPoint
    d10::tPoint
    d11::tPoint
    d12::tPoint
    d13::tPoint
    d14::tPoint
    d15::tPoint
    d16::tPoint
    d17::tPoint
    d18::tPoint
    d19::tPoint
    d20::tPoint
    d21::tPoint
    d22::tPoint
    d23::tPoint
    d24::tPoint
    d25::tPoint
    d26::tPoint
    d27::tPoint
    d28::tPoint
    d29::tPoint
    d30::tPoint
    d31::tPoint
    d32::tPoint
    d33::tPoint
    d34::tPoint
    d35::tPoint
    d36::tPoint
    d37::tPoint
    d38::tPoint
    d39::tPoint
    d40::tPoint
    d41::tPoint
    d42::tPoint
    d43::tPoint
    d44::tPoint
    d45::tPoint
    d46::tPoint
    d47::tPoint
    d48::tPoint
    d49::tPoint
    d50::tPoint
    d51::tPoint
    d52::tPoint
    d53::tPoint
    d54::tPoint
    d55::tPoint
    d56::tPoint
    d57::tPoint
    d58::tPoint
    d59::tPoint
    d60::tPoint
    d61::tPoint
    d62::tPoint
    d63::tPoint
    d64::tPoint
    d65::tPoint
    d66::tPoint
    d67::tPoint
    d68::tPoint
    d69::tPoint
    d70::tPoint
    d71::tPoint
    d72::tPoint
    d73::tPoint
    d74::tPoint
    d75::tPoint
    d76::tPoint
    d77::tPoint
    d78::tPoint
    d79::tPoint
    d80::tPoint
    d81::tPoint
    d82::tPoint
    d83::tPoint
    d84::tPoint
    d85::tPoint
    d86::tPoint
    d87::tPoint
    d88::tPoint
    d89::tPoint
    d90::tPoint
    d91::tPoint
    d92::tPoint
    d93::tPoint
    d94::tPoint
    d95::tPoint
    d96::tPoint
    d97::tPoint
    d98::tPoint
    d99::tPoint
    d100::tPoint
    d101::tPoint
    d102::tPoint
    d103::tPoint
    d104::tPoint
    d105::tPoint
    d106::tPoint
    d107::tPoint
    d108::tPoint
    d109::tPoint
    d110::tPoint
    d111::tPoint
    d112::tPoint
    d113::tPoint
    d114::tPoint
    d115::tPoint
    d116::tPoint
    d117::tPoint
    d118::tPoint
    d119::tPoint
    d120::tPoint
    d121::tPoint
    d122::tPoint
    d123::tPoint
    d124::tPoint
    d125::tPoint
    d126::tPoint
    d127::tPoint
    d128::tPoint
    d129::tPoint
    d130::tPoint
    d131::tPoint
    d132::tPoint
    d133::tPoint
    d134::tPoint
    d135::tPoint
    d136::tPoint
    d137::tPoint
    d138::tPoint
    d139::tPoint
    d140::tPoint
    d141::tPoint
    d142::tPoint
    d143::tPoint
    d144::tPoint
    d145::tPoint
    d146::tPoint
    d147::tPoint
    d148::tPoint
    d149::tPoint
    d150::tPoint
    d151::tPoint
    d152::tPoint
    d153::tPoint
    d154::tPoint
    d155::tPoint
    d156::tPoint
    d157::tPoint
    d158::tPoint
    d159::tPoint
    d160::tPoint
    d161::tPoint
    d162::tPoint
    d163::tPoint
    d164::tPoint
    d165::tPoint
    d166::tPoint
    d167::tPoint
    d168::tPoint
    d169::tPoint
    d170::tPoint
    d171::tPoint
    d172::tPoint
    d173::tPoint
    d174::tPoint
    d175::tPoint
    d176::tPoint
    d177::tPoint
    d178::tPoint
    d179::tPoint
    d180::tPoint
    d181::tPoint
    d182::tPoint
    d183::tPoint
    d184::tPoint
    d185::tPoint
    d186::tPoint
    d187::tPoint
    d188::tPoint
    d189::tPoint
    d190::tPoint
    d191::tPoint
    d192::tPoint
    d193::tPoint
    d194::tPoint
    d195::tPoint
    d196::tPoint
    d197::tPoint
    d198::tPoint
    d199::tPoint
    d200::tPoint
    d201::tPoint
    d202::tPoint
    d203::tPoint
    d204::tPoint
    d205::tPoint
    d206::tPoint
    d207::tPoint
    d208::tPoint
    d209::tPoint
    d210::tPoint
    d211::tPoint
    d212::tPoint
    d213::tPoint
    d214::tPoint
    d215::tPoint
    d216::tPoint
    d217::tPoint
    d218::tPoint
    d219::tPoint
    d220::tPoint
    d221::tPoint
    d222::tPoint
    d223::tPoint
    d224::tPoint
    d225::tPoint
    d226::tPoint
    d227::tPoint
    d228::tPoint
    d229::tPoint
    d230::tPoint
    d231::tPoint
    d232::tPoint
    d233::tPoint
    d234::tPoint
    d235::tPoint
    d236::tPoint
    d237::tPoint
    d238::tPoint
    d239::tPoint
    d240::tPoint
    d241::tPoint
    d242::tPoint
    d243::tPoint
    d244::tPoint
    d245::tPoint
    d246::tPoint
    d247::tPoint
    d248::tPoint
    d249::tPoint
    d250::tPoint
    d251::tPoint
    d252::tPoint
    d253::tPoint
    d254::tPoint
    d255::tPoint
    d256::tPoint
    d257::tPoint
    d258::tPoint
    d259::tPoint
    d260::tPoint
    d261::tPoint
    d262::tPoint
    d263::tPoint
    d264::tPoint
    d265::tPoint
    d266::tPoint
    d267::tPoint
    d268::tPoint
    d269::tPoint
    d270::tPoint
    d271::tPoint
    d272::tPoint
    d273::tPoint
    d274::tPoint
    d275::tPoint
    d276::tPoint
    d277::tPoint
    d278::tPoint
    d279::tPoint
    d280::tPoint
    d281::tPoint
    d282::tPoint
    d283::tPoint
    d284::tPoint
    d285::tPoint
    d286::tPoint
    d287::tPoint
    d288::tPoint
    d289::tPoint
    d290::tPoint
    d291::tPoint
    d292::tPoint
    d293::tPoint
    d294::tPoint
    d295::tPoint
    d296::tPoint
    d297::tPoint
    d298::tPoint
    d299::tPoint
    d300::tPoint
end
immutable Array_256_Uint8
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
end
immutable Array_80_Uint8
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
end
immutable Array_40_Uint8
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
end

type tCTC
    iup_canvas::Ptr{cdCanvas}
    w::Cint
    h::Cint
    res::Cdouble
    bpp::Cint
    wd_canvas::Ptr{cdCanvas}
    wd_dialog::Cint
    pic_canvas::Ptr{cdCanvas}
    picture::Ptr{cdCanvas}
    pic_dialog::Cint
    buffer_canvas::Ptr{cdCanvas}
    buffering::Cint
    dlg_cur_prim::Ptr{Ihandle}
    bt_cur_prim::Ptr{Ihandle}
    cur_prim::tPrim
    following::Cint
    dlg_x::Cint
    dlg_y::Cint
    visible::Cint
    write_mode::Cint
    line_cap::Cint
    line_join::Cint
    line_style::Cint
    line_width::Cint
    fill_mode::Cint
    font_typeface::Cint
    font_style::Cint
    font_size::Cint
    text_alignment::Cint
    text_orientation::Cdouble
    back_opacity::Cint
    mark_type::Cint
    poly_mode::Cint
    foreground::Cint
    background::Cint
    interior_style::Cint
    hatch::Cint
#    stipple::Array_100_Cuchar
#    pattern::Array_100_Clong
#    dashes::Array_4_Cint
    clip_xmin::Cint
    clip_xmax::Cint
    clip_ymin::Cint
    clip_ymax::Cint
    clip_mode::Cint
    red::Ptr{Cuchar}
    green::Ptr{Cuchar}
    blue::Ptr{Cuchar}
    rgb_w::Cint
    rgb_h::Cint
    test_image::Ptr{cdImage}
    num_points::Cint
#    points::Array_300_tPoint
#    status_line::Array_256_Uint8
#    title::Array_80_Uint8
    x::Cint
    y::Cint
#    mouse_pos::Array_40_Uint8
    sim::Cint
    stretch_play::Cint
#    head::Ptr{tList}

end

type tCTC_t
    iup_canvas::Ptr{cdCanvas}
    foreground::Cint
    background::Cint
end

type tLinePos
    x1::Cint
    x2::Cint
    y1::Cint
    y2::Cint
end
type tBoxPos
    xmin::Cint
    xmax::Cint
    ymin::Cint
    ymax::Cint
    x::Cint
    y::Cint
end
type tPixelPos
    x::Cint
    y::Cint
end
type tMarkPos
    x::Cint
    y::Cint
    size::Cint
end
type tArcPos
    xc::Cint
    yc::Cint
    w::Cint
    h::Cint
    angle1::Cdouble
    angle2::Cdouble
end
