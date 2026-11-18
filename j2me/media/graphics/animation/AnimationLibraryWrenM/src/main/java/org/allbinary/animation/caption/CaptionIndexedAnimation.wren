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
// package org.allbinary.animation.caption

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

class CaptionIndexedAnimation is IndexedAnimation {
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  movieIndexedAnimationInterface { _movieIndexedAnimationInterface }
  movieIndexedAnimationInterface=(value) { _movieIndexedAnimationInterface = value }
  captionDx { _captionDx }
  captionDx=(value) { _captionDx = value }
  captionDy { _captionDy }
  captionDy=(value) { _captionDy = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }
  time { _time }
  time=(value) { _time = value }
  END_EVENT { _END_EVENT }
  END_EVENT=(value) { _END_EVENT = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  player { _player }
  player=(value) { _player = value }

  initFields_CaptionIndexedAnimation() {
    _animationInterface = null
    _movieIndexedAnimationInterface = null
    _captionDx = 0
    _captionDy = 0
    _dx = 0
    _dy = 0
    _time = 0
    _END_EVENT = null
    _timeDelayHelper = null
    _player = null
        
        
        
        
        
        
        
        
        
        
  }
    

    construct new(animationInterface, movieIndexedAnimationInterface, player, captionDx, captionDy, dx, dy, time, animationBehavior) {
        super(animationBehavior)
        initFields_CaptionIndexedAnimation()
        _animationInterface = animationInterface
        _movieIndexedAnimationInterface = movieIndexedAnimationInterface
        _captionDx = captionDx
        _captionDy = captionDy
        _dx = dx
        _dy = dy
        _time = time
        _END_EVENT = AllBinaryEventObject.new(this)
        var timePerFrame = JR.idiv(_time, this.getSize())
        _timeDelayHelper = TimeDelayHelper.new(timePerFrame)
        _player = player
        _player.start()
    }
    

    nextFrame() {
        if (_timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            _movieIndexedAnimationInterface.nextFrame()
        }
        if (this.isLastFrame()) {
            AnimationEventHandler.getInstance().fireEvent(_END_EVENT)
        }
    }
    

    isLastFrame() {
        if ((_movieIndexedAnimationInterface.getFrame() == JR.i32(this.getSize() - 1))) {
            return true
        } else {
            return false
        }
    }
    

    previousFrame() {
        _movieIndexedAnimationInterface.previousFrame()
    }
    

    setFrame(index) {
        _movieIndexedAnimationInterface.setFrame(index)
    }
    

    getFrame() {
        return _movieIndexedAnimationInterface.getFrame()
    }
    

    getSize() {
        return _movieIndexedAnimationInterface.getSize()
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    paintXY(graphics, x, y) {
        _animationInterface.paintXY(graphics, JR.i32(x + _captionDx), JR.i32(y + _captionDy))
        _movieIndexedAnimationInterface.paintXY(graphics, JR.i32(JR.i32(x + _captionDx) + _dx), JR.i32(JR.i32(y + _captionDy) + _dy))
    }
    

    paintThreedXYZ(graphics, x, y, z) {
        _animationInterface.paintThreedXYZ(graphics, JR.i32(x + _captionDx), JR.i32(y + _captionDy), z)
        _movieIndexedAnimationInterface.paintThreedXYZ(graphics, JR.i32(JR.i32(x + _captionDx) + _dx), JR.i32(JR.i32(y + _captionDy) + _dy), z)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/media/Player" for Player
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/animation/AnimationEventHandler" for AnimationEventHandler
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper

