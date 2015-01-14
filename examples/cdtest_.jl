module cdtest_

using IUP
using IUP_IM
using IUP_CD

include("../src/libiup_h.jl")
include("../src/libcd_h.jl")
include("../src/im_process_h.jl")
include("../src/cdiup_h.jl")

include("cdtest_h.jl")
#include("cdtest.jl")

export
  cdtest

type tCTC_l
    iup_canvas::Ptr{cdCanvas}
end

global antialias = 1

global ctgc = tCTC(
        C_NULL,
        int32(0), int32(0), 0.0, int32(0),
        convert(Ptr{cdCanvas},0),
        int32(0),
        convert(Ptr{cdCanvas},0),
        convert(Ptr{cdCanvas},0),
        int32(0),
        convert(Ptr{cdCanvas},0),
        int32(0),
        convert(Ptr{Ihandle},0),
        convert(Ptr{Ihandle},0),
        uint32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        0.0,
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
#       Array_100_Cuchar,
#        Array_100_Clong,
#        Array_4_Cint,
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        int32(0),
        convert(Ptr{Cuchar},0),
        convert(Ptr{Cuchar},0),
        convert(Ptr{Cuchar},0),
        int32(0),
        int32(0),
        convert(Ptr{Cint},0),
        int32(0),
#        Array_300_tPoint,
#        Array_256_Uint8,
#        Array_80_Uint8,
        int32(0),
        int32(0),
#        Array_40_Uint8,
        int32(0),
        int32(0),
#        Ptr{tList}    
    )


# --------------------------------------------------------------------
function cdtest()

	IupOpen() 		#Initializes IUP

	# carrega o LED
	err = IupLoad("C:/programs/Gits/IUP.jl/examples/cdtest.led")
	#cdtest_loadled()

	if (err == C_NULL)	# inicializa o CDTest
		CDTestInit()
	else			# imprime uma mensagem de erro
		IupMessage("LED Error:", err)
		IupClose()
		return
	end

	IupMainLoop()
	#CDTestClose()
	IupClose()
end

#-------------------------------------------------------------------------
# Inicializa o CD Test.
#-------------------------------------------------------------------------
function CDTestInit()
	global ctgc

	# inicializaccao dos drivers
	#DriversInit()

	# mostra o dialogo principal
	IupShow(IupGetHandle("dlgMain"))

	# inicializacao da barra de cores */
	ctgc.foreground = int32(0);		ctgc.background = int32(0)
	#ColorBarInit(IupGetHandle("dlgMain"), IupGetHandle("cnvColorBar"), convert(Ptr{Clong},ctgc.foreground), convert(Ptr{Clong},ctgc.background))

	# cria o canvas do CD associado ao canvas do IUP */
	t = cdCreateCanvas(cdContextIup(), IupGetHandle("cnvMain"))
	if (antialias != 0) cdCanvasSetAttribute(t, "ANTIALIAS", "0")	end
	ctgc_l = tCTC_l(C_NULL)
	ctgc.iup_canvas = t
	ctgc_l.iup_canvas = t
@show t
@show ctgc_l.iup_canvas
	cdActivate(t);
	cdActivate(ctgc_l.iup_canvas);

	# associa os call-backs
	setcallbacks()

	# os call-backs do canvas devem ser associados depois de sua criacao */
	#IupSetFunction("cmdRepaint", (Icallback) fRepaint);
	IupSetFunction("cmdMotionCB", cfunction(fMotionCB, Int, (Ptr{Ihandle}, Cint, Cint, Ptr{Uint8})))
	#IupSetFunction("cmdButtonCB", (Icallback) fButtonCB);
	#IupSetFunction("cmdResizeCB", (Icallback) fResizeCB);
	#IupSetFunction("cmdGetFocusCB", (Icallback) fGetFocusCB);


	# inicializaccao do contexto */
	ctgc.write_mode = CD_REPLACE;
	ctgc.line_style = CD_CONTINUOUS;
	ctgc.line_cap = CD_CAPFLAT;
	ctgc.line_join = CD_MITER;
	ctgc.fill_mode = CD_EVENODD;
	ctgc.line_width = 1;
	ctgc.font_style = CD_PLAIN;
	ctgc.font_typeface = CD_SYSTEM;
	ctgc.font_size = CD_STANDARD;
	ctgc.text_alignment = CD_BASE_LEFT;
	ctgc.text_orientation = 0;
	ctgc.back_opacity =  CD_TRANSPARENT;
	ctgc.mark_type = CD_STAR;
	ctgc.poly_mode = CD_OPEN_LINES;
	ctgc.interior_style = CD_SOLID;
	ctgc.hatch = CD_HORIZONTAL;
	ctgc.following = FALSE;
	ctgc.foreground = CD_BLACK;
	ctgc.background = CD_WHITE;
#	ctgc.head = C_NULL;
	ctgc.test_image = C_NULL;
	ctgc.sim = 0;
	ctgc.stretch_play = 1;
	ctgc.dlg_x = IUP_CENTER;
	ctgc.dlg_y = IUP_CENTER;
	ctgc.visible = 0;

	# inicializa os vetores stipple e pattern */
	#initsamples();

	# inicializa o CDTest com a primitiva LINE */
	ctgc.dlg_cur_prim = IupGetHandle("dlgLB");
	ctgc.bt_cur_prim = IupGetHandle("btCurPrim");
	ctgc.cur_prim = LINE;

	# inicializaccao do Canvas do IUP */
#@show t
#@show ctgc.iup_canvas
	cdActivate(ctgc.iup_canvas)
	cdFont(ctgc.font_typeface,ctgc.font_style,ctgc.font_size);
	cdBackground(ctgc.background);
	cdClear()
#=
	cdGetCanvasSize(&(ctgc.w),&(ctgc.h),C_NULL,C_NULL);
	ctgc.bpp = cdGetColorPlanes();

	{
	double mm, xres;
	cdPixel2MM(1, 0, &mm, C_NULL);
	xres = 1.0/mm;
	ctgc.res = xres;
	}

	# inicializa o canvas off-screen de double-bufering */
	ctgc.buffering = NO_BUFFER;
	ctgc.buffer_canvas = NULL;

	# inicializa o clipping */
	ctgc.clip_mode = CD_CLIPOFF;
	cdGetClipArea(&(ctgc.clip_xmin), &(ctgc.clip_xmax), &(ctgc.clip_ymin), &(ctgc.clip_ymax));

	# zera o buffer temporario de pontos */
	ctgc.num_points = 0;

	# a lista de primitivas jah estah vazia, nao hah o que apagar */
	IupSetAttribute(IupGetHandle("itEditUndo"), IUP_ACTIVE, IUP_NO);

	# atualiza o tamanho do canvas em pixels na barra de titulo */
	sprintf(ctgc.title, "CDTest 5.3 (%dx%d - %dbpp)", ctgc.w, ctgc.h, ctgc.bpp);
	IupSetAttribute(IupGetHandle("dlgMain"), IUP_TITLE, ctgc.title);

	# inicializa a barra de status */
	sprintf(ctgc.status_line, "LEFT click and drag.");
	set_status();

	# inicializa a posiccao do mouse */
	mouse_pos(0, 0);

	# constroi os dialogos do CDTest sem mostra-los */
	IupMap(IupGetHandle("dlgLB"));
	IupMap(IupGetHandle("dlgAS"));
	IupMap(IupGetHandle("dlgPixel"));
	IupMap(IupGetHandle("dlgImage"));
	IupMap(IupGetHandle("dlgImageRGB"));
	IupMap(IupGetHandle("dlgMark"));
	IupMap(IupGetHandle("dlgText"));
	IupMap(IupGetHandle("dlgClip"));
	IupMap(IupGetHandle("dlgAttributes"));
	IupMap(IupGetHandle("dlgWDCanvas"));
	IupMap(IupGetHandle("dlgPICCanvas"));

	# cria o canvas WD */
	if (use_contextplus) cdUseContextPlus(1)	end
	ctgc.wd_canvas = cdCreateCanvas(CD_IUP, IupGetHandle("cnvWDCanvas"));
	ctgc.pic_canvas = cdCreateCanvas(CD_IUP, IupGetHandle("cnvPICCanvas"));
	ctgc.picture = cdCreateCanvas(CD_PICTURE, "");
	if (use_contextplus) cdUseContextPlus(0)	end

	# CDTEST default values */
	cdActivate(ctgc.picture);
	cdLineStyleDashes(ctgc.dashes, 4);
	cdPattern(10, 10, ctgc.pattern);
	cdStipple(10, 10, ctgc.stipple);
	cdInteriorStyle(CD_SOLID);

	cdActivate(ctgc.wd_canvas);
	cdLineStyleDashes(ctgc.dashes, 4);
	cdPattern(10, 10, ctgc.pattern);
	cdStipple(10, 10, ctgc.stipple);
	cdInteriorStyle(CD_SOLID);

	# reativa o canvas IUP */
	cdActivate(ctgc.iup_canvas);
	cdLineStyleDashes(ctgc.dashes, 4);
	cdPattern(10, 10, ctgc.pattern);
	cdStipple(10, 10, ctgc.stipple);
	cdInteriorStyle(CD_SOLID);
=#
end

function CDTestClose()
	#dellist()       

	#ColorBarClose()

	if (ctgc.buffer_canvas != 0) cdKillCanvas(ctgc.buffer_canvas)	end
	if (ctgc.test_image != 0) cdKillImage(ctgc.test_image)	end
	cdKillCanvas(ctgc.picture);
	cdKillCanvas(ctgc.pic_canvas);
	cdKillCanvas(ctgc.wd_canvas);
	cdKillCanvas(ctgc.iup_canvas);

	#memset(&ctgc, 0, sizeof(tCTC));

	IupDestroy(IupGetHandle("dlgLB"));
	IupDestroy(IupGetHandle("dlgAS"));
	IupDestroy(IupGetHandle("dlgPixel"));
	IupDestroy(IupGetHandle("dlgImage"));
	IupDestroy(IupGetHandle("dlgImageRGB"));
	IupDestroy(IupGetHandle("dlgMark"));
	IupDestroy(IupGetHandle("dlgText"));
	IupDestroy(IupGetHandle("dlgClip"));
	IupDestroy(IupGetHandle("dlgAttributes"));
	IupDestroy(IupGetHandle("dlgWDCanvas"));
	IupDestroy(IupGetHandle("dlgPICCanvas"));

	IupDestroy(IupGetHandle("dlgMain"))

	if (use_contextplus != 0) 
		cdFinishContextPlus()
	end
end

function setcallbacks()
	IupSetFunction("cmdFileExit",  cfunction(fFileExit, Int, (),))
	IupSetFunction("cmdHelpAbout", cfunction(fHelpAbout,Int, (),))
end

# Tchau
function fFileExit()
	global ctgc
	IupHide(ctgc.dlg_cur_prim)
	return IUP_CLOSE
end

# Show About window
function fHelpAbout()
	IupSetAttribute(IupGetHandle("lblVersion"), IUP_TITLE, cdVersion())
	IupShow(IupGetHandle("dlgHelpAbout"))
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------
# Desenha a primitiva entrada na caixa de dialogo corrente.
#-------------------------------------------------------------------------
#=
function fDraw()
	# atualiza os dados entrados na caixa de dialogo no contexto da primitiva corrente
	switch (ctgc.cur_prim)
    case LINE:
      line_pos.x1 = IupGetInt(IupGetHandle("txtLBX1"), IUP_VALUE);
      line_pos.x2 = IupGetInt(IupGetHandle("txtLBX2"), IUP_VALUE);
      line_pos.y1 = IupGetInt(IupGetHandle("txtLBY1"), IUP_VALUE);
      line_pos.y2 = IupGetInt(IupGetHandle("txtLBY2"), IUP_VALUE);
      break;
    case RECT:
    case BOX:
      box_pos.xmin = IupGetInt(IupGetHandle("txtLBX1"), IUP_VALUE);
      box_pos.xmax = IupGetInt(IupGetHandle("txtLBX2"), IUP_VALUE);
      box_pos.ymin = IupGetInt(IupGetHandle("txtLBY1"), IUP_VALUE);
      box_pos.ymax = IupGetInt(IupGetHandle("txtLBY2"), IUP_VALUE);
      break;
    case ARC:
    case CHORD:
    case SECTOR:
      arc_pos.xc = IupGetInt(IupGetHandle("txtASXC"), IUP_VALUE);
      arc_pos.yc = IupGetInt(IupGetHandle("txtASYC"), IUP_VALUE);
      arc_pos.w = IupGetInt(IupGetHandle("txtASW"), IUP_VALUE);
      arc_pos.h = IupGetInt(IupGetHandle("txtASH"), IUP_VALUE);
      break;
    case PIXEL:
      pixel_pos.x = IupGetInt(IupGetHandle("txtPixelX"), IUP_VALUE);
      pixel_pos.y = IupGetInt(IupGetHandle("txtPixelY"), IUP_VALUE);
      break;
    case MARK:
      mark_pos.x = IupGetInt(IupGetHandle("txtMarkX"), IUP_VALUE);
      mark_pos.y = IupGetInt(IupGetHandle("txtMarkY"), IUP_VALUE);
      break;
    default:
      break;
      end

	# efetivamente desenha a primitiva
	draw()

	return IUP_DEFAULT
end
=#

function fMotionCB(self::Ptr{Ihandle}, x::Int32, y::Int32, r::Ptr{Uint8})
	global ctgc

	if (ctgc.iup_canvas == C_NULL)
		return IUP_DEFAULT
	end

	#cdActivate(ctgc.iup_canvas)
	cdUpdateYAxis( convert(Ptr{Cint}, pointer_from_objref(convert(Cint, y))) )
	mouse_pos(x, y)

	if (ctgc.following != 0)
		if (ctgc.cur_prim == LINE)
		elseif (ctgc.cur_prim == RECT || ctgc.cur_prim == BOX)
		elseif (ctgc.cur_prim == CLIP)
		elseif (ctgc.cur_prim == ARC || ctgc.cur_prim == SECTOR || ctgc.cur_prim == CHORD)
		elseif (ctgc.cur_prim == IMAGE)
		elseif (ctgc.cur_prim == RGB)
		elseif (ctgc.cur_prim == POLY)
		end
	end
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------
# Atualiza a posiccao do mouse no dialogo principal.
#-------------------------------------------------------------------------
function mouse_pos(x::Int32, y::Int32) 
	# salva a posiccao do mouse no contexto
#	ctgc.x = x
#	ctgc.y = y

	# atualiza a posiccao do mouse no feedback para o usuario
	s = @sprintf("%4d,%4d", x, y)
	IupSetAttribute(IupGetHandle("lbMousePos"), "TITLE", s);
end

end 	# module
