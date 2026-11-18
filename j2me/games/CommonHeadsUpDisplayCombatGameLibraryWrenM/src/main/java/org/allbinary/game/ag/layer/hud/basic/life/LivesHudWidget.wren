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
// package org.allbinary.game.ag.layer.hud.basic.life

import "../../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../../org/allbinary/game/graphics/hud/BasicHud" for BasicHud

class LivesHudWidget is BasicHud {
  lifeInterface { _lifeInterface }
  lifeInterface=(value) { _lifeInterface = value }
  xArray { _xArray }
  xArray=(value) { _xArray = value }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }

  initFields_LivesHudWidget() {
    _lifeInterface = null
    _xArray = null
    _animationInterface = null
        
        
        
  }
    

    construct new(animationInterface, lifeInterface, location, direction) {
        super(location, direction, 2, BasicColorFactory.getInstance().WHITE)
        initFields_LivesHudWidget()
        _lifeInterface = lifeInterface
        var size = JR.i32(this.getLifeInterface().getMaxlives())
        _xArray = List.filled(size, 0)
        _animationInterface = animationInterface
        this.updateMaxWidth = (_lifeInterface.getMaxlives() * 16)
        this.updateMaxHeight = 16
    }
    

    updateMeasurement(graphics) {
        super.updateMeasurement(graphics)
        var maxLives = JR.i32(this.getLifeInterface().getMaxlives())
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < maxLives))) break
            _xArray[index] = (this.getX() + (JR.i32(index * 16)))
            }
        }
    }
    

    onDisplayChangeEvent(displayChangeEvent) {
        super.onDisplayChangeEvent(displayChangeEvent)
        this.myFontProcessor = this.updateMyFontProcessor
    }
    

    setX(x) {
        super.setX(x)
        this.myFontProcessor = this.updateMyFontProcessor
    }
    

    paint(graphics) {
        this.myFontProcessor.process(graphics)
        if (true) {
            var index = JR.i32(this.getLifeInterface().get())
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _animationInterface.paintXY(graphics, _xArray[index], this.getY())
            }
        }
    }
    

    paintThreed(graphics) {
    }
    

    getLifeInterface() {
        return _lifeInterface
    }
}

import "../../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../../../../org/allbinary/game/ag/life/Life" for Life
import "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" for DisplayChangeEvent
import "../../../../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface

