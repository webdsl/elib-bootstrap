module elib/elib-bootstrap/icons

  template iBool(x: Bool){
      if(x != null && x) { iOk } else { iRemove }
  }

  template iOk(x: Bool) {
      if(x != null && x) { iOk }
  }

section icons
/*
  Copy the CSS part of the glyphicon glyphicons, and paste it on this regex:
  https://regex101.com/r/xA2eK1/2
  Then in textwrangler paste the results (substitution) and do a find/replace grep style on:
  ^(\s+i)(\w)(\w+)-?(\w)?
  replace with:
  \1\U\2\E\3\U\4
  And hit replace all multiple times (because it will only catch 1 `-` at a time)
*/

htmlwrapper{
  iAsterisk span[class="glyphicon glyphicon-asterisk"]
  iPlus span[class="glyphicon glyphicon-plus"]
  iEuro span[class="glyphicon glyphicon-euro"]
  iEur span[class="glyphicon glyphicon-eur"]
  iMinus span[class="glyphicon glyphicon-minus"]
  iCloud span[class="glyphicon glyphicon-cloud"]
  iEnvelope span[class="glyphicon glyphicon-envelope"]
  iPencil span[class="glyphicon glyphicon-pencil"]
  iGlass span[class="glyphicon glyphicon-glass"]
  iMusic span[class="glyphicon glyphicon-music"]
  iSearch span[class="glyphicon glyphicon-search"]
  iHeart span[class="glyphicon glyphicon-heart"]
  iStar span[class="glyphicon glyphicon-star"]
  iStarEmpty span[class="glyphicon glyphicon-star-empty"]
  iUser span[class="glyphicon glyphicon-user"]
  iFilm span[class="glyphicon glyphicon-film"]
  iThLarge span[class="glyphicon glyphicon-th-large"]
  iTh span[class="glyphicon glyphicon-th"]
  iThList span[class="glyphicon glyphicon-th-list"]
  iOk span[class="glyphicon glyphicon-ok"]
  iRemove span[class="glyphicon glyphicon-remove"]
  iZoomIn span[class="glyphicon glyphicon-zoom-in"]
  iZoomOut span[class="glyphicon glyphicon-zoom-out"]
  iOff span[class="glyphicon glyphicon-off"]
  iSignal span[class="glyphicon glyphicon-signal"]
  iCog span[class="glyphicon glyphicon-cog"]
  iTrash span[class="glyphicon glyphicon-trash"]
  iHome span[class="glyphicon glyphicon-home"]
  iFile span[class="glyphicon glyphicon-file"]
  iTime span[class="glyphicon glyphicon-time"]
  iRoad span[class="glyphicon glyphicon-road"]
  iDownloadAlt span[class="glyphicon glyphicon-download-alt"]
  iDownload span[class="glyphicon glyphicon-download"]
  iUpload span[class="glyphicon glyphicon-upload"]
  iInbox span[class="glyphicon glyphicon-inbox"]
  iPlayCircle span[class="glyphicon glyphicon-play-circle"]
  iRepeat span[class="glyphicon glyphicon-repeat"]
  iRefresh span[class="glyphicon glyphicon-refresh"]
  iListAlt span[class="glyphicon glyphicon-list-alt"]
  iLock span[class="glyphicon glyphicon-lock"]
  iFlag span[class="glyphicon glyphicon-flag"]
  iHeadphones span[class="glyphicon glyphicon-headphones"]
  iVolumeOff span[class="glyphicon glyphicon-volume-off"]
  iVolumeDown span[class="glyphicon glyphicon-volume-down"]
  iVolumeUp span[class="glyphicon glyphicon-volume-up"]
  iQrcode span[class="glyphicon glyphicon-qrcode"]
  iBarcode span[class="glyphicon glyphicon-barcode"]
  iTag span[class="glyphicon glyphicon-tag"]
  iTags span[class="glyphicon glyphicon-tags"]
  iBook span[class="glyphicon glyphicon-book"]
  iBookmark span[class="glyphicon glyphicon-bookmark"]
  iPrint span[class="glyphicon glyphicon-print"]
  iCamera span[class="glyphicon glyphicon-camera"]
  iFont span[class="glyphicon glyphicon-font"]
  iBold span[class="glyphicon glyphicon-bold"]
  iItalic span[class="glyphicon glyphicon-italic"]
  iTextHeight span[class="glyphicon glyphicon-text-height"]
  iTextWidth span[class="glyphicon glyphicon-text-width"]
  iAlignLeft span[class="glyphicon glyphicon-align-left"]
  iAlignCenter span[class="glyphicon glyphicon-align-center"]
  iAlignRight span[class="glyphicon glyphicon-align-right"]
  iAlignJustify span[class="glyphicon glyphicon-align-justify"]
  iList span[class="glyphicon glyphicon-list"]
  iIndentLeft span[class="glyphicon glyphicon-indent-left"]
  iIndentRight span[class="glyphicon glyphicon-indent-right"]
  iFacetimeVideo span[class="glyphicon glyphicon-facetime-video"]
  iPicture span[class="glyphicon glyphicon-picture"]
  iMapMarker span[class="glyphicon glyphicon-map-marker"]
  iAdjust span[class="glyphicon glyphicon-adjust"]
  iTint span[class="glyphicon glyphicon-tint"]
  iEdit span[class="glyphicon glyphicon-edit"]
  iShare span[class="glyphicon glyphicon-share"]
  iCheck span[class="glyphicon glyphicon-check"]
  iMove span[class="glyphicon glyphicon-move"]
  iStepBackward span[class="glyphicon glyphicon-step-backward"]
  iFastBackward span[class="glyphicon glyphicon-fast-backward"]
  iBackward span[class="glyphicon glyphicon-backward"]
  iPlay span[class="glyphicon glyphicon-play"]
  iPause span[class="glyphicon glyphicon-pause"]
  iStop span[class="glyphicon glyphicon-stop"]
  iForward span[class="glyphicon glyphicon-forward"]
  iFastForward span[class="glyphicon glyphicon-fast-forward"]
  iStepForward span[class="glyphicon glyphicon-step-forward"]
  iEject span[class="glyphicon glyphicon-eject"]
  iChevronLeft span[class="glyphicon glyphicon-chevron-left"]
  iChevronRight span[class="glyphicon glyphicon-chevron-right"]
  iPlusSign span[class="glyphicon glyphicon-plus-sign"]
  iMinusSign span[class="glyphicon glyphicon-minus-sign"]
  iRemoveSign span[class="glyphicon glyphicon-remove-sign"]
  iOkSign span[class="glyphicon glyphicon-ok-sign"]
  iQuestionSign span[class="glyphicon glyphicon-question-sign"]
  iInfoSign span[class="glyphicon glyphicon-info-sign"]
  iScreenshot span[class="glyphicon glyphicon-screenshot"]
  iRemoveCircle span[class="glyphicon glyphicon-remove-circle"]
  iOkCircle span[class="glyphicon glyphicon-ok-circle"]
  iBanCircle span[class="glyphicon glyphicon-ban-circle"]
  iArrowLeft span[class="glyphicon glyphicon-arrow-left"]
  iArrowRight span[class="glyphicon glyphicon-arrow-right"]
  iArrowUp span[class="glyphicon glyphicon-arrow-up"]
  iArrowDown span[class="glyphicon glyphicon-arrow-down"]
  iShareAlt span[class="glyphicon glyphicon-share-alt"]
  iResizeFull span[class="glyphicon glyphicon-resize-full"]
  iResizeSmall span[class="glyphicon glyphicon-resize-small"]
  iExclamationSign span[class="glyphicon glyphicon-exclamation-sign"]
  iGift span[class="glyphicon glyphicon-gift"]
  iLeaf span[class="glyphicon glyphicon-leaf"]
  iFire span[class="glyphicon glyphicon-fire"]
  iEyeOpen span[class="glyphicon glyphicon-eye-open"]
  iEyeClose span[class="glyphicon glyphicon-eye-close"]
  iWarningSign span[class="glyphicon glyphicon-warning-sign"]
  iPlane span[class="glyphicon glyphicon-plane"]
  iCalendar span[class="glyphicon glyphicon-calendar"]
  iRandom span[class="glyphicon glyphicon-random"]
  iComment span[class="glyphicon glyphicon-comment"]
  iMagnet span[class="glyphicon glyphicon-magnet"]
  iChevronUp span[class="glyphicon glyphicon-chevron-up"]
  iChevronDown span[class="glyphicon glyphicon-chevron-down"]
  iRetweet span[class="glyphicon glyphicon-retweet"]
  iShoppingCart span[class="glyphicon glyphicon-shopping-cart"]
  iFolderClose span[class="glyphicon glyphicon-folder-close"]
  iFolderOpen span[class="glyphicon glyphicon-folder-open"]
  iResizeVertical span[class="glyphicon glyphicon-resize-vertical"]
  iResizeHorizontal span[class="glyphicon glyphicon-resize-horizontal"]
  iHdd span[class="glyphicon glyphicon-hdd"]
  iBullhorn span[class="glyphicon glyphicon-bullhorn"]
  iBell span[class="glyphicon glyphicon-bell"]
  iCertificate span[class="glyphicon glyphicon-certificate"]
  iThumbsUp span[class="glyphicon glyphicon-thumbs-up"]
  iThumbsDown span[class="glyphicon glyphicon-thumbs-down"]
  iHandRight span[class="glyphicon glyphicon-hand-right"]
  iHandLeft span[class="glyphicon glyphicon-hand-left"]
  iHandUp span[class="glyphicon glyphicon-hand-up"]
  iHandDown span[class="glyphicon glyphicon-hand-down"]
  iCircleArrowRight span[class="glyphicon glyphicon-circle-arrow-right"]
  iCircleArrowLeft span[class="glyphicon glyphicon-circle-arrow-left"]
  iCircleArrowUp span[class="glyphicon glyphicon-circle-arrow-up"]
  iCircleArrowDown span[class="glyphicon glyphicon-circle-arrow-down"]
  iGlobe span[class="glyphicon glyphicon-globe"]
  iWrench span[class="glyphicon glyphicon-wrench"]
  iTasks span[class="glyphicon glyphicon-tasks"]
  iFilter span[class="glyphicon glyphicon-filter"]
  iBriefcase span[class="glyphicon glyphicon-briefcase"]
  iFullscreen span[class="glyphicon glyphicon-fullscreen"]
  iDashboard span[class="glyphicon glyphicon-dashboard"]
  iPaperclip span[class="glyphicon glyphicon-paperclip"]
  iHeartEmpty span[class="glyphicon glyphicon-heart-empty"]
  iLink span[class="glyphicon glyphicon-link"]
  iPhone span[class="glyphicon glyphicon-phone"]
  iPushpin span[class="glyphicon glyphicon-pushpin"]
  iUsd span[class="glyphicon glyphicon-usd"]
  iGbp span[class="glyphicon glyphicon-gbp"]
  iSort span[class="glyphicon glyphicon-sort"]
  iSortByAlphabet span[class="glyphicon glyphicon-sort-by-alphabet"]
  iSortByAlphabetAlt span[class="glyphicon glyphicon-sort-by-alphabet-alt"]
  iSortByOrder span[class="glyphicon glyphicon-sort-by-order"]
  iSortByOrderAlt span[class="glyphicon glyphicon-sort-by-order-alt"]
  iSortByAttributes span[class="glyphicon glyphicon-sort-by-attributes"]
  iSortByAttributesAlt span[class="glyphicon glyphicon-sort-by-attributes-alt"]
  iUnchecked span[class="glyphicon glyphicon-unchecked"]
  iExpand span[class="glyphicon glyphicon-expand"]
  iCollapseDown span[class="glyphicon glyphicon-collapse-down"]
  iCollapseUp span[class="glyphicon glyphicon-collapse-up"]
  iLogIn span[class="glyphicon glyphicon-log-in"]
  iFlash span[class="glyphicon glyphicon-flash"]
  iLogOut span[class="glyphicon glyphicon-log-out"]
  iNewWindow span[class="glyphicon glyphicon-new-window"]
  iRecord span[class="glyphicon glyphicon-record"]
  iSave span[class="glyphicon glyphicon-save"]
  iOpen span[class="glyphicon glyphicon-open"]
  iSaved span[class="glyphicon glyphicon-saved"]
  iImport span[class="glyphicon glyphicon-import"]
  iExport span[class="glyphicon glyphicon-export"]
  iSend span[class="glyphicon glyphicon-send"]
  iFloppyDisk span[class="glyphicon glyphicon-floppy-disk"]
  iFloppySaved span[class="glyphicon glyphicon-floppy-saved"]
  iFloppyRemove span[class="glyphicon glyphicon-floppy-remove"]
  iFloppySave span[class="glyphicon glyphicon-floppy-save"]
  iFloppyOpen span[class="glyphicon glyphicon-floppy-open"]
  iCreditCard span[class="glyphicon glyphicon-credit-card"]
  iTransfer span[class="glyphicon glyphicon-transfer"]
  iCutlery span[class="glyphicon glyphicon-cutlery"]
  iHeader span[class="glyphicon glyphicon-header"]
  iCompressed span[class="glyphicon glyphicon-compressed"]
  iEarphone span[class="glyphicon glyphicon-earphone"]
  iPhoneAlt span[class="glyphicon glyphicon-phone-alt"]
  iTower span[class="glyphicon glyphicon-tower"]
  iStats span[class="glyphicon glyphicon-stats"]
  iSdVideo span[class="glyphicon glyphicon-sd-video"]
  iHdVideo span[class="glyphicon glyphicon-hd-video"]
  iSubtitles span[class="glyphicon glyphicon-subtitles"]
  iSoundStereo span[class="glyphicon glyphicon-sound-stereo"]
  iSoundDolby span[class="glyphicon glyphicon-sound-dolby"]
  iSound51 span[class="glyphicon glyphicon-sound-5-1"]
  iSound61 span[class="glyphicon glyphicon-sound-6-1"]
  iSound71 span[class="glyphicon glyphicon-sound-7-1"]
  iCopyrightMark span[class="glyphicon glyphicon-copyright-mark"]
  iRegistrationMark span[class="glyphicon glyphicon-registration-mark"]
  iCloudDownload span[class="glyphicon glyphicon-cloud-download"]
  iCloudUpload span[class="glyphicon glyphicon-cloud-upload"]
  iTreeConifer span[class="glyphicon glyphicon-tree-conifer"]
  iTreeDeciduous span[class="glyphicon glyphicon-tree-deciduous"]
  iCd span[class="glyphicon glyphicon-cd"]
  iSaveFile span[class="glyphicon glyphicon-save-file"]
  iOpenFile span[class="glyphicon glyphicon-open-file"]
  iLevelUp span[class="glyphicon glyphicon-level-up"]
  iCopy span[class="glyphicon glyphicon-copy"]
  iPaste span[class="glyphicon glyphicon-paste"]
  iAlert span[class="glyphicon glyphicon-alert"]
  iEqualizer span[class="glyphicon glyphicon-equalizer"]
  iKing span[class="glyphicon glyphicon-king"]
  iQueen span[class="glyphicon glyphicon-queen"]
  iPawn span[class="glyphicon glyphicon-pawn"]
  iBishop span[class="glyphicon glyphicon-bishop"]
  iKnight span[class="glyphicon glyphicon-knight"]
  iBabyFormula span[class="glyphicon glyphicon-baby-formula"]
  iTent span[class="glyphicon glyphicon-tent"]
  iBlackboard span[class="glyphicon glyphicon-blackboard"]
  iBed span[class="glyphicon glyphicon-bed"]
  iApple span[class="glyphicon glyphicon-apple"]
  iErase span[class="glyphicon glyphicon-erase"]
  iHourglass span[class="glyphicon glyphicon-hourglass"]
  iLamp span[class="glyphicon glyphicon-lamp"]
  iDuplicate span[class="glyphicon glyphicon-duplicate"]
  iPiggyBank span[class="glyphicon glyphicon-piggy-bank"]
  iScissors span[class="glyphicon glyphicon-scissors"]
  iBitcoin span[class="glyphicon glyphicon-bitcoin"]
  iBtc span[class="glyphicon glyphicon-btc"]
  iXbt span[class="glyphicon glyphicon-xbt"]
  iYen span[class="glyphicon glyphicon-yen"]
  iJpy span[class="glyphicon glyphicon-jpy"]
  iRuble span[class="glyphicon glyphicon-ruble"]
  iRub span[class="glyphicon glyphicon-rub"]
  iScale span[class="glyphicon glyphicon-scale"]
  iIceLolly span[class="glyphicon glyphicon-ice-lolly"]
  iIceLollyTasted span[class="glyphicon glyphicon-ice-lolly-tasted"]
  iEducation span[class="glyphicon glyphicon-education"]
  iOptionHorizontal span[class="glyphicon glyphicon-option-horizontal"]
  iOptionVertical span[class="glyphicon glyphicon-option-vertical"]
  iMenuHamburger span[class="glyphicon glyphicon-menu-hamburger"]
  iModalWindow span[class="glyphicon glyphicon-modal-window"]
  iOil span[class="glyphicon glyphicon-oil"]
  iGrain span[class="glyphicon glyphicon-grain"]
  iSunglasses span[class="glyphicon glyphicon-sunglasses"]
  iTextSize span[class="glyphicon glyphicon-text-size"]
  iTextColor span[class="glyphicon glyphicon-text-color"]
  iTextBackground span[class="glyphicon glyphicon-text-background"]
  iObjectAlignTop span[class="glyphicon glyphicon-object-align-top"]
  iObjectAlignBottom span[class="glyphicon glyphicon-object-align-bottom"]
  iObjectAlignHorizontal span[class="glyphicon glyphicon-object-align-horizontal"]
  iObjectAlignLeft span[class="glyphicon glyphicon-object-align-left"]
  iObjectAlignVertical span[class="glyphicon glyphicon-object-align-vertical"]
  iObjectAlignRight span[class="glyphicon glyphicon-object-align-right"]
  iTriangleRight span[class="glyphicon glyphicon-triangle-right"]
  iTriangleLeft span[class="glyphicon glyphicon-triangle-left"]
  iTriangleBottom span[class="glyphicon glyphicon-triangle-bottom"]
  iTriangleTop span[class="glyphicon glyphicon-triangle-top"]
  iConsole span[class="glyphicon glyphicon-console"]
  iSuperscript span[class="glyphicon glyphicon-superscript"]
  iSubscript span[class="glyphicon glyphicon-subscript"]
  iMenuLeft span[class="glyphicon glyphicon-menu-left"]
  iMenuRight span[class="glyphicon glyphicon-menu-right"]
  iMenuDown span[class="glyphicon glyphicon-menu-down"]
  iMenuUp span[class="glyphicon glyphicon-menu-up"]
}