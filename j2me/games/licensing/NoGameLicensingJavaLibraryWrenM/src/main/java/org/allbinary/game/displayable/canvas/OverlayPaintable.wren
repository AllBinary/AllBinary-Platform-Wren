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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/paint/InitUpdatePaintable" for InitUpdatePaintable

class OverlayPaintable is InitUpdatePaintable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_OverlayPaintable() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_OverlayPaintable()
    }
    

    update() {
        var jerror0 = Fiber.new {
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)
        }
    }
    

    paint(graphics) {
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

