/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.paint.help

import "../../../../../allbinary_java" for JObject, JException, JR

class UpdateMyFontProperties is JObject {
  actionStringArray { _actionStringArray }
  actionStringArray=(value) { _actionStringArray = value }
  keymappingBeginWidthArray { _keymappingBeginWidthArray }
  keymappingBeginWidthArray=(value) { _keymappingBeginWidthArray = value }
  actionStringDeltaXArray { _actionStringDeltaXArray }
  actionStringDeltaXArray=(value) { _actionStringDeltaXArray = value }
  inputDeltaXArray { _inputDeltaXArray }
  inputDeltaXArray=(value) { _inputDeltaXArray = value }
  sepArray { _sepArray }
  sepArray=(value) { _sepArray = value }
  sepWidthArray { _sepWidthArray }
  sepWidthArray=(value) { _sepWidthArray = value }
  charHeight { _charHeight }
  charHeight=(value) { _charHeight = value }

  initFields_UpdateMyFontProperties() {
    _actionStringArray = null
    _keymappingBeginWidthArray = null
    _actionStringDeltaXArray = null
    _inputDeltaXArray = null
    _sepArray = null
    _sepWidthArray = null
    _charHeight = 0
        _actionStringArray = StringUtil.getInstance().getArrayInstance()
        _keymappingBeginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
        _actionStringDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY
        _inputDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
        _sepArray = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
        _sepWidthArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
        _charHeight = 0
  }

  construct new() {
    super()
    initFields_UpdateMyFontProperties()
  }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

