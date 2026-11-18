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
import "../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation

class ImageAnimation is IndexedAnimation {
  image { _image }
  image=(value) { _image = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_ImageAnimation() {
    _image = null
    _anchor = 0
        
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(image, animationBehavior) {
        super(animationBehavior)
        initFields_ImageAnimation()
        _image = image
    }
    

    getAnimationSize() {
        return this.getSize()
    }
    

    nextFrame() {
    }
    

    previousFrame() {
    }
    

    setFrame(index) {
    }
    

    getFrame() {
        return 0
    }
    

    getSize() {
        return 1
    }
    

    setSequence(sequence) {
    }
    

    getSequence() {
        return PrimitiveIntUtil.getArrayInstance()
    }
    

    paintXY(graphics, x, y) {
        graphics.drawImage(_image, x, y, _anchor)
    }
    

    getImage() {
        return _image
    }
    

    close() {
        DisposalUtil.getInstance().disposeImage(_image)
    }
    

    finalize() {
        DisposalUtil.getInstance().disposeImage(_image)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/DisposalUtil" for DisposalUtil
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/logic/math/PrimitiveIntUtil" for PrimitiveIntUtil

