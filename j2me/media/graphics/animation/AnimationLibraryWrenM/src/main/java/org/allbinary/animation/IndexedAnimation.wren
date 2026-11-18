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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "./Animation" for Animation

class IndexedAnimation is Animation {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  animationBehaviorP { _animationBehaviorP }
  animationBehaviorP=(value) { _animationBehaviorP = value }

  initFields_IndexedAnimation() {
    _logUtil = null
    _commonStrings = null
    _animationBehaviorP = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
  }
    

    construct new(animationBehavior) {
    super()
    initFields_IndexedAnimation()
        _animationBehaviorP = animationBehavior
    }
    

    getAnimationBehavior() {
        return _animationBehaviorP
    }
    

    reset() {
        _animationBehaviorP.reset()
        this.setFrame(0)
    }
    

    setFrame(index) {
    }
    

    getFrame() {
        return 0
    }
    

    getAnimationSize() {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    getSize() {
        return 0
    }
    

    previousFrame() {
    }
    

    isLastFrame() {
        if ((this.getFrame() == JR.i32(this.getSize() - 1))) {
            return true
        } else {
            return false
        }
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    setState(indexedAnimation) {
        this.setFrame(indexedAnimation.getFrame())
        this.setDx(indexedAnimation.getDx())
        this.setDy(indexedAnimation.getDy())
    }
    

    getWidth() {
        return 0
    }
    

    getHeight() {
        return 0
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./IndexedAnimationInterface" for IndexedAnimationInterface
import "./AnimationBehavior" for AnimationBehavior

