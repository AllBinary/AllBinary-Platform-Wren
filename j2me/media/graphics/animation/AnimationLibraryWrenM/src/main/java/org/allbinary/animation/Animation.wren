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

class Animation is JObject {
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  basicColor { _basicColor }
  basicColor=(value) { _basicColor = value }
  colorP { _colorP }
  colorP=(value) { _colorP = value }
  changeBasicColorP { _changeBasicColorP }
  changeBasicColorP=(value) { _changeBasicColorP = value }
  changeColorP { _changeColorP }
  changeColorP=(value) { _changeColorP = value }
  alphaP { _alphaP }
  alphaP=(value) { _alphaP = value }

  initFields_Animation() {
    _basicSetColorUtil = null
    _basicColor = null
    _colorP = 0
    _changeBasicColorP = null
    _changeColorP = 0
    _alphaP = 0
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        _basicColor = BasicColorFactory.getInstance().WHITE
        _colorP = 0
        _changeBasicColorP = BasicColorFactory.getInstance().NULL_COLOR
        _changeColorP = 0
        _alphaP = 0
  }
    

    construct new() {
    super()
    initFields_Animation()
    }
    

    setAlpha(alpha) {
        _alphaP = alpha
    }
    

    nextFrame() {
    }
    

    paintXY(graphics, x, y) {
        _basicSetColorUtil.setBasicColorP3(graphics, this.getBasicColorP(), this.getColor())
    }
    

    paintThreedXYZ(graphics, x, y, z) {
    }
    

    isThreed() {
        return false
    }
    

    getBasicColorP() {
        return _basicColor
    }
    

    setBasicColorP(basicColor) {
        _basicColor = basicColor
        _colorP = _basicColor.intValue()
    }
    

    setBackgroundBasicColorP(basicColor) {
    }
    

    getChangeBasicColor() {
        return _changeBasicColorP
    }
    

    changeBasicColor(basicColor) {
        _changeBasicColorP = basicColor
        _changeColorP = _changeBasicColorP.intValue()
    }
    

    getChangeColor() {
        return _changeColorP
    }
    

    getColor() {
        return _colorP
    }
    

    setScale(scaleX, scaleY) {
    }
    

    setMaxScale(maxScaleX, maxScaleY) {
    }
    

    set(gl) {
    }
    

    setDx(dx) {
    }
    

    getDx() {
        return 0
    }
    

    setDy(dy) {
    }
    

    getDy() {
        return 0
    }
}

import "../../../javax/microedition/khronos/opengles/GL" for GL
import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil
import "../../../org/allbinary/image/opengles/OpenGLSurfaceChangedInterface" for OpenGLSurfaceChangedInterface
import "./AnimationInterface" for AnimationInterface

