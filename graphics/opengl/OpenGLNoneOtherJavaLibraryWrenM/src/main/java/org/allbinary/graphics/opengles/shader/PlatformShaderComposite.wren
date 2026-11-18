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
import "./ShaderComposite" for ShaderComposite

class PlatformShaderComposite is ShaderComposite {

  initFields_PlatformShaderComposite() {
  }
    

    construct new(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor) {
        super(requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, NullOpenGLProcessorFactory.getInstance())
    }
}

import "../../../../../org/allbinary/graphics/opengles/NullOpenGLProcessorFactory" for NullOpenGLProcessorFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLProcessor" for OpenGLProcessor
import "./Shader" for Shader
import "./CompositeShaderUpdater" for CompositeShaderUpdater
import "./ShaderInitializer" for ShaderInitializer
import "./ModelViewProjection" for ModelViewProjection

