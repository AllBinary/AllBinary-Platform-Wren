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
// package org.allbinary.game.layer.pickup

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

class IconLayer is AllBinaryLayer {
    static NULL_ICON_LAYER {
    if (__NULL_ICON_LAYER_set == null) {
      __NULL_ICON_LAYER_set = true
      __NULL_ICON_LAYER = IconLayer.new(NullAnimationFactory.getFactoryInstance().getInstance(0), 0, 0)
    }
    return __NULL_ICON_LAYER
  }
  static NULL_ICON_LAYER=(value) {
    __NULL_ICON_LAYER_set = true
    __NULL_ICON_LAYER = value
  }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }

  initFields_IconLayer() {
    _animationInterface = null
        
  }
    

    construct new(animationInterface, width, height) {
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, width, height), ViewPosition.getInstanceD())
        initFields_IconLayer()
        _animationInterface = animationInterface
    }
    

    paint(graphics) {
        _animationInterface.paintXY(graphics, this.x, this.y)
    }
    

    paintThreed(graphics) {
        _animationInterface.paintThreedXYZ(graphics, this.x, this.y, this.z)
    }
    

    getAnimationInterface() {
        return _animationInterface
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/view/ViewPosition" for ViewPosition

