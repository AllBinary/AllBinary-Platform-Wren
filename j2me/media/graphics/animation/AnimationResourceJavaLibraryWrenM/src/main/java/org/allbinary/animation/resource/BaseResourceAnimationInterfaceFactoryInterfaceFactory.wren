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
// package org.allbinary.animation.resource

import "../../../../allbinary_java" for JObject, JException, JR

class BaseResourceAnimationInterfaceFactoryInterfaceFactory is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }
  rectangleHashtable { _rectangleHashtable }
  rectangleHashtable=(value) { _rectangleHashtable = value }
  rectangleArrayOfArraysHashtable { _rectangleArrayOfArraysHashtable }
  rectangleArrayOfArraysHashtable=(value) { _rectangleArrayOfArraysHashtable = value }
  name { _name }
  name=(value) { _name = value }
  initialized { _initialized }
  initialized=(value) { _initialized = value }

  initFields_BaseResourceAnimationInterfaceFactoryInterfaceFactory() {
    _logUtil = null
    _commonStrings = null
    _hashtable = null
    _rectangleHashtable = null
    _rectangleArrayOfArraysHashtable = null
    _name = null
    _initialized = false
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
        
        
        _initialized = false
  }
    

    construct new(name, hashtable, rectangleHashtable, rectangleArrayHashtable) {
    super()
    initFields_BaseResourceAnimationInterfaceFactoryInterfaceFactory()
        _hashtable = hashtable
        _rectangleHashtable = rectangleHashtable
        _rectangleArrayOfArraysHashtable = rectangleArrayHashtable
        _name = name
    }
    

    getName() {
        return _name
    }
    

    init(level) {
        var commonStrings = CommonStrings.getInstance()
        _logUtil.putF(StringMaker.new().append("Available List of Animations: ").append(_hashtable.toString()).toString(), this, commonStrings.INIT)
        this.setInitialized(true)
    }
    

    initImageCache(imageCache, level) {
    }
    

    add(resource, animationInterfaceFactoryInterface) {
        if (_hashtable.containsKey(resource)) {
            Fiber.abort(JR.exception("Exception", StringMaker.new().append("Resource Already Created: ").append(resource).toString()))
        }
        _hashtable.put(resource, animationInterfaceFactoryInterface)
    }
    

    getBasicAnimationInterfaceFactoryInstance(resource) {
        var basicAnimationInterfaceFactoryInterfaceCanBeNull = _hashtable.get(resource)
        if ((basicAnimationInterfaceFactoryInterfaceCanBeNull == null)) {
            return NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY
        }
        return basicAnimationInterfaceFactoryInterfaceCanBeNull
    }
    

    getRectangle(resource) {
        var rectangleCanBeNull = _rectangleHashtable.get(resource)
        if ((rectangleCanBeNull == null)) {
            return RectangleFactory.SINGLETON
        }
        return rectangleCanBeNull
    }
    

    addRectangle(resource, rectangle) {
        _rectangleHashtable.put(resource, rectangle)
    }
    

    getRectangleArrayOfArrays(resource) {
        var valueCanBeNull = _rectangleArrayOfArraysHashtable.get(resource)
        if ((valueCanBeNull != null)) {
            var rectangleArrayOfArrays = valueCanBeNull
            return rectangleArrayOfArrays
        } else {
            return RectangleFactory.ARRAY_OF_ARRAYS
        }
    }
    

    addRectangleArrayOfArrays(resource, rectangleArrayOfArrays) {
        _rectangleArrayOfArraysHashtable.put(resource, rectangleArrayOfArrays)
    }
    

    isFeature() {
        return false
    }
    

    isLoadingLevel(level) {
        var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if ((level == resourceLoadingLevelFactory.LOAD_ALL.getLevel())) {
            return true
        } else {
            return false
        }
    }
    

    toString() {
        return StringMaker.new().append(JR.className(this)).append(CommonSeps.getInstance().SEMICOLON).append(CommonSeps.getInstance().SPACE).append(_name).toString()
    }
    

    getHashtable() {
        return _hashtable
    }
    

    getRectangleHashtable() {
        return _rectangleHashtable
    }
    

    getRectangleArrayOfArraysHashtable() {
        return _rectangleArrayOfArraysHashtable
    }
    

    setInitialized(initialized) {
        _initialized = initialized
    }
    

    isInitialized() {
        return _initialized
    }
}

import "../../../../org/allbinary/animation/BasicAnimationInterfaceFactoryInterface" for BasicAnimationInterfaceFactoryInterface
import "../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../../org/allbinary/image/ImageCache" for ImageCache
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./FeatureResourceAnimationInterfaceFactoryInterface" for FeatureResourceAnimationInterfaceFactoryInterface

