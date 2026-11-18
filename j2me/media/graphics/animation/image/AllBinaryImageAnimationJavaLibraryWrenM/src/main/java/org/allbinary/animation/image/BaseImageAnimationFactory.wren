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
// package org.allbinary.animation.image

import "../../../../allbinary_java" for JObject, JException, JR

class BaseImageAnimationFactory is JObject {
  animationFactoryImageScaleUtil { _animationFactoryImageScaleUtil }
  animationFactoryImageScaleUtil=(value) { _animationFactoryImageScaleUtil = value }
  image { _image }
  image=(value) { _image = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }
  sequenceArray { _sequenceArray }
  sequenceArray=(value) { _sequenceArray = value }
  animationFactoryInitializationVisitor { _animationFactoryInitializationVisitor }
  animationFactoryInitializationVisitor=(value) { _animationFactoryInitializationVisitor = value }
  scaleProperties { _scaleProperties }
  scaleProperties=(value) { _scaleProperties = value }

  initFields_BaseImageAnimationFactory() {
    _animationFactoryImageScaleUtil = null
    _image = null
    _animationBehaviorFactory = null
    _sequenceArray = null
    _animationFactoryInitializationVisitor = null
    _scaleProperties = null
        _animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
        
        
        
        
        _scaleProperties = ScaleProperties.instance
  }
    

    static createFactoryBase(image, sequenceArray, width, height, animationBehaviorFactory) {
        return BaseImageAnimationFactory.new(image, sequenceArray, width, height, 0, 0, animationBehaviorFactory)
    }
    

    construct new(image, sequenceArray, width, height, dx, dy, animationBehaviorFactory) {
    super()
    initFields_BaseImageAnimationFactory()
        _animationFactoryInitializationVisitor = AnimationFactoryInitializationVisitor.new()
        _image = image
        _animationFactoryInitializationVisitor.width = width
        _animationFactoryInitializationVisitor.height = height
        _animationBehaviorFactory = animationBehaviorFactory
        _sequenceArray = sequenceArray
        _animationFactoryInitializationVisitor.dx = dx
        _animationFactoryInitializationVisitor.dy = dy
    }
    

    getInstance(instanceId) {
        return NullAnimationFactory.getFactoryInstance().getInstance(instanceId)
    }
    

    getImage() {
        return _image
    }
    

    getSequenceArray() {
        return _sequenceArray
    }
    

    setInitialScale(scaleProperties) {
        _scaleProperties = scaleProperties
        if (_scaleProperties.shouldScale) {
            _scaleProperties.scaleWidth = JR.i32(((_animationFactoryInitializationVisitor.width * _scaleProperties.scaleX)))
            _scaleProperties.scaleHeight = JR.i32(((_animationFactoryInitializationVisitor.height * _scaleProperties.scaleY)))
        } else {
        }
    }
    

    getAnimationFactoryInitializationVisitorP() {
        return _animationFactoryInitializationVisitor
    }
    

    getScalePropertiesP() {
        return _scaleProperties
    }
    

    toString() {
        var commonSeps = CommonSeps.getInstance()
        var commonLabels = CommonLabels.getInstance()
        var stringBuffer = StringMaker.new()
        stringBuffer.append(super.toString())
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(JR.i32(_image.getHeight()))
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(_animationFactoryInitializationVisitor.toString())
        return stringBuffer.toString()
    }
}

import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../org/allbinary/image/AnimationFactoryImageScaleUtil" for AnimationFactoryImageScaleUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "./AnimationFactoryInitializationVisitor" for AnimationFactoryInitializationVisitor

