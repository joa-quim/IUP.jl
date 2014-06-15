module IUP

export
	IupAlarm,
	IupBackgroundBox,
	IupButton,
	IupCanvas, IupCbox, IupClose, IupControlsOpen,
	IupDial, IupDestroy, IupDialog,
	IupFill, IupFrame,
	IupGetAttribute, IupGetClassName, IupGetDialog, IupGetFloat, IupGetGlobal, IupGetHandle, IupGetInt, IupGetInt2,
	IupGridBox, IupGetParam,
	IupHbox,
	IupImage, IupImageRGBA, IupItem,
	IupLabel, IupList,
	IupMainLoop, IupMap, IupMatrix,
	IupMenu,
	IupMessage,
	IupMultiLine,
	IupOpen,
	IupPopup, IupProgressBar,
	IupRadio,
	IupSeparator,
	IupSetAttribute, IupSetAttributes, IupSetAttributeHandle, IupSetCallback, IupSetCallbacks, IupSetFunction,
	IupSetFloat, IupSetGlobal, IupSetHandle, IupSetLanguage,
	IupShow,
	IupShowXY,
	IupStoreAttribute,
	IupSubmenu,
	IupTabs, IupText, IupToggle, IupTree,
	IupVal, IupVbox
	#
	# Need to add many more


include("libiup_h.jl")
include("libiup.jl")
include("iupcontrols_h.jl")
include("iupcontrols.jl")

end  # module