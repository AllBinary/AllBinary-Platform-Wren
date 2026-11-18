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
// package org.allbinary.animation.image.sprite

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/animation/image/BaseImageAnimationFactory" for BaseImageAnimationFactory

class ColorCompositeSpriteIndexedAnimationFactory is BaseImageAnimationFactory {
  animationFactorySpriteScaleUtil { _animationFactorySpriteScaleUtil }
  animationFactorySpriteScaleUtil=(value) { _animationFactorySpriteScaleUtil = value }
  basicColorArray { _basicColorArray }
  basicColorArray=(value) { _basicColorArray = value }

  initFields_ColorCompositeSpriteIndexedAnimationFactory() {
    _animationFactorySpriteScaleUtil = null
    _basicColorArray = null
        _animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
        
  }
    

    construct new(image, basicColorArray, width, height, animationBehaviorFactory) {
        super(image, PrimitiveIntUtil.getArrayInstance(), width, height, 0, 0, animationBehaviorFactory)
        initFields_ColorCompositeSpriteIndexedAnimationFactory()
        _basicColorArray = basicColorArray
    }
    

    getInstance(instanceId) {
        var sprite = _animationFactorySpriteScaleUtil.createImage(this.getImage(), this.animationFactoryInitializationVisitor.width, this.animationFactoryInitializationVisitor.height, this.scaleProperties.scaleWidth, this.scaleProperties.scaleHeight)
        return SpriteIndexedAnimation.new(sprite, this.getImage(), _basicColorArray, this.animationBehaviorFactory.getOrCreateInstance())
    }
    

    getInstanceAnimation(animationInterface) {
        return this.getInstance(0)
    }
}

import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../../org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" for AnimationFactorySpriteScaleUtil
import "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "./SpriteIndexedAnimation" for SpriteIndexedAnimation

