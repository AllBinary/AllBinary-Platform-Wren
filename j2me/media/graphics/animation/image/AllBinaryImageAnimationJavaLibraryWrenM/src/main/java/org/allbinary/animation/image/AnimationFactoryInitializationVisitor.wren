/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class AnimationFactoryInitializationVisitor is JObject {
  width { _width }
  width=(value) { _width = value }
  height { _height }
  height=(value) { _height = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }
  originalDx { _originalDx }
  originalDx=(value) { _originalDx = value }
  originalDy { _originalDy }
  originalDy=(value) { _originalDy = value }

  initFields_AnimationFactoryInitializationVisitor() {
    _width = 0
    _height = 0
    _dx = 0
    _dy = 0
    _originalDx = 0
    _originalDy = 0
        _width = 0
        _height = 0
        _dx = 0
        _dy = 0
        _originalDx = 0
        _originalDy = 0
  }

  construct new() {
    super()
    initFields_AnimationFactoryInitializationVisitor()
  }
    

    visit() {
    }
    

    toString() {
        var commonSeps = CommonSeps.getInstance()
        var commonLabels = CommonLabels.getInstance()
        var stringBuffer = StringMaker.new()
        stringBuffer.append(PositionStrings.getInstance().DX_LABEL).appendfloat(_dx)
        stringBuffer.append(PositionStrings.getInstance().DY_LABEL).appendfloat(_dy)
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(_width)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(_height)
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/math/PositionStrings" for PositionStrings
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps

