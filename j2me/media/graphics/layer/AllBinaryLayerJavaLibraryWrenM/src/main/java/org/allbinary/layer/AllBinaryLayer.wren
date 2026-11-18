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
// package org.allbinary.layer

import "../../../allbinary_java" for JObject, JException, JR
import "./Layer" for Layer

class AllBinaryLayer is Layer {
    static NULL_ALLBINARY_LAYER {
    if (__NULL_ALLBINARY_LAYER_set == null) {
      __NULL_ALLBINARY_LAYER_set = true
      __NULL_ALLBINARY_LAYER = AllBinaryLayer.new(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION)
    }
    return __NULL_ALLBINARY_LAYER
  }
  static NULL_ALLBINARY_LAYER=(value) {
    __NULL_ALLBINARY_LAYER_set = true
    __NULL_ALLBINARY_LAYER = value
  }
    static TYPE { "Type: " }
  viewPositionEvent { _viewPositionEvent }
  viewPositionEvent=(value) { _viewPositionEvent = value }
  halfWidth { _halfWidth }
  halfWidth=(value) { _halfWidth = value }
  halfHeight { _halfHeight }
  halfHeight=(value) { _halfHeight = value }
  name { _name }
  name=(value) { _name = value }
  viewPosition { _viewPosition }
  viewPosition=(value) { _viewPosition = value }

  initFields_AllBinaryLayer() {
    _viewPositionEvent = null
    _halfWidth = 0
    _halfHeight = 0
    _name = null
    _viewPosition = null
        _viewPositionEvent = ViewPositionEvent.new(this)
        _halfWidth = 0
        _halfHeight = 0
        
        _viewPosition = ViewPositionBase.NULL_VIEW_POSITION
  }
    

    construct new(name, rectangle, viewPosition) {
        super(rectangle.getWidth(), rectangle.getHeight())
        initFields_AllBinaryLayer()
        var localName = null
        localName = StringMaker.new().append(name).append(CommonSeps.getInstance().COLON).append(Integer.toHexString(TsUtil.getInstance().hashCode(this))).toString()
        _name = localName
        var point = rectangle.getPoint()
        this.setPosition(point.getX(), point.getY(), point.getZ())
        this.setHalfWidth((JR.shr(this.getWidth(), 1)))
        this.setHalfHeight((JR.shr(this.getHeight(), 1)))
        _viewPosition = viewPosition
        _viewPosition.setAllbinaryLayer(this)
    }
    

    setPosition(x, y, z) {
        super.setPosition(x, y, z)
    }
    

    moveDXYZ(dx, dy, dz) {
        super.moveDXYZ(dx, dy, dz)
    }
    

    getXP() {
        return super.getXP()
    }
    

    getYP() {
        return super.getYP()
    }
    

    getZP() {
        return super.getZP()
    }
    

    getWidth() {
        return super.getWidth()
    }
    

    getHeight() {
        return super.getHeight()
    }
    

    setVisible(visible) {
        super.setVisible(visible)
    }
    

    isVisible() {
        return super.isVisible()
    }
    

    paint(graphics) {
        super.paint(graphics)
    }
    

    onChangeEvent(layerManagerEvent) {
    }
    

    paintThreed(graphics) {
    }
    

    getX2() {
        return JR.i32(this.getXP() + this.getWidth())
    }
    

    getY2() {
        return JR.i32(this.getYP() + this.getHeight())
    }
    

    getZ2() {
        return JR.i32(((this.getZP() + this.getDepth())))
    }
    

    getName() {
        return _name
    }
    

    setHalfWidth(halfWidth) {
        _halfWidth = halfWidth
    }
    

    getHalfWidth() {
        return _halfWidth
    }
    

    setHalfHeight(halfHeight) {
        _halfHeight = halfHeight
    }
    

    getHalfHeight() {
        return _halfHeight
    }
    

    getHalfDepth() {
        return JR.idiv(JR.i32(this.getDepth()), 2)
    }
    

    getViewPosition() {
        return _viewPosition
    }
    

    setViewPosition(viewPosition) {
        _viewPosition = viewPosition
    }
    

    getGroupInterface() {
        return BasicGroupFactory.getInstance().NONE_ARRAY
    }
    

    implmentsTickableInterface() {
        return false
    }
    

    implmentsGameInputInterface() {
        return false
    }
    

    implmentsArtificialIntelligenceCompositeInterface() {
        return false
    }
    

    implmentsCollidableInterface() {
        return false
    }
    

    implementsThreedInterface() {
        return OpenGLFeatureUtil.getInstance().isAnyThreed()
    }
    

    getType() {
        return -1
    }
    

    getMultiPlayerType() {
        return -1
    }
    

    toStringAppend(stringBuffer) {
        var commonSeps = CommonSeps.getInstance()
        var positionStrings = PositionStrings.getInstance()
        var commonLabels = CommonLabels.getInstance()
        stringBuffer.append(this.getName())
        stringBuffer.append(commonSeps.COLON)
        stringBuffer.append(AllBinaryLayer.TYPE)
        stringBuffer.appendint(this.getType())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(this.getXP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(this.getYP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(this.getZP())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(this.getWidth())
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(this.getHeight())
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        this.toStringAppend(stringBuffer)
        return stringBuffer.toString()
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/game/identification/BasicGroupFactory" for BasicGroupFactory
import "../../../org/allbinary/game/identification/Group" for Group
import "../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" for OpenGLFeatureUtil
import "../../../org/allbinary/TsUtil" for TsUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/math/PositionStrings" for PositionStrings
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "../../../org/allbinary/view/event/ViewPositionEvent" for ViewPositionEvent
import "../../../java/lang/Integer" for Integer
import "./LayerInterface" for LayerInterface

