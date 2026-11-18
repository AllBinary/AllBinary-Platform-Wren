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
        var portion = 140
        var loadingString = StringMaker.new().append(this.toString()).append(" Loading: ").toString()
        var index = 0
        var progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        var touchButtonBlankResource = TouchButtonBlankResource.getInstance()
        var touchButtonGenericActionResource = TouchButtonGenericActionResource.getInstance()
        var touchButtonStartResource = TouchButtonStartResource.getInstance()
        var touchButtonUpResource = TouchButtonUpResource.getInstance()
        var touchButtonDownResource = TouchButtonDownResource.getInstance()
        var touchButtonTurnLeftResource = TouchButtonTurnLeftResource.getInstance()
        var touchButtonTurnRightResource = TouchButtonTurnRightResource.getInstance()
        var touchButtonStrafeLeftResource = TouchButtonStrafeLeftResource.getInstance()
        var touchButtonStrafeRightResource = TouchButtonStrafeRightResource.getInstance()
        var touchButtonBlankResourceImage = imageCache.getWithKey(touchButtonBlankResource.RESOURCE)
        var touchButtonGenericActionResourceImage = imageCache.getWithKey(touchButtonGenericActionResource.RESOURCE)
        var touchButtonStartResourceImage = imageCache.getWithKey(touchButtonStartResource.RESOURCE)
        var touchButtonUpResourceImage = imageCache.getWithKey(touchButtonUpResource.RESOURCE)
        var touchButtonDownResourceImage = imageCache.getWithKey(touchButtonDownResource.RESOURCE)
        var touchButtonTurnLeftResourceImage = imageCache.getWithKey(touchButtonTurnLeftResource.RESOURCE)
        var touchButtonTurnRightResourceImage = imageCache.getWithKey(touchButtonTurnRightResource.RESOURCE)
        var touchButtonStrafeLeftResourceImage = imageCache.getWithKey(touchButtonStrafeLeftResource.RESOURCE)
        var touchButtonStrafeRightResourceImage = imageCache.getWithKey(touchButtonStrafeRightResource.RESOURCE)
        var nullAnimationFactory = NullAnimationFactory.getFactoryInstance()
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT)
        }
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        var imageCompleteUtil = ImageCompleteUtil.getInstance()
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonBlankResourceImage, touchButtonBlankResource.RESOURCE)
        this.add(touchButtonBlankResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonBlankResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonBlankResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonGenericActionResourceImage, touchButtonGenericActionResource.RESOURCE)
        this.add(touchButtonGenericActionResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonGenericActionResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonGenericActionResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonStartResourceImage, touchButtonStartResource.RESOURCE)
        this.add(touchButtonStartResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartResourceImage, AnimationBehaviorFactory.getInstance()))
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonUpResourceImage, touchButtonUpResource.RESOURCE)
        this.add(touchButtonUpResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonUpResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonUpResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonDownResourceImage, touchButtonDownResource.RESOURCE)
        this.add(touchButtonDownResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonDownResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonDownResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonTurnLeftResourceImage, touchButtonTurnLeftResource.RESOURCE)
        this.add(touchButtonTurnLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonTurnLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonTurnRightResourceImage, touchButtonTurnRightResource.RESOURCE)
        this.add(touchButtonTurnRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonTurnRightResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonTurnRightResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonStrafeLeftResourceImage, touchButtonStrafeLeftResource.RESOURCE)
        this.add(touchButtonStrafeLeftResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonStrafeLeftResource.HINT, nullAnimationFactory)
        progressCanvas.addPortion(portion, loadingString, Fn.new {
var jold = index
index = JR.i32(jold + 1)
return jold
}.call())
        imageCompleteUtil.waitForImage(touchButtonStrafeRightResourceImage, touchButtonStrafeRightResource.RESOURCE)
        this.add(touchButtonStrafeRightResource.RESOURCE, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStrafeRightResourceImage, AnimationBehaviorFactory.getInstance()))
        this.add(touchButtonStrafeRightResource.HINT, nullAnimationFactory)
        if (OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()) {
            var touchButtonStartHintResource = imageCache.getWithKey(TouchButtonStartResource.getInstance().HINT)
            this.add(touchButtonStartResource.HINT, OneRowSpriteIndexedAnimationFactory.createFactory(touchButtonStartHintResource, AnimationBehaviorFactory.getInstance()))
        } else {
            this.add(touchButtonStartResource.HINT, nullAnimationFactory)
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

import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory" for OneRowSpriteIndexedAnimationFactory
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/image/ImageCache" for ImageCache
import "../../../../../org/allbinary/image/ImageCacheFactory" for ImageCacheFactory
import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" for OperatingSystemFactory
import "../../../../../org/allbinary/media/image/ImageCompleteUtil" for ImageCompleteUtil
import "./TouchButtonBlankResource" for TouchButtonBlankResource
import "./TouchButtonResource" for TouchButtonResource
import "./TouchButtonGenericActionResource" for TouchButtonGenericActionResource
import "./TouchButtonStartResource" for TouchButtonStartResource
import "./TouchButtonUpResource" for TouchButtonUpResource
import "./TouchButtonDownResource" for TouchButtonDownResource
import "./TouchButtonTurnLeftResource" for TouchButtonTurnLeftResource
import "./TouchButtonTurnRightResource" for TouchButtonTurnRightResource
import "./TouchButtonStrafeLeftResource" for TouchButtonStrafeLeftResource
import "./TouchButtonStrafeRightResource" for TouchButtonStrafeRightResource

