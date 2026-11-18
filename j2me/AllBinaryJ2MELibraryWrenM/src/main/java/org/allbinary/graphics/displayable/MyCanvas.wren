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
import "../../../../javax/microedition/lcdui/Canvas" for Canvas

class MyCanvas is Canvas {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  canvasStrings { _canvasStrings }
  canvasStrings=(value) { _canvasStrings = value }
  stringUtil { _stringUtil }
  stringUtil=(value) { _stringUtil = value }
  displayInfo { _displayInfo }
  displayInfo=(value) { _displayInfo = value }
  name { _name }
  name=(value) { _name = value }
  childNameList { _childNameList }
  childNameList=(value) { _childNameList = value }
  commandStack { _commandStack }
  commandStack=(value) { _commandStack = value }
  commandListener { _commandListener }
  commandListener=(value) { _commandListener = value }
  paused { _paused }
  paused=(value) { _paused = value }
  touchME { _touchME }
  touchME=(value) { _touchME = value }

  initFields_MyCanvas() {
    _logUtil = null
    _commonStrings = null
    _canvasStrings = null
    _stringUtil = null
    _displayInfo = null
    _name = null
    _childNameList = null
    _commandStack = null
    _commandListener = null
    _paused = false
    _touchME = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _canvasStrings = CanvasStrings.getInstance()
        _stringUtil = StringUtil.getInstance()
        _displayInfo = DisplayInfoSingleton.getInstance()
        
        
        
        _commandListener = NullCommandListener.NULL_COMMAND_LISTENER
        _paused = false
        _touchME = TouchJ2ME.new()
  }
    

    construct new(name, childNameList) {
    super()
    initFields_MyCanvas()
        _logUtil.putF(_commonStrings.CONSTRUCTOR, this, _commonStrings.CONSTRUCTOR)
        _displayInfo.update(this, _canvasStrings.CONSTRUCTOR)
        _name = name
        _childNameList = childNameList
        _commandStack = StdUtil.getInstance().createStack()
    }
    

    getWidth() {
        return super.getWidth()
    }
    

    getHeight() {
        return super.getHeight()
    }
    

    setFullScreenMode(mode) {
        super.setFullScreenMode(mode)
        _displayInfo.update(this, _canvasStrings.SET_FULL_SCREEN_MODE)
    }
    

    sizeChanged(w, h) {
        _displayInfo.update(this, _canvasStrings.SIZE_CHANGED)
    }
    

    getCommandStack() {
        return _commandStack
    }
    

    isCommand(command) {
        return _commandStack.contains(command)
    }
    

    addCommand(command) {
        if (!_commandStack.contains(command)) {
            _commandStack.push(command)
            super.addCommand(command)
        }
    }
    

    removeCommand(command) {
        _commandStack.removeElement(command)
        super.removeCommand(command)
    }
    

    removeAllCommands() {
        var size = _commandStack.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            super.removeCommand(_commandStack.pop())
            }
        }
    }
    

    setCommandListener(l) {
        super.setCommandListener(l)
        _commandListener = l
    }
    

    getCustomCommandListener() {
        return _commandListener
    }
    

    isPaused() {
        return _paused
    }
    

    removePauseCommand() {
        this.removeCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND)
    }
    

    pause() {
        _logUtil.putF(_commonStrings.START, this, _canvasStrings.PAUSE)
        this.removePauseCommand()
        this.addCommand(MyCommandsFactory.getInstance().RESUME_COMMAND)
        this.setPaused(true)
    }
    

    unPause() {
        _logUtil.putF(_commonStrings.START, this, _canvasStrings.UN_PAUSE)
        this.removeCommand(MyCommandsFactory.getInstance().RESUME_COMMAND)
        this.addCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND)
        this.setPaused(false)
    }
    

    process() {
        _displayInfo.process()
    }
    

    paint(graphics) {
    }
    

    draw(graphics) {
    }
    

    hasChild(displayable) {
        return _childNameList.contains(displayable.name)
    }
    

    destroy() {
        _logUtil.putF("Destroyed MyCanvas", this, "destroy")
    }
    

    setPaused(isPaused) {
        _paused = isPaused
    }
    

    keyPressedByDevice(keyCode, deviceId) {
    }
    

    keyRepeatedByDevice(keyCode, deviceId) {
    }
    

    keyReleasedByDevice(keyCode, deviceId) {
    }
    

    pointerDragged(x, y) {
        _touchME.pointerDragged(x, y)
    }
    

    pointerPressed(x, y) {
        _touchME.pointerPressed(x, y)
    }
    

    pointerReleased(x, y) {
        _touchME.pointerReleased(x, y)
    }
    

    nextSong(nextSongSound, leftVolume, rightVolume) {
    }
}

import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/NullCommandListener" for NullCommandListener
import "../../../../org/allbinary/graphics/displayable/command/MyCommandInterface" for MyCommandInterface
import "../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" for MyCommandsFactory
import "../../../../org/allbinary/input/TouchJ2ME" for TouchJ2ME
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/media/audio/Sound" for Sound
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/util/ABStack" for ABStack
import "./DisplayableInterface" for DisplayableInterface
import "./CanvasStrings" for CanvasStrings
import "./DisplayInfoSingleton" for DisplayInfoSingleton

