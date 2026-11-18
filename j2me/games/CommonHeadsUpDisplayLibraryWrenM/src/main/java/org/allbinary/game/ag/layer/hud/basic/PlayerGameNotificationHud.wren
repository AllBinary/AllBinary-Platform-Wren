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
// package org.allbinary.game.ag.layer.hud.basic

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud" for GameNotificationHud

class PlayerGameNotificationHud is GameNotificationHud {
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }
  EMPTY_STRING { _EMPTY_STRING }
  EMPTY_STRING=(value) { _EMPTY_STRING = value }
  displayInfo { _displayInfo }
  displayInfo=(value) { _displayInfo = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  gameNotification { _gameNotification }
  gameNotification=(value) { _gameNotification = value }
  permanentGameNotification { _permanentGameNotification }
  permanentGameNotification=(value) { _permanentGameNotification = value }
  setAndRemoveProcessor { _setAndRemoveProcessor }
  setAndRemoveProcessor=(value) { _setAndRemoveProcessor = value }
  nextUnremoveableProcessor { _nextUnremoveableProcessor }
  nextUnremoveableProcessor=(value) { _nextUnremoveableProcessor = value }
  processor { _processor }
  processor=(value) { _processor = value }
  PERMANENT_GAME_NOTIFICATION { _PERMANENT_GAME_NOTIFICATION }
  PERMANENT_GAME_NOTIFICATION=(value) { _PERMANENT_GAME_NOTIFICATION = value }
  lastString { _lastString }
  lastString=(value) { _lastString = value }
  string { _string }
  string=(value) { _string = value }
  point { _point }
  point=(value) { _point = value }
  width { _width }
  width=(value) { _width = value }

  initFields_PlayerGameNotificationHud() {
    _gameTickTimeDelayHelper = null
    _EMPTY_STRING = null
    _displayInfo = null
    _timeDelayHelper = null
    _circularIndexUtil = null
    _gameNotification = null
    _permanentGameNotification = null
    _setAndRemoveProcessor = null
    _nextUnremoveableProcessor = null
    _processor = null
    _PERMANENT_GAME_NOTIFICATION = null
    _lastString = null
    _string = null
    _point = null
    _width = 0
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        _EMPTY_STRING = StringUtil.getInstance().EMPTY_STRING
        _displayInfo = DisplayInfoSingleton.getInstance()
        _timeDelayHelper = TimeDelayHelper.new(0)
        
        _gameNotification = GameNotification.new()
        _permanentGameNotification = GameNotification.new()
        _setAndRemoveProcessor = SetAndRemoveProcessor.new(this)
        _nextUnremoveableProcessor = NextUnremoveableProcessor.new(this)
        _processor = Processor.getInstance()
        _PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: "
        _lastString = StringUtil.getInstance().EMPTY_STRING
        _string = _EMPTY_STRING
        _point = CustomGPoint.NULL_CUSTOM_POINT
        _width = 0
  }
    

    construct new(location, direction, bufferZone, basicColor) {
        super(location, direction, bufferZone, basicColor)
        initFields_PlayerGameNotificationHud()
        _circularIndexUtil = CircularIndexUtil.createInstance(0)
        var gameNotificationEventHandler = GameNotificationEventHandler.getInstance()
        gameNotificationEventHandler.removeAllListeners()
        gameNotificationEventHandler.addListenerInterface(this)
    }
    

    updateMeasurement(graphics) {
        var jerror0 = Fiber.new {
            super.updateMeasurement(graphics)
            var font = graphics.getFont()
            _width = font.stringWidth(_string)
            _processor.process()
            _processor = Processor.getInstance()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var logUtil = LogUtil.getInstance()
            var commonStrings = CommonStrings.getInstance()
            logUtil.put(commonStrings.EXCEPTION, this, commonStrings.UPDATE, e)
        }
    }
    

    getPoint(x, y) {
        _point = CustomGPoint.getInstance3(0, 0)
        _point.setX(x)
        _point.setY(y)
        return _point
    }
    

    add(string, seconds, basicColor, permanent) {
        if (permanent.booleanValue()) {
            if ((_lastString != string)) {
                _lastString = string
                this.logUtil.putF(StringMaker.new().append(_PERMANENT_GAME_NOTIFICATION).append(string).toString(), this, this.commonStrings.ADD)
            }
            _permanentGameNotification.add(string, seconds, basicColor)
            _circularIndexUtil.setSize(_permanentGameNotification.getSize())
        } else {
            _gameNotification.add(string, seconds, basicColor)
        }
    }
    

    processTick() {
        if (_timeDelayHelper.isTime(_gameTickTimeDelayHelper.startTime)) {
            var gameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
            if (gameAdState.isShowingAtLocation(this.getLocation())) {
                this.offsetY = -54
            } else {
                this.offsetY = 0
            }
            if ((_gameNotification.getSize() > 0)) {
                this.setAndRemove()
            } else if ((_permanentGameNotification.getSize() > 0)) {
                this.setNextUnremoveable()
            } else {
                _string = _EMPTY_STRING
            }
        }
    }
    

    setAndRemove() {
        _string = _gameNotification.stringList.removeAt(0)
        _processor = _setAndRemoveProcessor
    }
    

    setAndRemoveProcess() {
        this.setX(JR.shr(((_displayInfo.getLastWidth() - _width)), 1))
        _point.setX(this.getX())
        _point.setY(this.getY())
        var time = _gameNotification.timeList.removeAt(0)
        var iTime = (time.intValue() * 1000)
        if ((iTime == 0)) {
            iTime = 500
        }
        _timeDelayHelper.delay = iTime
        this.setBasicColorP(_gameNotification.colorList.removeAt(0))
    }
    

    setNextUnremoveable() {
        var index = _circularIndexUtil.getIndex()
        _string = _permanentGameNotification.stringList.objectArray[index]
        _processor = _nextUnremoveableProcessor
    }
    

    setNextUnremoveableProcess() {
        var index = _circularIndexUtil.getIndex()
        this.setX(JR.shr(((_displayInfo.getLastWidth() - _width)), 1))
        _point.setX(this.getX())
        _point.setY(this.getY())
        var time = _permanentGameNotification.timeList.objectArray[index]
        _timeDelayHelper.delay = (time.intValue() * 1000)
        this.setBasicColorP(_permanentGameNotification.colorList.objectArray[index])
        _circularIndexUtil.next()
    }
    

    clear() {
        _gameNotification.clear()
        _permanentGameNotification.clear()
    }
    

    paint(graphics) {
        this.myFontProcessor.process(graphics)
        super.paintString(graphics, _string)
    }
}

import "../../../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../org/allbinary/business/advertisement/GameAdStateFactory" for GameAdStateFactory
import "../../../../../../../org/allbinary/canvas/Processor" for Processor
import "../../../../../../../org/allbinary/game/GameAdState" for GameAdState
import "../../../../../../../org/allbinary/game/ag/layer/hud/basic/notification/GameNotification" for GameNotification
import "../../../../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler" for GameNotificationEventHandler
import "../../../../../../../org/allbinary/graphics/CustomGPoint" for CustomGPoint
import "../../../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "../../../../../../../java/lang/Integer" for Integer
import "../../../../../../../java/lang/Boolean" for Boolean
import "./SetAndRemoveProcessor" for SetAndRemoveProcessor
import "./NextUnremoveableProcessor" for NextUnremoveableProcessor

