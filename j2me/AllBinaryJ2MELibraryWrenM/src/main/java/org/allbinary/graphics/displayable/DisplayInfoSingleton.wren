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
// package org.allbinary.graphics.displayable

import "../../../../allbinary_java" for JObject, JException, JR

class DisplayInfoSingleton is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = DisplayInfoSingleton.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonLabels { _commonLabels }
  commonLabels=(value) { _commonLabels = value }
  commonSeps { _commonSeps }
  commonSeps=(value) { _commonSeps = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  ORIENTATION { _ORIENTATION }
  ORIENTATION=(value) { _ORIENTATION = value }
  ADJUSTING_FOR_SCALING_IN_PORTRAIT { _ADJUSTING_FOR_SCALING_IN_PORTRAIT }
  ADJUSTING_FOR_SCALING_IN_PORTRAIT=(value) { _ADJUSTING_FOR_SCALING_IN_PORTRAIT = value }
  ADJUSTING_FOR_SCALING_IN_LANDSCAPE { _ADJUSTING_FOR_SCALING_IN_LANDSCAPE }
  ADJUSTING_FOR_SCALING_IN_LANDSCAPE=(value) { _ADJUSTING_FOR_SCALING_IN_LANDSCAPE = value }
  last { _last }
  last=(value) { _last = value }
  lastHalf { _lastHalf }
  lastHalf=(value) { _lastHalf = value }
  full { _full }
  full=(value) { _full = value }
  top { _top }
  top=(value) { _top = value }
  left { _left }
  left=(value) { _left = value }
  xOffset { _xOffset }
  xOffset=(value) { _xOffset = value }
  yOffset { _yOffset }
  yOffset=(value) { _yOffset = value }
  scaleLargestTo { _scaleLargestTo }
  scaleLargestTo=(value) { _scaleLargestTo = value }
  WIDTH { _WIDTH }
  WIDTH=(value) { _WIDTH = value }
  HEIGHT { _HEIGHT }
  HEIGHT=(value) { _HEIGHT = value }
  CUSTOM_WIDTH { _CUSTOM_WIDTH }
  CUSTOM_WIDTH=(value) { _CUSTOM_WIDTH = value }
  CUSTOM_HEIGHT { _CUSTOM_HEIGHT }
  CUSTOM_HEIGHT=(value) { _CUSTOM_HEIGHT = value }
  scalableListener { _scalableListener }
  scalableListener=(value) { _scalableListener = value }
  displayRatio { _displayRatio }
  displayRatio=(value) { _displayRatio = value }
  ratio { _ratio }
  ratio=(value) { _ratio = value }
  SET_LAST_SIZE_METHOD_NAME { _SET_LAST_SIZE_METHOD_NAME }
  SET_LAST_SIZE_METHOD_NAME=(value) { _SET_LAST_SIZE_METHOD_NAME = value }
  FULL_WIDTH { _FULL_WIDTH }
  FULL_WIDTH=(value) { _FULL_WIDTH = value }
  FULL_HEIGHT { _FULL_HEIGHT }
  FULL_HEIGHT=(value) { _FULL_HEIGHT = value }
  LAST_WIDTH { _LAST_WIDTH }
  LAST_WIDTH=(value) { _LAST_WIDTH = value }
  LAST_HEIGHT { _LAST_HEIGHT }
  LAST_HEIGHT=(value) { _LAST_HEIGHT = value }
  PORTRAIT { _PORTRAIT }
  PORTRAIT=(value) { _PORTRAIT = value }
  LANDSCAPE { _LANDSCAPE }
  LANDSCAPE=(value) { _LANDSCAPE = value }
  displayChangeEvent { _displayChangeEvent }
  displayChangeEvent=(value) { _displayChangeEvent = value }
  FIRE_METHOD_NAME { _FIRE_METHOD_NAME }
  FIRE_METHOD_NAME=(value) { _FIRE_METHOD_NAME = value }
  REASON { _REASON }
  REASON=(value) { _REASON = value }
  UPDATE_FROM_ORIENTATION_CHANGE { _UPDATE_FROM_ORIENTATION_CHANGE }
  UPDATE_FROM_ORIENTATION_CHANGE=(value) { _UPDATE_FROM_ORIENTATION_CHANGE = value }
  list { _list }
  list=(value) { _list = value }
  DISPLAY_INFO { _DISPLAY_INFO }
  DISPLAY_INFO=(value) { _DISPLAY_INFO = value }
  FULL { _FULL }
  FULL=(value) { _FULL = value }
  LAST { _LAST }
  LAST=(value) { _LAST = value }
  LAST_HALF { _LAST_HALF }
  LAST_HALF=(value) { _LAST_HALF = value }

  initFields_DisplayInfoSingleton() {
    _logUtil = null
    _commonLabels = null
    _commonSeps = null
    _commonStrings = null
    _ORIENTATION = null
    _ADJUSTING_FOR_SCALING_IN_PORTRAIT = null
    _ADJUSTING_FOR_SCALING_IN_LANDSCAPE = null
    _last = null
    _lastHalf = null
    _full = null
    _top = 0
    _left = 0
    _xOffset = 0
    _yOffset = 0
    _scaleLargestTo = 0.0
    _WIDTH = 0
    _HEIGHT = 0
    _CUSTOM_WIDTH = 0
    _CUSTOM_HEIGHT = 0
    _scalableListener = null
    _displayRatio = 0.0
    _ratio = 0.0
    _SET_LAST_SIZE_METHOD_NAME = null
    _FULL_WIDTH = null
    _FULL_HEIGHT = null
    _LAST_WIDTH = null
    _LAST_HEIGHT = null
    _PORTRAIT = null
    _LANDSCAPE = null
    _displayChangeEvent = null
    _FIRE_METHOD_NAME = null
    _REASON = null
    _UPDATE_FROM_ORIENTATION_CHANGE = null
    _list = null
    _DISPLAY_INFO = null
    _FULL = null
    _LAST = null
    _LAST_HALF = null
        _logUtil = LogUtil.getInstance()
        _commonLabels = CommonLabels.getInstance()
        _commonSeps = CommonSeps.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _ORIENTATION = "ORIENTATION"
        _ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: "
        _ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: "
        _last = List.filled(4, 0)
        _lastHalf = List.filled(4, 0)
        _full = List.filled(4, 0)
        _top = 0
        _left = 0
        _xOffset = 0
        _yOffset = 0
        _scaleLargestTo = 0.0
        _WIDTH = 0
        _HEIGHT = 1
        _CUSTOM_WIDTH = 2
        _CUSTOM_HEIGHT = 3
        _scalableListener = BaseScalable.new()
        _displayRatio = 0.0
        _ratio = 1.0
        _SET_LAST_SIZE_METHOD_NAME = "setLastSize"
        _FULL_WIDTH = " FullWidth: "
        _FULL_HEIGHT = " FullHeight: "
        _LAST_WIDTH = "LastWidth: "
        _LAST_HEIGHT = " LastHeight: "
        _PORTRAIT = "Portrait"
        _LANDSCAPE = "Landscape"
        _displayChangeEvent = DisplayChangeEvent.new(this)
        _FIRE_METHOD_NAME = "fire"
        _REASON = "reason: "
        _UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change "
        _list = BasicArrayListD.new()
        _DISPLAY_INFO = "Display Info: "
        _FULL = "full"
        _LAST = "last"
        _LAST_HALF = "lastHalf"
  }
    

    static getInstance() {
        return DisplayInfoSingleton.SINGLETON
    }
    

    construct new() {
    super()
    initFields_DisplayInfoSingleton()
        var size = _last.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            _last[index] = 0
            _lastHalf[index] = 0
            _full[index] = 0
            }
        }
        if (AndroidUtil.isAndroid()) {
            _scaleLargestTo = 640
        } else {
            _scaleLargestTo = 1080
        }
    }
    

    getLastHalf() {
        return _lastHalf
    }
    

    getLast() {
        return _last
    }
    

    getFull() {
        return _full
    }
    

    getScaleLargestTo() {
        return _scaleLargestTo
    }
    

    setScaleLargestTo(scaleLargestTo) {
        _scaleLargestTo = scaleLargestTo
    }
    

    setLastSize(aLastWidth, aLastHeight, reason) {
        if (((_full[_WIDTH] != aLastWidth) || (_full[_HEIGHT] != aLastHeight))) {
            this.setLastSizeForce(aLastWidth, aLastHeight, reason)
        }
    }
    

    setLastSizeForce(aLastWidth, aLastHeight, reason) {
        var stringMaker = StringMaker.new()
        _logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).toString(), this, _SET_LAST_SIZE_METHOD_NAME)
        var aFullWidth = aLastWidth
        var aFullHeight = aLastHeight
        stringMaker.delete(0, stringMaker.length())
        _logUtil.putF(stringMaker.append(_FULL_WIDTH).appendint(aFullWidth).append(_FULL_HEIGHT).appendint(aFullHeight).append(this.toString()).toString(), this, _SET_LAST_SIZE_METHOD_NAME)
        var operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
        if (operatingSystemInterface.isOverScan()) {
            aLastWidth = ((aLastWidth * operatingSystemInterface.getOverScanXPercent()) / 100)
            aLastHeight = ((aLastHeight * operatingSystemInterface.getOverScanYPercent()) / 100)
        }
        if (operatingSystemInterface.isScalable()) {
            if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                if ((aLastHeight > _scaleLargestTo)) {
                    _displayRatio = (_scaleLargestTo / aLastHeight)
                    _ratio = (aLastHeight / _scaleLargestTo)
                    stringMaker.delete(0, stringMaker.length())
                    _logUtil.putF(stringMaker.append(_ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(_displayRatio).toString(), this, _SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = JR.i32(JR.d2i(((aLastWidth * _displayRatio))))
                    aLastHeight = JR.i32(JR.d2i(((aLastHeight * _displayRatio))))
                    _scalableListener.scale(_ratio)
                } else {
                    _ratio = 1.0
                    _scalableListener.scale(_ratio)
                }
            } else {
                if ((aLastWidth > _scaleLargestTo)) {
                    _displayRatio = (_scaleLargestTo / aLastWidth)
                    _ratio = (aLastWidth / _scaleLargestTo)
                    stringMaker.delete(0, stringMaker.length())
                    _logUtil.putF(stringMaker.append(_ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(_displayRatio).toString(), this, _SET_LAST_SIZE_METHOD_NAME)
                    aLastWidth = JR.i32(JR.d2i(((aLastWidth * _displayRatio))))
                    aLastHeight = JR.i32(JR.d2i(((aLastHeight * _displayRatio))))
                    _scalableListener.scale(_ratio)
                } else {
                    _ratio = 1.0
                    _scalableListener.scale(_ratio)
                }
            }
        }
        stringMaker.delete(0, stringMaker.length())
        _logUtil.putF(stringMaker.append(_LAST_WIDTH).appendint(aLastWidth).append(_LAST_HEIGHT).appendint(aLastHeight).toString(), this, _SET_LAST_SIZE_METHOD_NAME)
        _xOffset = JR.i32(aFullWidth - aLastWidth)
        _yOffset = JR.i32(aFullHeight - aLastHeight)
        _left = _scalableListener.getLeft(_xOffset)
        _top = _scalableListener.getTop(_yOffset)
        _full[_WIDTH] = aFullWidth
        _full[_HEIGHT] = aFullHeight
        _last[_WIDTH] = aLastWidth
        _lastHalf[_WIDTH] = (JR.shr(_last[_WIDTH], 1))
        _last[_HEIGHT] = aLastHeight
        _lastHalf[_HEIGHT] = (JR.shr(_last[_HEIGHT], 1))
        SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, _ratio)
        this.add(_SET_LAST_SIZE_METHOD_NAME)
    }
    

    isPortraitWH(lastWidth, lastHeight) {
        if ((lastHeight > lastWidth)) {
            return true
        } else {
            return false
        }
    }
    

    isPortrait() {
        return this.isPortraitWH(_last[_WIDTH], _last[_HEIGHT])
    }
    

    add(reason) {
        var stringMaker = StringMaker.new()
        _logUtil.putF(stringMaker.append(_REASON).append(reason).toString(), this, _FIRE_METHOD_NAME)
        stringMaker.delete(0, stringMaker.length())
        _logUtil.putF(this.toStringAppend(stringMaker), this, _FIRE_METHOD_NAME)
        _list.add(reason)
    }
    

    process() {
        var jerror0 = Fiber.new {
            if ((_list.size() > 0)) {
                this.processForced()
            }
            _list.clear()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.putOE(_commonStrings.EXCEPTION, this, _FIRE_METHOD_NAME, e)
        }
    }
    

    processForced() {
        var jerror1 = Fiber.new {
            var swtJOGLProcessor = SWTJOGLProcessor.getInstance()
            swtJOGLProcessor.clear()
            DisplayChangeEventHandler.getInstance().fireEvent(_displayChangeEvent)
            LastDisplayChangeEventHandler.getInstance().fireEvent(_displayChangeEvent)
            swtJOGLProcessor.onSurfaceChanged()
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            PreLogUtil.putOE(_commonStrings.EXCEPTION, this, _FIRE_METHOD_NAME, e)
        }
    }
    

    update(displayable, reason) {
        var aLastWidth = displayable.getWidth()
        var aLastHeight = displayable.getHeight()
        var aFullWidth = aLastWidth
        var aFullHeight = aLastHeight
        var stringMaker = StringMaker.new()
        _logUtil.putF(stringMaker.append(CommonLabels.getInstance().START_LABEL).append(reason).append(_LAST_WIDTH).appendint(aLastWidth).append(_LAST_HEIGHT).appendint(aLastHeight).append(_commonSeps.SPACE).append(this.toString()).toString(), this, _commonStrings.UPDATE)
        if (((aLastWidth > 0) && (aLastHeight > 0))) {
            var features = Features.getInstance()
            var openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
            if (((!features.isDefault(openGLFeatureFactory.OPENGL) || (_last[_WIDTH] != aLastWidth)) || (_last[_HEIGHT] != aLastHeight))) {
                stringMaker.delete(0, stringMaker.length())
                _logUtil.putF(stringMaker.append(_UPDATE_FROM_ORIENTATION_CHANGE).toString(), this, _commonStrings.UPDATE)
                var operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
                if (operatingSystemInterface.isOverScan()) {
                    aLastWidth = ((aLastWidth * operatingSystemInterface.getOverScanXPercent()) / 100)
                    aLastHeight = ((aLastHeight * operatingSystemInterface.getOverScanYPercent()) / 100)
                }
                if (operatingSystemInterface.isScalable()) {
                    if (this.isPortraitWH(aLastWidth, aLastHeight)) {
                        if ((aLastHeight > _scaleLargestTo)) {
                            _displayRatio = (_scaleLargestTo / aLastHeight)
                            _ratio = (aLastHeight / _scaleLargestTo)
                            stringMaker.delete(0, stringMaker.length())
                            _logUtil.putF(stringMaker.append(_ADJUSTING_FOR_SCALING_IN_PORTRAIT).appendfloat(_displayRatio).toString(), this, _commonStrings.UPDATE)
                            aLastWidth = JR.i32(JR.d2i(((aLastWidth * _displayRatio))))
                            aLastHeight = JR.i32(JR.d2i(((aLastHeight * _displayRatio))))
                            _scalableListener.scale(_ratio)
                        } else {
                            _ratio = 1.0
                            _scalableListener.scale(_ratio)
                        }
                    } else {
                        if ((aLastWidth > _scaleLargestTo)) {
                            _displayRatio = (_scaleLargestTo / aLastWidth)
                            _ratio = (aLastWidth / _scaleLargestTo)
                            stringMaker.delete(0, stringMaker.length())
                            _logUtil.putF(stringMaker.append(_ADJUSTING_FOR_SCALING_IN_LANDSCAPE).appendfloat(_displayRatio).toString(), this, _commonStrings.UPDATE)
                            aLastWidth = JR.i32(JR.d2i(((aLastWidth * _displayRatio))))
                            aLastHeight = JR.i32(JR.d2i(((aLastHeight * _displayRatio))))
                            _scalableListener.scale(_ratio)
                        } else {
                            _ratio = 1.0
                            _scalableListener.scale(_ratio)
                        }
                    }
                }
                stringMaker.delete(0, stringMaker.length())
                _logUtil.putF(stringMaker.append(_UPDATE_FROM_ORIENTATION_CHANGE).append(_LAST_WIDTH).appendint(aLastWidth).append(_LAST_HEIGHT).appendint(aLastHeight).toString(), this, _commonStrings.UPDATE)
                _xOffset = JR.i32(aFullWidth - aLastWidth)
                _yOffset = JR.i32(aFullHeight - aLastHeight)
                _left = _scalableListener.getLeft(_xOffset)
                _top = _scalableListener.getTop(_yOffset)
                _full[_WIDTH] = aFullWidth
                _full[_HEIGHT] = aFullHeight
                _last[_WIDTH] = aLastWidth
                _lastHalf[_WIDTH] = (JR.shr(_last[_WIDTH], 1))
                _last[_HEIGHT] = aLastHeight
                _lastHalf[_HEIGHT] = (JR.shr(_last[_HEIGHT], 1))
                SWTJOGLProcessor.getInstance().setCustom(aLastWidth, aLastHeight, _ratio)
                this.add(_commonStrings.UPDATE)
            }
        }
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        return this.toStringAppend(stringBuffer)
    }
    

    toStringAppend(stringBuffer) {
        stringBuffer.append(_DISPLAY_INFO)
        stringBuffer.append(_FULL)
        stringBuffer.append(_commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(_full[_WIDTH])
        stringBuffer.append(_commonSeps.SPACE)
        stringBuffer.append(_FULL)
        stringBuffer.append(_commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(_full[_HEIGHT])
        stringBuffer.append(_commonSeps.SPACE)
        stringBuffer.append(_LAST)
        stringBuffer.append(_commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(_last[_WIDTH])
        stringBuffer.append(_commonSeps.SPACE)
        stringBuffer.append(_LAST)
        stringBuffer.append(_commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(_last[_HEIGHT])
        stringBuffer.append(_commonSeps.SPACE)
        stringBuffer.append(_LAST_HALF)
        stringBuffer.append(_commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(_lastHalf[_WIDTH])
        stringBuffer.append(_commonSeps.SPACE)
        stringBuffer.append(_LAST_HALF)
        stringBuffer.append(_commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(_lastHalf[_HEIGHT])
        stringBuffer.append(_commonSeps.SPACE)
        stringBuffer.append((this.isPortrait() ? _PORTRAIT : _LANDSCAPE))
        return stringBuffer.toString()
    }
    

    getTop() {
        return _top
    }
    

    getLeft() {
        return _left
    }
    

    getLastWidth() {
        return _last[_WIDTH]
    }
    

    getLastHeight() {
        return _last[_HEIGHT]
    }
    

    getLastHalfWidth() {
        return _lastHalf[_WIDTH]
    }
    

    getLastHalfHeight() {
        return _lastHalf[_HEIGHT]
    }
    

    getCustomLastWidth() {
        return _last[_CUSTOM_WIDTH]
    }
    

    getCustomLastHeight() {
        return _last[_CUSTOM_HEIGHT]
    }
    

    getRawLastWidth() {
        return _last[_WIDTH]
    }
    

    getRawLastHeight() {
        return _last[_HEIGHT]
    }
    

    setCustom(width, height) {
        _last[_CUSTOM_WIDTH] = width
        _lastHalf[_CUSTOM_WIDTH] = (JR.shr(_last[_CUSTOM_WIDTH], 1))
        _last[_CUSTOM_HEIGHT] = height
        _lastHalf[_CUSTOM_HEIGHT] = (JR.shr(_last[_CUSTOM_HEIGHT], 1))
    }
    

    setScalableListener(scalableListener) {
        _scalableListener = scalableListener
    }
    

    getScalableListener() {
        return _scalableListener
    }
    

    getRatio() {
        return _ratio
    }
    

    getDisplayRatio() {
        return _displayRatio
    }
    

    setOffset(left, top) {
        _left = left
    }
    

    getxOffset() {
        return _xOffset
    }
    

    getyOffset() {
        return _yOffset
    }
}

import "../../../../javax/microedition/lcdui/Displayable" for Displayable
import "../../../../org/allbinary/AndroidUtil" for AndroidUtil
import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" for DisplayChangeEvent
import "../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" for DisplayChangeEventHandler
import "../../../../org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler" for LastDisplayChangeEventHandler
import "../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" for SWTJOGLProcessor
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/system/os/GenericOperatingSystem" for GenericOperatingSystem
import "../../../../org/allbinary/logic/system/os/OperatingSystemFactory" for OperatingSystemFactory
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./BaseScalable" for BaseScalable
import "./ScalableListener" for ScalableListener

