LOCAL_PATH := $(call my-dir)

X4DROID_DATADIR ?= /system/etc/xserver/

X11_SOURCES := \
	src/AllCells.c   \
	src/AllowEv.c   \
	src/AllPlanes.c   \
	src/AutoRep.c   \
	src/Backgnd.c   \
	src/BdrWidth.c   \
	src/Bell.c   \
	src/Border.c   \
	src/ChAccCon.c   \
	src/ChActPGb.c   \
	src/ChClMode.c   \
	src/ChCmap.c   \
	src/ChGC.c   \
	src/ChKeyCon.c   \
	src/ChkIfEv.c   \
	src/ChkMaskEv.c   \
	src/ChkTypEv.c   \
	src/ChkTypWEv.c   \
	src/ChkWinEv.c   \
	src/ChPntCon.c   \
	src/ChProp.c   \
	src/ChSaveSet.c   \
	src/ChWAttrs.c   \
	src/ChWindow.c   \
	src/CirWin.c   \
	src/CirWinDn.c   \
	src/CirWinUp.c   \
	src/ClDisplay.c   \
	src/Clear.c   \
	src/ClearArea.c   \
	src/ConfWind.c   \
	src/Context.c   \
	src/ConvSel.c   \
	src/CopyArea.c   \
	src/CopyCmap.c   \
	src/CopyGC.c   \
	src/CopyPlane.c   \
	src/CrBFData.c   \
	src/CrCmap.c   \
	src/CrCursor.c   \
	src/CrGC.c   \
	src/CrGlCur.c   \
	src/CrPFBData.c   \
	src/CrPixmap.c   \
	src/CrWindow.c   \
	src/Cursor.c   \
	src/DefCursor.c   \
	src/DelProp.c   \
	src/Depths.c   \
	src/DestSubs.c   \
	src/DestWind.c   \
	src/DisName.c   \
	src/DrArc.c   \
	src/DrArcs.c   \
	src/DrLine.c   \
	src/DrLines.c   \
	src/DrPoint.c   \
	src/DrPoints.c   \
	src/DrRect.c   \
	src/DrRects.c   \
	src/DrSegs.c   \
	src/ErrDes.c   \
	src/ErrHndlr.c   \
	src/evtomask.c   \
	src/EvToWire.c   \
	src/FetchName.c   \
	src/FillArc.c   \
	src/FillArcs.c   \
	src/FillPoly.c   \
	src/FillRct.c   \
	src/FillRcts.c   \
	src/FilterEv.c   \
	src/Flush.c   \
	src/Font.c   \
	src/FontInfo.c   \
	src/FontNames.c   \
	src/FreeCmap.c   \
	src/FreeCols.c   \
	src/FreeCurs.c   \
	src/FreeEData.c   \
	src/FreeEventData.c   \
	src/FreeGC.c   \
	src/FreePix.c   \
	src/FSSaver.c   \
	src/FSWrap.c   \
	src/GCMisc.c   \
	src/Geom.c   \
	src/GetAtomNm.c   \
	src/GetColor.c   \
	src/GetDflt.c   \
	src/GetEventData.c   \
	src/GetFPath.c   \
	src/GetFProp.c   \
	src/GetGCVals.c   \
	src/GetGeom.c   \
	src/GetHColor.c   \
	src/GetHints.c   \
	src/GetIFocus.c   \
	src/GetImage.c   \
	src/GetKCnt.c   \
	src/GetMoEv.c   \
	src/GetNrmHint.c   \
	src/GetPCnt.c   \
	src/GetPntMap.c   \
	src/GetProp.c   \
	src/GetRGBCMap.c   \
	src/GetSOwner.c   \
	src/GetSSaver.c   \
	src/GetStCmap.c   \
	src/GetTxtProp.c   \
	src/GetWAttrs.c   \
	src/GetWMCMapW.c   \
	src/GetWMProto.c   \
	src/globals.c   \
	src/GrButton.c   \
	src/GrKey.c   \
	src/GrKeybd.c   \
	src/GrPointer.c   \
	src/GrServer.c   \
	src/Host.c   \
	src/Iconify.c   \
	src/IfEvent.c   \
	src/imConv.c   \
	src/ImText.c   \
	src/ImText16.c   \
	src/ImUtil.c   \
	src/InitExt.c   \
	src/InsCmap.c   \
	src/IntAtom.c   \
	src/KeyBind.c   \
	src/KeysymStr.c   \
	src/KillCl.c   \
	src/LiHosts.c   \
	src/LiICmaps.c   \
	src/LiProps.c   \
	src/ListExt.c   \
	src/LoadFont.c   \
	src/LockDis.c   \
	src/locking.c   \
	src/LookupCol.c   \
	src/LowerWin.c   \
	src/Macros.c   \
	src/MapRaised.c   \
	src/MapSubs.c   \
	src/MapWindow.c   \
	src/MaskEvent.c   \
	src/Misc.c   \
	src/ModMap.c   \
	src/MoveWin.c   \
	src/NextEvent.c   \
	src/OCWrap.c   \
	src/OMWrap.c   \
	src/OpenDis.c   \
	src/ParseCmd.c   \
	src/ParseCol.c   \
	src/ParseGeom.c   \
	src/PeekEvent.c   \
	src/PeekIfEv.c   \
	src/Pending.c   \
	src/PixFormats.c   \
	src/PmapBgnd.c   \
	src/PmapBord.c   \
	src/PolyReg.c   \
	src/PolyTxt.c   \
	src/PolyTxt16.c   \
	src/PropAlloc.c   \
	src/PutBEvent.c   \
	src/PutImage.c   \
	src/Quarks.c   \
	src/QuBest.c   \
	src/QuColor.c   \
	src/QuColors.c   \
	src/QuCurShp.c   \
	src/QuExt.c   \
	src/QuKeybd.c   \
	src/QuPntr.c   \
	src/QuStipShp.c   \
	src/QuTextE16.c   \
	src/QuTextExt.c   \
	src/QuTileShp.c   \
	src/QuTree.c   \
	src/RaiseWin.c   \
	src/RdBitF.c   \
	src/RecolorC.c   \
	src/ReconfWin.c   \
	src/ReconfWM.c   \
	src/Region.c   \
	src/RegstFlt.c   \
	src/RepWindow.c   \
	src/RestackWs.c   \
	src/RotProp.c   \
	src/ScrResStr.c   \
	src/SelInput.c   \
	src/SendEvent.c   \
	src/SetBack.c   \
	src/SetClMask.c   \
	src/SetClOrig.c   \
	src/SetCRects.c   \
	src/SetDashes.c   \
	src/SetFont.c   \
	src/SetFore.c   \
	src/SetFPath.c   \
	src/SetFunc.c   \
	src/SetHints.c   \
	src/SetIFocus.c   \
	src/SetLocale.c   \
	src/SetLStyle.c   \
	src/SetNrmHint.c   \
	src/SetPMask.c   \
	src/SetPntMap.c   \
	src/SetRGBCMap.c   \
	src/SetSOwner.c   \
	src/SetSSaver.c   \
	src/SetState.c   \
	src/SetStCmap.c   \
	src/SetStip.c   \
	src/SetTile.c   \
	src/SetTSOrig.c   \
	src/SetTxtProp.c   \
	src/SetWMCMapW.c   \
	src/SetWMProto.c   \
	src/StBytes.c   \
	src/StColor.c   \
	src/StColors.c   \
	src/StName.c   \
	src/StNColor.c   \
	src/StrKeysym.c   \
	src/StrToText.c   \
	src/Sync.c   \
	src/Synchro.c   \
	src/Text.c   \
	src/Text16.c   \
	src/TextExt.c   \
	src/TextExt16.c   \
	src/TextToStr.c   \
	src/TrCoords.c   \
	src/UIThrStubs.c   \
	src/UndefCurs.c   \
	src/UngrabBut.c   \
	src/UngrabKbd.c   \
	src/UngrabKey.c   \
	src/UngrabPtr.c   \
	src/UngrabSvr.c   \
	src/UninsCmap.c   \
	src/UnldFont.c   \
	src/UnmapSubs.c   \
	src/UnmapWin.c   \
	src/VisUtil.c   \
	src/WarpPtr.c   \
	src/Window.c   \
	src/WinEvent.c   \
	src/Withdraw.c   \
	src/WMGeom.c   \
	src/WMProps.c   \
	src/WrBitF.c   \
	src/x11_xcb.c   \
	src/xcb_disp.c   \
	src/xcb_io.c   \
	src/XlibAsync.c   \
	src/XlibInt.c   \
	src/Xrm.c

X11_SOURCES +=					\
	src/xlibi18n/ICWrap.c		\
	src/xlibi18n/imKStoUCS.c	\
	src/xlibi18n/IMWrap.c		\
	src/xlibi18n/lcCharSet.c	\
	src/xlibi18n/lcConv.c		\
	src/xlibi18n/lcCT.c			\
	src/xlibi18n/lcDB.c			\
	src/xlibi18n/lcDynamic.c	\
	src/xlibi18n/lcFile.c		\
	src/xlibi18n/lcGeneric.c	\
    src/xlibi18n/lcInit.c		\
	src/xlibi18n/lcPrTxt.c		\
	src/xlibi18n/lcPublic.c		\
	src/xlibi18n/lcPubWrap.c	\
	src/xlibi18n/lcRM.c			\
	src/xlibi18n/lcStd.c		\
	src/xlibi18n/lcTxtPr.c		\
	src/xlibi18n/lcUTF8.c		\
	src/xlibi18n/lcUtil.c		\
	src/xlibi18n/lcWrap.c		\
	src/xlibi18n/mbWMProps.c	\
	src/xlibi18n/mbWrap.c		\
	src/xlibi18n/utf8WMProps.c	\
	src/xlibi18n/utf8Wrap.c		\
	src/xlibi18n/wcWrap.c		\
	src/xlibi18n/XDefaultIMIF.c	\
	src/xlibi18n/XDefaultOMIF.c	\
	src/xlibi18n/xim_trans.c	\
	src/xlibi18n/XlcDL.c		\
	src/xlibi18n/XlcSL.c

X11_SOURCES +=				\
	src/xkb/XKB.c			\
	src/xkb/XKBAlloc.c		\
	src/xkb/XKBBind.c		\
	src/xkb/XKBCompat.c		\
	src/xkb/XKBCtrls.c		\
	src/xkb/XKBCvt.c		\
	src/xkb/XKBGAlloc.c		\
	src/xkb/XKBGeom.c		\
	src/xkb/XKBGetMap.c		\
	src/xkb/XKBMAlloc.c		\
	src/xkb/XKBMisc.c		\
	src/xkb/XKBleds.c		\
	src/xkb/XKBNames.c		\
	src/xkb/XKBRdBuf.c		\
	src/xkb/XKBSetGeom.c	\
	src/xkb/XKBSetMap.c		\
	src/xkb/XKBUse.c

X11_SOURCES +=				\
	src/xcms/AddDIC.c		\
	src/xcms/CCC.c			\
	src/xcms/cmsCmap.c		\
	src/xcms/cmsColNm.c		\
	src/xcms/cmsGlobls.c	\
	src/xcms/cmsInt.c		\
	src/xcms/cmsMath.c		\
	src/xcms/cmsProp.c		\
	src/xcms/cmsTrig.c		\
	src/xcms/CvCols.c		\
	src/xcms/CvColW.c		\
	src/xcms/Lab.c			\
	src/xcms/Luv.c			\
	src/xcms/HVC.c			\
	src/xcms/HVCGcC.c		\
	src/xcms/HVCMxC.c		\
	src/xcms/HVCMxVC.c		\
	src/xcms/LRGB.c			\
	src/xcms/XRGB.c			\
	src/xcms/UNDEFINED.c	\
	src/xcms/uvY.c			\
	src/xcms/xyY.c			\
	src/xcms/XYZ.c

X11_SOURCES +=						\
	modules/lc/def/lcDefConv.c		\
	modules/lc/gen/lcGenConv.c		\
	modules/lc/Utf8/lcUTF8Load.c	\
	modules/im/ximcp/imCallbk.c		\
	modules/im/ximcp/imDefFlt.c		\
	modules/im/ximcp/imDefIc.c		\
	modules/im/ximcp/imDefIm.c		\
	modules/im/ximcp/imDefLkup.c	\
	modules/im/ximcp/imDispch.c		\
	modules/im/ximcp/imEvToWire.c	\
	modules/im/ximcp/imExten.c		\
	modules/im/ximcp/imImSw.c		\
	modules/im/ximcp/imInt.c		\
	modules/im/ximcp/imInsClbk.c	\
	modules/im/ximcp/imLcGIc.c		\
	modules/im/ximcp/imLcFlt.c		\
	modules/im/ximcp/imLcIc.c		\
	modules/im/ximcp/imLcIm.c		\
	modules/im/ximcp/imLcLkup.c		\
	modules/im/ximcp/imLcPrs.c		\
	modules/im/ximcp/imLcSIc.c		\
	modules/im/ximcp/imRm.c			\
	modules/im/ximcp/imRmAttr.c		\
	modules/im/ximcp/imThaiFlt.c	\
	modules/im/ximcp/imThaiIc.c		\
	modules/im/ximcp/imThaiIm.c		\
	modules/im/ximcp/imTrans.c		\
	modules/im/ximcp/imTransR.c		\
	modules/im/ximcp/imTrX.c		\
	modules/om/generic/omDefault.c	\
	modules/om/generic/omGeneric.c	\
	modules/om/generic/omImText.c	\
	modules/om/generic/omText.c		\
	modules/om/generic/omTextEsc.c	\
	modules/om/generic/omTextExt.c	\
	modules/om/generic/omTextPer.c	\
	modules/om/generic/omXChar.c

X11_SOURCES +=				\
	support/internal.c		\
	support/mblen.c		\
	support/mbtowc.c		\
	support/wctomb.c

include $(CLEAR_VARS)

LOCAL_MODULE    := libX11
LOCAL_C_INCLUDES :=	\
	$(LOCAL_PATH)/include 		\
	$(LOCAL_PATH)/include/X11 	\
	$(LOCAL_PATH)/src 			\
	$(LOCAL_PATH)/src/xlibi18n 	\
	$(LOCAL_PATH)/src/xcms		\
	$(LOCAL_PATH)/src/xkb		\
	external/libxcb

LOCAL_C_INCLUDES += \
	external/xorgproto/include	\
	external/xtrans

LOCAL_EXPORT_C_INCLUDES := $(LOCAL_C_INCLUDES)

LOCAL_CFLAGS    := -DHAVE_CONFIG_H -w $(X4DROID_CFLAGS) -DX4DROID_DATADIR=\"$(X4DROID_DATADIR)\"
#usr/share/X11
LOCAL_LDFLAGS   := 
FILE_LIST := $(wildcard $(LOCAL_PATH)/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/**/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/**/**/*.c)
FILE_LIST += $(wildcard $(LOCAL_PATH)/**/**/**/*.c)
#LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

LOCAL_SRC_FILES := $(X11_SOURCES)
LOCAL_STATIC_LIBRARIES := libxcb libXau

# This differs on AOSP and NDK builds
ifeq (local,$(NDK_APPS))
LOCAL_LDFLAGS := -ldl
else
LOCAL_SHARED_LIBRARIES += libdl
endif

include $(BUILD_SHARED_LIBRARY)
