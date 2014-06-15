# Julia wrapper for header: /Volumes/BOOTCAMP/programs/compa_libs/iup/include/iup.h
# Automatically generated using Clang.jl wrap_c, version 0.0.0

@windows? (const iup = "iup") : (const iup = "libiup")  # Name of IUP shared lib.


function IupVbox(c1::Ptr{Ihandle}, c2=C_NULL, c3=C_NULL, c4=C_NULL, c5=C_NULL, c6=C_NULL, c7=C_NULL, c8=C_NULL, c9=C_NULL,
		c10=C_NULL, c11=C_NULL, c12=C_NULL, c13=C_NULL)
	ccall((:IupVbox, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle},
		Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}),
		c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13)
end

function IupHbox(c1::Ptr{Ihandle}, c2=C_NULL, c3=C_NULL, c4=C_NULL, c5=C_NULL, c6=C_NULL, c7=C_NULL, c8=C_NULL, c9=C_NULL,
		c10=C_NULL, c11=C_NULL, c12=C_NULL, c13=C_NULL)
	ccall((:IupHbox, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle},
		Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}),
		c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13)
end

function IupCbox(c1=C_NULL, c2=C_NULL, c3=C_NULL, c4=C_NULL, c5=C_NULL, c6=C_NULL, c7=C_NULL, c8=C_NULL, c9=C_NULL,
		c10=C_NULL, c11=C_NULL, c12=C_NULL, c13=C_NULL)
	ccall((:IupCbox, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle},
		Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}),
		c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13)
end

function IupMenu(c1::Ptr{Ihandle}, c2=C_NULL, c3=C_NULL, c4=C_NULL, c5=C_NULL, c6=C_NULL, c7=C_NULL, c8=C_NULL, c9=C_NULL,
		c10=C_NULL, c11=C_NULL, c12=C_NULL, c13=C_NULL)
	ccall((:IupMenu, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle},
		Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}),
		c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13)
end

function IupGridBox(c1::Ptr{Ihandle}, c2=C_NULL, c3=C_NULL, c4=C_NULL, c5=C_NULL, c6=C_NULL, c7=C_NULL, c8=C_NULL, c9=C_NULL,
		c10=C_NULL, c11=C_NULL, c12=C_NULL, c13=C_NULL)
	ccall((:IupGridBox, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle},
		Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}),
		c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13)
end

function IupTabs(c1::Ptr{Ihandle}, c2=C_NULL, c3=C_NULL, c4=C_NULL, c5=C_NULL, c6=C_NULL, c7=C_NULL, c8=C_NULL, c9=C_NULL,
		c10=C_NULL, c11=C_NULL, c12=C_NULL, c13=C_NULL)
	ccall((:IupTabs, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle},
		Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}),
		c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13)
end

# I Don't understand the purpose of this function, which true definition includes a varargs, so I implemented
# this one only as a guide for the future problems
function IupSetCallbacks(ih::Ptr{Ihandle}, name::String, func1::Icallback, func2::Icallback)
	ccall((:IupSetCallbacks, iup), Icallback, (Ptr{Ihandle}, Ptr{Uint8}, Icallback, Icallback), ih, name, func1, func2)
end


# When I find that these arguments may be used to send in something useful I'll activate them
#function IupOpen(argc::Ptr{Cint}=C_NULL, argv::Ptr{Ptr{Ptr{Uint8}}}=C_NULL)
function IupOpen(argc=C_NULL, argv=C_NULL)
	ccall((:IupOpen, iup), Cint, (Ptr{Cint}, Ptr{Ptr{Ptr{Uint8}}}), argc, argv)
end
function IupClose()
	ccall((:IupClose, iup), None, (),)
end
function IupImageLibOpen()
  ccall( (:IupImageLibOpen, iup), None, (), )
end
function IupMainLoop()
	ccall((:IupMainLoop, iup), Cint, (), )
end
function IupLoopStep()
  ccall( (:IupLoopStep, iup), Cint, (), )
end
function IupLoopStepWait()
  ccall( (:IupLoopStepWait, iup), Cint, (), )
end
function IupMainLoopLevel()
  ccall( (:IupMainLoopLevel, iup), Cint, (), )
end
function IupFlush()
  ccall( (:IupFlush, iup), None, (), )
end
function IupExitLoop()
  ccall( (:IupExitLoop, iup), None, (), )
end
function IupRecordInput(filename::String, mode::Int)
	ccall((:IupRecordInput, iup), Cint, (Ptr{Uint8}, Cint), filename, mode)
end
function IupPlayInput(filename::String)
  ccall( (:IupPlayInput, iup), Cint, (Ptr{Uint8},), filename)
end
function IupUpdate(ih::Ptr{Ihandle})
  ccall( (:IupUpdate, iup), None, (Ptr{Ihandle},), ih)
end
function IupUpdateChildren(ih::Ptr{Ihandle})
  ccall( (:IupUpdateChildren, iup), None, (Ptr{Ihandle},), ih)
end
function IupRedraw(ih::Ptr{Ihandle}, children::Cint)
  ccall( (:IupRedraw, iup), None, (Ptr{Ihandle}, Cint), ih, children)
end
function IupRefresh(ih::Ptr{Ihandle})
  ccall( (:IupRefresh, iup), None, (Ptr{Ihandle},), ih)
end
function IupRefreshChildren(ih::Ptr{Ihandle})
  ccall( (:IupRefreshChildren, iup), None, (Ptr{Ihandle},), ih)
end
function IupHelp(url::String)
  ccall( (:IupHelp, iup), Cint, (Ptr{Uint8},), url)
end
function IupLoad(filename::String)
  ccall( (:IupLoad, iup), Ptr{Uint8}, (Ptr{Uint8},), filename)
end
function IupLoadBuffer(buffer::String)
  ccall( (:IupLoadBuffer, iup), Ptr{Uint8}, (Ptr{Uint8},), buffer)
end
function IupVersion()
  ccall( (:IupVersion, iup), Ptr{Uint8}, (), )
end
function IupVersionDate()
  ccall( (:IupVersionDate, iup), Ptr{Uint8}, (), )
end
function IupVersionNumber()
  ccall( (:IupVersionNumber, iup), Cint, (), )
end
function IupSetLanguage(lng::String)
	ccall((:IupSetLanguage, iup), None, (Ptr{Uint8},), lng)
end
function IupGetLanguage()
  ccall( (:IupGetLanguage, iup), Ptr{Uint8}, (), )
end
function IupSetLanguageString(name::String, str::String)
	ccall((:IupSetLanguageString, iup), None, (Ptr{Uint8}, Ptr{Uint8}), name, str)
end
function IupStoreLanguageString(name::String, str::String)
	ccall((:IupStoreLanguageString, iup), None, (Ptr{Uint8}, Ptr{Uint8}), name, str)
end
function IupGetLanguageString(name::String)
	ccall((:IupGetLanguageString, iup), Ptr{Uint8}, (Ptr{Uint8},), name)
end
function IupSetLanguagePack(ih::Ptr{Ihandle})
  ccall( (:IupSetLanguagePack, iup), None, (Ptr{Ihandle},), ih)
end
function IupDestroy(ih::Ptr{Ihandle})
	ccall((:IupDestroy, iup), None, (Ptr{Ihandle},), ih)
end
function IupDetach(child::Ptr{Ihandle})
  ccall( (:IupDetach, iup), None, (Ptr{Ihandle},), child)
end
function IupAppend(ih::Ptr{Ihandle}, child::Ptr{Ihandle})
  ccall( (:IupAppend, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}), ih, child)
end
function IupInsert(ih::Ptr{Ihandle}, ref_child::Ptr{Ihandle}, child::Ptr{Ihandle})
  ccall( (:IupInsert, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}), ih, ref_child, child)
end
function IupGetChild(ih::Ptr{Ihandle}, pos::Cint)
  ccall( (:IupGetChild, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Cint), ih, pos)
end
function IupGetChildPos(ih::Ptr{Ihandle}, child::Ptr{Ihandle})
  ccall( (:IupGetChildPos, iup), Cint, (Ptr{Ihandle}, Ptr{Ihandle}), ih, child)
end
function IupGetChildCount(ih::Ptr{Ihandle})
  ccall( (:IupGetChildCount, iup), Cint, (Ptr{Ihandle},), ih)
end
function IupGetNextChild(ih::Ptr{Ihandle}, child::Ptr{Ihandle})
  ccall( (:IupGetNextChild, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}), ih, child)
end
function IupGetBrother(ih::Ptr{Ihandle})
  ccall( (:IupGetBrother, iup), Ptr{Ihandle}, (Ptr{Ihandle},), ih)
end
function IupGetParent(ih::Ptr{Ihandle})
  ccall( (:IupGetParent, iup), Ptr{Ihandle}, (Ptr{Ihandle},), ih)
end
function IupGetDialog(ih::Ptr{Ihandle})
	ccall((:IupGetDialog, iup), Ptr{Ihandle}, (Ptr{Ihandle},), ih)
end
function IupGetDialogChild(ih::Ptr{Ihandle}, name::String)
  ccall( (:IupGetDialogChild, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Uint8}), ih, name)
end
function IupReparent(ih::Ptr{Ihandle}, new_parent::Ptr{Ihandle}, ref_child::Ptr{Ihandle})
  ccall( (:IupReparent, iup), Cint, (Ptr{Ihandle}, Ptr{Ihandle}, Ptr{Ihandle}), ih, new_parent, ref_child)
end
function IupPopup(ih::Ptr{Ihandle}, x::Integer, y::Integer)
	ccall((:IupPopup, iup), Cint, (Ptr{Ihandle}, Cint, Cint), ih, x, y)
end
function IupShow(ih::Ptr{Ihandle})
	ccall((:IupShow, iup), Cint, (Ptr{Ihandle},), ih)
end
function IupShowXY(ih::Ptr{Ihandle}, x::Integer, y::Integer)
	ccall((:IupShowXY, iup), Cint, (Ptr{Ihandle}, Cint, Cint), ih, x, y)
end
function IupHide(ih::Ptr{Ihandle})
  ccall( (:IupHide, iup), Cint, (Ptr{Ihandle},), ih)
end
function IupMap(ih::Ptr{Ihandle})
	ccall((:IupMap, iup), Cint, (Ptr{Ihandle},), ih)
end
function IupUnmap(ih::Ptr{Ihandle})
  ccall( (:IupUnmap, iup), None, (Ptr{Ihandle},), ih)
end
function IupResetAttribute(ih::Ptr{Ihandle}, name::String)
  ccall( (:IupResetAttribute, iup), None, (Ptr{Ihandle}, Ptr{Uint8}), ih, name)
end
function IupGetAllAttributes(ih::Ptr{Ihandle}, names::Ptr{Ptr{Uint8}}, n::Cint)
  ccall( (:IupGetAllAttributes, iup), Cint, (Ptr{Ihandle}, Ptr{Ptr{Uint8}}, Cint), ih, names, n)
end
function IupSetAttributes(ih::Ptr{Ihandle}, str::String)
	ccall((:IupSetAttributes, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Uint8}), ih, str)
end
function IupGetAttributes(ih::Ptr{Ihandle})
  ccall( (:IupGetAttributes, iup), Ptr{Uint8}, (Ptr{Ihandle},), ih)
end
function IupSetAttribute(ih::Ptr{Ihandle}, name::String, value::String="")
	ccall((:IupSetAttribute, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Uint8}), ih, name, value)
end
function IupSetStrAttribute(ih::Ptr{Ihandle}, name::String, value::String)
  ccall( (:IupSetStrAttribute, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Uint8}), ih, name, value)
end
function IupSetInt(ih::Ptr{Ihandle}, name::String, value::Cint)
  ccall( (:IupSetInt, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint), ih, name, value)
end
function IupSetFloat(ih::Ptr{Ihandle}, name::String, value)
  ccall( (:IupSetFloat, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cfloat), ih, name, value)
end
function IupSetRGB(ih::Ptr{Ihandle}, name::String, r::Cuchar, g::Cuchar, b::Cuchar)
  ccall( (:IupSetRGB, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cuchar, Cuchar, Cuchar), ih, name, r, g, b)
end
function IupGetAttribute(ih::Ptr{Ihandle}, name::String)
	ccall((:IupGetAttribute, iup), Ptr{Uint8}, (Ptr{Ihandle}, Ptr{Uint8}), ih, name)
end
function IupGetInt(ih::Ptr{Ihandle}, name::String)
	ccall((:IupGetInt, iup), Cint, (Ptr{Ihandle}, Ptr{Uint8}), ih, name)
end
function IupGetInt2(ih::Ptr{Ihandle}, name::String)
	ccall((:IupGetInt2, iup), Cint, (Ptr{Ihandle}, Ptr{Uint8}), ih, name)
end
function IupGetIntInt(ih::Ptr{Ihandle}, name::String, i1::Ptr{Cint}, i2::Ptr{Cint})
  ccall( (:IupGetIntInt, iup), Cint, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Cint}, Ptr{Cint}), ih, name, i1, i2)
end
function IupGetFloat(ih::Ptr{Ihandle}, name::String)
	ccall((:IupGetFloat, iup), Cfloat, (Ptr{Ihandle}, Ptr{Uint8}), ih, name)
end
function IupGetRGB(ih::Ptr{Ihandle}, name::String, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar})
  ccall( (:IupGetRGB, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}), ih, name, r, g, b)
end
function IupSetAttributeId(ih::Ptr{Ihandle}, name::String, id::Cint, value::String)
  ccall( (:IupSetAttributeId, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Ptr{Uint8}), ih, name, id, value)
end
function IupSetStrAttributeId(ih::Ptr{Ihandle}, name::String, id::Cint, value::String)
  ccall( (:IupSetStrAttributeId, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Ptr{Uint8}), ih, name, id, value)
end
function IupSetIntId(ih::Ptr{Ihandle}, name::String, id::Cint, value::Cint)
  ccall( (:IupSetIntId, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint), ih, name, id, value)
end
function IupSetFloatId(ih::Ptr{Ihandle}, name::String, id::Cint, value::Cfloat)
  ccall( (:IupSetFloatId, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cfloat), ih, name, id, value)
end
function IupSetRGBId(ih::Ptr{Ihandle}, name::String, id::Cint, r::Cuchar, g::Cuchar, b::Cuchar)
  ccall( (:IupSetRGBId, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cuchar, Cuchar, Cuchar), ih, name, id, r, g, b)
end
function IupGetAttributeId(ih::Ptr{Ihandle}, name::String, id::Cint)
  ccall( (:IupGetAttributeId, iup), Ptr{Uint8}, (Ptr{Ihandle}, Ptr{Uint8}, Cint), ih, name, id)
end
function IupGetIntId(ih::Ptr{Ihandle}, name::String, id::Cint)
  ccall( (:IupGetIntId, iup), Cint, (Ptr{Ihandle}, Ptr{Uint8}, Cint), ih, name, id)
end
function IupGetFloatId(ih::Ptr{Ihandle}, name::String, id::Cint)
  ccall( (:IupGetFloatId, iup), Cfloat, (Ptr{Ihandle}, Ptr{Uint8}, Cint), ih, name, id)
end
function IupGetRGBId(ih::Ptr{Ihandle}, name::String, id::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar})
  ccall( (:IupGetRGBId, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}), ih, name, id, r, g, b)
end
function IupSetAttributeId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint, value::String)
  ccall( (:IupSetAttributeId2, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint, Ptr{Uint8}), ih, name, lin, col, value)
end
function IupSetStrAttributeId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint, value::String)
  ccall( (:IupSetStrAttributeId2, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint, Ptr{Uint8}), ih, name, lin, col, value)
end
function IupSetIntId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint, value::Cint)
  ccall( (:IupSetIntId2, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint, Cint), ih, name, lin, col, value)
end
function IupSetFloatId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint, value::Cfloat)
  ccall( (:IupSetFloatId2, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint, Cfloat), ih, name, lin, col, value)
end
function IupSetRGBId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint, r::Cuchar, g::Cuchar, b::Cuchar)
  ccall( (:IupSetRGBId2, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint, Cuchar, Cuchar, Cuchar), ih, name, lin, col, r, g, b)
end
function IupGetAttributeId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint)
  ccall( (:IupGetAttributeId2, iup), Ptr{Uint8}, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint), ih, name, lin, col)
end
function IupGetIntId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint)
  ccall( (:IupGetIntId2, iup), Cint, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint), ih, name, lin, col)
end
function IupGetFloatId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint)
  ccall( (:IupGetFloatId2, iup), Cfloat, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint), ih, name, lin, col)
end
function IupGetRGBId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar})
  ccall( (:IupGetRGBId2, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}), ih, name, lin, col, r, g, b)
end
function IupSetGlobal(name::String, value::String)
	ccall((:IupSetGlobal, iup), None, (Ptr{Uint8}, Ptr{Uint8}), name, value)
end
function IupSetStrGlobal(name::String, value::String)
  ccall( (:IupSetStrGlobal, iup), None, (Ptr{Uint8}, Ptr{Uint8}), name, value)
end
function IupGetGlobal(name::String)
	ccall((:IupGetGlobal, iup), Ptr{Uint8}, (Ptr{Uint8},), name)
end
function IupSetFocus(ih::Ptr{Ihandle})
  ccall( (:IupSetFocus, iup), Ptr{Ihandle}, (Ptr{Ihandle},), ih)
end
function IupGetFocus()
  ccall( (:IupGetFocus, iup), Ptr{Ihandle}, (), )
end
function IupPreviousField(ih::Ptr{Ihandle})
  ccall( (:IupPreviousField, iup), Ptr{Ihandle}, (Ptr{Ihandle},), ih)
end
function IupNextField(ih::Ptr{Ihandle})
  ccall( (:IupNextField, iup), Ptr{Ihandle}, (Ptr{Ihandle},), ih)
end
function IupGetCallback(ih::Ptr{Ihandle}, name::String)
  ccall( (:IupGetCallback, iup), Icallback, (Ptr{Ihandle}, Ptr{Uint8}), ih, name)
end
function IupSetCallback(ih::Ptr{Ihandle}, name::String, func::Icallback)
	ccall((:IupSetCallback, iup), Icallback, (Ptr{Ihandle}, Ptr{Uint8}, Icallback), ih, name, func)
end
function IupGetFunction(name::String)
  ccall( (:IupGetFunction, iup), Icallback, (Ptr{Uint8},), name)
end
function IupSetFunction(name::String, func::Icallback)
	ccall((:IupSetFunction, iup), Icallback, (Ptr{Uint8}, Icallback), name, func)
end
function IupGetHandle(name::String)
	ccall((:IupGetHandle, iup), Ptr{Ihandle}, (Ptr{Uint8},), name)
end
function IupSetHandle(name::String, ih::Ptr{Ihandle})
	ccall((:IupSetHandle, iup), Ptr{Ihandle}, (Ptr{Uint8}, Ptr{Ihandle}), name, ih)
end
function IupGetAllNames(names::Ptr{Ptr{Uint8}}, n::Cint)
  ccall( (:IupGetAllNames, iup), Cint, (Ptr{Ptr{Uint8}}, Cint), names, n)
end
function IupGetAllDialogs(names::Ptr{Ptr{Uint8}}, n::Cint)
  ccall( (:IupGetAllDialogs, iup), Cint, (Ptr{Ptr{Uint8}}, Cint), names, n)
end
function IupGetName(ih::Ptr{Ihandle})
  ccall( (:IupGetName, iup), Ptr{Uint8}, (Ptr{Ihandle},), ih)
end
function IupSetAttributeHandle(ih::Ptr{Ihandle}, name::String, ih_named::Ptr{Ihandle})
	ccall((:IupSetAttributeHandle, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Ihandle}), ih, name, ih_named)
end
function IupGetAttributeHandle(ih::Ptr{Ihandle}, name::String)
	ccall((:IupGetAttributeHandle, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Uint8}), ih, name)
end
function IupGetClassName(ih::Ptr{Ihandle})
	ccall((:IupGetClassName, iup), Ptr{Uint8}, (Ptr{Ihandle},), ih)
end
function IupGetClassType(ih::Ptr{Ihandle})
  ccall( (:IupGetClassType, iup), Ptr{Uint8}, (Ptr{Ihandle},), ih)
end
function IupGetAllClasses(names::Ptr{Ptr{Uint8}}, n::Int)
  ccall( (:IupGetAllClasses, iup), Cint, (Ptr{Ptr{Uint8}}, Cint), names, n)
end
function IupGetClassAttributes(classname::String, names::Ptr{Ptr{Uint8}}, n::Int)
	ccall((:IupGetClassAttributes, iup), Cint, (Ptr{Uint8}, Ptr{Ptr{Uint8}}, Cint), classname, names, n)
end
function IupGetClassCallbacks(classname::String, names::Ptr{Ptr{Uint8}}, n::Int)
	ccall((:IupGetClassCallbacks, iup), Cint, (Ptr{Uint8}, Ptr{Ptr{Uint8}}, Cint), classname, names, n)
end
function IupSaveClassAttributes(ih::Ptr{Ihandle})
  ccall( (:IupSaveClassAttributes, iup), None, (Ptr{Ihandle},), ih)
end
function IupCopyClassAttributes(src_ih::Ptr{Ihandle}, dst_ih::Ptr{Ihandle})
  ccall( (:IupCopyClassAttributes, iup), None, (Ptr{Ihandle}, Ptr{Ihandle}), src_ih, dst_ih)
end
function IupSetClassDefaultAttribute(classname::String, name::String, value::String)
  ccall( (:IupSetClassDefaultAttribute, iup), None, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), classname, name, value)
end
function IupClassMatch(ih::Ptr{Ihandle}, classname::String)
  ccall( (:IupClassMatch, iup), Cint, (Ptr{Ihandle}, Ptr{Uint8}), ih, classname)
end
function IupCreate(classname::String)
  ccall( (:IupCreate, iup), Ptr{Ihandle}, (Ptr{Uint8},), classname)
end
function IupCreatev(classname::String, params::Ptr{Ptr{None}})
  ccall( (:IupCreatev, iup), Ptr{Ihandle}, (Ptr{Uint8}, Ptr{Ptr{None}}), classname, params)
end
function IupFill()
	ccall((:IupFill, iup), Ptr{Ihandle}, (), )
end
function IupRadio(child::Ptr{Ihandle})
	ccall((:IupRadio, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end
function IupVboxv(children::Ptr{Ptr{Ihandle}})
  ccall( (:IupVboxv, iup), Ptr{Ihandle}, (Ptr{Ptr{Ihandle}},), children)
end
function IupZboxv(children::Ptr{Ptr{Ihandle}})
  ccall( (:IupZboxv, iup), Ptr{Ihandle}, (Ptr{Ptr{Ihandle}},), children)
end
function IupHboxv(children::Ptr{Ptr{Ihandle}})
  ccall( (:IupHboxv, iup), Ptr{Ihandle}, (Ptr{Ptr{Ihandle}},), children)
end
function IupNormalizerv(ih_list::Ptr{Ptr{Ihandle}})
  ccall( (:IupNormalizerv, iup), Ptr{Ihandle}, (Ptr{Ptr{Ihandle}},), ih_list)
end
function IupCboxv(children::Ptr{Ptr{Ihandle}})
  ccall( (:IupCboxv, iup), Ptr{Ihandle}, (Ptr{Ptr{Ihandle}},), children)
end
function IupSbox(child::Ptr{Ihandle})
  ccall( (:IupSbox, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end
function IupSplit(child1::Ptr{Ihandle}, child2::Ptr{Ihandle})
  ccall( (:IupSplit, iup), Ptr{Ihandle}, (Ptr{Ihandle}, Ptr{Ihandle}), child1, child2)
end
function IupScrollBox(child::Ptr{Ihandle})
  ccall( (:IupScrollBox, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end
function IupGridBoxv(children::Ptr{Ptr{Ihandle}})
  ccall( (:IupGridBoxv, iup), Ptr{Ihandle}, (Ptr{Ptr{Ihandle}},), children)
end
function IupExpander(child::Ptr{Ihandle})
  ccall( (:IupExpander, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end
function IupDetachBox(child::Ptr{Ihandle})
  ccall( (:IupDetachBox, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end
function IupBackgroundBox(child::Ptr{Ihandle})
	ccall((:IupBackgroundBox, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end
function IupFrame(child::Ptr{Ihandle})
	ccall((:IupFrame, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end

function IupImage(width::Int, height::Int, pixmap::Ptr{Cuchar})
	ccall((:IupImage, iup), Ptr{Ihandle}, (Cint, Cint, Ptr{Cuchar}), width, height, pixmap)
end
function IupImage(width::Integer, height::Integer, pixmap::Array{Uint8})
	IupImage(width, height, pointer(pixmap))
end

function IupImageRGB(width::Cint, height::Cint, pixmap::Ptr{Cuchar})
  ccall( (:IupImageRGB, iup), Ptr{Ihandle}, (Cint, Cint, Ptr{Cuchar}), width, height, pixmap)
end
function IupImageRGBA(width::Int, height::Int, pixmap::Ptr{Cuchar})
	ccall((:IupImageRGBA, iup), Ptr{Ihandle}, (Cint, Cint, Ptr{Cuchar}), width, height, pixmap)
end
function IupItem(title::String, action::String="")
	ccall((:IupItem, iup), Ptr{Ihandle}, (Ptr{Uint8}, Ptr{Uint8}), title, action)
end
function IupSubmenu(title::String, child::Ptr{Ihandle})
	ccall((:IupSubmenu, iup), Ptr{Ihandle}, (Ptr{Uint8}, Ptr{Ihandle}), title, child)
end
function IupSeparator()
	ccall((:IupSeparator, iup), Ptr{Ihandle}, (), )
end
function IupMenuv(children::Ptr{Ptr{Ihandle}})
  ccall( (:IupMenuv, iup), Ptr{Ihandle}, (Ptr{Ptr{Ihandle}},), children)
end
function IupButton(title::String="", action::String="")
	ccall((:IupButton, iup), Ptr{Ihandle}, (Ptr{Uint8}, Ptr{Uint8}), title, action)
end
function IupCanvas(action::String="")
	ccall((:IupCanvas, iup), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupCanvas(action::Ptr{None})
	ccall((:IupCanvas, iup), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupDialog(child::Ptr{Ihandle})
	ccall((:IupDialog, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end
function IupUser()
  ccall( (:IupUser, iup), Ptr{Ihandle}, (), )
end
function IupLabel(title::String="")
	ccall((:IupLabel, iup), Ptr{Ihandle}, (Ptr{Uint8},), title)
end
function IupLabel(title::Ptr{None})
	ccall((:IupLabel, iup), Ptr{Ihandle}, (Ptr{Uint8},), title)
end
function IupList(action::String="")
	ccall((:IupList, iup), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupList(action::Ptr{None})
	ccall((:IupList, iup), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupText(action::String="")
	ccall((:IupText, iup), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupMultiLine(action::String="")
	ccall((:IupMultiLine, iup), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupMultiLine(action::Ptr{None})
	ccall((:IupMultiLine, iup), Ptr{Ihandle}, (Ptr{Uint8},), action)
end
function IupToggle(title::String="", action::String="")
	ccall((:IupToggle, iup), Ptr{Ihandle}, (Ptr{Uint8}, Ptr{Uint8}), title, action)
end
function IupTimer()
  ccall( (:IupTimer, iup), Ptr{Ihandle}, (), )
end
function IupClipboard()
  ccall( (:IupClipboard, iup), Ptr{Ihandle}, (), )
end
function IupProgressBar()
	ccall((:IupProgressBar, iup), Ptr{Ihandle}, (), )
end
function IupVal(type_::String="")
	ccall((:IupVal, iup), Ptr{Ihandle}, (Ptr{Uint8},), type_)
end
function IupVal(type_::Ptr{None})
	ccall((:IupVal, iup), Ptr{Ihandle}, (Ptr{Uint8},), type_)
end
function IupTabsv(children::Ptr{Ptr{Ihandle}})
  ccall( (:IupTabsv, iup), Ptr{Ihandle}, (Ptr{Ptr{Ihandle}},), children)
end
function IupTree()
	ccall((:IupTree, iup), Ptr{Ihandle}, (), )
end
function IupLink(url::String, title::String)
  ccall( (:IupLink, iup), Ptr{Ihandle}, (Ptr{Uint8}, Ptr{Uint8}), url, title)
end
function IupSpin()
  ccall( (:IupSpin, iup), Ptr{Ihandle}, (), )
end
function IupSpinbox(child::Ptr{Ihandle})
  ccall( (:IupSpinbox, iup), Ptr{Ihandle}, (Ptr{Ihandle},), child)
end
function IupSaveImageAsText(ih::Ptr{Ihandle}, file_name::String, format::String, name::String)
  ccall( (:IupSaveImageAsText, iup), Cint, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), ih, file_name, format, name)
end
function IupTextConvertLinColToPos(ih::Ptr{Ihandle}, lin::Cint, col::Cint, pos::Ptr{Cint})
  ccall( (:IupTextConvertLinColToPos, iup), None, (Ptr{Ihandle}, Cint, Cint, Ptr{Cint}), ih, lin, col, pos)
end
function IupTextConvertPosToLinCol(ih::Ptr{Ihandle}, pos::Cint, lin::Ptr{Cint}, col::Ptr{Cint})
  ccall( (:IupTextConvertPosToLinCol, iup), None, (Ptr{Ihandle}, Cint, Ptr{Cint}, Ptr{Cint}), ih, pos, lin, col)
end
function IupConvertXYToPos(ih::Ptr{Ihandle}, x::Cint, y::Cint)
  ccall( (:IupConvertXYToPos, iup), Cint, (Ptr{Ihandle}, Cint, Cint), ih, x, y)
end
function IupStoreGlobal(name::String, value::String)
  ccall( (:IupStoreGlobal, iup), None, (Ptr{Uint8}, Ptr{Uint8}), name, value)
end
function IupStoreAttribute(ih::Ptr{Ihandle}, name::String, value::String)
	ccall((:IupStoreAttribute, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Uint8}), ih, name, value)
end
function IupStoreAttribute(ih::Ptr{Ihandle}, name::String, value::Ptr{Uint8})
	ccall((:IupStoreAttribute, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Ptr{Uint8}), ih, name, value)
end
function IupStoreAttributeId(ih::Ptr{Ihandle}, name::String, id::Cint, value::String)
	ccall((:IupStoreAttributeId, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Ptr{Uint8}), ih, name, id, value)
end
function IupStoreAttributeId2(ih::Ptr{Ihandle}, name::String, lin::Cint, col::Cint, value::String)
  ccall( (:IupStoreAttributeId2, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Cint, Ptr{Uint8}), ih, name, lin, col, value)
end
function IupTreeSetUserId(ih::Ptr{Ihandle}, id::Cint, userid::Ptr{None})
  ccall( (:IupTreeSetUserId, iup), Cint, (Ptr{Ihandle}, Cint, Ptr{None}), ih, id, userid)
end
function IupTreeGetUserId(ih::Ptr{Ihandle}, id::Cint)
  ccall( (:IupTreeGetUserId, iup), Ptr{None}, (Ptr{Ihandle}, Cint), ih, id)
end
function IupTreeGetId(ih::Ptr{Ihandle}, userid::Ptr{None})
  ccall( (:IupTreeGetId, iup), Cint, (Ptr{Ihandle}, Ptr{None}), ih, userid)
end
function IupTreeSetAttributeHandle(ih::Ptr{Ihandle}, name::String, id::Cint, ih_named::Ptr{Ihandle})
  ccall( (:IupTreeSetAttributeHandle, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Ptr{Ihandle}), ih, name, id, ih_named)
end
function IupTreeSetAttribute(ih::Ptr{Ihandle}, name::String, id::Cint, value::String)
  ccall( (:IupTreeSetAttribute, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Ptr{Uint8}), ih, name, id, value)
end
function IupTreeStoreAttribute(ih::Ptr{Ihandle}, name::String, id::Cint, value::String)
  ccall( (:IupTreeStoreAttribute, iup), None, (Ptr{Ihandle}, Ptr{Uint8}, Cint, Ptr{Uint8}), ih, name, id, value)
end
function IupTreeGetAttribute(ih::Ptr{Ihandle}, name::String, id::Int)
	ccall((:IupTreeGetAttribute, iup), Ptr{Uint8}, (Ptr{Ihandle}, Ptr{Uint8}, Cint), ih, name, id)
end
function IupTreeGetInt(ih::Ptr{Ihandle}, name::String, id::Int)
	ccall((:IupTreeGetInt, iup), Cint, (Ptr{Ihandle}, Ptr{Uint8}, Cint), ih, name, id)
end
function IupTreeGetFloat(ih::Ptr{Ihandle}, name::String, id::Int)
	ccall((:IupTreeGetFloat, iup), Cfloat, (Ptr{Ihandle}, Ptr{Uint8}, Cint), ih, name, id)
end
function IupGetActionName()
	ccall((:IupGetActionName, iup), Ptr{Uint8}, (), )
end
function IupMapFont(iupfont::String)
	ccall((:IupMapFont, iup), Ptr{Uint8}, (Ptr{Uint8},), iupfont)
end
function IupUnMapFont(driverfont::String)
	ccall((:IupUnMapFont, iup), Ptr{Uint8}, (Ptr{Uint8},), driverfont)
end
function IupFileDlg()
	ccall((:IupFileDlg, iup), Ptr{Ihandle}, (), )
end
function IupMessageDlg()
	ccall((:IupMessageDlg, iup), Ptr{Ihandle}, (), )
end
function IupColorDlg()
	ccall((:IupColorDlg, iup), Ptr{Ihandle}, (), )
end
function IupFontDlg()
	ccall((:IupFontDlg, iup), Ptr{Ihandle}, (), )
end
function IupProgressDlg()
	ccall((:IupProgressDlg, iup), Ptr{Ihandle}, (), )
end
function IupGetFile(arq::String)
	ccall((:IupGetFile, iup), Cint, (Ptr{Uint8},), arq)
end
function IupMessage(title::String, msg::String)
	ccall((:IupMessage, iup), None, (Ptr{Uint8}, Ptr{Uint8}), title, msg)
end
function IupMessage(title::String, msg::Ptr{Uint8})
	ccall((:IupMessage, iup), None, (Ptr{Uint8}, Ptr{Uint8}), title, msg)
end

function IupAlarm(title::String, msg::String, b1::String, b2=C_NULL, b3=C_NULL)
	# Should I test that if b2 or b3 are given but are not strings?
	ccall((:IupAlarm, iup), Cint, (Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}, Ptr{Uint8}), title, msg, b1, b2, b3)
end

function IupListDialog(_type::Int, title::String, size::Int, list::Ptr{Ptr{Uint8}}, op::Int, max_col::Int,
		max_lin::Int, marks::Ptr{Int})
	ccall((:IupListDialog, iup), Cint, (Cint, Ptr{Uint8}, Cint, Ptr{Ptr{Uint8}}, Cint, Cint, Cint, Ptr{Cint}),
		_type, title, size, list, op, max_col, max_lin, marks)
end
function IupGetText(title::String, text::String)
	ccall((:IupGetText, iup), Cint, (Ptr{Uint8}, Ptr{Uint8}), title, text)
end
function IupGetColor(x::Int, y::Int, r::Ptr{Cuchar}, g::Ptr{Cuchar}, b::Ptr{Cuchar})
	ccall((:IupGetColor, iup), Cint, (Cint, Cint, Ptr{Cuchar}, Ptr{Cuchar}, Ptr{Cuchar}), x, y, r, g, b)
end
function IupGetParamv(title::String, action::Iparamcb, user_data::Ptr{None}, format::String, param_count::Int,
		param_extra::Int, param_data::Ptr{Ptr{None}})
	ccall((:IupGetParamv, iup), Cint, (Ptr{Uint8}, Iparamcb, Ptr{None}, Ptr{Uint8}, Cint, Cint, Ptr{Ptr{None}}),
		title, action, user_data, format, param_count, param_extra, param_data)
end
function IupLayoutDialog(dialog::Ptr{Ihandle})
	ccall((:IupLayoutDialog, iup), Ptr{Ihandle}, (Ptr{Ihandle},), dialog)
end
function IupElementPropertiesDialog(elem::Ptr{Ihandle})
	ccall((:IupElementPropertiesDialog, iup), Ptr{Ihandle}, (Ptr{Ihandle},), elem)
end

#=
const GtkFileChooserDialogDict = Dict{Int, Function}()  # for varargs ccall
type GtkFileChooserDialog <: GtkDialogI
    handle::Ptr{GObject}
    function GtkFileChooserDialog(title::String, parent::Union(GtkWindow,Ptr{Void}), action::Integer, button_text_response...)
        n = length(button_text_response)
        if !iseven(n)
            error("button_text_response must consist of text/response pairs")
        end
        npairs = div(n, 2)
        if !haskey(GtkFileChooserDialogDict, npairs)
            # Build a function expression that makes ccall with explicit args of correct types
            ctypeexpr = Expr(:tuple,Ptr{Uint8},Ptr{Void},Cint,ntuple(n,i->isodd(i) ? Ptr{Uint8} : Cint)...,Ptr{Void})
            argnameexpr = Expr(:tuple,:title,:parent,:action,Expr(:...,:button_text_response))
            argvalexpr = tuple(:title,:(anonp(parent)),:action,ntuple(n,i->:(button_text_response[$i]))...,:C_NULL)
            ex = Expr(:function, argnameexpr, Expr(:ccall,
                                                   :(:gtk_file_chooser_dialog_new,libgtk),
                                                   :(Ptr{GObject}),
                                                   ctypeexpr,
                                                   argvalexpr...))
            GtkFileChooserDialogDict[npairs] = eval(ex)
        end
        hnd = GtkFileChooserDialogDict[npairs](title, parent, action,button_text_response...)
        widget = gc_ref(new(hnd))
        gtk_doevent()
        show(widget)
        widget
    end
end
=#