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
// package org.allbinary.midlet

import "../../../allbinary_java" for JObject, JException, JR
import "../../../javax/microedition/midlet/MIDlet" for MIDlet

class AllBinaryMidlet is MIDlet {
    static NULL_ALLBINARY_MIDLET {
    if (__NULL_ALLBINARY_MIDLET_set == null) {
      __NULL_ALLBINARY_MIDLET_set = true
      __NULL_ALLBINARY_MIDLET = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_ALLBINARY_MIDLET
  }
  static NULL_ALLBINARY_MIDLET=(value) {
    __NULL_ALLBINARY_MIDLET_set = true
    __NULL_ALLBINARY_MIDLET = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  SET_DISPLAY { _SET_DISPLAY }
  SET_DISPLAY=(value) { _SET_DISPLAY = value }
  SETTING_ { _SETTING_ }
  SETTING_=(value) { _SETTING_ = value }
  u_DISPLAY_ { _u_DISPLAY_ }
  u_DISPLAY_=(value) { _u_DISPLAY_ = value }
  SETTING_NO_TITLE { _SETTING_NO_TITLE }
  SETTING_NO_TITLE=(value) { _SETTING_NO_TITLE = value }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }
  midletDestroyed { _midletDestroyed }
  midletDestroyed=(value) { _midletDestroyed = value }

  initFields_AllBinaryMidlet() {
    _logUtil = null
    _commonStrings = null
    _SET_DISPLAY = null
    _SETTING_ = null
    _u_DISPLAY_ = null
    _SETTING_NO_TITLE = null
    _hashtable = null
    _midletDestroyed = false
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _SET_DISPLAY = "setDisplay"
        _SETTING_ = "Setting: "
        _u_DISPLAY_ = " Display: "
        _SETTING_NO_TITLE = "Setting: No Title, Display: "
        _hashtable = StdUtil.getInstance().createHashtable()
        _midletDestroyed = false
  }
    

    static getNullInstance() {
        if ((AllBinaryMidlet.NULL_ALLBINARY_MIDLET == NullUtil.getInstance().NULL_OBJECT)) {
            AllBinaryMidlet.NULL_ALLBINARY_MIDLET = AllBinaryMidlet.new()
        }
        return AllBinaryMidlet.NULL_ALLBINARY_MIDLET
    }
    

    construct new() {
    super()
    initFields_AllBinaryMidlet()
        _logUtil.putF(_commonStrings.CONSTRUCTOR, this, "AllBinaryMidlet::AllBinaryMidlet")
    }
    

    setDisplay(newDisplay) {
        var title = StringUtil.getInstance().EMPTY_STRING
        if ((newDisplay != NullCanvas.NULL_CANVAS)) {
            title = newDisplay.getTitle()
            _logUtil.putF(StringMaker.new().append(_SETTING_).append(title).append(_u_DISPLAY_).append(StringUtil.getInstance().toString(newDisplay)).toString(), this, _SET_DISPLAY)
        }
        var display = this.getDisplay()
        display.setCurrent(newDisplay)
    }
    

    getDisplay() {
        return Display.getDisplay(this)
    }
    

    getCurrentDisplayable() {
        return Display.getDisplay(this).getCurrent()
    }
    

    setDestroyed(destroyed) {
        _midletDestroyed = destroyed
    }
    

    isDestroyed() {
        return _midletDestroyed
    }
    

    startApp() {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    pauseApp() {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    destroyAppInRunnable(unconditional, isProgress) {
    }
    

    destroyApp(unconditional) {
        var METHOD_NAME = "AllBinaryMidlet::destroyApp"
        var jerror0 = Fiber.new {
            _logUtil.putF(_commonStrings.START, this, METHOD_NAME)
            PreLogUtil.put(Memory.getInfo(), this, METHOD_NAME)
            this.setDestroyed(true)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, METHOD_NAME, e)
        }
    }
    

    setStartStateHashtable(hashtable) {
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(hashtable)).toString(), this, "setStartStateHashtable")
        _hashtable = hashtable
    }
    

    getStartStateHashtable() {
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(_hashtable)).toString(), this, "getStartStateHashtable")
        return _hashtable
    }
    

    getCurrentStateHashtable() {
        _logUtil.putF(_commonStrings.START, this, "getStateHashtable")
        return StdUtil.getInstance().NULL_TABLE
    }
    

    commandAction(command, displayable) {
    }
}

import "../../../javax/microedition/lcdui/Command" for Command
import "../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../javax/microedition/lcdui/Display" for Display
import "../../../javax/microedition/lcdui/Displayable" for Displayable
import "../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../javax/microedition/midlet/MIDletStateChangeException" for MIDletStateChangeException
import "../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/system/Memory" for Memory
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/util/ABHashtable" for ABHashtable

