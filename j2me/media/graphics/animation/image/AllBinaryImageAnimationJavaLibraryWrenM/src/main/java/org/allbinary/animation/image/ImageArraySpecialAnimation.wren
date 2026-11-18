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
import "./ImageArrayAnimation" for ImageArrayAnimation

class ImageArraySpecialAnimation is ImageArrayAnimation {
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  loopCount { _loopCount }
  loopCount=(value) { _loopCount = value }
  loopCountTotal { _loopCountTotal }
  loopCountTotal=(value) { _loopCountTotal = value }

  initFields_ImageArraySpecialAnimation() {
    _timeDelayHelper = null
    _loopCount = 0
    _loopCountTotal = 0
        _timeDelayHelper = TimeDelayHelper.new(270)
        _loopCount = 0
        _loopCountTotal = 1
  }
    

    construct new(imageArray, animationBehavior) {
        super(imageArray, animationBehavior)
        initFields_ImageArraySpecialAnimation()
        this.reset()
    }
    

    getLoopCount() {
        return _loopCount
    }
    

    setLastFrame() {
        this.circularIndexUtil.setIndex((this.circularIndexUtil.getSize() - 1))
    }
    

    reset() {
        this.setFrame((this.getSize() - 1))
        _loopCount = 0
    }
    

    nextFrame() {
        if ((this.getFrame() > 0)) {
            if (_timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
                this.previousFrame()
                if ((this.getFrame() == 0)) {
                    _loopCount = JR.i32(_loopCount + 1)
                }
            }
        }
    }
    

    isComplete() {
        if (((_loopCount < _loopCountTotal) || (this.getFrame() != 0))) {
            return false
        } else {
            return true
        }
    }
    

    paintXY(graphics, x, y) {
        x = (DisplayInfoSingleton.getInstance().getLastHalfWidth() - (JR.shr(this.getImage(this.circularIndexUtil.getIndex()).getWidth(), 1)))
        y = 5
        super.paintXY(graphics, x, y)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/animation/special/SpecialAnimationInterface" for SpecialAnimationInterface
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper

