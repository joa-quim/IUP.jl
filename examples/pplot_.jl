module pplot_

export
	pplot

using IUP
using IUP_IM
using IUP_CD


type Handles
	figure1::Ptr{Ihandle}
	iup_canvas::Ptr{Ihandle}
	cd_canvas::Ptr{cdCanvas}	# cdCanvas is a composite type
end

global const MAXPLOT = 6
global plot = Array(Ptr{Ihandle}, MAXPLOT)

#=
global dial1::Ptr{Ihandle}, dial2::Ptr{Ihandle},          # dials for zooming */
        tgg1::Ptr{Ihandle}, tgg2::Ptr{Ihandle},            # auto scale on|off toggles */
        tgg3::Ptr{Ihandle}, tgg4::Ptr{Ihandle},            # grid show|hide toggles */
        tgg5::Ptr{Ihandle},                   		# legend show|hide toggle */
        tabs::Ptr{Ihandle}
=# 
global dial1, dial2
global tgg1, tgg2
global tgg3, tgg4
global tgg5
global tabs

include("../src/handlegraphics.jl")

# ----------------------------------------------------------------------------------
function pplot()

global dial1, dial2
global tgg1, tgg2
global tgg3, tgg4
global tgg5
global tabs

	IupOpen()	#Initializes IUP

	vboxr = Array(Ptr{Ihandle}, MAXPLOT+1) 	# tabs containing the plots

	IupControlsOpen();  # init the addicional controls library (we use IupTabs)
	IupPlotOpen();     # init IupPlot library

	#  cdInitGdiPlus();

	# create plots
	for (ii = 1:MAXPLOT)
		plot[ii] = IupPlot()
	end

	# left panel: plot control
	# Y zooming
	dial1 = IupDial("VERTICAL");
	lbl1 = IupLabel("+");
	lbl2 = IupLabel("-");
	boxinfo = IupVbox(lbl1, IupFill(), lbl2, C_NULL);
	boxdial1 = IupHbox(boxinfo, dial1, C_NULL);

	IupSetAttribute(boxdial1, "ALIGNMENT", "ACENTER");
	IupSetAttribute(boxinfo, "ALIGNMENT", "ACENTER");
	IupSetAttribute(boxinfo, "SIZE", "20x52");
	IupSetAttribute(boxinfo, "GAP", "2");
	IupSetAttribute(boxinfo, "MARGIN", "4");
	IupSetAttribute(boxinfo, "EXPAND", "YES");
	IupSetAttribute(lbl1, "EXPAND", "NO");
	IupSetAttribute(lbl2, "EXPAND", "NO");

	IupSetAttribute(dial1, "ACTIVE", "NO");
	IupSetAttribute(dial1, "SIZE", "20x52");
	IupSetCallback(dial1, "BUTTON_PRESS_CB", cfunction(dial1_btndown_cb, Int, (Ptr{Ihandle},)))
	IupSetCallback(dial1, "MOUSEMOVE_CB", cfunction(dial1_btnup_cb, Int, (Ptr{Ihandle}, Cdouble)) )
	IupSetCallback(dial1, "BUTTON_RELEASE_CB", cfunction(dial1_btnup_cb, Int, (Ptr{Ihandle}, Cdouble)) )

	tgg1 = IupToggle("Y Autoscale");
	IupSetCallback(tgg1, "ACTION", cfunction(tgg1_cb, Int, (Ptr{Ihandle}, Cint)) )
	IupSetAttribute(tgg1, "VALUE", "ON");

	f1 = IupFrame( IupVbox(boxdial1, tgg1) );
	IupSetAttribute(f1, "TITLE", "Y Zoom");

	# X zooming
	dial2 = IupDial("HORIZONTAL");
	lbl1 = IupLabel("-");
	lbl2 = IupLabel("+");
	boxinfo = IupHbox(lbl1, IupFill(), lbl2, C_NULL);
	boxdial2 = IupVbox(dial2, boxinfo, C_NULL);

	IupSetAttribute(boxdial2, "ALIGNMENT", "ACENTER");
	IupSetAttribute(boxinfo, "ALIGNMENT", "ACENTER");
	IupSetAttribute(boxinfo, "SIZE", "64x16");
	IupSetAttribute(boxinfo, "GAP", "2");
	IupSetAttribute(boxinfo, "MARGIN", "4");
	IupSetAttribute(boxinfo, "EXPAND", "HORIZONTAL");

	IupSetAttribute(lbl1, "EXPAND", "NO");
	IupSetAttribute(lbl2, "EXPAND", "NO");

	IupSetAttribute(dial2, "ACTIVE", "NO");
	IupSetAttribute(dial2, "SIZE", "64x16");
	IupSetCallback(dial2, "BUTTON_PRESS_CB", cfunction(dial2_btndown_cb, Int, (Ptr{Ihandle},)))
	IupSetCallback(dial2, "MOUSEMOVE_CB", cfunction(dial2_btnup_cb, Int, (Ptr{Ihandle}, Cdouble)) )
	IupSetCallback(dial2, "BUTTON_RELEASE_CB", cfunction(dial2_btnup_cb, Int, (Ptr{Ihandle}, Cdouble)) )

	tgg2 = IupToggle("X Autoscale");
	IupSetCallback(tgg2, "ACTION", cfunction(tgg2_cb, Int, (Ptr{Ihandle}, Cint)) )

	f2 = IupFrame( IupVbox(boxdial2, tgg2) )
	IupSetAttribute(f2, "TITLE", "X Zoom")

	lbl1 = IupLabel("")
	IupSetAttribute(lbl1, "SEPARATOR", "HORIZONTAL")

	tgg3 = IupToggle("Vertical Grid")
	IupSetCallback(tgg3, "ACTION", cfunction(tgg3_cb, Int, (Ptr{Ihandle}, Cint)) )
	tgg4 = IupToggle("Horizontal Grid");
	IupSetCallback(tgg4, "ACTION", cfunction(tgg4_cb, Int, (Ptr{Ihandle}, Cint)) )

	lbl2 = IupLabel("")
	IupSetAttribute(lbl2, "SEPARATOR", "HORIZONTAL");

	tgg5 = IupToggle("Legend");
	IupSetCallback(tgg5, "ACTION", cfunction(tgg5_cb, Int, (Ptr{Ihandle}, Cint)) )

	lbl3 = IupLabel("");
	IupSetAttribute(lbl3, "SEPARATOR", "HORIZONTAL");

	bt1 = IupButton("Export PDF");
	IupSetCallback(bt1, "ACTION", cfunction(bt1_cb, Int, (Ptr{Ihandle}, )) )

	vboxl = IupVbox(f1, f2, lbl1, tgg3, tgg4, lbl2, tgg5, lbl3, bt1, C_NULL);
	IupSetAttribute(vboxl, "GAP", "4");
	IupSetAttribute(vboxl, "EXPAND", "NO");

	# right panel: tabs with plots
	for (ii = 1:MAXPLOT)
		vboxr[ii] = IupVbox(plot[ii]); # each plot a tab
		s = @sprintf("Plot %d", ii)
		IupSetAttribute(vboxr[ii], "TABTITLE", s); # name each tab
	end
	vboxr[MAXPLOT+1] = C_NULL 	# mark end of vector

	tabs = IupTabsv(pointer(vboxr)) # create tabs
	IupSetCallback(tabs, "TABCHANGE_CB", cfunction(tabs_tabchange_cb, Int, (Ptr{Ihandle}, Ptr{Ihandle})) )

	# dialog
	hbox = IupHbox(vboxl, tabs);
	IupSetAttribute(hbox, "MARGIN", "4x4");
	IupSetAttribute(hbox, "GAP", "10");

	dlg = IupDialog(hbox);
	IupSetAttributes(dlg, "SIZE=500x240" );
	IupSetAttribute(dlg, "TITLE", "IupPlot Example");

	InitPlots(); # It must be able to be done independent of dialog Mapping

	tabs_tabchange_cb(tabs, vboxr[1]);

	IupShowXY(dlg, IUP_CENTER, IUP_CENTER);
	IupSetAttribute(dlg, "SIZE", C_NULL);

	IupMainLoop()
	IupClose()

	return 0

end

# --------------------------------------------------------------------------------
function delete_cb(ih::Ptr{Ihandle}, index::Cint, sample_index::Cint, x::Cdouble, y::Cdouble)
	s = @sprintf("DELETE_CB(%d, %d, %f, %f)\n", index, sample_index, x, y);
	println(s)
	return IUP_DEFAULT;
end

# --------------------------------------------------------------------------------
function select_cb(ih::Ptr{Ihandle}, index::Cint, sample_index::Cint, x::Cdouble, y::Cdouble, select::Cint)
	s = @sprintf("SELECT_CB(%d, %d, %f, %f, %d)\n", index, sample_index, x, y, select)
	println(s)
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function draw_cb(ih::Ptr{Ihandle}, index::Cint, sample_index::Cint, x::Cdouble, y::Cdouble, select::Cint)
	s = @sprintf("DRAWSAMPLE_CB(%d, %d, %f, %f, %d)\n", index, sample_index, x, y, select)
	println(s)
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function edit_cb(ih::Ptr{Ihandle}, index::Cint, sample_index::Cint, x::Cdouble, y::Cdouble, new_x::Ptr{Float32},  new_y::Ptr{Float32})
	s = @sprintf("EDIT_CB(%d, %d, %f, %f, %f, %f)\n", index, sample_index, x, y, unsafe_load(new_x), unsafe_load(new_y))
	println(s)
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function postdraw_cb(ih::Ptr{Ihandle}, cnv::Ptr{cdCanvas})
	x = pointer([0.0])
	y = pointer([0.0])

	IupPlotTransform(ih, 0.003, 0.02, x, y);
	x = int32(unsafe_load(x))
	y = int32(unsafe_load(y))

	CD_BOLD = 1 		# Very strange shit is happening here. If I use those below, it blow Julia right away.
	CD_SOUTH = 1
	cdCanvasFont(cnv, C_NULL, CD_BOLD, 10)
	cdCanvasTextAlignment(cnv, CD_SOUTH)
	cdCanvasText(cnv, x, y, pointer("My Inline Legend"))
	#println("POSTDRAW_CB()\n")

	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------
function predraw_cb(ih::Ptr{Ihandle}, cnv::Ptr{cdCanvas})
	#println("PREDRAW_CB()\n");
	return IUP_DEFAULT;
end

# ---------------------------------------------------------------------------------------
function InitPlots()

	# PLOT 0 - MakeExamplePlot1
	IupSetAttribute(plot[1], "TITLE", "AutoScale");
	IupSetAttribute(plot[1], "MARGINTOP", "40")
	IupSetAttribute(plot[1], "MARGINLEFT", "40")
	IupSetAttribute(plot[1], "MARGINBOTTOM", "50")
	IupSetAttribute(plot[1], "TITLEFONTSIZE", "16")
	IupSetAttribute(plot[1], "AXS_XLABEL", "gnu (Foo)")
	IupSetAttribute(plot[1], "AXS_YLABEL", "Space (m^3)")
	IupSetAttribute(plot[1], "AXS_YFONTSIZE", "7");
	IupSetAttribute(plot[1], "AXS_YTICKFONTSIZE", "7");
	IupSetAttribute(plot[1], "LEGENDSHOW", "YES");
	IupSetAttribute(plot[1], "AXS_XFONTSIZE", "10");
	IupSetAttribute(plot[1], "AXS_YFONTSIZE", "10");
	IupSetAttribute(plot[1], "AXS_XLABELCENTERED", "NO");
	IupSetAttribute(plot[1], "AXS_YLABELCENTERED", "NO");

	#  IupSetAttribute(plot[1], "USE_IMAGERGB", "YES");
	#  IupSetAttribute(plot[1], "USE_GDI+", "YES");

	theFac = 1.0 / (100*100*100)
	IupPlotBegin(plot[1], 0);
	for (theI = -100:100)
		x = float64(theI+50);
		y = theFac*theI*theI*theI;
		IupPlotAdd(plot[1], x, y)
	end
	IupPlotEnd(plot[1]);
	IupSetAttribute(plot[1], "DS_LINEWIDTH", "3");
	IupSetAttribute(plot[1], "DS_LEGEND", "Line");

	theFac = 2.0/100;
	IupPlotBegin(plot[1], 0);
	for (theI = -100:100)
		x = float64(theI)
		y = -theFac*theI;
		IupPlotAdd(plot[1], x, y);
	end
	IupPlotEnd(plot[1]);
	IupSetAttribute(plot[1], "DS_LEGEND", "Curve 1");

	IupPlotBegin(plot[1], 0);
	for (theI = -100:100)
		x = (0.01*theI*theI-30);
		y = 0.01*theI;
		IupPlotAdd(plot[1], x, y);
	end
	IupPlotEnd(plot[1]);
	IupSetAttribute(plot[1], "DS_LEGEND", "Curve 2");

	# PLOT 1 - MakeExamplePlot2
	IupSetAttribute(plot[2], "TITLE", "No Autoscale+No CrossOrigin");
	IupSetAttribute(plot[2], "TITLEFONTSIZE", "16");
	IupSetAttribute(plot[2], "MARGINTOP", "40");
	IupSetAttribute(plot[2], "MARGINLEFT", "55");
	IupSetAttribute(plot[2], "MARGINBOTTOM", "50");
	IupSetAttribute(plot[2], "BGCOLOR", "0 192 192");
	IupSetAttribute(plot[2], "AXS_XLABEL", "Tg (X)");
	IupSetAttribute(plot[2], "AXS_YLABEL", "Tg (Y)");
	IupSetAttribute(plot[2], "AXS_XAUTOMIN", "NO");
	IupSetAttribute(plot[2], "AXS_XAUTOMAX", "NO");
	IupSetAttribute(plot[2], "AXS_YAUTOMIN", "NO");
	IupSetAttribute(plot[2], "AXS_YAUTOMAX", "NO");
	IupSetAttribute(plot[2], "AXS_XMIN", "10");
	IupSetAttribute(plot[2], "AXS_XMAX", "60");
	IupSetAttribute(plot[2], "AXS_YMIN", "-0.5");
	IupSetAttribute(plot[2], "AXS_YMAX", "0.5");
	IupSetAttribute(plot[2], "AXS_XCROSSORIGIN", "NO");
	IupSetAttribute(plot[2], "AXS_YCROSSORIGIN", "NO");
	IupSetAttribute(plot[2], "AXS_XFONTSTYLE", "BOLD");
	IupSetAttribute(plot[2], "AXS_YFONTSTYLE", "BOLD");
	IupSetAttribute(plot[2], "AXS_XREVERSE", "YES");
	IupSetAttribute(plot[2], "GRIDCOLOR", "128 255 128");
	IupSetAttribute(plot[2], "GRIDLINESTYLE", "DOTTED");
	IupSetAttribute(plot[2], "GRID", "YES");
	IupSetAttribute(plot[2], "LEGENDSHOW", "YES");

	theFac = 1.0/(100*100*100);
	IupPlotBegin(plot[2], 0);
	for (theI = 0:100)
		x = float64(theI);
		y = theFac*theI*theI*theI;
		IupPlotAdd(plot[2], x, y);
	end
	IupPlotEnd(plot[2]);

	theFac = 2.0/100;
	IupPlotBegin(plot[2], 0);
	for (theI = 0:100)
		x = float64(theI);
		y = -theFac*theI;
		IupPlotAdd(plot[2], x, y);
	end
	IupPlotEnd(plot[2]);

	# PLOT 2 - MakeExamplePlot4
	IupSetAttribute(plot[3], "TITLE", "Log Scale");
	IupSetAttribute(plot[3], "TITLEFONTSIZE", "16");
	IupSetAttribute(plot[3], "MARGINTOP", "40");
	IupSetAttribute(plot[3], "MARGINLEFT", "70");
	IupSetAttribute(plot[3], "MARGINBOTTOM", "50");
	IupSetAttribute(plot[3], "GRID", "YES");
	IupSetAttribute(plot[3], "AXS_XSCALE", "LOG10");
	IupSetAttribute(plot[3], "AXS_YSCALE", "LOG2");
	IupSetAttribute(plot[3], "AXS_XLABEL", "Tg (X)");
	IupSetAttribute(plot[3], "AXS_YLABEL", "Tg (Y)");
	IupSetAttribute(plot[3], "AXS_XFONTSTYLE", "BOLD");
	IupSetAttribute(plot[3], "AXS_YFONTSTYLE", "BOLD");

	theFac = 100.0/(100*100*100);
	IupPlotBegin(plot[3], 0);
	for (theI = 0:100)
		x = (0.0001+theI*0.001);
		y = (0.01+theFac*theI*theI*theI);
		IupPlotAdd(plot[3], x, y);
	end
	IupPlotEnd(plot[3]);
	IupSetAttribute(plot[3], "DS_COLOR", "100 100 200");

	# PLOT 3 - MakeExamplePlot5
	IupSetAttribute(plot[4], "TITLE", "Bar Mode");
	IupSetAttribute(plot[4], "TITLEFONTSIZE", "16");
	IupSetAttribute(plot[4], "MARGINTOP", "40");
	IupSetAttribute(plot[4], "MARGINLEFT", "30");
	IupSetAttribute(plot[4], "MARGINBOTTOM", "30");
	kLables = ["jan","feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"]
	kData = [1,2,3,4,5,6,7,8,9,0,1,2]

	IupPlotBegin(plot[4], 1);
	for (theI = 1:12)
		IupPlotAddStr(plot[4], kLables[theI], float64(kData[theI]))
	end
	IupPlotEnd(plot[4]);
	IupSetAttribute(plot[4], "DS_COLOR", "100 100 200");
	IupSetAttribute(plot[4], "DS_MODE", "BAR");

	#PLOT 4 - MakeExamplePlot6
	IupSetAttribute(plot[5], "TITLE", "Marks Mode");
	IupSetAttribute(plot[5], "TITLEFONTSIZE", "16");
	IupSetAttribute(plot[5], "MARGINTOP", "40");
	IupSetAttribute(plot[5], "MARGINLEFT", "45");
	IupSetAttribute(plot[5], "MARGINBOTTOM", "40");
	IupSetAttribute(plot[5], "AXS_XAUTOMIN", "NO");
	IupSetAttribute(plot[5], "AXS_XAUTOMAX", "NO");
	IupSetAttribute(plot[5], "AXS_YAUTOMIN", "NO");
	IupSetAttribute(plot[5], "AXS_YAUTOMAX", "NO");
	IupSetAttribute(plot[5], "AXS_XMIN", "0");
	IupSetAttribute(plot[5], "AXS_XMAX", "0.011");
	IupSetAttribute(plot[5], "AXS_YMIN", "0");
	IupSetAttribute(plot[5], "AXS_YMAX", "0.22");
	IupSetAttribute(plot[5], "AXS_XCROSSORIGIN", "NO");
	IupSetAttribute(plot[5], "AXS_YCROSSORIGIN", "NO");
	IupSetAttribute(plot[5], "AXS_XTICKFORMAT", "%1.3f");
	IupSetAttribute(plot[5], "LEGENDSHOW", "YES");
	IupSetAttribute(plot[5], "LEGENDPOS", "BOTTOMRIGHT");

	theFac = 100.0/(100*100*100);
	IupPlotBegin(plot[5], 0);
	for (theI = 0:10)
		x = (0.0001+theI*0.001);
		y = (0.01+theFac*theI*theI);
		IupPlotAdd(plot[5], x, y);
	end
	IupPlotEnd(plot[5]);
	IupSetAttribute(plot[5], "DS_MODE", "MARKLINE");
	IupSetAttribute(plot[5], "DS_SHOWVALUES", "YES");

	IupPlotBegin(plot[5], 0);
	for (theI = 0:10)
		x = (0.0001+theI*0.001);
		y = (0.2-theFac*theI*theI);
		IupPlotAdd(plot[5], x, y);
	end
	IupPlotEnd(plot[5]);
	IupSetAttribute(plot[5], "DS_MODE", "MARK");
	IupSetAttribute(plot[5], "DS_MARKSTYLE", "HOLLOW_CIRCLE");

	# PLOT 5 - MakeExamplePlot8
	IupSetAttribute(plot[6], "TITLE", "Data Selection and Editing");
	IupSetAttribute(plot[6], "TITLEFONTSIZE", "16");
	IupSetAttribute(plot[6], "MARGINTOP", "40");

	theFac = 100.0/(100*100*100);
	IupPlotBegin(plot[6], 0);
	for (theI = -10:10)
		x = (0.001*theI);
		y = (0.01+theFac*theI*theI*theI);
		IupPlotAdd(plot[6], x, y);
	end
	IupPlotEnd(plot[6]);
	IupSetAttribute(plot[6], "DS_COLOR", "100 100 200");
#	IupSetAttribute(plot[6], "DS_EDIT", "YES");
	IupSetCallback(plot[6], "DELETE_CB", cfunction(delete_cb, Int, (Ptr{Ihandle}, Cint, Cint, Cdouble, Cdouble)) )
	IupSetCallback(plot[6], "SELECT_CB", cfunction(select_cb, Int, (Ptr{Ihandle}, Cint, Cint, Cdouble, Cdouble, Cint)) )
	IupSetCallback(plot[6], "CLICKSAMPLE_CB", cfunction(select_cb, Int, (Ptr{Ihandle}, Cint, Cint, Cdouble, Cdouble, Cint)) )
	IupSetCallback(plot[6], "POSTDRAW_CB", cfunction(postdraw_cb, Int, (Ptr{Ihandle}, Ptr{cdCanvas})) )
	IupSetCallback(plot[6], "PREDRAW_CB", cfunction(predraw_cb, Int, (Ptr{Ihandle}, Ptr{cdCanvas})) )
#	IupSetCallback(plot[6], "EDIT_CB", cfunction(edit_cb, Int, (Ptr{Ihandle}, Cint, Cint, Cfloat, Cfloat, Ptr{Cfloat},  Ptr{Cfloat})) )
	IupSetCallback(plot[6], "DRAWSAMPLE_CB", cfunction(draw_cb, Int, (Ptr{Ihandle}, Cint, Cint, Cdouble, Cdouble, Cint)) )
end

# ------------------------------------------------------------------------------
# Some processing required by current tab change: the controls at left
# will be updated according to current plot props
function tabs_tabchange_cb(self::Ptr{Ihandle}, new_tab::Ptr{Ihandle})

global dial1, dial2
global tgg1, tgg2
global tgg3, tgg4
global tgg5
global tabs

  ss = bytestring(IupGetAttribute(new_tab, "TABTITLE"))
  #ss += 5; # Skip "Plot "
  #ii = atoi(ss);
  ii = int32(float64(ss[6])) - 48 		# Where the hell is atoi() ????

  # autoscaling
  # X axis
  if (IupGetInt(plot[ii], "AXS_XAUTOMIN") != 0 && IupGetInt(plot[ii], "AXS_XAUTOMAX") != 0)
    IupSetAttribute(tgg2, "VALUE", "ON");
    IupSetAttribute(dial2, "ACTIVE", "NO");
  else
    IupSetAttribute(tgg2, "VALUE", "OFF");
    IupSetAttribute(dial2, "ACTIVE", "YES");
  end
  # Y axis
  if ( IupGetInt(plot[ii], "AXS_YAUTOMIN") != 0 && IupGetInt(plot[ii], "AXS_YAUTOMAX") != 0)
    IupSetAttribute(tgg1, "VALUE", "ON");
    IupSetAttribute(dial1, "ACTIVE", "NO");
  else
    IupSetAttribute(tgg1, "VALUE", "OFF");
    IupSetAttribute(dial1, "ACTIVE", "YES");
  end

  # grid
  if (IupGetInt(plot[ii], "GRID") != 0)
    IupSetAttribute(tgg3, "VALUE", "ON");
    IupSetAttribute(tgg4, "VALUE", "ON");
  else
    # X axis
    if (IupGetAttribute(plot[ii], "GRID") == 'V')
      IupSetAttribute(tgg3, "VALUE", "ON");
    else
      IupSetAttribute(tgg3, "VALUE", "OFF")
    end
    # Y axis
    if (IupGetAttribute(plot[ii], "GRID") == 'H')
      IupSetAttribute(tgg4, "VALUE", "ON");
    else
      IupSetAttribute(tgg4, "VALUE", "OFF")
    end
  end

  # legend
  if (IupGetInt(plot[ii], "LEGENDSHOW") != 0)
    IupSetAttribute(tgg5, "VALUE", "ON");
  else
    IupSetAttribute(tgg5, "VALUE", "OFF")
  end

  return IUP_DEFAULT
end


# show/hide V grid
function tgg3_cb(self::Ptr{Ihandle}, v::Cint)
	ii = tabs_get_index()

	if (v != 0)
		if (IupGetInt(tgg4, "VALUE") != 0)
			IupSetAttribute(plot[ii], "GRID", "YES");
		else
			IupSetAttribute(plot[ii], "GRID", "VERTICAL")
		end
	else
		if (IupGetInt(tgg4, "VALUE") != 0)
			IupSetAttribute(plot[ii], "GRID", "NO");
		else
			IupSetAttribute(plot[ii], "GRID", "HORIZONTAL")
		end
	end

	IupSetAttribute(plot[ii], "REDRAW");

	return IUP_DEFAULT
end


# show/hide H grid
function tgg4_cb(self::Ptr{Ihandle}, v::Cint)
	ii = tabs_get_index()

	if (v != 0)
		if (IupGetInt(tgg3, "VALUE") != 0)
			IupSetAttribute(plot[ii], "GRID", "YES")
		else
			IupSetAttribute(plot[ii], "GRID", "HORIZONTAL")
		end
	else
		if (IupGetInt(tgg3, "VALUE") != 0)
			IupSetAttribute(plot[ii], "GRID", "NO")
		else
			IupSetAttribute(plot[ii], "GRID", "VERTICAL")
		end
	end

	IupSetAttribute(plot[ii], "REDRAW")

	return IUP_DEFAULT
end

# ---------------------------------------------------------------------------
function tabs_get_index()
	curr_tab = IupGetHandle(IupGetAttribute(tabs, "VALUE"));
	ss = bytestring(IupGetAttribute(curr_tab, "TABTITLE"))
	ii = int32(float64(ss[6])) - 48 		# Where the hell is atoi() ????
	return ii
end

# Some processing required by current tab change: the controls at left
# will be updated according to current plot props
function tabs_tabchange_cb(self::Ptr{Ihandle}, new_tab::Ptr{Ihandle})

	ss = bytestring(IupGetAttribute(new_tab, "TABTITLE"))
	ii = int32(float64(ss[6])) - 48 		# Where the hell is atoi() ????

	# autoscaling
	# X axis
  if (IupGetInt(plot[ii], "AXS_XAUTOMIN") != 0 && IupGetInt(plot[ii], "AXS_XAUTOMAX") != 0)
    IupSetAttribute(tgg2, "VALUE", "ON");
    IupSetAttribute(dial2, "ACTIVE", "NO");
  else
    IupSetAttribute(tgg2, "VALUE", "OFF");
    IupSetAttribute(dial2, "ACTIVE", "YES");
  end
  # Y axis
  if (IupGetInt(plot[ii], "AXS_YAUTOMIN") != 0 && IupGetInt(plot[ii], "AXS_YAUTOMAX") != 0)
    IupSetAttribute(tgg1, "VALUE", "ON");
    IupSetAttribute(dial1, "ACTIVE", "NO");
  else
    IupSetAttribute(tgg1, "VALUE", "OFF");
    IupSetAttribute(dial1, "ACTIVE", "YES");
  end

  # grid
  if (IupGetInt(plot[ii], "GRID") != 0)
    IupSetAttribute(tgg3, "VALUE", "ON");
    IupSetAttribute(tgg4, "VALUE", "ON");
  else
    # X axis
    s = bytestring(IupGetAttribute(plot[ii], "GRID"))
    if (s[1] == 'V')
      IupSetAttribute(tgg3, "VALUE", "ON");
    else
      IupSetAttribute(tgg3, "VALUE", "OFF")
    end
    # Y axis
    if (s[1] == 'H')
      IupSetAttribute(tgg4, "VALUE", "ON");
    else
      IupSetAttribute(tgg4, "VALUE", "OFF")
    end
  end

  # legend
  if (IupGetInt(plot[ii], "LEGENDSHOW") != 0)
    IupSetAttribute(tgg5, "VALUE", "ON");
  else
    IupSetAttribute(tgg5, "VALUE", "OFF")
end

  return IUP_DEFAULT
end


# show/hide V grid
# ----------------------------------------------------------------------------------
function tgg3_cb(self::Ptr{Ihandle}, v)
  ii = tabs_get_index();

  if (v != 0)
    if (IupGetInt(tgg4, "VALUE"))
      IupSetAttribute(plot[ii], "GRID", "YES");
    else
      IupSetAttribute(plot[ii], "GRID", "VERTICAL")
    end
  else
    if (!IupGetInt(tgg4, "VALUE"))
      IupSetAttribute(plot[ii], "GRID", "NO");
    else
      IupSetAttribute(plot[ii], "GRID", "HORIZONTAL")
    end
  end

  IupSetAttribute(plot[ii], "REDRAW");

  return IUP_DEFAULT
end


# show/hide H grid
# ----------------------------------------------------------------------------------
function tgg4_cb(self::Ptr{Ihandle}, v)
  ii = tabs_get_index();

  if (v != 0)
    if (IupGetInt(tgg3, "VALUE"))
      IupSetAttribute(plot[ii], "GRID", "YES");
    else
      IupSetAttribute(plot[ii], "GRID", "HORIZONTAL");
    end
  else
    if (!IupGetInt(tgg3, "VALUE"))
      IupSetAttribute(plot[ii], "GRID", "NO");
    else
      IupSetAttribute(plot[ii], "GRID", "VERTICAL")
    end
  end

  IupSetAttribute(plot[ii], "REDRAW");

  return IUP_DEFAULT
end

# show/hide legend
# ----------------------------------------------------------------------------------
function tgg5_cb(self::Ptr{Ihandle}, v::Cint)
  ii = tabs_get_index()

  if (v != 0)
    IupSetAttribute(plot[ii], "LEGENDSHOW", "YES");
  else
    IupSetAttribute(plot[ii], "LEGENDSHOW", "NO")
  end

  IupSetAttribute(plot[ii], "REDRAW");

  return IUP_DEFAULT;
end


# autoscale Y
# ----------------------------------------------------------------------------------
function tgg1_cb(self::Ptr{Ihandle}, v::Cint)
  ii = tabs_get_index();

  if (v != 0)
    IupSetAttribute(dial1, "ACTIVE", "NO");
    IupSetAttribute(plot[ii], "AXS_YAUTOMIN", "YES");
    IupSetAttribute(plot[ii], "AXS_YAUTOMAX", "YES");
  else
    IupSetAttribute(dial1, "ACTIVE", "YES");
    IupSetAttribute(plot[ii], "AXS_YAUTOMIN", "NO");
    IupSetAttribute(plot[ii], "AXS_YAUTOMAX", "NO");
  end

  IupSetAttribute(plot[ii], "REDRAW");

  return IUP_DEFAULT;
end


# autoscale X
# ----------------------------------------------------------------------------------
function tgg2_cb(self::Ptr{Ihandle}, v::Cint)
  ii = tabs_get_index();

  if (v != 0)
    IupSetAttribute(dial2, "ACTIVE", "NO");
    IupSetAttribute(plot[ii], "AXS_XAUTOMIN", "YES");
    IupSetAttribute(plot[ii], "AXS_XAUTOMAX", "YES");
  else
    IupSetAttribute(dial2, "ACTIVE", "YES");
    IupSetAttribute(plot[ii], "AXS_XAUTOMIN", "NO");
    IupSetAttribute(plot[ii], "AXS_XAUTOMAX", "NO");
  end

  IupSetAttribute(plot[ii], "REDRAW");

  return IUP_DEFAULT;
end


# Y zoom
# ----------------------------------------------------------------------------------
function dial1_btndown_cb(self::Ptr{Ihandle})
	ii = tabs_get_index()
	IupStoreAttribute(plot[ii], "OLD_YMIN", IupGetAttribute(plot[ii], "AXS_YMIN"));
	IupStoreAttribute(plot[ii], "OLD_YMAX", IupGetAttribute(plot[ii], "AXS_YMAX"));
	return IUP_DEFAULT;
end

# ----------------------------------------------------------------------------------
function dial1_btnup_cb(self::Ptr{Ihandle}, angle::Cdouble)
	ii = tabs_get_index();

	x1 = IupGetFloat(plot[ii], "OLD_YMIN");
	x2 = IupGetFloat(plot[ii], "OLD_YMAX");

	ss = IupGetAttribute(plot[ii], "AXS_YMODE");
	if ( ss != C_NULL && ss[3] == '2' )
		# LOG2:  one circle will zoom 2 times
		xm = 4.0 * fabs(angle) / 3.141592;
		if (angle>0.0)
			x2 /= xm; x1 *= xm;
		else
			x2 *= xm; x1 /= xm
		end
	end
	if ( ss != C_NULL && ss[3] =='1' )
		# LOG10:  one circle will zoom 10 times
		xm = 10.0 * fabs(angle) / 3.141592;
		if (angle > 0.0)
			x2 /= xm; x1 *= xm
		else
			x2 *= xm; x1 /= xm
		end
	else
		# LIN: one circle will zoom 2 times
		xm = (x1 + x2) / 2.0;
		x1 = xm - (xm - x1)*(1.0-angle*1.0/3.141592);
		x2 = xm + (x2 - xm)*(1.0-angle*1.0/3.141592);
	end

	if (x1 < x2)
		s = @sprintf("%f", x1)
		IupSetAttribute(plot[ii], "AXS_YMIN", s);
		s = @sprintf("%f", x2)
		IupSetAttribute(plot[ii], "AXS_YMAX", s);
	end

	IupSetAttribute(plot[ii], "REDRAW");

	return IUP_DEFAULT;
end


# X zoom
# ----------------------------------------------------------------------------------
function dial2_btndown_cb(self::Ptr{Ihandle})
	ii = tabs_get_index();
	IupStoreAttribute(plot[ii], "OLD_XMIN", IupGetAttribute(plot[ii], "AXS_XMIN"));
	IupStoreAttribute(plot[ii], "OLD_XMAX", IupGetAttribute(plot[ii], "AXS_XMAX"));
	return IUP_DEFAULT;
end

# ----------------------------------------------------------------------------------
function dial2_btnup_cb(self::Ptr{Ihandle}, angle::Cdouble)
	ii = tabs_get_index();

	x1 = IupGetFloat(plot[ii], "OLD_XMIN");
	x2 = IupGetFloat(plot[ii], "OLD_XMAX");
	xm = (x1 + x2) / 2.0;
	x1 = xm - (xm - x1)*(1.0-angle*1.0/3.141592);		# one circle will zoom 2 times
	x2 = xm + (x2 - xm)*(1.0-angle*1.0/3.141592);

	s = @sprintf("%f", x1)
	IupSetAttribute(plot[ii], "AXS_XMIN", s);
	s = @sprintf("%f", x2)
	IupSetAttribute(plot[ii], "AXS_XMAX", s);
	IupSetAttribute(plot[ii], "REDRAW");

	return IUP_DEFAULT
end

# ----------------------------------------------------------------------------------
function bt1_cb(self::Ptr{Ihandle})
	ii = tabs_get_index()
	#cnv = cdCreateCanvas(cdContextPDF(), "pplot.pdf -o");
	#IupPlotPaintTo(plot[ii], cnv);
	#cdKillCanvas(cnv);
	return IUP_DEFAULT;
end

end 	# end module
