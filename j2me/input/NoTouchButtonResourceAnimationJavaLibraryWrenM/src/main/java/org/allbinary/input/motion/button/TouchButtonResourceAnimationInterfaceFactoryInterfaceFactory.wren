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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory" for BaseResourceAnimationInterfaceFactoryInterfaceFactory

class TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory is BaseResourceAnimationInterfaceFactoryInterfaceFactory {

  initFields_TouchButtonResourceAnimationInterfaceFac60aceFactory() {
  }
    

    static createFactory() {
        return TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory.new("TouchButton Animations")
    }
    

    construct new(name) {
        super(name, StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable(), StdUtil.getInstance().createHashtable())
    }
    

    init(level) {
        this.initImageCache(ImageCacheFactory.getInstance(), level)
    }
    

    initImageCache(imageCache, level) {
        if (this.isInitialized()) {
            return
        }
        super.init(level)
    }
    

    isLoadingLevel(level) {
        var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if ((level == resourceLoadingLevelFactory.LOAD_TOUCH.getLevel())) {
            return true
        } else {
            return super.isLoadingLevel(level)
        }
    }
    

    isFeature() {
        if (!Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL)) {
            return true
        } else {
            return false
        }
    }
}

import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/image/ImageCache" for ImageCache
import "../../../../../org/allbinary/image/ImageCacheFactory" for ImageCacheFactory
import "../../../../../org/allbinary/logic/StdUtil" for StdUtil

