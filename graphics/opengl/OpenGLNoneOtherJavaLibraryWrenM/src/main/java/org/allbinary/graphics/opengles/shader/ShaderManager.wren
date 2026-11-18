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

class ShaderManager is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ShaderManager.new(-1, -1)
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  LOAD_SHADER { _LOAD_SHADER }
  LOAD_SHADER=(value) { _LOAD_SHADER = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  GL_VERTEX_SHADER { _GL_VERTEX_SHADER }
  GL_VERTEX_SHADER=(value) { _GL_VERTEX_SHADER = value }
  GL_FRAGMENT_SHADER { _GL_FRAGMENT_SHADER }
  GL_FRAGMENT_SHADER=(value) { _GL_FRAGMENT_SHADER = value }

  initFields_ShaderManager() {
    _LOAD_SHADER = null
    _commonStrings = null
    _GL_VERTEX_SHADER = 0
    _GL_FRAGMENT_SHADER = 0
        _LOAD_SHADER = "loadShader"
        _commonStrings = CommonStrings.getInstance()
        
        
  }
    

    static getInstance() {
        return ShaderManager.instance
    }
    

    construct new(GL_VERTEX_SHADER, GL_FRAGMENT_SHADER) {
    super()
    initFields_ShaderManager()
        _GL_VERTEX_SHADER = GL_VERTEX_SHADER
        _GL_FRAGMENT_SHADER = GL_FRAGMENT_SHADER
    }
    

    load(gl, resource, shaderAsStringArray, shaderType) {
        return -1
    }
    

    loadShader(gl, resource, stringList, shaderType) {
        return -1
    }
}

import "../../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

