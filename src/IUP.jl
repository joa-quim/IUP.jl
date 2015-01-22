module IUP

export
	Ihandle,
	IupAlarm,
	IupBackgroundBox,
	IupButton,
	IupCanvas, IupCbox, IupClose, IupControlsOpen,
	IupDial, IupDestroy, IupDialog,
	IupFill, IupFrame,
	IupGetAttribute, IupGetClassName, IupGetDialog, IupGetFloat, IupGetFile, IupGetGlobal, IupGetHandle, IupGetInt,
	IupGetDouble, IupGetDoubleId, IupGetInt2, IupGridBox, IupGetParam,
	IupHbox,
	IupHide,
	IupImage, IupImageRGBA, IupItem,
	IupLabel, IupList,
	IupLoad,
	IupMainLoop, IupMap, IupMatrix,
	IupMenu,
	IupMessage,
	IupMultiLine,
	IupOpen,
	IupPopup, IupProgressBar,
	IupRadio,
	IupSeparator,
	IupSetAttribute, IupSetAttributes, IupSetAttributeHandle, IupSetCallback, IupSetCallbacks, IupSetFunction,
	IupSetFloat, IupSetDouble, IupSetDoubleId, IupSetGlobal, IupSetHandle, IupSetLanguage,
	IupShow,
	IupShowXY,
	IupStoreAttribute,
	IupSubmenu,
	IupTabs, IupTabsv, IupText, IupToggle, IupTree,
	IupVal, IupVbox,
	#
	# From iup_plot
	#
	IupPlotOpen,
	IupPlot,
	IupPlotBegin,
	IupPlotAdd,
	IupPlotAddStr,
	IupPlotEnd,
	IupPlotLoadData,
	IupPlotInsertStr,
	IupPlotInsert,
	IupPlotInsertStrPoints,
	IupPlotInsertPoints,
	IupPlotAddPoints,
	IupPlotAddStrPoints,
	IupPlotGetSample,
	IupPlotGetSampleStr,
	IupPlotGetSampleSelection,
	IupPlotSetSample,
	IupPlotSetSampleStr,
	IupPlotSetSampleSelection,
	IupPlotTransform,
	IupPlotTransformTo,
	IupPlotPaintTo,
	#
	# Need to add many more
	#
	IUP_ERROR, IUP_NOERROR, IUP_OPENED, IUP_INVALID, IUP_INVALID_ID, IUP_IGNORE,
	IUP_DEFAULT, IUP_CENTER, IUP_LEFT, IUP_TOP, IUP_BOTTOM, IUP_RIGHT, IUP_MOUSEPOS, IUP_CURRENT, IUP_CENTERPARENT,
	IUP_BUTTON1, IUP_BUTTON2, IUP_BUTTON3, IUP_BUTTON4, IUP_BUTTON5

include("libiup_h.jl")
include("libiup.jl")
include("iupcontrols.jl")
include("iup_plot.jl")

end  # module