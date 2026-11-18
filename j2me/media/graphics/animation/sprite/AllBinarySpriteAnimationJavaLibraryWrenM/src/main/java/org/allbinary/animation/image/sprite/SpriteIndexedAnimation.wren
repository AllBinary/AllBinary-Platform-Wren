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
import "../../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

class SpriteIndexedAnimation is IndexedAnimation {
  sprite { _sprite }
  sprite=(value) { _sprite = value }
  image { _image }
  image=(value) { _image = value }
  basicColorArray { _basicColorArray }
  basicColorArray=(value) { _basicColorArray = value }

  initFields_SpriteIndexedAnimation() {
    _sprite = null
    _image = null
    _basicColorArray = null
        
        
        
  }
    

    construct new(sprite, image, basicColorArray, animationBehavior) {
        super(animationBehavior)
        initFields_SpriteIndexedAnimation()
        _sprite = sprite
        _image = image
        _basicColorArray = basicColorArray
        if (((_basicColorArray.count != 0) && (this.getSize() != _basicColorArray.count))) {
            Fiber.abort(JR.exception("Exception", StringMaker.new().append(CommonLabels.getInstance().TOTAL_LABEL).appendint(this.getSize()).append("!=").appendint(_basicColorArray.count).toString()))
        }
    }
    

    getAnimationSize() {
        return this.getSize()
    }
    

    setBasicColorP(basicColor) {
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _basicColorArray.count))) break
            if ((basicColor == _basicColorArray[index])) {
                this.setFrame(index)
                break
            }
            }
        }
    }
    

    getBasicColorP() {
        if ((_basicColorArray.count < this.getFrame())) {
            return _basicColorArray[this.getFrame()]
        } else {
            return BasicColorFactory.getInstance().WHITE
        }
    }
    

    paintFrame(graphics, frame, x, y) {
        this.setFrame(frame)
        _sprite.setPosition(x, y)
        _sprite.paint(graphics)
    }
    

    paintXY(graphics, x, y) {
        _sprite.setPosition(x, y)
        _sprite.paint(graphics)
    }
    

    paint(graphics) {
        _sprite.paint(graphics)
    }
    

    nextFrame() {
        _sprite.nextFrame()
    }
    

    previousFrame() {
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
    

    isLastFrame() {
        if ((_sprite.getFrame() == JR.i32(this.getSize() - 1))) {
            return true
        } else {
            return false
        }
    }
    

    getLastFrame() {
        return this.getSize()
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    close() {
    }
    

    finalize() {
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/color/ColorCompositeInterface" for ColorCompositeInterface
import "../../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels

