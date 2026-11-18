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
// package org.allbinary.graphics.canvas.transition.progress

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/canvas/RunnableCanvas" for RunnableCanvas

class ProgressCanvas is RunnableCanvas {
  hasPainted { _hasPainted }
  hasPainted=(value) { _hasPainted = value }
  backgroundBasicColor { _backgroundBasicColor }
  backgroundBasicColor=(value) { _backgroundBasicColor = value }
  GAUGE_PAINTABLE { _GAUGE_PAINTABLE }
  GAUGE_PAINTABLE=(value) { _GAUGE_PAINTABLE = value }
  maxValue { _maxValue }
  maxValue=(value) { _maxValue = value }
  gauge { _gauge }
  gauge=(value) { _gauge = value }
  TEXT { _TEXT }
  TEXT=(value) { _TEXT = value }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  allbinaryMidlet { _allbinaryMidlet }
  allbinaryMidlet=(value) { _allbinaryMidlet = value }
  value { _value }
  value=(value) { _value = value }
  text { _text }
  text=(value) { _text = value }
  background { _background }
  background=(value) { _background = value }
  paintable { _paintable }
  paintable=(value) { _paintable = value }
  inProgress { _inProgress }
  inProgress=(value) { _inProgress = value }
  IN_GAME_PROCESSOR { _IN_GAME_PROCESSOR }
  IN_GAME_PROCESSOR=(value) { _IN_GAME_PROCESSOR = value }
  inGameProcessor { _inGameProcessor }
  inGameProcessor=(value) { _inGameProcessor = value }
  progressEndListener { _progressEndListener }
  progressEndListener=(value) { _progressEndListener = value }
  backgroundLabel { _backgroundLabel }
  backgroundLabel=(value) { _backgroundLabel = value }
  START_BACKGROUND { _START_BACKGROUND }
  START_BACKGROUND=(value) { _START_BACKGROUND = value }
  ADD_PORTION { _ADD_PORTION }
  ADD_PORTION=(value) { _ADD_PORTION = value }
  ADD_EARLY_PORTION { _ADD_EARLY_PORTION }
  ADD_EARLY_PORTION=(value) { _ADD_EARLY_PORTION = value }

  initFields_ProgressCanvas() {
    _hasPainted = false
    _backgroundBasicColor = null
    _GAUGE_PAINTABLE = null
    _maxValue = 0.0
    _gauge = null
    _TEXT = null
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _allbinaryMidlet = null
    _value = 0.0
    _text = null
    _background = false
    _paintable = null
    _inProgress = false
    _IN_GAME_PROCESSOR = null
    _inGameProcessor = null
    _progressEndListener = null
    _backgroundLabel = null
    _START_BACKGROUND = null
    _ADD_PORTION = null
    _ADD_EARLY_PORTION = null
        _hasPainted = false
        
        _GAUGE_PAINTABLE = ProgressPaintable.new(this)
        _maxValue = 100.0
        
        _TEXT = this.commonStrings.LOADING
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        _allbinaryMidlet = AllBinaryMidlet.getNullInstance()
        _value = 0.0
        _text = _TEXT
        _background = true
        _paintable = _GAUGE_PAINTABLE
        _inProgress = false
        _IN_GAME_PROCESSOR = Processor.new()
        _inGameProcessor = Processor.getInstance()
        _progressEndListener = ProgressEndListener.instance
        _backgroundLabel = "Background AI Game Loading..."
        _START_BACKGROUND = "startBackground"
        _ADD_PORTION = "addPortion"
        _ADD_EARLY_PORTION = "addEarlyPortion"
  }
    

    construct new(title, backgroundBasicColor, foregroundBasicColor) {
        super(NullCommandListener.NULL_COMMAND_LISTENER, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, false)
        initFields_ProgressCanvas()
        _backgroundBasicColor = backgroundBasicColor
        _gauge = ABCustomGaugeItem.new(StringUtil.getInstance().EMPTY_STRING, JR.i32(JR.d2i(_maxValue)), 0, backgroundBasicColor, foregroundBasicColor)
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _gauge.setHeight((font.getHeight() + 2))
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    init(gameMidlet) {
        _allbinaryMidlet = gameMidlet
    }
    

    update(graphics) {
    }
    

    initCommands(cmdListener) {
    }
    

    getMaxValue() {
        return _maxValue
    }
    

    start() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.START_METHOD_NAME)
        this.setBackground(true)
        _gauge.setHeight(30)
        _gauge.setLabel(this.commonStrings.PLEASE_WAIT)
        this.setText(_TEXT)
        this.setValue(0)
        _inGameProcessor = Processor.getInstance()
        _paintable = _GAUGE_PAINTABLE
        _inProgress = true
    }
    

    startBackground(background) {
        this.logUtil.putF(this.commonStrings.START, this, _START_BACKGROUND)
        this.setBackground(background)
        _myFontProcessor = _updateMyFontProcessor
        _gauge.setLabel(_backgroundLabel)
        this.setText(_TEXT)
        this.setValue(0)
        _inGameProcessor = Processor.getInstance()
        _paintable = _GAUGE_PAINTABLE
    }
    

    endActual() {
        _allbinaryMidlet.commandAction(GameCommandsFactory.getInstance().SHOW_GAME_CANVAS, NullCanvas.NULL_CANVAS)
        _inProgress = false
        this.inGame()
    }
    

    inGame() {
        _progressEndListener.onEndEvent()
        _inGameProcessor = _IN_GAME_PROCESSOR
    }
    

    end() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.END_METHOD_NAME)
        _gauge.setValue(this.getMaxValue())
        this.endActual()
        _paintable = NullPaintable.getInstance()
    }
    

    endFromInitialLazyLoadingComplete() {
        _progressEndListener.onEndEvent()
        _gauge.setValue(this.getMaxValue())
        _inGameProcessor = _IN_GAME_PROCESSOR
    }
    

    isInGame() {
        if ((_inGameProcessor == _IN_GAME_PROCESSOR)) {
            return true
        }
        return false
    }
    

    endIfPaintedSinceStart() {
    }
    

    addEarlyPortion(value, text, index) {
        this.setText(StringMaker.new().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString())
        _gauge.setValue((_gauge.getValue() + (this.getMaxValue() / value)))
    }
    

    addPortion(value, text, index) {
        this.setText(StringMaker.new().append(text).append(SmallIntegerSingletonFactory.getInstance().getAt(index).toString()).toString())
        PreLogUtil.put(_text, this, _ADD_PORTION)
        _gauge.setValue((_gauge.getValue() + (this.getMaxValue() / value)))
    }
    

    addNormalPortion(value, text) {
        if ((_text != text)) {
            PreLogUtil.put(text, this, _ADD_PORTION)
        }
        this.setText(text)
        _gauge.setValue((_gauge.getValue() + (this.getMaxValue() / value)))
    }
    

    setValue(value) {
        _value = value
        _gauge.setValue(value)
    }
    

    paint(graphics) {
        _paintable.paint(graphics)
    }
    

    paint2(graphics) {
        _myFontProcessor.process(graphics)
        graphics.setColor(_backgroundBasicColor.intValue())
        graphics.fillRect(0, 0, this.displayInfo.getLastWidth(), this.displayInfo.getLastHeight())
        _gauge.paintXY(graphics, 0, 0)
        _hasPainted = true
    }
    

    paintThreed(graphics) {
    }
    

    getValue() {
        return _value
    }
    

    setText(text) {
        _text = text
    }
    

    getText() {
        return _text
    }
    

    setBackground(background) {
        _background = background
    }
    

    isBackground() {
        return _background
    }
}

import "../../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../../../../javax/microedition/lcdui/NullCommandListener" for NullCommandListener
import "../../../../../../org/allbinary/canvas/Processor" for Processor
import "../../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../../../org/allbinary/graphics/form/item/ABCustomGaugeItem" for ABCustomGaugeItem
import "../../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/midlet/AllBinaryMidlet" for AllBinaryMidlet
import "../../../../../../org/allbinary/thread/PathFindingThreadPool" for PathFindingThreadPool
import "../../../../../../org/allbinary/thread/ThreadPool" for ThreadPool
import "./ProgressPaintable" for ProgressPaintable
import "./ProgressEndListener" for ProgressEndListener

