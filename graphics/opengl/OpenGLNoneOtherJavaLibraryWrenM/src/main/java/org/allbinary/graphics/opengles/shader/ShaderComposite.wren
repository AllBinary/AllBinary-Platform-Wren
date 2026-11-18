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

class ShaderComposite is JObject {
  disableProgramShaderOpenGLProcessor { _disableProgramShaderOpenGLProcessor }
  disableProgramShaderOpenGLProcessor=(value) { _disableProgramShaderOpenGLProcessor = value }
  requiresOpenGLVersion { _requiresOpenGLVersion }
  requiresOpenGLVersion=(value) { _requiresOpenGLVersion = value }
  shaderArray { _shaderArray }
  shaderArray=(value) { _shaderArray = value }
  shaderInitializer { _shaderInitializer }
  shaderInitializer=(value) { _shaderInitializer = value }
  compositeShaderUpdater { _compositeShaderUpdater }
  compositeShaderUpdater=(value) { _compositeShaderUpdater = value }
  modelViewProjection { _modelViewProjection }
  modelViewProjection=(value) { _modelViewProjection = value }
  colorOpenGLProcessor { _colorOpenGLProcessor }
  colorOpenGLProcessor=(value) { _colorOpenGLProcessor = value }
  vertexOpenGLProcessor { _vertexOpenGLProcessor }
  vertexOpenGLProcessor=(value) { _vertexOpenGLProcessor = value }
  useProgramShaderOpenGLProcessor { _useProgramShaderOpenGLProcessor }
  useProgramShaderOpenGLProcessor=(value) { _useProgramShaderOpenGLProcessor = value }
  shaderMatrixOpenGLProcessor { _shaderMatrixOpenGLProcessor }
  shaderMatrixOpenGLProcessor=(value) { _shaderMatrixOpenGLProcessor = value }
  colorEnableVertexAttribArrayOpenGLProcessor { _colorEnableVertexAttribArrayOpenGLProcessor }
  colorEnableVertexAttribArrayOpenGLProcessor=(value) { _colorEnableVertexAttribArrayOpenGLProcessor = value }
  normalEnableVertexAttribArrayOpenGLProcessor { _normalEnableVertexAttribArrayOpenGLProcessor }
  normalEnableVertexAttribArrayOpenGLProcessor=(value) { _normalEnableVertexAttribArrayOpenGLProcessor = value }
  vertexEnableVertexAttribArrayOpenGLProcessor { _vertexEnableVertexAttribArrayOpenGLProcessor }
  vertexEnableVertexAttribArrayOpenGLProcessor=(value) { _vertexEnableVertexAttribArrayOpenGLProcessor = value }
  textureEnableVertexAttribArrayOpenGLProcessor { _textureEnableVertexAttribArrayOpenGLProcessor }
  textureEnableVertexAttribArrayOpenGLProcessor=(value) { _textureEnableVertexAttribArrayOpenGLProcessor = value }
  colorDisableVertexAttribArrayOpenGLProcessor { _colorDisableVertexAttribArrayOpenGLProcessor }
  colorDisableVertexAttribArrayOpenGLProcessor=(value) { _colorDisableVertexAttribArrayOpenGLProcessor = value }
  normalDisableVertexAttribArrayOpenGLProcessor { _normalDisableVertexAttribArrayOpenGLProcessor }
  normalDisableVertexAttribArrayOpenGLProcessor=(value) { _normalDisableVertexAttribArrayOpenGLProcessor = value }
  vertexDisableVertexAttribArrayOpenGLProcessor { _vertexDisableVertexAttribArrayOpenGLProcessor }
  vertexDisableVertexAttribArrayOpenGLProcessor=(value) { _vertexDisableVertexAttribArrayOpenGLProcessor = value }
  textureDisableVertexAttribArrayOpenGLProcessor { _textureDisableVertexAttribArrayOpenGLProcessor }
  textureDisableVertexAttribArrayOpenGLProcessor=(value) { _textureDisableVertexAttribArrayOpenGLProcessor = value }
  uniformLightPositionOpenGLProcessor { _uniformLightPositionOpenGLProcessor }
  uniformLightPositionOpenGLProcessor=(value) { _uniformLightPositionOpenGLProcessor = value }
  uniformLightColorOpenGLProcessor { _uniformLightColorOpenGLProcessor }
  uniformLightColorOpenGLProcessor=(value) { _uniformLightColorOpenGLProcessor = value }
  uniformCameraPositionOpenGLProcessor { _uniformCameraPositionOpenGLProcessor }
  uniformCameraPositionOpenGLProcessor=(value) { _uniformCameraPositionOpenGLProcessor = value }
  uniformTextureUnitOpenGLProcessor { _uniformTextureUnitOpenGLProcessor }
  uniformTextureUnitOpenGLProcessor=(value) { _uniformTextureUnitOpenGLProcessor = value }
  programHandle { _programHandle }
  programHandle=(value) { _programHandle = value }

  initFields_ShaderComposite() {
    _disableProgramShaderOpenGLProcessor = null
    _requiresOpenGLVersion = null
    _shaderArray = null
    _shaderInitializer = null
    _compositeShaderUpdater = null
    _modelViewProjection = null
    _colorOpenGLProcessor = null
    _vertexOpenGLProcessor = null
    _useProgramShaderOpenGLProcessor = null
    _shaderMatrixOpenGLProcessor = null
    _colorEnableVertexAttribArrayOpenGLProcessor = null
    _normalEnableVertexAttribArrayOpenGLProcessor = null
    _vertexEnableVertexAttribArrayOpenGLProcessor = null
    _textureEnableVertexAttribArrayOpenGLProcessor = null
    _colorDisableVertexAttribArrayOpenGLProcessor = null
    _normalDisableVertexAttribArrayOpenGLProcessor = null
    _vertexDisableVertexAttribArrayOpenGLProcessor = null
    _textureDisableVertexAttribArrayOpenGLProcessor = null
    _uniformLightPositionOpenGLProcessor = null
    _uniformLightColorOpenGLProcessor = null
    _uniformCameraPositionOpenGLProcessor = null
    _uniformTextureUnitOpenGLProcessor = null
    _programHandle = 0
        
        
        
        
        
        
        
        
        _useProgramShaderOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _shaderMatrixOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _colorEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _normalEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _vertexEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _textureEnableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _colorDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _normalDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _vertexDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _textureDisableVertexAttribArrayOpenGLProcessor = NullOpenGLProcessorFactory.getInstance()
        _uniformLightPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        _uniformLightColorOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        _uniformCameraPositionOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        _uniformTextureUnitOpenGLProcessor = NullOpenGLTextureProcessor.getInstance()
        _programHandle = 0
  }
    

    construct new(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor) {
    super()
    initFields_ShaderComposite()
        _requiresOpenGLVersion = requiresOpenGLVersion
        _shaderArray = shaderArray
        _shaderInitializer = shaderInitializer
        _compositeShaderUpdater = compositeShaderUpdater
        _modelViewProjection = modelViewProjection
        _colorOpenGLProcessor = colorOpenGLProcessor
        _vertexOpenGLProcessor = vertexOpenGLProcessor
        _disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor
    }
    

    init(gl) {
        _programHandle = _shaderInitializer.init(gl, _shaderArray, StringUtil.getInstance().getArrayInstance())
    }
}

import "../../../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../../../org/allbinary/graphics/opengles/NullOpenGLProcessorFactory" for NullOpenGLProcessorFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLProcessor" for OpenGLProcessor
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./Shader" for Shader
import "./ShaderInitializer" for ShaderInitializer
import "./CompositeShaderUpdater" for CompositeShaderUpdater
import "./ModelViewProjection" for ModelViewProjection
import "./NullOpenGLTextureProcessor" for NullOpenGLTextureProcessor
import "./OpenGLObject3dProcessor" for OpenGLObject3dProcessor

