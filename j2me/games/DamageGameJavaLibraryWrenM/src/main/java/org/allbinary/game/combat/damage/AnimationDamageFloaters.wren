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
// package org.allbinary.game.combat.damage

import "../../../../../allbinary_java" for JObject, JException, JR
import "./DamageFloaters" for DamageFloaters

class AnimationDamageFloaters is DamageFloaters {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  layerInterface { _layerInterface }
  layerInterface=(value) { _layerInterface = value }
  animationInterfaceArray { _animationInterfaceArray }
  animationInterfaceArray=(value) { _animationInterfaceArray = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }

  initFields_AnimationDamageFloaters() {
    _logUtil = null
    _layerInterface = null
    _animationInterfaceArray = null
    _circularIndexUtil = null
    _dx = 0
    _dy = 0
        _logUtil = LogUtil.getInstance()
        
        
        
        
        
  }
    

    construct new(layerInterface, animationInterfaceArray, dx, dy) {
    super()
    initFields_AnimationDamageFloaters()
        _animationInterfaceArray = animationInterfaceArray
        if (true) {
            var index = JR.i32(_animationInterfaceArray.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _animationInterfaceArray[index].setFrame((_animationInterfaceArray[index].getSize() - 1))
            }
        }
        _layerInterface = layerInterface
        _circularIndexUtil = CircularIndexUtil.createInstance(_animationInterfaceArray.count)
        _dx = dx
        _dy = dy
    }
    

    add(damage) {
        var i = _circularIndexUtil.getIndex()
        _animationInterfaceArray[i].setFrame(0)
        _circularIndexUtil.next()
    }
    

    paint(graphics) {
        var jerror0 = Fiber.new {
            var viewPosition = _layerInterface.getViewPosition()
            var x = viewPosition.getX()
            var y = viewPosition.getY()
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < _animationInterfaceArray.count))) break
                var animationInterface = _animationInterfaceArray[index]
                if ((animationInterface.getFrame() < (animationInterface.getAnimationSize() - 1))) {
                    var delta = (animationInterface.getFrame() * 20)
                    animationInterface.paintXY(graphics, JR.i32(x + _dx), JR.i32(JR.i32(y - delta) + _dy))
                    animationInterface.nextFrame()
                }
                }
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            var canvasStrings = CanvasStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, canvasStrings.PAINT, e)
        }
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "../../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase

