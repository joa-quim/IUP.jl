module cbox_

using IUP

export
	cbox

include("../src/libiup_h.jl")

#using IProfile
#@iprofile begin

#------------------------example html/examples/C/cbox.c ----------------------------------
function cbox()
	IupOpen()	#Initializes IUP

	IupControlsOpen()    
	func_1()
	IupShowXY(IupGetHandle("dlg"),IUP_CENTER,IUP_CENTER)

	IupMainLoop()                               # Initializes IUP main loop
	IupClose()                                  # And close it when ready
	
	# Don't understand. The profiler reports minuscule times (max = 0.03 s)
	# but the whole thing takes about ~3.4 s (first run)
	#@iprofile report
end

# -----------------------------------------------------------------------------------------
function func_1 ()
	img = IupImage(32,32, img_bits1())
	IupSetHandle ("img1", img)
	IupSetAttribute (img, "0", "0 0 0")
	IupSetAttribute (img, "1", "BGCOLOR")
	IupSetAttribute (img, "2", "255 0 0")

	img = IupImage(32,32, img_bits2())
	IupSetHandle ("img2", img)
	IupSetAttribute (img, "0", "0 0 0")
	IupSetAttribute (img, "1", "0 255 0")
	IupSetAttribute (img, "2", "BGCOLOR")
	IupSetAttribute (img, "3", "255 0 0")

	_frm_1 = IupFrame(
				IupVbox(
					IupSetAttributes(IupButton("Button Text"), "CINDEX=1"),
					IupSetAttributes(IupButton(), "IMAGE=img1,CINDEX=2"),
					IupSetAttributes(IupButton(), "IMAGE=img1,IMPRESS=img2,CINDEX=3")
				))
	IupSetAttribute(_frm_1,"TITLE","IupButton")
	IupSetAttribute(_frm_1,"CX","10")
	IupSetAttribute(_frm_1,"CY","180")

	_frm_2 = IupFrame(
				IupVbox(
					IupSetAttributes(IupLabel("Label Text"), "CINDEX=1"),
					IupSetAttributes(IupLabel(), "SEPARATOR=HORIZONTAL,CINDEX=2"),
					IupSetAttributes(IupLabel(), "IMAGE=img1,CINDEX=3")
				))
	IupSetAttribute(_frm_2,"TITLE","IupLabel");
	IupSetAttribute(_frm_2,"CX","200");
	IupSetAttribute(_frm_2,"CY","250");

	_frm_3 = IupFrame(
				IupVbox(
					IupSetAttributes(IupToggle("Toggle Text"), "VALUE=ON,CINDEX=1"),
					IupSetAttributes(IupToggle(), "IMAGE=img1,IMPRESS=img2,CINDEX=2"),
					IupSetAttributes(IupFrame(IupRadio(IupVbox(
					IupSetAttributes(IupToggle("Toggle Text"), "CINDEX=3"),
					IupSetAttributes(IupToggle("Toggle Text"), "CINDEX=4")
					))), "TITLE=IupRadio")
				))
	IupSetAttribute(_frm_3,"TITLE","IupToggle");
	IupSetAttribute(_frm_3,"CX","400");
	IupSetAttribute(_frm_3,"CY","250");

	_text_1 = IupText()
	IupSetAttribute(_text_1,"VALUE","IupText Text");
	IupSetAttribute(_text_1,"SIZE","80x");
	IupSetAttribute(_text_1,"CINDEX","1");
	IupSetAttribute(_text_1,"CX","10");
	IupSetAttribute(_text_1,"CY","100");

	_ml_1 = IupMultiLine()
	IupSetAttribute(_ml_1,"VALUE","IupMultiline Text\nSecond Line\nThird Line");
	IupSetAttribute(_ml_1,"SIZE","80x60");
	IupSetAttribute(_ml_1,"CINDEX","1");
	IupSetAttribute(_ml_1,"CX","200");
	IupSetAttribute(_ml_1,"CY","100");

	_list_1 = IupList()
	IupSetAttribute(_list_1,"VALUE","1");
	IupSetAttribute(_list_1,"1","Item 1 Text");
	IupSetAttribute(_list_1,"2","Item 2 Text");
	IupSetAttribute(_list_1,"3","Item 3 Text");
	IupSetAttribute(_list_1,"CINDEX","1");
	IupSetAttribute(_list_1,"CX","10");
	IupSetAttribute(_list_1,"CY","10");

	_list_2 = IupList()
	IupSetAttribute(_list_2,"DROPDOWN","YES");
	IupSetAttribute(_list_2,"VALUE","2");
	IupSetAttribute(_list_2,"1","Item 1 Text");
	IupSetAttribute(_list_2,"2","Item 2 Text");
	IupSetAttribute(_list_2,"3","Item 3 Text");
	IupSetAttribute(_list_2,"CINDEX","2");
	IupSetAttribute(_list_2,"CX","200");
	IupSetAttribute(_list_2,"CY","10");

	_list_3 = IupList()
	IupSetAttribute(_list_3,"EDITBOX","YES");
	IupSetAttribute(_list_3,"VALUE","3");
	IupSetAttribute(_list_3,"1","Item 1 Text");
	IupSetAttribute(_list_3,"2","Item 2 Text");
	IupSetAttribute(_list_3,"3","Item 3 Text");
	IupSetAttribute(_list_3,"CINDEX","3");
	IupSetAttribute(_list_3,"CX","400");
	IupSetAttribute(_list_3,"CY","10");

	_cnv_1 = IupCanvas()
	IupSetAttribute(_cnv_1,"RASTERSIZE","100x100");
	IupSetAttribute(_cnv_1,"POSX","0");
	IupSetAttribute(_cnv_1,"POSY","0");
	IupSetAttribute(_cnv_1,"BGCOLOR","128 255 0");
	IupSetAttribute(_cnv_1,"CX","400")
	IupSetAttribute(_cnv_1,"CY","150");

	_ctrl_1 = IupVal()
	IupSetAttribute(_ctrl_1,"CX","600");
	IupSetAttribute(_ctrl_1,"CY","200");

	_cbox = IupCbox(_text_1,_ml_1,_list_1,_list_2,_list_3,_cnv_1,_ctrl_1,
				createtree(),
				create_mat(),
				_frm_1,_frm_2,_frm_3
			)
	IupSetAttribute(_cbox,"SIZE","480x200");

	hbox = IupSetAttributes(IupHbox(_cbox), "MARGIN=10x10");

	dlg = IupDialog(hbox);
	IupSetHandle("dlg",dlg);
	IupSetAttribute(dlg,"TITLE","Cbox Test");
end

# -----------------------------------------------------------------------------------------
function createtree()
	tree = IupTree()
	IupSetAttributes(tree, "FONT=COURIER_NORMAL_10,
						NAME=Figures,
						ADDBRANCH=3D,
						ADDBRANCH=2D,
						ADDLEAF1=trapeze,
						ADDBRANCH1=parallelogram,
						ADDLEAF2=diamond,
						ADDLEAF2=square,
						ADDBRANCH4=triangle,
						ADDLEAF5=scalenus,
						ADDLEAF5=isosceles,
						ADDLEAF5=equilateral,
						RASTERSIZE=180x180,
						VALUE=6,
						CTRL=ON,
						SHIFT=ON,
						CX=600,
						CY=10,
						ADDEXPANDED=NO")
	return tree
end

# -----------------------------------------------------------------------------------------
function create_mat()
	mat = IupMatrix()
 
	IupSetAttribute(mat, "NUMCOL", "1")
	IupSetAttribute(mat, "NUMLIN", "3")
	IupSetAttribute(mat, "NUMCOL_VISIBLE", "1")
	IupSetAttribute(mat, "NUMLIN_VISIBLE", "3")
	IupSetAttribute(mat, "EXPAND", "NO")
	IupSetAttribute(mat, "SCROLLBAR", "NO")

	IupSetAttribute(mat, "0:0", "Inflation")
	IupSetAttribute(mat, "1:0", "Medicine ")
	IupSetAttribute(mat, "2:0", "Food")
	IupSetAttribute(mat, "3:0", "Energy")
	IupSetAttribute(mat, "0:1", "January 2000")
	IupSetAttribute(mat, "1:1", "5.6")
	IupSetAttribute(mat, "2:1", "2.2")
	IupSetAttribute(mat, "3:1", "7.2")

	IupSetAttribute(mat,"BGCOLOR","255 255 255")
	IupSetAttribute(mat,"BGCOLOR1:0","255 128 0")
	IupSetAttribute(mat,"BGCOLOR2:1","255 128 0")
	IupSetAttribute(mat,"FGCOLOR2:0","255 0 128")
	IupSetAttribute(mat,"FGCOLOR1:1","255 0 128")

	IupSetAttribute(mat,"CX","600")
	IupSetAttribute(mat,"CY","250")

	return mat
end

# -----------------------------------------------------------------------------------------
function img_bits2()
	img = uint8([
	 2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2
	,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2
	,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2
	,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2
	,2,2,2,2,2,2,2,2,2,2,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2
	,2,2,2,2,2,2,2,2,2,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2
	,2,2,2,2,2,2,2,2,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2
	,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
	,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
	,3,3,3,0,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
	,3,3,3,0,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
	,3,3,3,0,3,0,3,0,3,3,0,3,3,3,1,1,0,3,3,3,0,0,3,0,3,3,0,0,0,3,3,3
	,3,3,3,0,3,0,0,3,0,0,3,0,3,0,1,1,3,0,3,0,3,3,0,0,3,0,3,3,3,0,3,3
	,3,3,3,0,3,0,3,3,0,3,3,0,3,3,1,1,3,0,3,0,3,3,3,0,3,0,3,3,3,0,3,3
	,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	,3,3,3,0,3,0,3,3,0,3,3,0,3,0,1,1,3,0,3,0,3,3,0,0,3,0,3,3,3,0,3,3
	,3,3,3,0,3,0,3,3,0,3,3,0,3,3,1,1,0,0,3,3,0,0,3,0,3,3,0,0,0,3,3,3
	,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,0,3,3,3,3,3,3,3,3
	,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,0,3,3,3,0,3,3,3,3,3,3,3,3
	,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,0,0,0,3,3,3,3,3,3,3,3,3
	,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
	,3,3,3,3,3,3,3,3,3,3,3,3,3,3,1,1,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3
	,2,2,2,2,2,2,2,3,3,3,3,3,3,3,1,1,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,2,2,2,3,3,3,3,3,3,3,3,1,1,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	])
end

function img_bits1()
	img = uint8([
	 1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1
	,1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1
	,1,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1
	,1,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1
	,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1
	,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1
	,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1
	,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,0,2,0,2,0,2,2,0,2,2,2,0,0,0,2,2,2,0,0,2,0,2,2,0,0,0,2,2,2
	,2,2,2,0,2,0,0,2,0,0,2,0,2,0,2,2,2,0,2,0,2,2,0,0,2,0,2,2,2,0,2,2
	,2,2,2,0,2,0,2,2,0,2,2,0,2,2,2,2,2,0,2,0,2,2,2,0,2,0,2,2,2,0,2,2
	,2,2,2,0,2,0,2,2,0,2,2,0,2,2,0,0,0,0,2,0,2,2,2,0,2,0,0,0,0,0,2,2
	,2,2,2,0,2,0,2,2,0,2,2,0,2,0,2,2,2,0,2,0,2,2,2,0,2,0,2,2,2,2,2,2
	,2,2,2,0,2,0,2,2,0,2,2,0,2,0,2,2,2,0,2,0,2,2,0,0,2,0,2,2,2,0,2,2
	,2,2,2,0,2,0,2,2,0,2,2,0,2,2,0,0,0,0,2,2,0,0,2,0,2,2,0,0,0,2,2,2
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,2,2,2,2,2,2,2,2
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,2,2,2,0,2,2,2,2,2,2,2,2
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,0,0,2,2,2,2,2,2,2,2,2
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2
	,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1
	,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1
	,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1
	,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1
	])
end

#end     # @iprofile begin

end 	# module

