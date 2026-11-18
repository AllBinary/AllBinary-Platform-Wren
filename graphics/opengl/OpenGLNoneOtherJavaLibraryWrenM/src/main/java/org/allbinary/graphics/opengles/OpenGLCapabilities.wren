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
// package org.allbinary.graphics.opengles

import "../../../../allbinary_java" for JObject, JException, JR

class OpenGLCapabilities is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLCapabilities.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  CUSTOM_GL_SURFACE_VIEW { _CUSTOM_GL_SURFACE_VIEW }
  CUSTOM_GL_SURFACE_VIEW=(value) { _CUSTOM_GL_SURFACE_VIEW = value }
  VERSION_1_0 { _VERSION_1_0 }
  VERSION_1_0=(value) { _VERSION_1_0 = value }
  VERSION_1_1 { _VERSION_1_1 }
  VERSION_1_1=(value) { _VERSION_1_1 = value }
  VERSION_2_0 { _VERSION_2_0 }
  VERSION_2_0=(value) { _VERSION_2_0 = value }
  VERSION_3_0 { _VERSION_3_0 }
  VERSION_3_0=(value) { _VERSION_3_0 = value }
  VERSION_3_1 { _VERSION_3_1 }
  VERSION_3_1=(value) { _VERSION_3_1 = value }
  VERSION_3_2 { _VERSION_3_2 }
  VERSION_3_2=(value) { _VERSION_3_2 = value }
  VERSION_HIGHER_THAN_EXISTS { _VERSION_HIGHER_THAN_EXISTS }
  VERSION_HIGHER_THAN_EXISTS=(value) { _VERSION_HIGHER_THAN_EXISTS = value }
  glVersion { _glVersion }
  glVersion=(value) { _glVersion = value }
  shaderVersion { _shaderVersion }
  shaderVersion=(value) { _shaderVersion = value }
  glInstanceVersion { _glInstanceVersion }
  glInstanceVersion=(value) { _glInstanceVersion = value }
  maxTextureSize { _maxTextureSize }
  maxTextureSize=(value) { _maxTextureSize = value }

  initFields_OpenGLCapabilities() {
    _CUSTOM_GL_SURFACE_VIEW = false
    _VERSION_1_0 = null
    _VERSION_1_1 = null
    _VERSION_2_0 = null
    _VERSION_3_0 = null
    _VERSION_3_1 = null
    _VERSION_3_2 = null
    _VERSION_HIGHER_THAN_EXISTS = null
    _glVersion = null
    _shaderVersion = 0
    _glInstanceVersion = null
    _maxTextureSize = 0
        _CUSTOM_GL_SURFACE_VIEW = true
        _VERSION_1_0 = "1.0"
        _VERSION_1_1 = "1.1"
        _VERSION_2_0 = "2.0"
        _VERSION_3_0 = "3.0"
        _VERSION_3_1 = "3.1"
        _VERSION_3_2 = "3.2"
        _VERSION_HIGHER_THAN_EXISTS = "999.999"
        _glVersion = StringUtil.getInstance().EMPTY_STRING
        _shaderVersion = 0
        _glInstanceVersion = StringUtil.getInstance().EMPTY_STRING
        _maxTextureSize = 64
  }
    

    static getInstance() {
        return OpenGLCapabilities.instance
    }
    

    construct new() {
    super()
    initFields_OpenGLCapabilities()
    }
    

    isInitialized() {
        return true
    }
    

    initCapabilities(gl) {
    }
    

    isGlExtensionDrawTexture() {
        return false
    }
    

    getGlVersion() {
        return _glVersion
    }
    

    isVertexBufferObjectSupport() {
        return false
    }
    

    isTextureSizeValid(widthAndHeight) {
        return true
    }
}

import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil

