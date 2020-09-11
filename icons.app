module elib-bootstrap/icons

  template iBool(x: Bool){
      if(x != null && x) { iOk } else { iRemove }
  }

  template iOk(x: Bool) {
      if(x != null && x) { iOk }
  }

section Icons


// Mapping from Glyphicons to Font Awesome
// ---------------------------------------
// iEuro                  -> iEuroSign
template iEuro() { iEuroSign[all attributes] }
// iEur                   -> iEuroSign
template iEur() { iEuroSign[all attributes] }
// iPencil                -> iPencilAlt
template iPencil() { iPencilAlt[all attributes] }
// iGlass                 -> iGlassMartini
template iGlass() { iGlassMartini[all attributes] }
// iStarEmpty             -> irStar
template iStarEmpty() { irStar[all attributes] }
// iOk                    -> iCheck
template iOk() { iCheck[all attributes] }
// iRemove                -> iTimes
template iRemove() { iTimes[all attributes] }
// iZoomIn                -> iSearchPlus
template iZoomIn() { iSearchPlus[all attributes] }
// iZoomOut               -> iSearchMinus
template iZoomOut() { iSearchMinus[all attributes] }
// iOff                   -> iPowerOff
template iOff() { iPowerOff[all attributes] }
// iTime                  -> iClock
template iTime() { iClock[all attributes] }
// iDownloadAlt           -> iDownload
template iDownloadAlt() { iDownload[all attributes] }
// iRepeat                -> iRedo
template iRepeat() { iRedo[all attributes] }
// iRefresh               -> iSync
template iRefresh() { iSync[all attributes] }
// iVolumeOff             -> iVolumeMute
template iVolumeOff() { iVolumeMute[all attributes] }
// iIndentLeft            -> iIndent
template iIndentLeft() { iIndent[all attributes] }
// iIndentRight           -> ?

// iFacetimeVideo         -> iVideo
template iFacetimeVideo() { iVideo[all attributes] }
// iPicture               -> iImage
template iPicture() { iImage[all attributes] }
// iMapMarker             -> iMapMarkerAlt
template iMapMarker() { iMapMarkerAlt[all attributes] }
// iShare                 -> iShareSquare
template iShare() { iShareSquare[all attributes] }
// iCheck                 -> iCheckSquare
template iCheck() { iCheckSquare[all attributes] }
// iMove                  -> iArrowsAlt
template iMove() { iArrowsAlt[all attributes] }
// iPlusSign              -> iPlusCircle
template iPlusSign() { iPlusCircle[all attributes] }
// iMinusSign             -> iMinusCircle
template iMinusSign() { iMinusCircle[all attributes] }
// iRemoveSign            -> iTimesCircle
template iRemoveSign() { iTimesCircle[all attributes] }
// iOkSign                -> iCheckCircle
template iOkSign() { iCheckCircle[all attributes] }
// iQuestionSign          -> iQuestionCircle
template iQuestionSign() { iQuestionCircle[all attributes] }
// iInfoSign              -> iInfoCircle
template iInfoSign() { iInfoCircle[all attributes] }
// iScreenshot            -> Bullseye
template iScreenshot() { iBullseye[all attributes] }
// iRemoveCircle          -> irTimesCircle
template iRemoveCircle() { irTimesCircle[all attributes] }
// iOkCircle              -> irCheckCircle
template iOkCircle() { irCheckCircle[all attributes] }
// iBanCircle             -> iBan
template iBanCircle() { iBan[all attributes] }
// iShareAlt              -> iShare
template iShareAlt() { iShare[all attributes] }
// iResizeFull            -> iExpandArrowsAlt
template iResizeFull() { iExpandArrowsAlt[all attributes] }
// iResizeSmall           -> iCompressArrowsAlt
template iResizeSmall() { iCompressArrowsAlt[all attributes] }
// iExclamationSign       -> iExclamationCircle
template iExclamationSign() { iExclamationCircle[all attributes] }
// iEyeOpen               -> iEye
template iEyeOpen() { iEye[all attributes] }
// iEyeClose              -> iEyeSlash
template iEyeClose() { iEyeSlash[all attributes] }
// iWarningSign           -> iExclamationTriangle
template iWarningSign() { iExclamationTriangle[all attributes] }
// iFolderClose           -> iFolder
template iFolderClose() { iFolder[all attributes] }
// iResizeVertical        -> iArrowsAltV
template iResizeVertical() { iArrowsAltV[all attributes] }
// iResizeHorizontal      -> iArrowsAltH
template iResizeHorizontal() { iArrowsAltH[all attributes] }
// iThumbsUp              -> irThumbsUp
template iThumbsUp() { irThumbsUp[all attributes] }
// iThumbsDown            -> irThumbsDown
template iThumbsDown() { irThumbsDown[all attributes] }
// iHandRight             -> iHandPointRight
template iHandRight() { iHandPointRight[all attributes] }
// iHandLeft              -> iHandPointLeft
template iHandLeft() { iHandPointLeft[all attributes] }
// iHandUp                -> iHandPointUp
template iHandUp() { iHandPointUp[all attributes] }
// iHandDown              -> iHandPointDown
template iHandDown() { iHandPointDown[all attributes] }
// iCircleArrowRight      -> iArrowAltCircleRight
template iCircleArrowRight() { iArrowAltCircleRight[all attributes] }
// iCircleArrowLeft       -> iArrowAltCircleLeft
template iCircleArrowLeft() { iArrowAltCircleLeft[all attributes] }
// iCircleArrowUp         -> iArrowAltCircleUp
template iCircleArrowUp() { iArrowAltCircleUp[all attributes] }
// iCircleArrowDown       -> iArrowAltCircleDown
template iCircleArrowDown() { iArrowAltCircleDown[all attributes] }
// iGlobe                 -> iGlobeAmericas
template iGlobe() { iGlobeAmericas[all attributes] }
// iFullscreen            -> iExpandArrowsAlt
template iFullscreen() { iExpandArrowsAlt[all attributes] }
// iDashboard             -> iTachometerAlt
template iDashboard() { iTachometerAlt[all attributes] }
// iHeartEmpty            -> irHeart
template iHeartEmpty() { irHeart[all attributes] }
// iPhone                 -> iMobileAlt
template iPhone() { iMobileAlt[all attributes] }
// iPushpin               -> iMapPin
template iPushpin() { iMapPin[all attributes] }
// iUsd                   -> iDollarSign
template iUsd() { iDollarSign[all attributes] }
// iGbp                   -> iPoundSign
template iGbp() { iPoundSign[all attributes] }
// iSortByAlphabet        -> iSortAlphaDown
template iSortByAlphabet() { iSortAlphaDown[all attributes] }
// iSortByAlphabetAlt     -> iSortAlphaDownAlt
template iSortByAlphabetAlt() { iSortAlphaDownAlt[all attributes] }
// iSortByOrder           -> iSortNumericDown
template iSortByOrder() { iSortNumericDown[all attributes] }
// iSortByOrderAlt        -> iSortNumericDownAlt
template iSortByOrderAlt() { iSortNumericDownAlt[all attributes] }
// iSortByAttributes      -> iSortAmountDown
template iSortByAttributes() { iSortAmountDown[all attributes] }
// iSortByAttributesAlt   -> iSortAmountDownAlt
template iSortByAttributesAlt() { iSortAmountDownAlt[all attributes] }
// iUnchecked             -> iSquare
template iUnchecked() { iSquare[all attributes] }
// iExpand                -> iCaretSquareRight
template iExpand() { iCaretSquareRight[all attributes] }
// iCollapseDown          -> iCaretSquareDown
template iCollapseDown() { iCaretSquareDown[all attributes] }
// iCollapseUp            -> iCaretSquareUp
template iCollapseUp() { iCaretSquareUp[all attributes] }
// iLogIn                 -> iSignInAlt
template iLogIn() { iSignInAlt[all attributes] }
// iFlash                 -> iBolt
template iFlash() { iBolt[all attributes] }
// iLogOut                -> iSignOutAlt
template iLogOut() { iSignOutAlt[all attributes] }
// iNewWindow             -> iExternalLinkAlt
template iNewWindow() { iExternalLinkAlt[all attributes] }
// iRecord                -> iRecordVinyl
template iRecord() { iRecordVinyl[all attributes] }
// iSave                  -> iFileDownload
template iSave() { iDownload[all attributes] }
// iOpen                  -> iUpload
template iSave() { iUpload[all attributes] }
// iImport                -> ?
template iImport() { iFileImport[all attributes] }
// iExport                -> ?
template iExport() { iFileExport[all attributes] }
// iSend                  -> iPaperPlane
template iSend() { iPaperPlane[all attributes] }
// iFloppyDisk            -> iSave
template iFloppyDisk() { iSave[all attributes] }
// iFloppySaved           -> ?
template iFloppySaved() { iFileMedical[all attributes] }
// iFloppyRemove          -> ?
template iFloppyRemove() { iFileExcel[all attributes] }
// iFloppySave            -> ?
template iFloppySave() { iFileDownload[all attributes] }
// iFloppyOpen            -> ?
template iFloppyOpen() { iFileUpload[all attributes] }
// iTransfer              -> iExchangeAlt
template iTransfer() { iExchangeAlt[all attributes] }
// iCutlery               -> iUtensils
template iCutlery() { iUtensils[all attributes] }
// iHeader                -> iHeading
template iHeader() { iHeading[all attributes] }
// iCompressed            -> iFileArchive
template iCompressed() { iFileArchive[all attributes] }
// iEarphone              -> iPhone
template iEarphone() { iPhone[all attributes] }
// iPhoneAlt              -> ?
template iPhoneAlt() { iPhoneSquareAlt[all attributes] }
// iTower                 -> iChessRook
template iTower() { iChessRook[all attributes] }
// iStats                 -> iChartBar
template iStats() { iChartBar[all attributes] }
// iSdVideo               -> ?
template iSdVideo() { iFilm[all attributes] }
// iHdVideo               -> ?
template iHdVideo() { iFilm[all attributes] }
// iSubtitles             -> iClosedCaptioning
template iSubtitles() { iClosedCaptioning[all attributes] }
// iSoundStereo           -> ?
template iSoundStereo() { iHeadphones[all attributes] }
// iSoundDolby            -> ?
template iSoundDolby() { iHeadphones[all attributes] }
// iSound51               -> ?
template iSound51() { iHeadphones[all attributes] }
// iSound61               -> ?
template iSound61() { iHeadphones[all attributes] }
// iSound71               -> ?
template iSound71() { iHeadphones[all attributes] }
// iCopyrightMark         -> irCopyright
template iCopyrightMark() { irCopyright[all attributes] }
// iRegistrationMark      -> irRegistered
template iRegistrationMark() { irRegistered[all attributes] }
// iCloudDownload         -> iCloudDownloadAlt
template iCloudDownload() { iCloudDownloadAlt[all attributes] }
// iCloudUpload           -> iCloudUploadAlt
template iCloudUpload() { iCloudUploadAlt[all attributes] }
// iTreeConifer           -> iTree
template iTreeConifer() { iTree[all attributes] }
// iTreeDeciduous         -> ?
template iTreeDeciduous() { iTree[all attributes] }
// iCd                    -> iCompactDisc
template iCd() { iCompactDisc[all attributes] }
// iSaveFile              -> iFileDownload
template iSaveFile() { iFileDownload[all attributes] }
// iOpenFile              -> iFileUpload
template iOpenFile() { iFileUpload[all attributes] }
// iLevelUp               -> ?
template iLevelUp() { iLevelUpAlt[all attributes] }
// iAlert                 -> iExclamationTriangle
template iAlert() { iExclamationTriangle[all attributes] }
// iEqualizer             -> ?
template iEqualizer() { iSignal[all attributes] }
// iKing                  -> iChessKing
template iKing() { iChessKing[all attributes] }
// iQueen                 -> iChessQueen
template iQueen() { iChessQueen[all attributes] }
// iPawn                  -> iChessPawn
template iPawn() { iChessPawn[all attributes] }
// iBishop                -> iChessBishop
template iBishop() { iChessBishop[all attributes] }
// iKnight                -> iChessKnight
template iKnight() { iChessKnight[all attributes] }
// iBabyFormula           -> ?
template iBabyFormula() { iWineBottle[all attributes] }
// iTent                  -> iCampground
template iTent() { iCampground[all attributes] }
// iBlackboard            -> iChalkboard
template iBlackboard() { iChalkboard[all attributes] }
// iApply                 -> iAppleAlt
template iApply() { iAppleAlt[all attributes] }
// iErase                 -> iEraser
template iErase() { iEraser[all attributes] }
// iLamp                  -> ?
template iLamp() { iLightbulb[all attributes] }
// iDuplicate             -> iCopy
template iDuplicate() { iCopy[all attributes] }
// iScissors              -> iCut
template iScissors() { iCut[all attributes] }
// iBitcoinBtc            -> ibBitcoin
template iBitcoinBtc() { ibBitcoin[all attributes] }
// iBitcoinXbt            -> ibBitcoin
template iBitcoinXbt() { ibBitcoin[all attributes] }
// iYen                   -> iYenSign
template iYen() { iYenSign[all attributes] }
// iJpy                   -> iYenSign
template iJpy() { iYenSign[all attributes] }
// iRuble                 -> iRubleSign
template iRuble() { iRubleSign[all attributes] }
// iScale                 -> iWeight
template iScale() { iWeight[all attributes] }
// iIceLolly              -> iIceCream
template iIceLolly() { iIceCream[all attributes] }
// iIceLollyTasted        -> ?
template iIceLollyTasted() { iIceCream[all attributes] }
// iEducation             -> iUserGraduate
template iEducation() { iUserGraduate[all attributes] }
// iOptionHorizontal      -> iEllipsisH
template iOptionHorizontal() { iEllipsisH[all attributes] }
// iOptionVertical        -> iEllipsisV
template iOptionVertical() { iEllipsisV[all attributes] }
// iModalWindow           -> ?
template iModalWindow() { iWindowMaximize[all attributes] }
// iOil                   -> ?
template iOil() { iPrescriptionBottle[all attributes] }
// iGrain                 -> ?
template iGrain() { iBreadSlice[all attributes] }
// iSunglasses            -> iGlasses
template iSunglasses() { iGlasses[all attributes] }
// iTextSize              -> ?
template iTextSize() { iTextHeight[all attributes] }
// iTextColor             -> ?
template iTextColor() { iPaintBrush[all attributes] }
// iTextBackground        -> ?
template iTextBackground() { iBrush[all attributes] }
// iObjectAlignTop        -> ?
template iObjectAlignTop() { iAlignJustify[all attributes] }
// iObjectAlignBottom     -> ?
template iObjectAlignBottom() { iAlignJustify[all attributes] }
// iObjectAlignHorizontal -> ?
template iObjectAlignHorizontal() { iAlignJustify[all attributes] }
// iObjectAlignLeft       -> ?
template iObjectAlignLeft() { iAlignJustify[all attributes] }
// iObjectAlignVertical   -> ?
template iObjectAlignVertical() { iAlignJustify[all attributes] }
// iObjectAlignRight      -> ?
template iObjectAlignRight() { iAlignJustify[all attributes] }
// iTriangleRight         -> iCaretRight
template iTriangleRight() { iCaretRight[all attributes] }
// iTriangleLeft          -> iCaretLeft
template iTriangleLeft() { iCaretLeft[all attributes] }
// iTriangleBottom        -> iCaretDown
template iTriangleBottom() { iCaretDown[all attributes] }
// iTriangleTop           -> iCaretUp
template iTriangleTop() { iCaretUp[all attributes] }
// iConsole               -> iTerminal
template iConsole() { iTerminal[all attributes] }
// iMenuLeft              -> iAngleLeft
template iMenuLeft() { iAngleLeft[all attributes] }
// iMenuRight             -> iAngleRight
template iMenuRight() { iAngleRight[all attributes] }
// iMenuDown              -> iAngleDown
template iMenuDown() { iAngleDown[all attributes] }
// iMenuUp                -> iAngleUp
template iMenuUp() { iAngleUp[all attributes] }