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
import "./HackRotationSpriteIndexedAnimation" for HackRotationSpriteIndexedAnimation

class AllBinarySpriteRotationAnimation is HackRotationSpriteIndexedAnimation {

  initFields_AllBinarySpriteRotationAnimation() {
  }
    

    construct new(sprite, image, animationBehavior) {
        super(sprite, image, AngleInfo.getInstance(JR.i16(((AngleFactory.getInstance().TOTAL_ANGLE / sprite.getRawFrameCount())))), animationBehavior)
        this.angleInfo.adjustAngle(this.sprite.getFrame())
    }
    

    nextRotation() {
        this.sprite.nextFrame()
        this.angleInfo.adjustAngle(this.sprite.getFrame())
    }
    

    previousRotation() {
        this.sprite.prevFrame()
        this.angleInfo.adjustAngle(this.sprite.getFrame())
    }
    

    setFrameByDirection(direction) {
        var angle = this.directionUtil.getFrameAngle(direction)
        this.adjustFrameToAngle(angle)
    }
    

    setFrameToAngle(angle) {
        this.adjustFrameToAngle(angle)
    }
    

    setFrame(index) {
        this.sprite.setFrame(index)
        this.angleInfo.adjustAngle(this.getFrame())
    }
    

    adjustFrameToAngle(angle) {
        this.adjustFrame(angle.getValue())
    }
    

    adjustFrame(angle) {
        this.setFrame(this.frameUtil.getFrameForAngle(angle, JR.i32(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())))
    }
}

import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../../org/allbinary/direction/Direction" for Direction
import "../../../../../org/allbinary/math/Angle" for Angle
import "../../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../../org/allbinary/math/AngleInfo" for AngleInfo

