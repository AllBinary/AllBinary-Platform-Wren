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
// package org.allbinary.game.layer.resources

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicGameResources is JObject {
    static stringBuffer {
    if (__stringBuffer_set == null) {
      __stringBuffer_set = true
      __stringBuffer = StringMaker.new()
    }
    return __stringBuffer
  }
  static stringBuffer=(value) {
    __stringBuffer_set = true
    __stringBuffer = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  RESOURCE { _RESOURCE }
  RESOURCE=(value) { _RESOURCE = value }
  RESOURCE_DESTROY { _RESOURCE_DESTROY }
  RESOURCE_DESTROY=(value) { _RESOURCE_DESTROY = value }

  initFields_BasicGameResources() {
    _logUtil = null
    _RESOURCE = null
    _RESOURCE_DESTROY = null
        _logUtil = LogUtil.getInstance()
        _RESOURCE = StringUtil.getInstance().EMPTY_STRING
        _RESOURCE_DESTROY = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new() {
    super()
    initFields_BasicGameResources()
    }
    

    init(ROOT, SIZE) {
        var jerror0 = Fiber.new {
            var scale = GameConfigurationCentral.getInstance().SCALE.getValue().intValue()
            if (((scale > 1) && (JR.i32(scale - 1) < SIZE.count))) {
                this.append(ROOT, SIZE[JR.i32(scale - 1)])
            } else {
                Fiber.abort(JR.exception("Exception", StringMaker.new().append("Invalid Value: ").appendint(scale).toString()))
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e)
        }
    }
    

    append(ROOT, sizeString) {
        var DESTROY = "_destroy"
        var string = this.getString()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(ROOT)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        _RESOURCE = BasicGameResources.stringBuffer.toString()
        BasicGameResources.stringBuffer.delete(0, BasicGameResources.stringBuffer.length())
        BasicGameResources.stringBuffer.append(ROOT)
        BasicGameResources.stringBuffer.append(DESTROY)
        BasicGameResources.stringBuffer.append(string)
        BasicGameResources.stringBuffer.append(sizeString)
        _RESOURCE_DESTROY = BasicGameResources.stringBuffer.toString()
    }
    

    getString() {
        return GameGraphicsResourceUtil.getInstance().getName()
    }
}

import "../../../../../org/allbinary/game/configuration/GameConfigurationCentral" for GameConfigurationCentral
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./GameGraphicsResourceUtil" for GameGraphicsResourceUtil

