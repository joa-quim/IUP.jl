module cdtest_

using IUP
using IUP_IM
using IUP_CD

include("../src/libiup_h.jl")
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
        C_NULL,
        int32(0),
        C_NULL,
        C_NULL,
        int32(0),
        C_NULL,
        int32(0),
        C_NULL,
        C_NULL,
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
        C_NULL,
        C_NULL,
        C_NULL,
        int32(0),
        int32(0),
        C_NULL,
        int32(0),
#        Array_300_tPoint,
#        Array_256_Uint8,
#        Array_80_Uint8,
        int32(0),
        int32(0),
#        Array_40_Uint8,
        int32(0),
        int32(0)
#        Ptr{tList}    
    )

global box_pos   = tBoxPos(int32(0), int32(0), int32(0), int32(0), int32(0), int32(0))
global arc_pos   = tArcPos(int32(0), int32(0), int32(0), int32(0), 0.0, 0.0)
global line_pos  = tLinePos(int32(0), int32(0), int32(0), int32(0))
global mark_pos  = tMarkPos(int32(0), int32(0), int32(0))
global pixel_pos = tPixelPos(int32(0), int32(0))
global fl_nx, fl_ny, fl_mx, fl_my
global line_x1, line_x2, line_y1, line_y2
global line_lastwhat = CLOSE
global poly_lastwhat = CLOSE
global poly_x1, poly_x2, poly_y1, poly_y2
global box_x1, box_x2, box_y1, box_y2
global box_lastwhat = CLOSE
global arc_xc, arc_yc, arc_y1, arc_x1
global arc_lastwhat = CLOSE

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

	# inicializaccao dos drivers
	#DriversInit()

	# mostra o dialogo principal
	IupShow(IupGetHandle("dlgMain"))

	# inicializacao da barra de cores */
	ctgc.foreground = int32(0);		ctgc.background = int32(0)
	#ColorBarInit(IupGetHandle("dlgMain"), IupGetHandle("cnvColorBar"), convert(Ptr{Clong},ctgc.foreground), convert(Ptr{Clong},ctgc.background))

	# cria o canvas do CD associado ao canvas do IUP */
	ctgc.iup_canvas = cdCreateCanvas(cdContextIup(), IupGetHandle("cnvMain"))

w = convert(Ptr{Cint}, [int32(0)])
h = convert(Ptr{Cint}, [int32(0)])
cdCanvasGetSize(ctgc.iup_canvas, w, h, C_NULL, C_NULL); 
w = unsafe_load(w)
h = unsafe_load(h)
@show(w,h)
	if (antialias != 0) cdCanvasSetAttribute(ctgc.iup_canvas, "ANTIALIAS", "0")	end
	cdActivate(ctgc.iup_canvas);

	# associa os call-backs
	setcallbacks()

	# os call-backs do canvas devem ser associados depois de sua criacao */
	#IupSetFunction("cmdRepaint", (Icallback) fRepaint);
	IupSetFunction("cmdMotionCB", cfunction(fMotionCB, Int, (Ptr{Ihandle}, Cint, Cint, Ptr{Uint8})))
	IupSetFunction("cmdButtonCB", cfunction(fButtonCB, Int, (Ptr{Ihandle}, Char, Cint, Cint, Cint, Cint)))
	#IupSetFunction("cmdResizeCB", (Icallback) fResizeCB);
	#IupSetFunction("cmdGetFocusCB", (Icallback) fGetFocusCB);


	# inicializacao do contexto */
	#ctgc.write_mode = 0;
	#ctgc.line_style = 0;
	#ctgc.line_cap = 0;
	#ctgc.line_join = 0;
	ctgc.fill_mode = IUP_CD.CD_EVENODD;
	ctgc.line_width = 1;
	ctgc.font_style = IUP_CD.CD_PLAIN;
	ctgc.font_typeface = IUP_CD.CD_SYSTEM;
	ctgc.font_size = IUP_CD.CD_STANDARD;
	ctgc.text_alignment = IUP_CD.CD_BASE_LEFT;
	#ctgc.text_orientation = 0
	ctgc.back_opacity =  IUP_CD.CD_TRANSPARENT;
	ctgc.mark_type = IUP_CD.CD_STAR;
	ctgc.poly_mode = IUP_CD.CD_OPEN_LINES;
	ctgc.interior_style = IUP_CD.CD_SOLID;
	ctgc.hatch = IUP_CD.CD_HORIZONTAL;
	#ctgc.following = 0
	ctgc.foreground = IUP_CD.CD_BLACK
	ctgc.background = IUP_CD.CD_WHITE
#	ctgc.head = C_NULL;
	#ctgc.test_image = C_NULL;
	#ctgc.sim = 0;
	ctgc.stretch_play = 1;
	ctgc.dlg_x = IUP_CENTER;
	ctgc.dlg_y = IUP_CENTER;
	#ctgc.visible = 0;

	# inicializa os vetores stipple e pattern */
	#initsamples();

	# inicializa o CDTest com a primitiva LINE */
	ctgc.dlg_cur_prim = IupGetHandle("dlgLB");
	ctgc.bt_cur_prim = IupGetHandle("btCurPrim");
	ctgc.cur_prim = LINE;

	# inicializaccao do Canvas do IUP */
	cdActivate(ctgc.iup_canvas)
	cdFont(ctgc.font_typeface,ctgc.font_style,ctgc.font_size);
	cdBackground(ctgc.background);
	cdClear()

	w = convert(Ptr{Cint}, [ctgc.w])
	h = convert(Ptr{Cint}, [ctgc.h])
	cdGetCanvasSize(w, h, convert(Ptr{Cdouble}, C_NULL), convert(Ptr{Cdouble}, C_NULL))
	ctgc.w = unsafe_load(w)
	ctgc.h = unsafe_load(h)
	ctgc.bpp = cdGetColorPlanes()

	mm = convert(Ptr{Cdouble}, [0.0])
	cdPixel2MM(1, 0, mm, convert(Ptr{Cdouble}, C_NULL))
	mm = unsafe_load(mm)
	xres = 1.0/mm;
	ctgc.res = xres;

	# inicializa o canvas off-screen de double-bufering */
	#ctgc.buffering = int32(0)
	#ctgc.buffer_canvas = C_NULL

	# inicializa o clipping
	#ctgc.clip_mode = IUP_CD.CD_CLIPOFF


	x1 = convert(Ptr{Cint}, [ctgc.clip_xmin]);	x2 = convert(Ptr{Cint}, [ctgc.clip_xmax])
	y1 = convert(Ptr{Cint}, [ctgc.clip_ymin]);	y2 = convert(Ptr{Cint}, [ctgc.clip_ymax])
	cdGetClipArea(x1, x2, y1, y2)
	ctgc.clip_xmin = unsafe_load(x1);	ctgc.clip_xmax = unsafe_load(x2)
	ctgc.clip_ymin = unsafe_load(y1);	ctgc.clip_ymax = unsafe_load(y2)
	#cdGetClipArea(&(ctgc.clip_xmin), &(ctgc.clip_xmax), &(ctgc.clip_ymin), &(ctgc.clip_ymax));

	# zera o buffer temporario de pontos */
	#ctgc.num_points = Cint(0)

	# a lista de primitivas jah estah vazia, nao hah o que apagar */
	IupSetAttribute(IupGetHandle("itEditUndo"), IUP_ACTIVE, IUP_NO);

	# atualiza o tamanho do canvas em pixels na barra de titulo */
	#s = @sprintf(ctgc.title, "CDTest 5.3 (%dx%d - %dbpp)", ctgc.w, ctgc.h, ctgc.bpp)
	#IupSetAttribute(IupGetHandle("dlgMain"), IUP_TITLE, ctgc.title);

	# inicializa a barra de status */
	#s = @sprintf(ctgc.status_line, "LEFT click and drag.");
	#set_status();

	# inicializa a posiccao do mouse */
	mouse_pos(int32(0), int32(0))

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

	# cria o canvas WD
	use_contextplus = 1
	if (use_contextplus != 0) cdUseContextPlus(1)	end
	ctgc.wd_canvas  = cdCreateCanvas(cdContextIup(), IupGetHandle("cnvWDCanvas"));
	ctgc.pic_canvas = cdCreateCanvas(cdContextIup(), IupGetHandle("cnvPICCanvas"));
	ctgc.picture    = cdCreateCanvas(cdContextIup(), convert(Ptr{Void}, convert(Ptr{Uint8},"")))
	if (use_contextplus != 0) cdUseContextPlus(0)	end

	# CDTEST default values */
	cdActivate(ctgc.picture);
	#cdLineStyleDashes(ctgc.dashes, 4);
	#cdPattern(10, 10, ctgc.pattern);
	#cdStipple(10, 10, ctgc.stipple);
	cdInteriorStyle(0);

	cdActivate(ctgc.wd_canvas);
	#cdLineStyleDashes(ctgc.dashes, 4);
	#cdPattern(10, 10, ctgc.pattern);
	#cdStipple(10, 10, ctgc.stipple);
	cdInteriorStyle(0);

	# reativa o canvas IUP */
	cdActivate(ctgc.iup_canvas);
	#cdLineStyleDashes(ctgc.dashes, 4);
	#cdPattern(10, 10, ctgc.pattern);
	#cdStipple(10, 10, ctgc.stipple);
	cdInteriorStyle(0);
end

# ----------------------------------------------------------------------------
function CDTestClose()
	#dellist()       

	#ColorBarClose()

	if (ctgc.buffer_canvas != 0) cdKillCanvas(ctgc.buffer_canvas)	end
	if (ctgc.test_image != 0) cdKillImage(ctgc.test_image)	end
	cdKillCanvas(ctgc.picture);
	cdKillCanvas(ctgc.pic_canvas);
	cdKillCanvas(ctgc.wd_canvas);
	cdKillCanvas(ctgc.iup_canvas);

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

# --------------------------------------------------------------------------
function setcallbacks()
	IupSetFunction("cmdFileExit",  cfunction(fFileExit, Int, (),))
	IupSetFunction("cmdHelpAbout", cfunction(fHelpAbout,Int, (),))

	IupSetFunction("cmdLine", cfunction(fLine, Int, (Ptr{Ihandle},)))
	IupSetFunction("cmdPoly", cfunction(fPoly, Int, (Ptr{Ihandle},)))
	IupSetFunction("cmdRect", cfunction(fRect, Int, (Ptr{Ihandle},)))
	IupSetFunction("cmdBox",  cfunction(fBox,  Int, (Ptr{Ihandle},)))
	IupSetFunction("cmdArc",  cfunction(fArc,  Int, (Ptr{Ihandle},)))
	IupSetFunction("cmdSector", cfunction(fSector,  Int, (Ptr{Ihandle},)))
	IupSetFunction("cmdText", cfunction(fText, Int, (Ptr{Ihandle},)))
	IupSetFunction("cmdMark", cfunction(fMark, Int, (Ptr{Ihandle},)))

	IupSetFunction("cmdDraw", cfunction(fDraw, Int, (),))
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

#-------------------------------------------------------------------------*/
# Muda a primitiva corrente.                                              */
#-------------------------------------------------------------------------*/
function fLine(self::Ptr{Ihandle})
@show("MERDA_fLine")
	if (ctgc.cur_prim != LINE)
		IupSetAttribute(ctgc.bt_cur_prim, IUP_IMAGE, "imgLine");
		if (ctgc.cur_prim == POLY)	# termina o poligono em andamento */
			fButtonCB(C_NULL, IUP_BUTTON3, 0, 0, 0, 0);
		end
		ctgc.cur_prim = LINE;
		ctgc.following = 0;
		ctgc.visible = iscurvisible();
		IupHide(ctgc.dlg_cur_prim);      # esconde o dialogo anterior */
		if (ctgc.visible != 0)
			ctgc.dlg_x = IupGetInt(ctgc.dlg_cur_prim, IUP_X);
			ctgc.dlg_y = IupGetInt(ctgc.dlg_cur_prim, IUP_Y);
		end
		ctgc.dlg_cur_prim = IupGetHandle("dlgLB");
		IupSetAttribute(ctgc.dlg_cur_prim, IUP_TITLE, "Line Parameters");
	end
	#sprintf(ctgc.status_line, "LEFT click and drag.");
	#set_status();
	if (ctgc.visible != 0 || IupGetAttribute(self, "ISMENU") != C_NULL)
		IupShowXY(ctgc.dlg_cur_prim, ctgc.dlg_x, ctgc.dlg_y)
	end
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------
function fPoly(self::Ptr{Ihandle})
	if (ctgc.cur_prim != POLY)
		IupSetAttribute(ctgc.bt_cur_prim, IUP_IMAGE, "imgPoly");
		ctgc.cur_prim = POLY;
		ctgc.following = 0
		ctgc.visible = iscurvisible()
		IupHide(ctgc.dlg_cur_prim);
		if (ctgc.visible != 0)
			ctgc.dlg_x = IupGetInt(ctgc.dlg_cur_prim, IUP_X);
			ctgc.dlg_y = IupGetInt(ctgc.dlg_cur_prim, IUP_Y);
		end
    	ctgc.dlg_cur_prim = IupGetHandle("dlgPoly");
    	# zera o buffer temporario de pontos
    	ctgc.num_points = 0; 
	end
	#sprintf(ctgc.status_line, "LEFT click to add vertex. RIGHT click to end.");
	#set_status();
	if (ctgc.visible != 0 || IupGetAttribute(self, "ISMENU") != C_NULL)
		IupShowXY(ctgc.dlg_cur_prim, ctgc.dlg_x, ctgc.dlg_y)
	end
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------*/
# Muda a primitiva corrente.                                              */
#-------------------------------------------------------------------------*/
function fRect(self::Ptr{Ihandle})
	if (ctgc.cur_prim != RECT)
		IupSetAttribute(ctgc.bt_cur_prim, IUP_IMAGE, "imgRect")
		if (ctgc.cur_prim == POLY)
			fButtonCB(C_NULL, IUP_BUTTON3, 0, 0, 0, 0);
		end
		ctgc.cur_prim = RECT;
		ctgc.following = 0;
		ctgc.visible = iscurvisible();
		IupHide(ctgc.dlg_cur_prim);
		if (ctgc.visible != 0)
			ctgc.dlg_x = IupGetInt(ctgc.dlg_cur_prim, IUP_X);
			ctgc.dlg_y = IupGetInt(ctgc.dlg_cur_prim, IUP_Y);
		end
		ctgc.dlg_cur_prim = IupGetHandle("dlgLB");
		IupSetAttribute(ctgc.dlg_cur_prim, IUP_TITLE, "Rect Parameters");
	end
	#sprintf(ctgc.status_line, "LEFT click and drag.");
	#set_status();
	if (ctgc.visible != 0 || IupGetAttribute(self, "ISMENU") != C_NULL)
		IupShowXY(ctgc.dlg_cur_prim, ctgc.dlg_x, ctgc.dlg_y)
	end
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------
function fBox(self::Ptr{Ihandle})
	if (ctgc.cur_prim != BOX)
		IupSetAttribute(ctgc.bt_cur_prim, IUP_IMAGE, "imgBox")
		if (ctgc.cur_prim == POLY)
			fButtonCB(C_NULL, IUP_BUTTON3, 0, 0, 0, 0);
		end
		ctgc.cur_prim = BOX;
		ctgc.following = 0;
		ctgc.visible = iscurvisible();
		IupHide(ctgc.dlg_cur_prim);
		if (ctgc.visible != 0)
			ctgc.dlg_x = IupGetInt(ctgc.dlg_cur_prim, IUP_X)
			ctgc.dlg_y = IupGetInt(ctgc.dlg_cur_prim, IUP_Y)
		end
		ctgc.dlg_cur_prim = IupGetHandle("dlgLB");
		IupSetAttribute(ctgc.dlg_cur_prim, IUP_TITLE, "Box Parameters");
	end
	#sprintf(ctgc.status_line, "LEFT click and drag.");
	#set_status();
	if (ctgc.visible != 0 || IupGetAttribute(self, "ISMENU") != C_NULL)
		IupShowXY(ctgc.dlg_cur_prim, ctgc.dlg_x, ctgc.dlg_y)
	end
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------
function fArc(self::Ptr{Ihandle})
	if (ctgc.cur_prim != ARC)
		IupSetAttribute(ctgc.bt_cur_prim, IUP_IMAGE, "imgArc");
		if (ctgc.cur_prim == POLY)
			fButtonCB(C_NULL, IUP_BUTTON3, 0, 0, 0, 0);
		end
		ctgc.cur_prim = ARC
		ctgc.following = 0
		ctgc.visible = iscurvisible();
		IupHide(ctgc.dlg_cur_prim);
		if (ctgc.visible != 0)
			ctgc.dlg_x = IupGetInt(ctgc.dlg_cur_prim, IUP_X);
			ctgc.dlg_y = IupGetInt(ctgc.dlg_cur_prim, IUP_Y);
		end
		ctgc.dlg_cur_prim = IupGetHandle("dlgAS");
		IupSetAttribute(ctgc.dlg_cur_prim, IUP_TITLE, "Arc Parameters");
	end
	#sprintf(ctgc.status_line, "LEFT click at center and drag.");
	#set_status();
	if (ctgc.visible != 0 || IupGetAttribute(self, "ISMENU") != C_NULL)
		IupShowXY(ctgc.dlg_cur_prim, ctgc.dlg_x, ctgc.dlg_y)
	end
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------
function fSector(self::Ptr{Ihandle})

	if (ctgc.cur_prim != SECTOR)
		IupSetAttribute(ctgc.bt_cur_prim, IUP_IMAGE, "imgSector");
		if (ctgc.cur_prim == POLY)
			fButtonCB(C_NULL, IUP_BUTTON3, 0, 0, 0, 0);
		end
		ctgc.cur_prim = SECTOR
		ctgc.following = 0
		ctgc.visible = iscurvisible()
		IupHide(ctgc.dlg_cur_prim);
		if (ctgc.visible != 0)
			ctgc.dlg_x = IupGetInt(ctgc.dlg_cur_prim, IUP_X)
			ctgc.dlg_y = IupGetInt(ctgc.dlg_cur_prim, IUP_Y)
		end
		ctgc.dlg_cur_prim = IupGetHandle("dlgAS");
		IupSetAttribute(ctgc.dlg_cur_prim, IUP_TITLE, "Sector Parameters");
	end
	#sprintf(ctgc.status_line, "LEFT click at center and drag.");
	#set_status();
	if (ctgc.visible != 0 || IupGetAttribute(self, "ISMENU") != C_NULL)
		IupShowXY(ctgc.dlg_cur_prim, ctgc.dlg_x, ctgc.dlg_y)
	end
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------
function fText(self::Ptr{Ihandle})

	if (ctgc.cur_prim != TEXT)
		IupSetAttribute(ctgc.bt_cur_prim, IUP_IMAGE, "imgText");
		if (ctgc.cur_prim == POLY)
			fButtonCB(C_NULL, IUP_BUTTON3, 0, 0, 0, 0);
		end
		ctgc.cur_prim = TEXT;
		ctgc.following = false;
		ctgc.visible = iscurvisible();
		IupHide(ctgc.dlg_cur_prim);
		if (ctgc.visible != 0)
			ctgc.dlg_x = IupGetInt(ctgc.dlg_cur_prim, IUP_X);
			ctgc.dlg_y = IupGetInt(ctgc.dlg_cur_prim, IUP_Y);
		end
		ctgc.dlg_cur_prim = IupGetHandle("dlgText");
	end
	#sprintf(ctgc.status_line, "LEFT click.");
	#set_status();
	if (ctgc.visible != 0 || IupGetAttribute(self, "ISMENU") != C_NULL)
		IupShowXY(ctgc.dlg_cur_prim, ctgc.dlg_x, ctgc.dlg_y)
	end
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------
function fMark(self::Ptr{Ihandle})

	if (ctgc.cur_prim != MARK)
		IupSetAttribute(ctgc.bt_cur_prim, IUP_IMAGE, "imgMark")
		if (ctgc.cur_prim == POLY)
			fButtonCB(C_NULL, IUP_BUTTON3, 0, 0, 0, 0)
		end
		ctgc.cur_prim = MARK
		ctgc.following = false
		ctgc.visible = iscurvisible()
		IupHide(ctgc.dlg_cur_prim)
		if (ctgc.visible != 0)
			ctgc.dlg_x = IupGetInt(ctgc.dlg_cur_prim, IUP_X)
			ctgc.dlg_y = IupGetInt(ctgc.dlg_cur_prim, IUP_Y)
		end
		ctgc.dlg_cur_prim = IupGetHandle("dlgMark")
	end
	#sprintf(ctgc.status_line, "LEFT click.");
	#set_status();
	if (ctgc.visible != 0 || IupGetAttribute(self, "ISMENU") != C_NULL)
		IupShowXY(ctgc.dlg_cur_prim, ctgc.dlg_x, ctgc.dlg_y)
	end
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------
# Desenha a primitiva entrada na caixa de dialogo corrente.
#-------------------------------------------------------------------------
function fDraw()
	# atualiza os dados entrados na caixa de dialogo no contexto da primitiva corrente
	if (ctgc.cur_prim == LINE)
		line_pos.x1 = IupGetInt(IupGetHandle("txtLBX1"), IUP_VALUE)
		line_pos.x2 = IupGetInt(IupGetHandle("txtLBX2"), IUP_VALUE)
		line_pos.y1 = IupGetInt(IupGetHandle("txtLBY1"), IUP_VALUE)
		line_pos.y2 = IupGetInt(IupGetHandle("txtLBY2"), IUP_VALUE)
	elseif (ctgc.cur_prim == RECT || ctgc.cur_prim == BOX)
		box_pos.xmin = IupGetInt(IupGetHandle("txtLBX1"), IUP_VALUE)
		box_pos.xmax = IupGetInt(IupGetHandle("txtLBX2"), IUP_VALUE)
		box_pos.ymin = IupGetInt(IupGetHandle("txtLBY1"), IUP_VALUE)
		box_pos.ymax = IupGetInt(IupGetHandle("txtLBY2"), IUP_VALUE)
	elseif (ctgc.cur_prim == ARC || ctgc.cur_prim == SECTOR || ctgc.cur_prim == CHORD)
		arc_pos.xc = IupGetInt(IupGetHandle("txtASXC"), IUP_VALUE)
		arc_pos.yc = IupGetInt(IupGetHandle("txtASYC"), IUP_VALUE)
		arc_pos.w = IupGetInt(IupGetHandle("txtASW"), IUP_VALUE)
		arc_pos.h = IupGetInt(IupGetHandle("txtASH"), IUP_VALUE)
	elseif (ctgc.cur_prim == PIXEL)
		pixel_pos.x = IupGetInt(IupGetHandle("txtPixelX"), IUP_VALUE)
		pixel_pos.y = IupGetInt(IupGetHandle("txtPixelY"), IUP_VALUE)
	elseif (ctgc.cur_prim == MARK)
		mark_pos.x = IupGetInt(IupGetHandle("txtMarkX"), IUP_VALUE)
		mark_pos.y = IupGetInt(IupGetHandle("txtMarkY"), IUP_VALUE)
	end

	# efetivamente desenha a primitiva
	draw()

	return IUP_DEFAULT
end


#-------------------------------------------------------------------------*/
# Funcao associada ao botao do mouse.                                     */
#-------------------------------------------------------------------------*/
function fButtonCB(self::Ptr{Ihandle}, b::Char, e::Integer, x::Integer, y::Integer, r::Integer)

	cdActivate(ctgc.iup_canvas)
	cdWriteMode(IUP_CD.CD_NOT_XOR)
	cdForeground(convert(Clong, IUP_CD.CD_BLACK))
	cdLineStyle(IUP_CD.CD_CONTINUOUS)
	cdLineWidth(1)
	cdClip(IUP_CD.CD_CLIPOFF)

	yp = convert(Ptr{Cint}, [y]);
	cdUpdateYAxis(yp)
	y = int32(unsafe_load(yp))
	x = int32(x)				# <=========== NAO DEVIA SER Int64
	mouse_pos(x, y)

	if (b == IUP_BUTTON1)
		if (e != 0)
			if (ctgc.cur_prim == LINE)
				follow(x, y)
				line(NEWPOINT, x, y)
				line_pos.x1 = x
				line_pos.y1 = y
				ctgc.following = 1
			elseif ((ctgc.cur_prim == RECT) || (ctgc.cur_prim == BOX))
				follow(x, y)
				box(NEWPOINT, x, y)
				box_pos.x = x
				box_pos.y = y
				ctgc.following = 1
			elseif (ctgc.cur_prim == CLIP)
				box(NEWPOINT, x, y)
				follow(x, y)
				ctgc.following = 1
			elseif (ctgc.cur_prim == ARC || ctgc.cur_prim == SECTOR || ctgc.cur_prim == CHORD)
				follow(x, y);
				arc(CENTER, x, y);
				arc_pos.xc = x;
				arc_pos.yc = y;
				ctgc.following = true;
			elseif (ctgc.cur_prim == MARK || ctgc.cur_prim == PIXEL || ctgc.cur_prim == TEXT)
				follow(x, y)
				draw()
			end
		else
			if (ctgc.cur_prim == LINE)
				if (ctgc.following != 0)
					ctgc.following = 0
					line(CLOSE, x, y)
					cdClip(ctgc.clip_mode)
					draw()
				end
			elseif (ctgc.cur_prim == RECT || ctgc.cur_prim == BOX)
				if (ctgc.following != 0)
					ctgc.following = 0
					box(CLOSE, x, y)
					cdClip(ctgc.clip_mode)
					draw()
				end
			elseif (ctgc.cur_prim == CLIP)
				if (ctgc.following != 0)
					ctgc.following = 0
					box(CLOSE, x, y)
					fClipArea()
				end
			elseif (ctgc.cur_prim == ARC || ctgc.cur_prim == SECTOR || ctgc.cur_prim == CHORD)
				if (ctgc.following != 0)
					ctgc.following = false
					arc(CLOSE, x, y)
					cdClip(ctgc.clip_mode)
					draw()
					arc_pos.w = 0
					arc_pos.h = 0
				end
			elseif (ctgc.cur_prim == POLY)
				cdActivate(ctgc.iup_canvas);
				polygon(NEWPOINT, x, y);
				#newpolypoint(x, y);
				#sprintf(ctgc.status_line, "cdVertex( %d, %d)", x, y);
				#set_status();
				ctgc.following = 1;
 			end
 		end
	elseif (b == IUP_BUTTON3)
		if (e != 0)
			if (ctgc.cur_prim == IMAGE)
			elseif (ctgc.cur_prim == RGB)
			elseif (ctgc.cur_prim == CLIP)
			end
		else
			if (ctgc.cur_prim == POLY)
				cdActivate(ctgc.iup_canvas)
				ctgc.following = 0;
				polygon(CLOSE, x, y)
				#sprintf(ctgc.status_line, "cdEnd()");
				#set_status();
				fDraw()
			end
		end
	end

	return IUP_DEFAULT
end

# ------------------------------------------------------------------------
function iscurvisible()
	vis = IupGetAttribute(ctgc.dlg_cur_prim, IUP_VISIBLE)
	if (vis == C_NULL)
		return 0
	end
	return (bytestring(vis) == "YES") ? 1 : 0
end

# ------------------------------------------------------------------------
function fMotionCB(self::Ptr{Ihandle}, x::Int32, y::Int32, r::Ptr{Uint8})

	if (ctgc.iup_canvas == C_NULL)
		return IUP_DEFAULT
	end

	cdActivate(ctgc.iup_canvas)
	yp = convert(Ptr{Cint}, [y]);
	cdUpdateYAxis(yp)
	y = int32(unsafe_load(yp))
	mouse_pos(x, y)

	if (ctgc.following != 0)
		if (ctgc.cur_prim == LINE)
			line(MOVE, x, y)
			follow(x, y)
		elseif (ctgc.cur_prim == RECT || ctgc.cur_prim == BOX)
			box(MOVE, x, y)
			follow(x, y)
		elseif (ctgc.cur_prim == CLIP)
		elseif (ctgc.cur_prim == ARC || ctgc.cur_prim == SECTOR || ctgc.cur_prim == CHORD)
			arc(MOVE, x, y)
			follow(x, y)
		elseif (ctgc.cur_prim == IMAGE)
		elseif (ctgc.cur_prim == RGB)
		elseif (ctgc.cur_prim == POLY)
			polygon(MOVE, x, y)
		end
	end
	return IUP_DEFAULT
end

#-------------------------------------------------------------------------
# Atualiza a posiccao do mouse no dialogo principal.
#-------------------------------------------------------------------------
function mouse_pos(x::Int32, y::Int32) 
	# salva a posiccao do mouse no contexto
	ctgc.x = x
	ctgc.y = y

	# atualiza a posiccao do mouse no feedback para o usuario
	s = @sprintf("%4d,%4d", x, y)
	IupSetAttribute(IupGetHandle("lbMousePos"), "TITLE", s);
end

#-------------------------------------------------------------------------*/
# Segue as coordenadas do mouse atualizando o TXT apropriado.             */
#-------------------------------------------------------------------------*/
function follow(x::Integer, y::Integer)
	fl_nx = @sprintf("%d", x)
	fl_ny = @sprintf("%d", y)

	if (ctgc.cur_prim == PIXEL)
		# atualiza os parametros do pixel */
		pixel_pos.x = x;
		pixel_pos.y = y;
		# atualiza a caixa de dialogo */
		fl_mx = @sprintf("%d", x);
		fl_my = @sprintf("%d", y);
		IupSetAttribute(IupGetHandle("txtPixelX"), IUP_VALUE, fl_mx);
		IupSetAttribute(IupGetHandle("txtPixelY"), IUP_VALUE, fl_my);
	elseif (ctgc.cur_prim == MARK)
		# atualiza os parametros da mark */
		mark_pos.x = x;
		mark_pos.y = y;
		# atualiza a caixa de dialogo */
		fl_mx = @sprintf("%d", x)
		fl_my = @sprintf("%d", y)
		IupSetAttribute(IupGetHandle("txtMarkX"), IUP_VALUE, fl_mx)
		IupSetAttribute(IupGetHandle("txtMarkY"), IUP_VALUE, fl_my)
	elseif (ctgc.cur_prim == RECT || ctgc.cur_prim == BOX)
		# atualiza os parametros da box
		if (ctgc.following != 0)
			if (x < box_pos.x)
				box_pos.xmin = x
				box_pos.xmax = box_pos.x
			else
				box_pos.xmax = x
				box_pos.xmin = box_pos.x
			end

			if (y < box_pos.y)
				box_pos.ymin = y
				box_pos.ymax = box_pos.y
			else
				box_pos.ymax = y
				box_pos.ymin = box_pos.y
			end
		else
			box_pos.xmax = box_pos.xmin = x
			box_pos.ymax = box_pos.ymin = y
		end
		# atualiza a caixa de dialogo
		fl_mx = @sprintf("%d", box_pos.xmin);
		fl_nx = @sprintf("%d", box_pos.xmax);
		fl_my = @sprintf("%d", box_pos.ymin);
		fl_ny = @sprintf("%d", box_pos.ymax);
		IupSetAttribute(IupGetHandle("txtLBX1"), IUP_VALUE, fl_mx);
		IupSetAttribute(IupGetHandle("txtLBX2"), IUP_VALUE, fl_nx);
		IupSetAttribute(IupGetHandle("txtLBY1"), IUP_VALUE, fl_my);
		IupSetAttribute(IupGetHandle("txtLBY2"), IUP_VALUE, fl_ny);
	elseif (ctgc.cur_prim == LINE)
		fl_mx = @sprintf("%d", x);
		fl_my = @sprintf("%d", y);
		line_pos.x2 = x;
		line_pos.y2 = y;
		if (ctgc.following != 0)
			IupSetAttribute(IupGetHandle("txtLBX2"), IUP_VALUE, fl_mx);
			IupSetAttribute(IupGetHandle("txtLBY2"), IUP_VALUE, fl_my);
		else
			line_pos.x1 = x;
			line_pos.y1 = y;
			IupSetAttribute(IupGetHandle("txtLBX1"), IUP_VALUE, fl_mx);
			IupSetAttribute(IupGetHandle("txtLBX2"), IUP_VALUE, fl_mx);
			IupSetAttribute(IupGetHandle("txtLBY1"), IUP_VALUE, fl_my);
			IupSetAttribute(IupGetHandle("txtLBY2"), IUP_VALUE, fl_my);
		end
	elseif (ctgc.cur_prim == ARC || ctgc.cur_prim == SECTOR || ctgc.cur_prim == CHORD)
		if (ctgc.following != 0)
			# atualiza os parametros do arc
			arc_pos.w = 2*abs(arc_pos.xc-x+1)
			arc_pos.h = 2*abs(arc_pos.yc-y+1)
			# atualiza a caixa de dialogo
			fl_mx = @sprintf("%d", arc_pos.w)
			fl_my = @sprintf("%d", arc_pos.h)
			IupSetAttribute(IupGetHandle("txtASW"), IUP_VALUE, fl_mx)
			IupSetAttribute(IupGetHandle("txtASH"), IUP_VALUE, fl_my)
		else
			arc_pos.xc = x;
			arc_pos.xc = y;
			fl_mx = @sprintf("%d", x)
			fl_my = @sprintf("%d", y)
			IupSetAttribute(IupGetHandle("txtASXC"), IUP_VALUE, fl_mx);
			IupSetAttribute(IupGetHandle("txtASYC"), IUP_VALUE, fl_my);
		end
	elseif (ctgc.cur_prim == TEXT)
		IupSetAttribute(IupGetHandle("txtTextX"), IUP_VALUE, fl_nx)
		IupSetAttribute(IupGetHandle("txtTextY"), IUP_VALUE, fl_ny)
    end
end

#-------------------------------------------------------------------------*/
# Desenha uma linha em rubber band.                                       */
#-------------------------------------------------------------------------*/
function line(what::Integer, x::Integer, y::Integer)
# I have to have those redeclared here otherwise it errors saying they are not declared ??????????????????
	global line_lastwhat
	global line_x1, line_x2, line_y1, line_y2

	if (what == NEWPOINT)
		line_x1 = x;                 # novo segmento comeca no... */
		line_x2 = x;                 # novo segmento comeca no... */
		line_y1 = y;                 # ...fim do primeiro */
		line_y2 = y;                 # ...fim do primeiro */
	elseif (what == MOVE)
		if (line_lastwhat == MOVE)
			cdLine(line_x1, line_y1, line_x2, line_y2);  # apaga o segmento velho */
		end
		cdLine(line_x1, line_y1, x, y);     # desenha o novo */
		line_x2 = x;                        # o novo se... */
		line_y2 = y;                        # ...torna velho */
	elseif (what == REPAINT)
		cdLine(line_x1, line_y1, line_x2, line_y2);        # recupera o segmento perdido */
		return                        # nao modifica lastwhat */
	elseif (what == CLOSE)
		cdLine(line_x1, line_y1, line_x2, line_y2);      # apaga o ultimo segmento */
	end
	line_lastwhat = what
end

#-------------------------------------------------------------------------*/
# Desenha o poligono em rubber band.                                      */
#-------------------------------------------------------------------------*/
function polygon(what::Integer, x::Integer, y::Integer)
# I have to have those redeclared here otherwise it errors saying they are not declared ??????????????????
global poly_lastwhat
global poly_x1, poly_x2, poly_y1, poly_y2
	if (what == NEWPOINT)
		if (poly_lastwhat != CLOSE)
			cdLine(poly_x1, poly_y1, poly_x2, poly_y2);      # ...apaga a anterior e... */
			cdLine(poly_x1, poly_y1, x, y);        # desenha a definitiva */
		end
		poly_x1 = x;                        # novo segmento comeca no... */
		poly_y1 = y;                        # fim do primeiro */
	elseif (what == MOVE)
		if (poly_lastwhat == MOVE)
			cdLine(poly_x1, poly_y1, poly_x2, poly_y2);      # apaga o segmento velho */
		end
		cdLine(poly_x1, poly_y1, x, y);     # desenha o novo
		poly_x2 = x;                        # o novo se...
		poly_y2 = y;                        # torna velho
	elseif (what == REPAINT)
		cdLine(poly_x1, poly_y1, poly_x2, poly_y2);        # recupera o segmento perdido */
		return;                             # nao modifica lastwhat
	elseif (what == CLOSE)
		if (poly_lastwhat != CLOSE)
			cdLine(poly_x1, poly_y1, poly_x2, poly_y2);        # apaga o ultimo segmento */
			# apaga o poligono temporario inteiro */
			for (i = 1:ctgc.num_points-1)
				cdLine(ctgc.points[i].x, ctgc.points[i].y, ctgc.points[i+1].x, ctgc.points[i+1].y);
			end
		end
	end
	poly_lastwhat = what
end

#-------------------------------------------------------------------------*/
# Desenha uma caixa em rubber band.                                       */
#-------------------------------------------------------------------------*/
function box(what::Integer, x::Integer, y::Integer)
	global box_x1, box_x2, box_y1, box_y2
	global box_lastwhat

	if (what == NEWPOINT)
		box_x1 = x;                 # novo segmento comeca no... */
		box_x2 = x;                 # novo segmento comeca no... */
		box_y1 = y;                 # ...fim do primeiro */
		box_y2 = y;                 # ...fim do primeiro */
	elseif (what == MOVE)
		if (box_lastwhat == MOVE)
			frame(box_x1, box_y1, box_x2, box_y2);       # apaga a caixa anterior */
		end
		frame(box_x1, box_y1, x, y); # desenha a nova
		box_x2 = x;                  # o novo se...
		box_y2 = y;                  # torna velho
	elseif (what == REPAINT)
		frame(box_x1, box_y1, box_x2, box_y2);         # restaura a caixa perdida
		return;                      # nao modifica lastwhat */
	elseif (what == CLOSE)
		#frame(box_x1, box_y1, box_x2, box_y2);         # apaga a caixa definitiva
	end
	box_lastwhat = what
end

#-------------------------------------------------------------------------
# Desenha uma caixa centrada, em rubber band.
#-------------------------------------------------------------------------
function arc(what::Integer, x::Integer, y::Integer)
	global arc_xc, arc_yc, arc_y1, arc_x1
	global arc_lastwhat

	if (what == CENTER)
		arc_x1 = x;                 # novo segmento comeca no... */
		arc_xc = x;                 # novo segmento comeca no... */
		arc_y1 = y;                 # ...fim do primeiro */
		arc_yc = y;                 # ...fim do primeiro */
	elseif (what == MOVE)
		if (arc_lastwhat == MOVE)
			cdArc(arc_xc, arc_yc, 2*abs(arc_xc-arc_x1+1), 2*abs(arc_yc-arc_y1+1), 0., 360.);
		end
		cdArc(arc_xc, arc_yc, 2*abs(arc_xc-x+1), 2*abs(arc_yc-y+1), 0., 360.);
		arc_x1 = x;                        # o novo se... */
		arc_y1 = y;                        # torna velho */
	elseif (what == REPAINT)
		cdArc(arc_xc, arc_yc, 2*abs(arc_xc-arc_x1+1), 2*abs(arc_yc-arc_y1+1), 0., 360.);
		return                        # nao modifica lastwhat
	elseif (what == CLOSE)
		cdArc(arc_xc, arc_yc, 2*abs(arc_xc-arc_x1+1), 2*abs(arc_yc-arc_y1+1), 0., 360.);
	end
  	arc_lastwhat = what
end

#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
# Desenha uma caixa vazia
#:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
function  frame(x1::Cint, y1::Cint, x2::Cint, y2::Cint)
	cdLine(x1, y1, x1, y2)
	cdLine(x2, y1, x2, y2)
	cdLine(x1, y1, x2, y1)
	cdLine(x1, y2, x2, y2)
end

#-------------------------------------------------------------------------*/
# Desenha a primitiva entrada na caixa de dialogo ativa.                  */
#-------------------------------------------------------------------------*/
function draw()

	IupSetAttribute(IupGetHandle("itEditUndo"), IUP_ACTIVE, IUP_YES);
	ctgc.line_width = IupGetInt(IupGetHandle("txtLineWidth"), IUP_VALUE);
	if (ctgc.line_width < 1) ctgc.line_width = 1;	end
	ctgc.font_size = IupGetInt(IupGetHandle("txtFontSize"), IUP_VALUE);

	# escolhe entre o canvas na tela e o off-screen */
	if (ctgc.buffering != 0)
		cdActivate(ctgc.iup_canvas);
		cdClip(CD_CLIPOFF);
		cdActivate(ctgc.buffer_canvas)
	else 
		cdActivate(ctgc.iup_canvas)
	end

	# atualiza os atributos */
	cdWriteMode(ctgc.write_mode);
	cdLineStyle(ctgc.line_style);
	cdLineCap(ctgc.line_cap);
	cdLineJoin(ctgc.line_join);
	cdLineWidth(ctgc.line_width);
	cdForeground(ctgc.foreground);
	cdBackground(ctgc.background);
	cdHatch(ctgc.hatch);
	cdFillMode(ctgc.fill_mode);
	cdInteriorStyle(ctgc.interior_style);
	cdBackOpacity(ctgc.back_opacity);

	cdClipArea(ctgc.clip_xmin, ctgc.clip_xmax, ctgc.clip_ymin, ctgc.clip_ymax)
	cdClip(ctgc.clip_mode);

	if (ctgc.cur_prim == LINE)
		# atualiza a linha de status */
		#sprintf(ctgc.status_line, "cdLine( %d, %d, %d, %d)", line_pos.x1, 
		#	line_pos.y1, line_pos.x2, line_pos.y2);
		#set_status();
		# desenha a line na tela */
		cdLine(line_pos.x1, line_pos.y1, line_pos.x2, line_pos.y2);
		# arquiva a line */
		#newline(line_pos.x1, line_pos.y1, line_pos.x2, line_pos.y2); 
	elseif (ctgc.cur_prim == RECT)
		# atualiza a linha de status */
		#sprintf(ctgc.status_line,"cdRect( %d, %d, %d, %d)",box_pos.xmin, 
		#	box_pos.xmax, box_pos.ymin, box_pos.ymax);
		#set_status();
		# desenha a box na tela */
		cdRect(box_pos.xmin, box_pos.xmax, box_pos.ymin, box_pos.ymax);
		# armazena a box */
		#newrect(box_pos.xmin, box_pos.xmax, box_pos.ymin, box_pos.ymax); 
	elseif (ctgc.cur_prim == BOX)
		#sprintf(ctgc.status_line,"cdBox( %d, %d, %d, %d)",box_pos.xmin, 
		#	box_pos.xmax, box_pos.ymin, box_pos.ymax);
		#set_status();
		# desenha a box na tela */
		cdBox(box_pos.xmin, box_pos.xmax, box_pos.ymin, box_pos.ymax);
		# armazena a box */
		#newbox(box_pos.xmin, box_pos.xmax, box_pos.ymin, box_pos.ymax); 
	elseif (ctgc.cur_prim == ARC)
		arc_pos.angle1 = IupGetFloat(IupGetHandle("txtASAngle1"),IUP_VALUE);
		arc_pos.angle2 = IupGetFloat(IupGetHandle("txtASAngle2"),IUP_VALUE);
		# atualiza a linha de status */
		#sprintf(ctgc.status_line,"cdArc( %d, %d, %d, %d, %.5G, %.5G)", arc_pos.xc, 
		#	arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
		#set_status();
		# desenha o arc na tela */
		cdArc(arc_pos.xc, arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
		# armazena o arc */
		#newarc(arc_pos.xc, arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
	elseif (ctgc.cur_prim == SECTOR)
		arc_pos.angle1 = IupGetFloat(IupGetHandle("txtASAngle1"),IUP_VALUE);
		arc_pos.angle2 = IupGetFloat(IupGetHandle("txtASAngle2"),IUP_VALUE);
		# atualiza a linha de status */
		#sprintf(ctgc.status_line,"cdSector( %d, %d, %d, %d, %.5G, %.5G)", arc_pos.xc, 
		#	arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
		#set_status();
		cdSector(arc_pos.xc, arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
		#newsector(arc_pos.xc, arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
	elseif (ctgc.cur_prim == CHORD)
		arc_pos.angle1 = IupGetFloat(IupGetHandle("txtASAngle1"),IUP_VALUE);
		arc_pos.angle2 = IupGetFloat(IupGetHandle("txtASAngle2"),IUP_VALUE);
		#sprintf(ctgc.status_line,"cdChord( %d, %d, %d, %d, %.5G, %.5G)", arc_pos.xc, 
		#	arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
		#set_status();
		cdChord(arc_pos.xc, arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
		#newchord(arc_pos.xc, arc_pos.yc, arc_pos.w, arc_pos.h, arc_pos.angle1, arc_pos.angle2);
	elseif (ctgc.cur_prim == PIXEL)
	elseif (ctgc.cur_prim == MARK)
		mark_pos.size = IupGetInt(IupGetHandle("txtMarkSize"),IUP_VALUE);
		#sprintf(ctgc.status_line,"cdMark( %d, %d)", mark_pos.x, mark_pos.y);
		#set_status();
		# desenha a marca na tela */
		cdMarkType(ctgc.mark_type);
		cdMarkSize(mark_pos.size);
		cdMark(mark_pos.x, mark_pos.y);
		#newmark(mark_pos.x, mark_pos.y, mark_pos.size);
	elseif (ctgc.cur_prim == TEXT)
		if (IupGetAttribute(IupGetHandle("txtTextS"),IUP_VALUE) != C_NULL)
			a=IupGetInt(IupGetHandle("txtTextX"),IUP_VALUE);
			b=IupGetInt(IupGetHandle("txtTextY"),IUP_VALUE);
			#sprintf(ctgc.status_line," cdText( %d, %d, ""%.3s""...)", a, b,
			#	IupGetAttribute(IupGetHandle("txtTextS"),IUP_VALUE));
			#set_status();
			ctgc.text_orientation = IupGetInt(IupGetHandle("txtTextOrientation"),IUP_VALUE);
			cdFont(ctgc.font_typeface,ctgc.font_style,ctgc.font_size);
			cdTextAlignment(ctgc.text_alignment);
			cdTextOrientation(ctgc.text_orientation);
			cdText(a,b,IupGetAttribute(IupGetHandle("txtTextS"),IUP_VALUE));
			#newtext(a,b,IupGetAttribute(IupGetHandle("txtTextS"),IUP_VALUE));
		end
	elseif (ctgc.cur_prim == POLY)
		if (ctgc.num_points > 1)
			cdBegin(ctgc.poly_mode);
			for (a = 1:ctgc.num_points)
				cdVertex(ctgc.points[a].x,ctgc.points[a].y);
			end
			cdEnd()
			if (ctgc.poly_mode != CD_CLIP)
				#newpoly()
			end
			ctgc.num_points = 0
		end
	end

	if (ctgc.buffering != 0) 
		cdFlush()
		cdActivate(ctgc.iup_canvas);
		cdClip(ctgc.clip_mode)
	end

end


end 	# module
