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
// package org.allbinary.canvas

import "../../../allbinary_java" for JObject, JException, JR

class SpecialMessageUtil is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = SpecialMessageUtil.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_SpecialMessageUtil() {
  }

  construct new() {
    super()
    initFields_SpecialMessageUtil()
  }
    

    static getInstance() {
        return SpecialMessageUtil.SINGLETON
    }
    

    get() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(Memory.getInfo())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(GameStatisticsFactory.getInstance().toString())
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(" Option: ")
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT)) {
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_AUTO_SELECT.getName())
        } else {
            stringBuffer.append(OpenGLFeatureFactory.getInstance().OPENGL_MINIMUM.getName())
        }
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/system/Memory" for Memory
import "./GameStatisticsFactory" for GameStatisticsFactory

