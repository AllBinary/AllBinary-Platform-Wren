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
import "../../../../../org/allbinary/animation/RotationAnimation" for RotationAnimation

class HackRotationSpriteIndexedAnimation is RotationAnimation {
  sprite { _sprite }
  sprite=(value) { _sprite = value }
  image { _image }
  image=(value) { _image = value }

  initFields_HackRotationSpriteIndexedAnimation() {
    _sprite = null
    _image = null
        
        
  }
    

    construct new(sprite, image, angleInfo, animationBehavior) {
        super(angleInfo, CircularIndexUtil.createInstance((360 / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
        initFields_HackRotationSpriteIndexedAnimation()
        _sprite = sprite
        _image = image
    }
    

    getAnimationSize() {
        return this.getSize()
    }
    

    paintFrame(g, frame, x, y) {
        this.setFrame(frame)
        this.paintXY(g, x, y)
    }
    

    paintXY(g, x, y) {
        _sprite.setPosition(x, y)
        this.paint(g)
    }
    

    paint(g) {
        _sprite.paint(g)
    }
    

    nextRotation() {
        _sprite.nextFrame()
    }
    

    previousRotation() {
        _sprite.prevFrame()
    }
    

    getSize() {
        return _sprite.getRawFrameCount()
    }
    

    setFrame(frame) {
        _sprite.setFrame(frame)
    }
    

    getFrame() {
        return _sprite.getFrame()
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil

