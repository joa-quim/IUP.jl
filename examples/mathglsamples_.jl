# MathGL samples w/ IupMglPlot
# Based on: MathGL documentation (v. 1.10), Cap. 9

module mathglsamples_

using IUP

export
	mathglsamples

include("../src/libiup_h.jl")
include("../src/libim_h.jl")
include("../src/libim.jl")
include("../src/im_image_h.jl")
include("../src/im_image.jl")
include("../src/im_convert_h.jl")
include("../src/im_convert.jl")
include("../src/im_process_h.jl")
include("../src/im_process.jl")
include("../src/iupim.jl")
include("../src/iupim_h.jl")
include("../src/iupcontrols_h.jl")
include("../src/iupcontrols.jl")
include("../src/iup_mglplot.jl")
include("../src/iup_mglplot_h.jl")
include("../src/iupkey_h.jl")


global test_list = [
  {"Plot (Linear 1D)" "SamplePlotLinear1D"},
  {"Plot (Linear 3D)" "SamplePlotLinear3D"},
  {"Radar (Linear 1D)" "SampleRadarLinear1D"},
  {"Area (Linear 1D)" "SampleAreaLinear1D"},
  {"Bars (Linear 1D)" "SampleBarsLinear1D"},
  {"Bars (Linear 3D)" "SampleBarsLinear3D"},
  {"Barh (Linear 1D)" "SampleBarhLinear1D"},
  {"Step (Linear 1D)" "SampleStepLinear1D"},
  {"Stem (Linear 1D)" "SampleStemLinear1D"},
  {"Chart (Linear 1D)" "SampleChartLinear1D"},
  {"Pie (Linear 1D)" "SamplePieLinear1D"},
  {"Dots (Linear 3D)" "SampleDotsLinear3D"},
  {"Crust (Linear 3D)" "SampleCrustLinear3D"},
  {"----------" "Dummy"},
  {"Surface (Planar)" "SampleSurfacePlanar"},
  {"Surface Colors (Planar)" "SampleSurfaceColorsPlanar"},
  {"Surface Contour (Planar)" "SampleSurfaceContourPlanar"},
  {"Mesh (Planar)" "SampleMeshPlanar"},
  {"Fall (Planar)" "SampleFallPlanar"},
  {"Belt (Planar)" "SampleBeltPlanar"},
  {"Tile (Planar)" "SampleTilePlanar"},
  {"Boxes (Planar)" "SampleBoxesPlanar"},
  {"Density (Planar)" "SampleDensityPlanar"},
  {"Contour (Planar)" "SampleContourPlanar"},
  {"Contour Filled (Planar)" "SampleContourFilledPlanar"},
  {"Axial Contour (Planar)" "SampleAxialContourPlanar"},
  {"GradientLines (Planar)" "SampleGradientLinesPlanar"},
  {"----------" "Dummy"},
  {"Iso Surface (Volume)" "SampleIsoSurfaceVolume"},
  {"CloudCubes (Volume)" "SampleCloudCubesVolume"},
  {"Cloud (Volume)" "SampleCloudVolume"},
  {"Density (Volume)" "SampleDensityVolume"},
  {"Contour (Volume)" "SampleContourVolume"},
  {"ContourFilled (Volume)" "SampleContourFilledVolume"},
  {"ContourProject (Volume)" "SampleContourProjectVolume"},
  {"ContourFilledProject (Volume)" "SampleContourFilledProjectVolume"},
  {"DensityProject (Volume)" "SampleDensityProjectVolume"},
  {"----------" "Dummy"},
  {"Text Styles" "SampleText"},
  {"Legend" "SampleLegend"},
  {"Semi-log" "SampleSemiLog"},
  {"Log-log" "SampleLogLog"}]

# ----------------------------------------------------------------------------------
# Since there is no feval in Julia just simulate it here for the current need
# THIS IS A VERY DUMB THING TO DO AND WILL BE REPLACED WITH A CLEVER SOLUTION (WHEN I KNOW HOW)
function feval(func::String)
	if (func == "SamplePlotLinear1D")
		SamplePlotLinear1D()
	elseif (func == "SamplePlotLinear3D")
		SamplePlotLinear3D()
	elseif (func == "SampleRadarLinear1D")
		SampleRadarLinear1D()
	elseif (func == "SampleAreaLinear1D")
		SampleAreaLinear1D()
	elseif (func == "SampleBarsLinear1D")
		SampleBarsLinear1D()
	elseif (func == "SampleBarsLinear3D")
		SampleBarsLinear3D()
	elseif (func == "SampleBarhLinear1D")
		SampleBarhLinear1D()
	elseif (func == "SampleStepLinear1D")
		SampleStepLinear1D()
	elseif (func == "SampleStemLinear1D")
		SampleStemLinear1D()
	elseif (func == "SampleChartLinear1D")
		SampleChartLinear1D()
	elseif (func == "SamplePieLinear1D")
		SamplePieLinear1D()
	elseif (func == "SampleDotsLinear3D")
		SampleDotsLinear3D()
	elseif (func == "SampleCrustLinear3D")
		SampleCrustLinear3D()
	elseif (func == "SampleSurfacePlanar")
		SampleSurfacePlanar()
	elseif (func == "SampleSurfaceColorsPlanar")
		SampleSurfaceColorsPlanar()
	elseif (func == "SampleSurfaceContourPlanar")
		SampleSurfaceContourPlanar()
	elseif (func == "SampleMeshPlanar")
		SampleMeshPlanar()
	elseif (func == "SampleFallPlanar")
		SampleFallPlanar()
	elseif (func == "SampleBeltPlanar")
		SampleBeltPlanar()
	elseif (func == "SampleTilePlanar")
		SampleTilePlanar()
	elseif (func == "SampleBoxesPlanar")
		SampleBoxesPlanar()
	elseif (func == "SampleDensityPlanar")
		SampleDensityPlanar()
	elseif (func == "SampleContourPlanar")
		SampleContourPlanar()
	elseif (func == "SampleContourFilledPlanar")
		SampleContourFilledPlanar()
	elseif (func == "SampleAxialContourPlanar")
		SampleAxialContourPlanar()
	elseif (func == "SampleGradientLinesPlanar")
		SampleGradientLinesPlanar()
	elseif (func == "SampleIsoSurfaceVolume")
		SampleIsoSurfaceVolume()
	elseif (func == "SampleCloudCubesVolume")
		SampleCloudCubesVolume()
	elseif (func == "SampleCloudVolume")
		SampleCloudVolume()
	elseif (func == "SampleDensityVolume")
		SampleDensityVolume()
	elseif (func == "SampleContourVolume")
		SampleContourVolume()
	elseif (func == "SampleContourFilledVolume")
		SampleContourFilledVolume()
	elseif (func == "SampleContourProjectVolume")
		SampleContourProjectVolume()
	elseif (func == "SampleContourFilledProjectVolume")
		SampleContourFilledProjectVolume()
	elseif (func == "SampleDensityProjectVolume")
		SampleDensityProjectVolume()
	elseif (func == "SampleText")
		SampleText()
	elseif (func == "SampleLegend")
		SampleLegend()
	elseif (func == "SampleSemiLog")
		SampleSemiLog()
	elseif (func == "SampleLogLog")
		SampleLogLog()
	end
end


#------------------------example html/examples/C/mathglsamples.c --------------------------------
function mathglsamples()
	global plot, test_list

	count = size(test_list,1)
	#count = 3

	IupOpen()	#Initializes IUP

	IupControlsOpen()
	IupMglPlotOpen()       # init IupMGLPlot library

	#IupSetGlobal("MGLFONTS", "../etc/mglfonts")

	list = IupList()
	plot = IupMglPlot()
	panel = controlPanel()

	dlg = IupDialog(IupHbox(list, panel, IupVbox(IupFill(), plot, IupFill()) ));
	IupSetAttribute(dlg, "MARGIN", "10x10");
	IupSetAttribute(dlg, "GAP", "5");
	IupSetAttribute(dlg, "TITLE", "MathGL samples w/ IupMglPlot");
	IupSetCallback(dlg, "CLOSE_CB", cfunction(close_cb, Int, (Ptr{Ihandle},)))

	IupSetAttribute(plot, "RASTERSIZE", "700x500")         # Minimum initial size
	#  IupSetAttribute(plot, "RASTERSIZE", "350x250");
	#  IupSetAttribute(plot, "RASTERSIZE", "460x280");
	#  IupSetAttribute(plot, "EXPAND", "NO");

	IupSetAttribute(list, "EXPAND", "VERTICAL")
	IupSetAttribute(list, "VISIBLELINES", "15")            # Not all, because the dialog will be too big
	IupSetAttribute(list, "VISIBLECOLUMNS", "15")
	IupSetCallback(list, "ACTION", cfunction(action_cb, Int, (Ptr{Ihandle}, Ptr{Uint8}, Int, Int)))

	for (i = 1:count)
		str = @sprintf("%d", i)
		IupSetAttribute(list, str, test_list[i,1])
	end

	IupSetAttribute(list, "VALUE", "1")

	IupShowXY(dlg, 100, IUP_CENTER);

	IupSetAttribute(plot, "RASTERSIZE")         # Clear initial size

	ChangePlot(1)                               # Initialize the plot (run first example)
	IupMainLoop()                               # Initializes IUP main loop
	IupClose()                                  # And close it when ready
end

# --------------------------------------------------------------------------------------
function controlPanel()
	global minmaxY_dial, minmaxX_dial, autoscaleY_tgg, autoscaleX_tgg, grid_tgg, box_tgg,
		legend_tgg, transp_tgg, light_tgg, opengl_tgg, aa_tgg

	# left panel: plot control
	# Y zooming
	lbl1 = IupLabel("+")
	lbl2 = IupLabel("-")

	minmaxY_dial = IupDial("VERTICAL")
	IupSetAttribute(minmaxY_dial, "ACTIVE", "NO")
	IupSetAttribute(minmaxY_dial, "SIZE", "20x52")
	IupSetCallback(minmaxY_dial, "BUTTON_PRESS_CB", cfunction(minmaxY_dial_btndown_cb, Int, (Ptr{Ihandle},)))
	IupSetCallback(minmaxY_dial, "MOUSEMOVE_CB", cfunction(minmaxY_dial_btnup_cb, Int, (Ptr{Ihandle}, Float64)))
	IupSetCallback(minmaxY_dial, "BUTTON_RELEASE_CB", cfunction(minmaxY_dial_btnup_cb, Int, (Ptr{Ihandle}, Float64)))

	boxminmaxY_dial = IupVbox(lbl1, minmaxY_dial, lbl2)
	IupSetAttribute(boxminmaxY_dial, "ALIGNMENT", "ACENTER");
	IupSetAttribute(boxminmaxY_dial, "GAP", "2");
	IupSetAttribute(boxminmaxY_dial, "MARGIN", "2");

	autoscaleY_tgg = IupToggle("Y Autoscale")
	IupSetCallback(autoscaleY_tgg, "ACTION", cfunction(autoscaleY_tgg_cb, Int, (Ptr{Ihandle}, Int)))
	IupSetAttribute(autoscaleY_tgg, "VALUE", "ON");

	f1 = IupFrame(IupVbox(boxminmaxY_dial, autoscaleY_tgg) )
	IupSetAttribute(f1, "TITLE", "Y Zoom");
	IupSetAttribute(f1, "GAP", "0");
	IupSetAttribute(f1, "MARGIN", "5x5");

	# X zooming
	lbl1 = IupLabel("-");
	lbl2 = IupLabel("+");

	minmaxX_dial = IupDial("HORIZONTAL");
	IupSetAttribute(minmaxX_dial, "ACTIVE", "NO");
	IupSetAttribute(minmaxX_dial, "SIZE", "64x16");
	IupSetCallback(minmaxX_dial, "BUTTON_PRESS_CB", cfunction(minmaxX_dial_btndown_cb, Int, (Ptr{Ihandle},)))
	IupSetCallback(minmaxX_dial, "MOUSEMOVE_CB", cfunction(minmaxX_dial_btnup_cb, Int, (Ptr{Ihandle}, Float64)))
	IupSetCallback(minmaxX_dial, "BUTTON_RELEASE_CB", cfunction(minmaxX_dial_btnup_cb, Int, (Ptr{Ihandle}, Float64)))

	boxminmaxX_dial = IupHbox(lbl1, minmaxX_dial, lbl2);
	IupSetAttribute(boxminmaxX_dial, "ALIGNMENT", "ACENTER");
	IupSetAttribute(boxminmaxX_dial, "GAP", "2");
	IupSetAttribute(boxminmaxX_dial, "MARGIN", "2");

	autoscaleX_tgg = IupToggle("X Autoscale");
	IupSetCallback(autoscaleX_tgg, "ACTION", cfunction(autoscaleX_tgg_cb, Int, (Ptr{Ihandle}, Int)))

	f2 = IupFrame(IupVbox(boxminmaxX_dial, autoscaleX_tgg) )
	IupSetAttribute(f2, "TITLE", "X Zoom");
	IupSetAttribute(f2, "GAP", "0");
	IupSetAttribute(f2, "MARGIN", "5x5");

	grid_tgg = IupToggle("Grid");
	IupSetCallback(grid_tgg, "ACTION", cfunction(grid_tgg_cb, Int, (Ptr{Ihandle}, Int)))

	box_tgg = IupToggle("Box");
	IupSetCallback(box_tgg, "ACTION", cfunction(box_tgg_cb, Int, (Ptr{Ihandle}, Int)))

	legend_tgg = IupToggle("Legend");
	IupSetCallback(legend_tgg, "ACTION", cfunction(legend_tgg_cb, Int, (Ptr{Ihandle}, Int)))

	lbl3 = IupLabel("");
	IupSetAttribute(lbl3, "SEPARATOR", "HORIZONTAL");
	IupSetAttribute(lbl3, "EXPAND", "NO");
	IupSetAttribute(lbl3, "RASTERSIZE", "160x2");

	transp_tgg = IupToggle("Transparent");
	IupSetCallback(transp_tgg, "ACTION", cfunction(transp_tgg_cb, Int, (Ptr{Ihandle}, Int)))

	light_tgg = IupToggle("Light");
	IupSetCallback(light_tgg, "ACTION", cfunction(light_tgg_cb, Int, (Ptr{Ihandle}, Int)))

	lbl4 = IupLabel("");
	IupSetAttribute(lbl4, "SEPARATOR", "HORIZONTAL");
	IupSetAttribute(lbl4, "EXPAND", "NO");
	IupSetAttribute(lbl4, "RASTERSIZE", "160x2");

	aa_tgg = IupToggle("Antialias");
	IupSetCallback(aa_tgg, "ACTION", cfunction(aa_tgg_cb, Int, (Ptr{Ihandle}, Int)))

	opengl_tgg = IupToggle("OpenGL");
	IupSetCallback(opengl_tgg, "ACTION", cfunction(opengl_tgg_cb, Int, (Ptr{Ihandle}, Int)))

	bt1 = IupButton("Export SVG");
	IupSetCallback(bt1, "ACTION", cfunction(bt1_cb, Int, (Ptr{Ihandle},)))

	bt2 = IupButton("Export EPS");
	IupSetCallback(bt2, "ACTION", cfunction(bt2_cb, Int, (Ptr{Ihandle},)))

	bt3 = IupButton("Copy RGB");
	#IupSetCallback(bt3, "ACTION", cfunction(bt3_cb, Int, (Ptr{Ihandle}, Int)))

	bt4 = IupButton("Save RGB");
	#IupSetCallback(bt4, "ACTION", cfunction(bt4_cb, Int, (Ptr{Ihandle}, Int)))

	vbox1 = IupFrame(IupVbox(f1, 
	                       f2, 
	                       grid_tgg, 
	                       box_tgg, 
	                       legend_tgg, 
	                       lbl3, 
	                       transp_tgg, 
	                       light_tgg
	                       ))
	IupSetAttribute(vbox1, "GAP", "4");
	IupSetAttribute(vbox1, "MARGIN", "5x5");

	vbox2 = IupVbox(aa_tgg, opengl_tgg, lbl4,
	                IupVbox(bt1, bt2, bt3, bt4), 
	               )
	IupSetAttribute(vbox2, "GAP", "4");
	IupSetAttribute(vbox2, "MARGIN", "5x0");

	vbox3 = IupVbox(vbox1, vbox2);
	IupSetAttribute(vbox3, "GAP", "7");
	IupSetAttribute(vbox3, "MARGIN", "0x0");

	return vbox3
end

# --------------------------------------------------------------------------------------
function ChangePlot(item::Int)
	global plot, filenameSVG, filenameEPS, filenamePNG, test_list

	ResetClear()
	feval(test_list[item,2])
	UpdateFlags()
	filenameSVG = @sprintf("../%s.svg", test_list[item,1])
	filenameEPS = @sprintf("../%s.eps", test_list[item,1])
	filenamePNG = @sprintf("../%s.png", test_list[item,1])
	#filenameSVG = "lixo.svg"
	#filenameEPS = "lixo.eps"
	#filenamePNG = "lixo.png"

	# sprintf(filenamePNG, "../html/en/ctrl/images/iupmglplot_%s.png", IupGetAttribute(plot, "DS_MODE"));
	# iupStrLower(filenamePNG, filenamePNG);
	IupSetAttribute(plot, "REDRAW")

	errmsg = IupGetAttribute(plot, "ERRORMESSAGE")
	try
		errmsg = bytestring(errmsg)		# This will error if pointer is NULL
		IupMessage("Error", errmsg)		# Found f no way to test if the pointer is NULL
	end
end

# --------------------------------------------------------------------------------------
function ResetClear()
	global plot

	IupSetAttribute(plot, "RESET")
	IupSetAttribute(plot, "CLEAR")

	# Some defaults in MathGL are different in IupMglPlot
	IupSetAttribute(plot, "AXS_X", "NO")
	IupSetAttribute(plot, "AXS_Y", "NO")
	IupSetAttribute(plot, "AXS_Z", "NO")

	IupSetAttribute(plot, "FONT", "Helvetica, 8")
	#  IupSetAttribute(plot, "FONT", "Courier, 10");
	#  IupSetAttribute(plot, "FONT", "Heros, 10");
	#  IupSetAttribute(plot, "FONT", "Termes, 12");
	#  IupSetAttribute(plot, "FONT", "XXXX, 10");

	IupSetCallback(plot, "POSTDRAW_CB", C_NULL)
end

# --------------------------------------------------------------------------------------
function UpdateFlags()
	global plot, autoscaleY_tgg, autoscaleX_tgg, minmaxY_dial, minmaxX_dial, grid_tgg, legend_tgg
	global box_tgg, aa_tgg, transp_tgg, light_tgg, opengl_tgg

	# auto scaling Y axis
	if (IupGetInt(plot, "AXS_YAUTOMIN") != 0 && IupGetInt(plot, "AXS_YAUTOMAX") != 0)
		IupSetAttribute(autoscaleY_tgg, "VALUE", "ON")
		IupSetAttribute(minmaxY_dial, "ACTIVE", "NO")
	else
		IupSetAttribute(autoscaleY_tgg, "VALUE", "OFF")
		IupSetAttribute(minmaxY_dial, "ACTIVE", "YES")
	end

	# auto scaling X axis
	if (IupGetInt(plot, "AXS_XAUTOMIN") != 0 && IupGetInt(plot, "AXS_XAUTOMAX") != 0)
		IupSetAttribute(autoscaleX_tgg, "VALUE", "ON")
		IupSetAttribute(minmaxX_dial, "ACTIVE", "NO")
	else
		IupSetAttribute(autoscaleX_tgg, "VALUE", "OFF")
		IupSetAttribute(minmaxX_dial, "ACTIVE", "YES")
	end

	# grid
	value = IupGetAttribute(plot, "GRID")
	if (value != 0 && search(bytestring(value), "XYZ") != 0)
		IupSetAttribute(grid_tgg, "VALUE", "ON")
	else
		IupSetAttribute(grid_tgg, "VALUE", "OFF")
	end

	# legend */
	if (IupGetInt(plot, "LEGEND") != 0)
		IupSetAttribute(legend_tgg, "VALUE", "ON")
	else
		IupSetAttribute(legend_tgg, "VALUE", "OFF")
	end

	# box
	if (IupGetInt(plot, "BOX") != 0)
		IupSetAttribute(box_tgg, "VALUE", "ON")
	else
		IupSetAttribute(box_tgg, "VALUE", "OFF")
	end

	# antialias
	if (IupGetInt(plot, "ANTIALIAS") != 0)
		IupSetAttribute(aa_tgg, "VALUE", "ON");
	else
		IupSetAttribute(aa_tgg, "VALUE", "OFF")
	end

	# transparent
	if (IupGetInt(plot, "TRANSPARENT") != 0)
		IupSetAttribute(transp_tgg, "VALUE", "ON")
	else
		IupSetAttribute(transp_tgg, "VALUE", "OFF")
	end

	# light
	if (IupGetInt(plot, "LIGHT") != 0)
		IupSetAttribute(light_tgg, "VALUE", "ON")
	else
		IupSetAttribute(light_tgg, "VALUE", "OFF")
	end

	# opengl
	if (IupGetInt(plot, "OPENGL") != 0)
		IupSetAttribute(opengl_tgg, "VALUE", "ON")
	else
		IupSetAttribute(opengl_tgg, "VALUE", "OFF")
	end
end

# --------------------------------------------------------------------------------------
# auto scale Y
function autoscaleY_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot, minmaxY_dial

	if (v != 0)
		IupSetAttribute(minmaxY_dial, "ACTIVE", "NO")
		IupSetAttribute(plot, "AXS_YAUTOMIN", "YES")
		IupSetAttribute(plot, "AXS_YAUTOMAX", "YES")
	else
		IupSetAttribute(minmaxY_dial, "ACTIVE", "YES")
		IupSetAttribute(plot, "AXS_YAUTOMIN", "NO")
		IupSetAttribute(plot, "AXS_YAUTOMAX", "NO")
	end

	IupSetAttribute(plot, "REDRAW")
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# auto scale X
function autoscaleX_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot, minmaxX_dial

	if (v != 0)
		IupSetAttribute(minmaxX_dial, "ACTIVE", "NO")
		IupSetAttribute(plot, "AXS_XAUTOMIN", "YES")
		IupSetAttribute(plot, "AXS_XAUTOMAX", "YES")
	else
		IupSetAttribute(minmaxX_dial, "ACTIVE", "YES")
		IupSetAttribute(plot, "AXS_XAUTOMIN", "NO")
		IupSetAttribute(plot, "AXS_XAUTOMAX", "NO")
	end

	IupSetAttribute(plot, "REDRAW")

	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
function postdraw_cb(ih::Ptr{Ihandle})
	IupMglPlotDrawText(ih, "It can be \\wire{wire}, \\big{big} or #r{colored}", 0, 1.0, 0)
	IupMglPlotDrawText(ih, "One can change style in string: \\b{bold}, \\i{italic, \\b{both}}", 0, 0.6, 0)
	IupMglPlotDrawText(ih, "Easy to \\a{overline} or \\u{underline}", 0, 0.2, 0)
	IupMglPlotDrawText(ih, "Easy to change indexes ^{up} _{down} @{center}", 0, -0.2, 0)
	IupMglPlotDrawText(ih, "It parse TeX: \\int \\alpha \\sqrt{sin(\\pi x)^2 + \\gamma_{i_k}} dx", 0, -0.6, 0)
	#  IupMglPlotDrawText(ih, "It parse TeX: \\int \\alpha \\cdot \\sqrt3{sin(\\pi x)^2 + \\gamma_{i_k}} dx", 0, -0.6f, 0)
	IupMglPlotDrawText(ih, "And more TeX: \\sqrt{\\frac{\\alpha^{\\gamma^2}+ \\overset 1{\\big\\infty}}{\\sqrt{2+b}}}", 0, -1.0, 0)
	#  IupMglPlotDrawText(ih, "And more TeX: \\sqrt{\\frac{\\alpha^{\\gamma^2}+" "\\overset 1{\\big\\infty}}{\\sqrt3{2+b}}}", 0, -1.0f, 0)
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
function k_enter_cb(ih::Ptr{Ihandle})
	pos = IupGetInt(ih, "VALUE")
	if (pos > 0)
		ChangePlot(pos)
	end
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
function action_cb(ih::Ptr{Ihandle}, text::Ptr{Uint8}, item::Int, state::Int)
	if (state == 1)
		ChangePlot(item)
	end
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
function close_cb(ih::Ptr{Ihandle})
	return IUP_CLOSE
end

# --------------------------------------------------------------------------------------
# Y zoom
function minmaxY_dial_btndown_cb(self::Ptr{Ihandle})
	global plot

	IupStoreAttribute(plot, "OLD_YMIN", IupGetAttribute(plot, "AXS_YMIN"))
	IupStoreAttribute(plot, "OLD_YMAX", IupGetAttribute(plot, "AXS_YMAX"))
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
function minmaxY_dial_btnup_cb(self::Ptr{Ihandle}, angle::Float64)
	global plot

	x1 = IupGetFloat(plot, "OLD_YMIN")
	x2 = IupGetFloat(plot, "OLD_YMAX")

	ss = IupGetAttribute(plot, "AXS_YMODE")
	if (ss != C_NULL)			# Otherwise bytestring barfs
		ss = bytestring(ss)
	end
	if (ss != C_NULL && ss[3] == '2')		# LOG2:  one circle will zoom 2 times */
		xm = 4.0 * fabs(angle) / 3.141592
		if (angle > 0.0)
			x2 /= xm; x1 *= xm
		else
			x2 *= xm; x1 /= xm
		end
	end

	if (ss != C_NULL && ss[3] == '1')		# LOG10:  one circle will zoom 10 times
		xm = 10.0 * fabs(angle) / 3.141592
		if (angle > 0.0)
			x2 /= xm; x1 *= xm
		else
			x2 *= xm; x1 /= xm
		end
	else								# LIN: one circle will zoom 2 times */
		xm = (x1 + x2) / 2.0;
		x1 = xm - (xm - x1)*(1.0-angle*1.0/3.141592);
		x2 = xm + (x2 - xm)*(1.0-angle*1.0/3.141592);
	end

	if (x1 < x2)
		IupSetFloat(plot, "AXS_YMIN", x1)
		IupSetFloat(plot, "AXS_YMAX", x2)
	end

	IupSetAttribute(plot, "REDRAW")

	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# X zoom
function minmaxX_dial_btndown_cb(self::Ptr{Ihandle})
	global plot

	IupStoreAttribute(plot, "OLD_XMIN", IupGetAttribute(plot, "AXS_XMIN"));
	IupStoreAttribute(plot, "OLD_XMAX", IupGetAttribute(plot, "AXS_XMAX"));
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
function minmaxX_dial_btnup_cb(self::Ptr{Ihandle}, angle::Float64)
	global plot

	x1 = IupGetFloat(plot, "OLD_XMIN");
	x2 = IupGetFloat(plot, "OLD_XMAX");

	xm = (x1 + x2) / 2.0
	x1 = xm - (xm - x1)*(1.0-angle*1.0/3.141592)	# one circle will zoom 2 times
	x2 = xm + (x2 - xm)*(1.0-angle*1.0/3.141592)

	IupSetFloat(plot, "AXS_XMIN", x1)
	IupSetFloat(plot, "AXS_XMAX", x2)
	IupSetAttribute(plot, "REDRAW")

	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# show/hide grid */
function grid_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot

	if (v != 0)
		IupSetAttribute(plot, "GRID", "YES")
	else
		IupSetAttribute(plot, "GRID", "NO")
	end

	IupSetAttribute(plot, "REDRAW")
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# show/hide legend */
function legend_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot

	if (v != 0)
		IupSetAttribute(plot, "LEGEND", "YES")
	else
		IupSetAttribute(plot, "LEGEND", "NO")
	end

	IupSetAttribute(plot, "REDRAW")
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# show/hide box
function box_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot

	if (v != 0)
		IupSetAttribute(plot, "BOX", "YES")
	else
		IupSetAttribute(plot, "BOX", "NO")
	end

	IupSetAttribute(plot, "REDRAW")
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# enable/disable antialias
function aa_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot

	if (v != 0)
		IupSetAttribute(plot, "ANTIALIAS", "YES");
	else
		IupSetAttribute(plot, "ANTIALIAS", "NO")
	end

	IupSetAttribute(plot, "REDRAW")
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# enable/disable transparent
function transp_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot

	if (v != 0)
		IupSetAttribute(plot, "TRANSPARENT", "YES");
	else
		IupSetAttribute(plot, "TRANSPARENT", "NO")
	end

	IupSetAttribute(plot, "REDRAW")

	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# enable/disable light */
function light_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot

	if (v != 0)
		IupSetAttribute(plot, "LIGHT", "YES")
	else
		IupSetAttribute(plot, "LIGHT", "NO")
	end

	IupSetAttribute(plot, "REDRAW")
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
# enable/disable opengl */
function opengl_tgg_cb(self::Ptr{Ihandle}, v::Int)
	global plot, aa_tgg

	if (v != 0)
		IupSetAttribute(plot, "OPENGL", "YES")
	else
		IupSetAttribute(aa_tgg, "VALUE", "OFF")
		IupSetAttribute(plot, "ANTIALIAS", "NO")
		IupSetAttribute(plot, "OPENGL", "NO")
	end

	IupSetAttribute(plot, "REDRAW")
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
function bt1_cb(self::Ptr{Ihandle})
	global plot, filenameSVG

	IupMglPlotPaintTo(plot, "SVG", 0, 0, 0, filenameSVG);
	return IUP_DEFAULT
end

# --------------------------------------------------------------------------------------
function bt2_cb(self::Ptr{Ihandle})
	global plot, filenameEPS

	IupMglPlotPaintTo(plot, "EPS", 0, 0, 0, filenameEPS);
	return IUP_DEFAULT
end

#=
# --------------------------------------------------------------------------------------
function bt3_cb(Ihandle* self)
  clipboard = IupClipboard();
  IupGetIntInt(plot, "DRAWSIZE", &w, &h);
  gldata = malloc(w*h*3);
  image = imImageCreate(w, h, IM_RGB, IM_BYTE);
  IupMglPlotPaintTo(plot, "RGB", w, h, 0, gldata);
  imConvertPacking(gldata, image->data[0], w, h, 3, 3, IM_BYTE, 1);
  imProcessFlip(image, image);
  IupSetAttribute(clipboard, "NATIVEIMAGE", IupGetImageNativeHandle(image));
  IupDestroy(clipboard);
  free(gldata);
  imImageDestroy(image);
  return IUP_DEFAULT;
end

# --------------------------------------------------------------------------------------
function bt4_cb(Ihandle* self)
  IupGetIntInt(plot, "DRAWSIZE", &w, &h);
  gldata = malloc(w*h*3);

  image = imImageCreate(w, h, IM_RGB, IM_BYTE);
  IupMglPlotPaintTo(plot, "RGB", w, h, 0, gldata);
  imConvertPacking(gldata, image->data[0], w, h, 3, 3, IM_BYTE, 1);
  imProcessFlip(image, image);
  imFileImageSave(filenamePNG, "PNG", image);
  free(gldata);
  imImageDestroy(image);
  return IUP_DEFAULT;
end
=#


# --------------------------------------------------------------------------------------
function SampleText()
	IupSetCallback(plot, "POSTDRAW_CB", cfunction(postdraw_cb, Int, (Ptr{Ihandle},)))
end

# --------------------------------------------------------------------------------------
function SampleLegend()
	global plot

	IupMglPlotNewDataSet(plot, 1)
	IupSetAttribute(plot, "DS_LEGEND", "sin(\\pi {x^2})")
	IupMglPlotSetFromFormula(plot, 0, "sin(2*pi*x*x)", 50, 1, 1)

	IupMglPlotNewDataSet(plot, 1)
	IupSetAttribute(plot, "DS_LEGEND", "sin(\\pi x)")
	IupMglPlotSetFromFormula(plot, 1, "sin(2*pi*x)", 50, 1, 1)

	IupMglPlotNewDataSet(plot, 1)
	IupSetAttribute(plot, "DS_LEGEND", "sin(\\pi \\sqrt{\\a x})")
	IupMglPlotSetFromFormula(plot, 2, "sin(2*pi*sqrt(x))", 50, 1, 1)

	IupSetAttribute(plot, "LEGEND", "YES")
	IupSetAttribute(plot, "AXS_X", "Yes")
	IupSetAttribute(plot, "AXS_Y", "Yes")
	IupSetAttribute(plot, "BOX", "YES")
end

# --------------------------------------------------------------------------------------
function SampleSemiLog()
	global plot

	IupMglPlotNewDataSet(plot, 2)
	IupMglPlotSetFormula(plot, 0, "0.01/(x+10^(-5))", "sin(1/x)", "", 2000);
	IupSetAttribute(plot, "DS_COLOR", "0 0 255");
	IupSetAttribute(plot, "DS_LINEWIDTH", "2");

	IupSetAttribute(plot, "AXS_XSCALE", "LOG10");
	IupSetAttribute(plot, "AXS_X", "Yes");
	IupSetAttribute(plot, "AXS_Y", "Yes");
	IupSetAttribute(plot, "AXS_XLABEL", "x");
	IupSetAttribute(plot, "AXS_YLABEL", "y = sin 1/x");
	IupSetAttribute(plot, "BOX", "YES");
	IupSetAttribute(plot, "GRID", "YES");
	IupSetAttribute(plot, "GRIDCOLOR", "0 255 0");
end

# --------------------------------------------------------------------------------------
function SampleLogLog()
	global plot

	IupMglPlotNewDataSet(plot, 2);
	IupMglPlotSetFormula(plot, 0, "pow(10,6*x-3)", "sqrt(1+x^2)", "", 100)
	IupSetAttribute(plot, "DS_COLOR", "0 0 255")
	IupSetAttribute(plot, "DS_LINEWIDTH", "2")

	IupSetAttribute(plot, "AXS_XSCALE", "LOG10")
	IupSetAttribute(plot, "AXS_YSCALE", "LOG10")
	IupSetAttribute(plot, "AXS_X", "Yes")
	IupSetAttribute(plot, "AXS_Y", "Yes")
	IupSetAttribute(plot, "AXS_XLABEL", "x")
	IupSetAttribute(plot, "AXS_YLABEL", "y=\\sqrt{1+x^2}")
	IupSetAttribute(plot, "BOX", "YES")
	IupSetAttribute(plot, "GRID", "YES")
	IupSetAttribute(plot, "GRIDCOLOR", "0 255 0")
	IupSetAttribute(plot, "GRIDLINESTYLE", "DASHED")
end

# --------------------------------------------------------------------------------------
function SampleVolume(ds_mode::String)
	global plot
	IupMglPlotNewDataSet(plot, 1)
	IupMglPlotSetFromFormula(plot, 0, "-2*((2*x-1)^2 + (2*y-1)^2 + (2*z-1)^4 - (2*z-1)^2 - 0.1)", 60, 50, 40)
	IupSetAttribute(plot, "DS_MODE", ds_mode)

	IupSetAttribute(plot, "ROTATE", "40:0:60")
	IupSetAttribute(plot, "LIGHT", "YES")
	IupSetAttribute(plot, "TRANSPARENT", "YES")
	IupSetAttribute(plot, "BOX", "YES")
end

# --------------------------------------------------------------------------------------
function SampleDensityProjectVolume()
	global plot

	SampleVolume("VOLUME_DENSITY")
	IupSetAttribute(plot, "PROJECT", "YES")
	IupSetAttribute(plot, "PROJECTVALUEX", "-1")
	IupSetAttribute(plot, "PROJECTVALUEY", "1")
	IupSetAttribute(plot, "PROJECTVALUEZ", "-1")
	IupSetAttribute(plot, "TRANSPARENT", "NO")
	IupSetAttribute(plot, "LIGHT", "NO")
end

# --------------------------------------------------------------------------------------
function SampleContourProjectVolume()
	global plot

  SampleVolume("VOLUME_CONTOUR");
  IupSetAttribute(plot, "PROJECT", "YES");
  IupSetAttribute(plot, "PROJECTVALUEX", "-1");
  IupSetAttribute(plot, "PROJECTVALUEY", "1");
  IupSetAttribute(plot, "PROJECTVALUEZ", "-1");
  IupSetAttribute(plot, "TRANSPARENT", "NO");
  #  IupSetAttribute(plot, "LIGHT", "NO");
end

# --------------------------------------------------------------------------------------
function SampleContourFilledProjectVolume()
	global plot

  SampleVolume("VOLUME_CONTOUR")
  IupSetAttribute(plot, "PROJECT", "YES");
  IupSetAttribute(plot, "PROJECTVALUEX", "-1");
  IupSetAttribute(plot, "PROJECTVALUEY", "1");
  IupSetAttribute(plot, "PROJECTVALUEZ", "-1");
  IupSetAttribute(plot, "CONTOURFILLED", "YES");
  IupSetAttribute(plot, "TRANSPARENT", "NO");
  #  IupSetAttribute(plot, "LIGHT", "NO");
end

# --------------------------------------------------------------------------------------
function SampleContourFilledVolume()
	global plot

  SampleVolume("VOLUME_CONTOUR")
  IupSetAttribute(plot, "CONTOURFILLED", "YES");
  IupSetAttribute(plot, "TRANSPARENT", "NO");
end

# --------------------------------------------------------------------------------------
function SampleContourVolume()
	global plot

  SampleVolume("VOLUME_CONTOUR");
  IupSetAttribute(plot, "TRANSPARENT", "NO");
  #  IupSetAttribute(plot, "LIGHT", "NO");
end

# --------------------------------------------------------------------------------------
function SampleDensityVolume()
	global plot

  SampleVolume("VOLUME_DENSITY");
  IupSetAttribute(plot, "AXS_XORIGIN", "0");
  IupSetAttribute(plot, "AXS_YORIGIN", "0");
  IupSetAttribute(plot, "AXS_ZORIGIN", "0");
  IupSetAttribute(plot, "AXS_X", "Yes");
  IupSetAttribute(plot, "AXS_Y", "Yes");
  IupSetAttribute(plot, "AXS_Z", "Yes");
  IupSetAttribute(plot, "LIGHT", "NO");
end

# --------------------------------------------------------------------------------------
function SampleCloudVolume()
	global plot

  SampleVolume("VOLUME_CLOUD")
  IupSetAttribute(plot, "COLORSCHEME", "wyrRk")
  IupSetAttribute(plot, "CLOUDCUBES", "NO");
  IupSetAttribute(plot, "LIGHT", "NO");
end

# --------------------------------------------------------------------------------------
function SampleCloudCubesVolume()
	global plot

  SampleVolume("VOLUME_CLOUD")
  IupSetAttribute(plot, "COLORSCHEME", "wyrRk")
  IupSetAttribute(plot, "LIGHT", "NO")
end

# --------------------------------------------------------------------------------------
function SampleIsoSurfaceVolume()
	global plot
	SampleVolume("VOLUME_ISOSURFACE")
end

# --------------------------------------------------------------------------------------
function SamplePlanar(ds_mode::String)
	global plot

	ds = IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, int(ds), "0.6*sin(2*pi*x)*sin(3*pi*y) + 0.4*cos(3*pi*(x*y))", 50, 40, 1);
	IupSetAttribute(plot, "DS_MODE", ds_mode);

	IupSetAttribute(plot, "ROTATE", "40:0:60");
	IupSetAttribute(plot, "LIGHT", "YES");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleGradientLinesPlanar()
	global plot

	SamplePlanar("PLANAR_GRADIENTLINES");
	SamplePlanar("PLANAR_DENSITY");
	IupSetAttribute(plot, "TRANSPARENT", "YES");
	IupSetAttribute(plot, "ROTATE");
end

# --------------------------------------------------------------------------------------
function SampleAxialContourPlanar()
	global plot

	SamplePlanar("PLANAR_AXIALCONTOUR");
	IupSetAttribute(plot, "TRANSPARENT", "YES");
end

# --------------------------------------------------------------------------------------
function SampleContourFilledPlanar()
	global plot

	SamplePlanar("PLANAR_CONTOUR");
	IupSetAttribute(plot, "CONTOURFILLED", "Yes");
end

# --------------------------------------------------------------------------------------
function SampleContourPlanar()
	global plot

	SamplePlanar("PLANAR_CONTOUR")
	IupSetAttribute(plot, "CONTOURLABELS", "BELLOW")
end

# --------------------------------------------------------------------------------------
function SampleDensityPlanar()
	global plot

	SamplePlanar("PLANAR_DENSITY");
	IupSetAttribute(plot, "COLORBAR", "Yes");
	IupSetAttribute(plot, "ROTATE");
end

# --------------------------------------------------------------------------------------
function SampleBoxesPlanar()
	SamplePlanar("PLANAR_BOXES");
	IupSetAttribute(plot, "AXS_XORIGIN", "0");
	IupSetAttribute(plot, "AXS_YORIGIN", "0");
	IupSetAttribute(plot, "AXS_ZORIGIN", "0");
end

# --------------------------------------------------------------------------------------
function SampleTilePlanar()
	SamplePlanar("PLANAR_TILE")
end

# --------------------------------------------------------------------------------------
function SampleBeltPlanar()
	SamplePlanar("PLANAR_BELT");
end

# --------------------------------------------------------------------------------------
function SampleFallPlanar()
	SamplePlanar("PLANAR_FALL")
end

# --------------------------------------------------------------------------------------
function SampleMeshPlanar()
	SamplePlanar("PLANAR_MESH")
end

# --------------------------------------------------------------------------------------
function SampleSurfaceColorsPlanar()
	global plot
	SamplePlanar("PLANAR_SURFACE");
	IupSetAttribute(plot, "COLORSCHEME", "BbcyrR|");
end

# --------------------------------------------------------------------------------------
function SampleSurfacePlanar()
	SamplePlanar("PLANAR_SURFACE")
end

# --------------------------------------------------------------------------------------
function SampleSurfaceContourPlanar()
	SamplePlanar("PLANAR_SURFACE");
	SamplePlanar("PLANAR_CONTOUR");
end

# --------------------------------------------------------------------------------------
function SampleDotsLinear3D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotLoadData(plot, 0, "../test/hotdogs.pts", 0, 0, 0);
	IupSetAttribute(plot, "DS_MODE", "DOTS");
	IupSetAttribute(plot, "DS_REARRANGE");

	IupSetAttribute(plot, "ROTATE", "40:0:60");
	IupSetAttribute(plot, "LIGHT", "YES");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleCrustLinear3D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotLoadData(plot, 0, "../test/hotdogs.pts", 0, 0, 0);
	IupSetAttribute(plot, "DS_MODE", "CRUST");
	IupSetAttribute(plot, "DS_REARRANGE");

	IupSetAttribute(plot, "ROTATE", "40:0:60");
	IupSetAttribute(plot, "LIGHT", "YES");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SamplePieLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 0, "rnd+0.1", 7, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "CHART");

	IupSetAttribute(plot, "COLORSCHEME", "bgr cmy");
	IupSetAttribute(plot, "PIECHART", "Yes");
	IupSetAttribute(plot, "DATAGRID", "Yes");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleChartLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 0, "rnd+0.1", 7, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "CHART");
	IupSetAttribute(plot, "DATAGRID", "Yes");

	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleStemLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 0, "0.7*sin(2*pi*x) + 0.5*cos(3*pi*x) + 0.2*sin(pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "STEM");
	IupSetAttribute(plot, "DS_MARKSTYLE", "HOLLOW_CIRCLE");
	IupSetAttribute(plot, "DS_SHOWMARKS", "Yes");

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 1, "sin(2*pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "STEM");
	IupSetAttribute(plot, "DS_MARKSTYLE", "HOLLOW_CIRCLE");
	IupSetAttribute(plot, "DS_SHOWMARKS", "Yes");

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 2, "cos(2*pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "STEM");
	IupSetAttribute(plot, "DS_MARKSTYLE", "HOLLOW_CIRCLE");
	IupSetAttribute(plot, "DS_SHOWMARKS", "Yes");

	IupSetAttribute(plot, "AXS_XORIGIN", "0");
	IupSetAttribute(plot, "AXS_YORIGIN", "0");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleStepLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1)
	IupMglPlotSetFromFormula(plot, 0, "0.7*sin(2*pi*x) + 0.5*cos(3*pi*x) + 0.2*sin(pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "STEP")

	IupMglPlotNewDataSet(plot, 1)
	IupMglPlotSetFromFormula(plot, 1, "sin(2*pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "STEP");

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 2, "cos(2*pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "STEP");

	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleBarhLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1)
	IupMglPlotSetFromFormula(plot, 0, "0.8*sin(pi*(2*x+y/2))+0.2*rnd", 10, 1, 1)
	IupSetAttribute(plot, "DS_MODE", "BARHORIZONTAL")

	IupSetAttribute(plot, "AXS_XORIGIN", "0")
	IupSetAttribute(plot, "AXS_YORIGIN", "0")
	IupSetAttribute(plot, "BOX", "YES")
end

# --------------------------------------------------------------------------------------
function SampleBarsLinear3D()
	global plot

	IupMglPlotNewDataSet(plot, 3);
	IupMglPlotSetFormula(plot, 0, "cos(pi*2*x-pi)", "sin(pi*(2*x-1))", "2*x-1", 50)
	IupSetAttribute(plot, "DS_MODE", "BAR");
	IupSetAttribute(plot, "DS_LINESTYLE", "SMALLDASH_DOT");

	IupSetAttribute(plot, "ROTATE", "40:0:60");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleBarsLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 0, "0.8*sin(pi*(2*x+y/2))+0.2*rnd", 10, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "BAR");

	#TODO: allow combination of several datasets into one bar plot
	#TODO: allow bars "above" sample

	IupSetAttribute(plot, "AXS_XORIGIN", "0");
	IupSetAttribute(plot, "AXS_YORIGIN", "0");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleAreaLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 0, "0.7*sin(2*pi*x) + 0.5*cos(3*pi*x) + 0.2*sin(pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "AREA");

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 1, "sin(2*pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "AREA");

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 2, "cos(2*pi*x)", 50, 1, 1);
	IupSetAttribute(plot, "DS_MODE", "AREA");

	IupSetAttribute(plot, "AXS_XORIGIN", "0");
	IupSetAttribute(plot, "AXS_YORIGIN", "0");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SampleRadarLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 0, "0.4*sin(pi*(2*x+y/2))+0.1*rnd", 10, 3, 1);
	IupSetAttribute(plot, "DS_MODE", "RADAR");
	IupSetAttribute(plot, "DS_SPLIT", "");

	IupSetAttribute(plot, "CURRENT", "1");
	IupSetAttribute(plot, "DS_MODE", "RADAR");

	IupSetAttribute(plot, "CURRENT", "2");
	IupSetAttribute(plot, "DS_MODE", "RADAR");

	IupSetAttribute(plot, "RADARSHIFT", "0.4");  # So all datasets will use the same radarshift
	IupSetAttribute(plot, "DATAGRID", "Yes");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SamplePlotLinear3D()
	global plot

	IupMglPlotNewDataSet(plot, 3);
	IupMglPlotSetFormula(plot, 0, "cos(pi*2*x-pi)", "sin(pi*(2*x-1))", "2*x-1", 50);
	IupSetAttribute(plot, "DS_MODE", "LINE");

	IupSetAttribute(plot, "ROTATE", "40:0:60");
	IupSetAttribute(plot, "BOX", "YES");
end

# --------------------------------------------------------------------------------------
function SamplePlotLinear1D()
	global plot

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 0, "0.7*sin(2*pi*x)+0.5*cos(3*pi*x)+0.2*sin(pi*x)", 50, 1, 1);

	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 1, "sin(2*pi*x)", 50, 1, 1);
  
	IupMglPlotNewDataSet(plot, 1);
	IupMglPlotSetFromFormula(plot, 2, "cos(2*pi*x)", 50, 1, 1);

	IupSetAttribute(plot, "BOX", "YES");
end

function Dummy()
end





end 	# module
