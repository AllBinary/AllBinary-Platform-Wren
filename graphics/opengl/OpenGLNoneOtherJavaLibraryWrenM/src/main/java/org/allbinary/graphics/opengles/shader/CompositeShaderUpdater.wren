/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.graphics.opengles.shader

import "../../../../../allbinary_java" for JObject, JException, JR
import "./ShaderUpdater" for ShaderUpdater

class CompositeShaderUpdater is ShaderUpdater {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = CompositeShaderUpdater.new(StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), StringUtil.getInstance().getArrayInstance(), NullUtil.getInstance().NULL_INT_ARRAY)
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }
  commonSeps { _commonSeps }
  commonSeps=(value) { _commonSeps = value }

  initFields_CompositeShaderUpdater() {
    _commonSeps = null
        _commonSeps = CommonSeps.getInstance()
  }
    

    static getInstance() {
        return CompositeShaderUpdater.instanceC
    }
    

    construct new(uniformBlockArray, uniformArray, attributeArray, attributeHandleArray) {
    super()
    initFields_CompositeShaderUpdater()
    }
    

    onSurfaceCreated(gl, eglConfig, programHandle) {
    }
    

    onSurfaceDestroyed(gl) {
    }
}

import "../../../../../javax/microedition/khronos/egl/EGLConfig" for EGLConfig
import "../../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps

