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
// package org.allbinary.animation.special

import "../../../../allbinary_java" for JObject, JException, JR
import "./SpecialAnimation" for SpecialAnimation

class TitleAnimation is SpecialAnimation {
  systemWrapper { _systemWrapper }
  systemWrapper=(value) { _systemWrapper = value }
  deltaX { _deltaX }
  deltaX=(value) { _deltaX = value }
  deltaY { _deltaY }
  deltaY=(value) { _deltaY = value }
  deltaZ { _deltaZ }
  deltaZ=(value) { _deltaZ = value }
  basicColorArray { _basicColorArray }
  basicColorArray=(value) { _basicColorArray = value }
  dxArray { _dxArray }
  dxArray=(value) { _dxArray = value }
  dyArray { _dyArray }
  dyArray=(value) { _dyArray = value }
  widthP { _widthP }
  widthP=(value) { _widthP = value }
  animationInterfaceArray { _animationInterfaceArray }
  animationInterfaceArray=(value) { _animationInterfaceArray = value }
  sizeP { _sizeP }
  sizeP=(value) { _sizeP = value }
  y { _y }
  y=(value) { _y = value }
  lastFrameStartTime { _lastFrameStartTime }
  lastFrameStartTime=(value) { _lastFrameStartTime = value }
  displayInfoSingleton { _displayInfoSingleton }
  displayInfoSingleton=(value) { _displayInfoSingleton = value }
  CLEAR_COLOR { _CLEAR_COLOR }
  CLEAR_COLOR=(value) { _CLEAR_COLOR = value }

  initFields_TitleAnimation() {
    _systemWrapper = null
    _deltaX = 0.0
    _deltaY = 0.0
    _deltaZ = 0.0
    _basicColorArray = null
    _dxArray = null
    _dyArray = null
    _widthP = 0
    _animationInterfaceArray = null
    _sizeP = 0
    _y = 0
    _lastFrameStartTime = 0
    _displayInfoSingleton = null
    _CLEAR_COLOR = null
        _systemWrapper = ABSystemWrapper.getInstance()
        _deltaX = 0.0
        _deltaY = 0.0
        _deltaZ = 0.0
        
        
        
        
        
        
        
        
        _displayInfoSingleton = DisplayInfoSingleton.getInstance()
        _CLEAR_COLOR = BasicColorFactory.getInstance().CLEAR_COLOR
  }
    

    static createAnimation(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width) {
        return TitleAnimation.new(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, IndexedAnimationBehavior.new(1, 250))
    }
    

    construct new(animationInterfaceArray, basicColorArray, dxArray, dyArray, y, width, animationBehavior) {
        super(animationBehavior)
        initFields_TitleAnimation()
        _lastFrameStartTime = _systemWrapper.currentTimeMillis()
        _animationInterfaceArray = animationInterfaceArray
        _sizeP = _animationInterfaceArray.count
        _basicColorArray = basicColorArray
        _dxArray = dxArray
        _dyArray = dyArray
        _y = y
        _widthP = width
        this.reset()
    }
    

    nextFrame() {
        var currentTime = _systemWrapper.currentTimeMillis()
        var totalTimeElapsed = JR.i32(currentTime - _lastFrameStartTime)
        var indexedAnimationBehavior = this.getAnimationBehavior()
        if ((totalTimeElapsed > indexedAnimationBehavior.frameDelayTime)) {
            this.previousFrame()
            _lastFrameStartTime = currentTime
        }
        if ((_animationInterfaceArray[0].getFrame() == 0)) {
            indexedAnimationBehavior.loopIndex = JR.i32(indexedAnimationBehavior.loopIndex + 1)
        }
    }
    

    isComplete() {
        var indexedAnimationBehavior = this.getAnimationBehavior()
        if ((((indexedAnimationBehavior.loopTotal == -1) || (indexedAnimationBehavior.loopIndex < indexedAnimationBehavior.loopTotal)) || (this.getFrame() != 0))) {
            return false
        } else {
            return true
        }
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    getSize() {
        return _animationInterfaceArray[0].getSize()
    }
    

    getFrame() {
        return _animationInterfaceArray[0].getFrame()
    }
    

    setFrame(frame) {
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _sizeP))) break
            _animationInterfaceArray[index].setFrame(frame)
            }
        }
    }
    

    setLastFrame() {
        this.setFrame(JR.i32(this.getSize() - 1))
    }
    

    reset() {
        this.setLastFrame()
        var indexedAnimationBehavior = (this.getAnimationBehavior())
        indexedAnimationBehavior.reset()
    }
    

    previousFrame() {
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _sizeP))) break
            _animationInterfaceArray[index].previousFrame()
            }
        }
    }
    

    paintFrameXY(graphics, frame, x, y) {
        this.setFrame(frame)
        this.paintXY(graphics, x, y)
    }
    

    paintXY(graphics, ax, ay) {
        var x = 0
        if ((_widthP != Integer.MIN_VALUE)) {
            x = ((((_displayInfoSingleton.getLastWidth() - _widthP)) / 2))
        }
        var deltaX = 0
        var deltaY = 0
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _sizeP))) break
            deltaX = JR.i32(_dxArray[index] + x)
            deltaY = JR.i32(_dyArray[index] + _y)
            if ((_basicColorArray[index] != _CLEAR_COLOR)) {
                this.basicSetColorUtil.setBasicColorP(graphics, _basicColorArray[index])
            }
            _animationInterfaceArray[index].paintXY(graphics, deltaX, deltaY)
            }
        }
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "../../../../org/allbinary/animation/IndexedAnimationBehavior" for IndexedAnimationBehavior
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../org/allbinary/logic/ABSystemWrapper" for ABSystemWrapper
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../java/lang/Integer" for Integer

