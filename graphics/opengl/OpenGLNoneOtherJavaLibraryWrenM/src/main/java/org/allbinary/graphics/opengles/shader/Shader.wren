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

class Shader is JObject {
  shaderName { _shaderName }
  shaderName=(value) { _shaderName = value }
  shaderStringList { _shaderStringList }
  shaderStringList=(value) { _shaderStringList = value }
  shaderAsString { _shaderAsString }
  shaderAsString=(value) { _shaderAsString = value }
  shaderHandle { _shaderHandle }
  shaderHandle=(value) { _shaderHandle = value }

  initFields_Shader() {
    _shaderName = null
    _shaderStringList = null
    _shaderAsString = null
    _shaderHandle = 0
        _shaderName = StringUtil.getInstance().EMPTY_STRING
        _shaderStringList = BasicArrayListUtil.getInstance().getImmutableInstance()
        _shaderAsString = StringUtil.getInstance().EMPTY_STRING
        _shaderHandle = 0
  }

  construct new() {
    super()
    initFields_Shader()
  }
}

import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

