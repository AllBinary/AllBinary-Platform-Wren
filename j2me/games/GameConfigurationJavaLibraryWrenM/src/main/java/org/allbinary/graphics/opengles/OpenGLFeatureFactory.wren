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

class OpenGLFeatureFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = OpenGLFeatureFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  OPENGL_OPTIONS { _OPENGL_OPTIONS }
  OPENGL_OPTIONS=(value) { _OPENGL_OPTIONS = value }
  OPENGL { _OPENGL }
  OPENGL=(value) { _OPENGL = value }
  OPENGL_SURFACE_VIEW { _OPENGL_SURFACE_VIEW }
  OPENGL_SURFACE_VIEW=(value) { _OPENGL_SURFACE_VIEW = value }
  OPENGL_2D { _OPENGL_2D }
  OPENGL_2D=(value) { _OPENGL_2D = value }
  OPENGL_3D { _OPENGL_3D }
  OPENGL_3D=(value) { _OPENGL_3D = value }
  OPENGL_2D_AND_3D { _OPENGL_2D_AND_3D }
  OPENGL_2D_AND_3D=(value) { _OPENGL_2D_AND_3D = value }
  OPENGL_AUTO_SELECT { _OPENGL_AUTO_SELECT }
  OPENGL_AUTO_SELECT=(value) { _OPENGL_AUTO_SELECT = value }
  OPENGL_MINIMUM { _OPENGL_MINIMUM }
  OPENGL_MINIMUM=(value) { _OPENGL_MINIMUM = value }
  OPENGL_AS_GAME_THREAD { _OPENGL_AS_GAME_THREAD }
  OPENGL_AS_GAME_THREAD=(value) { _OPENGL_AS_GAME_THREAD = value }
  OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS { _OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS }
  OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS=(value) { _OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = value }
  IMAGE_COLOR_DEPTH_4444 { _IMAGE_COLOR_DEPTH_4444 }
  IMAGE_COLOR_DEPTH_4444=(value) { _IMAGE_COLOR_DEPTH_4444 = value }
  IMAGE_COLOR_DEPTH_8888 { _IMAGE_COLOR_DEPTH_8888 }
  IMAGE_COLOR_DEPTH_8888=(value) { _IMAGE_COLOR_DEPTH_8888 = value }
  IMAGE_COLOR_DEPTH_565 { _IMAGE_COLOR_DEPTH_565 }
  IMAGE_COLOR_DEPTH_565=(value) { _IMAGE_COLOR_DEPTH_565 = value }
  OPENGL_COLOR_DEPTH_4444 { _OPENGL_COLOR_DEPTH_4444 }
  OPENGL_COLOR_DEPTH_4444=(value) { _OPENGL_COLOR_DEPTH_4444 = value }
  OPENGL_COLOR_DEPTH_8888 { _OPENGL_COLOR_DEPTH_8888 }
  OPENGL_COLOR_DEPTH_8888=(value) { _OPENGL_COLOR_DEPTH_8888 = value }
  OPENGL_COLOR_DEPTH_565 { _OPENGL_COLOR_DEPTH_565 }
  OPENGL_COLOR_DEPTH_565=(value) { _OPENGL_COLOR_DEPTH_565 = value }
  OPENGL_DRAW_TEXTURE { _OPENGL_DRAW_TEXTURE }
  OPENGL_DRAW_TEXTURE=(value) { _OPENGL_DRAW_TEXTURE = value }
  OPENGL_VERTEX_BUFFER_OBJECT { _OPENGL_VERTEX_BUFFER_OBJECT }
  OPENGL_VERTEX_BUFFER_OBJECT=(value) { _OPENGL_VERTEX_BUFFER_OBJECT = value }
  OPENGL_SIMPLE_OBJECT3D_PROCESSOR { _OPENGL_SIMPLE_OBJECT3D_PROCESSOR }
  OPENGL_SIMPLE_OBJECT3D_PROCESSOR=(value) { _OPENGL_SIMPLE_OBJECT3D_PROCESSOR = value }
  OPENGL_COMPLEX_OBJECT3D_PROCESSOR { _OPENGL_COMPLEX_OBJECT3D_PROCESSOR }
  OPENGL_COMPLEX_OBJECT3D_PROCESSOR=(value) { _OPENGL_COMPLEX_OBJECT3D_PROCESSOR = value }
  OPENGL_SIMPLE_TEXTURE_PROCESSOR { _OPENGL_SIMPLE_TEXTURE_PROCESSOR }
  OPENGL_SIMPLE_TEXTURE_PROCESSOR=(value) { _OPENGL_SIMPLE_TEXTURE_PROCESSOR = value }
  OPENGL_COMPLEX_TEXTURE_PROCESSOR { _OPENGL_COMPLEX_TEXTURE_PROCESSOR }
  OPENGL_COMPLEX_TEXTURE_PROCESSOR=(value) { _OPENGL_COMPLEX_TEXTURE_PROCESSOR = value }

  initFields_OpenGLFeatureFactory() {
    _OPENGL_OPTIONS = null
    _OPENGL = null
    _OPENGL_SURFACE_VIEW = null
    _OPENGL_2D = null
    _OPENGL_3D = null
    _OPENGL_2D_AND_3D = null
    _OPENGL_AUTO_SELECT = null
    _OPENGL_MINIMUM = null
    _OPENGL_AS_GAME_THREAD = null
    _OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = null
    _IMAGE_COLOR_DEPTH_4444 = null
    _IMAGE_COLOR_DEPTH_8888 = null
    _IMAGE_COLOR_DEPTH_565 = null
    _OPENGL_COLOR_DEPTH_4444 = null
    _OPENGL_COLOR_DEPTH_8888 = null
    _OPENGL_COLOR_DEPTH_565 = null
    _OPENGL_DRAW_TEXTURE = null
    _OPENGL_VERTEX_BUFFER_OBJECT = null
    _OPENGL_SIMPLE_OBJECT3D_PROCESSOR = null
    _OPENGL_COMPLEX_OBJECT3D_PROCESSOR = null
    _OPENGL_SIMPLE_TEXTURE_PROCESSOR = null
    _OPENGL_COMPLEX_TEXTURE_PROCESSOR = null
        _OPENGL_OPTIONS = OpenGLFeature.new("OpenGL Options")
        _OPENGL = OpenGLFeature.new("OpenGL")
        _OPENGL_SURFACE_VIEW = OpenGLFeature.new("GLSurfaceView")
        _OPENGL_2D = OpenGLFeature.new("OpenGL 2D")
        _OPENGL_3D = OpenGLFeature.new("OpenGL 3D")
        _OPENGL_2D_AND_3D = OpenGLFeature.new("OpenGL 2D/3D")
        _OPENGL_AUTO_SELECT = OpenGLFeature.new("Auto Select")
        _OPENGL_MINIMUM = OpenGLFeature.new("Minimum")
        _OPENGL_AS_GAME_THREAD = OpenGLFeature.new("As game thread")
        _OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = OpenGLFeature.new("As different threads")
        _IMAGE_COLOR_DEPTH_4444 = OpenGLFeature.new("4444")
        _IMAGE_COLOR_DEPTH_8888 = OpenGLFeature.new("8888")
        _IMAGE_COLOR_DEPTH_565 = OpenGLFeature.new("565")
        _OPENGL_COLOR_DEPTH_4444 = OpenGLFeature.new("4444")
        _OPENGL_COLOR_DEPTH_8888 = OpenGLFeature.new("8888")
        _OPENGL_COLOR_DEPTH_565 = OpenGLFeature.new("565")
        _OPENGL_DRAW_TEXTURE = OpenGLFeature.new("GL_OES_draw_texture")
        _OPENGL_VERTEX_BUFFER_OBJECT = OpenGLFeature.new("vertex_buffer_object")
        _OPENGL_SIMPLE_OBJECT3D_PROCESSOR = OpenGLFeature.new("Simple Object3d Processor")
        _OPENGL_COMPLEX_OBJECT3D_PROCESSOR = OpenGLFeature.new("Complex Object3d Processor")
        _OPENGL_SIMPLE_TEXTURE_PROCESSOR = OpenGLFeature.new("Simple Texture Processor")
        _OPENGL_COMPLEX_TEXTURE_PROCESSOR = OpenGLFeature.new("Complex Texture Processor")
  }
    

    static getInstance() {
        return OpenGLFeatureFactory.instance
    }
    

    construct new() {
    super()
    initFields_OpenGLFeatureFactory()
    }
}

import "./OpenGLFeature" for OpenGLFeature

