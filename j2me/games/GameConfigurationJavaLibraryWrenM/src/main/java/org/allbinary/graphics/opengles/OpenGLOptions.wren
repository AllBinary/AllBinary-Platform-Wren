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

class OpenGLOptions is JObject {

  initFields_OpenGLOptions() {
  }

  construct new() {
    super()
    initFields_OpenGLOptions()
  }
    

    init() {
        var openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if (Features.getInstance().isFeature(openGLFeatureFactory.OPENGL_OPTIONS)) {
            var openGLMultipleList = BasicArrayListD.new()
            openGLMultipleList.add(openGLFeatureFactory.OPENGL)
            GameFeatureChoiceGroups.getMultipleInstance().add("OpenGL (Complete Restart)", openGLMultipleList)
            var openGLVersionSelectorMultipleList = BasicArrayListD.new()
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_AUTO_SELECT)
            openGLVersionSelectorMultipleList.add(openGLFeatureFactory.OPENGL_MINIMUM)
            GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Version Selector", openGLVersionSelectorMultipleList)
            var openGLImageColorMultipleList = BasicArrayListD.new()
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_4444)
            openGLImageColorMultipleList.add(openGLFeatureFactory.IMAGE_COLOR_DEPTH_8888)
            GameFeatureChoiceGroups.getExclusiveInstance().add("OpenGL Image Color RGBA", openGLImageColorMultipleList)
        }
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" for GameFeatureChoiceGroups
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./OpenGLFeatureFactory" for OpenGLFeatureFactory

