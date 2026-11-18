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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas

class GameCommandCanvas is MyCanvas {
    static id { 0 }
  repaintProcessor { _repaintProcessor }
  repaintProcessor=(value) { _repaintProcessor = value }
  gameInputStrings { _gameInputStrings }
  gameInputStrings=(value) { _gameInputStrings = value }
  foregroundBasicColor { _foregroundBasicColor }
  foregroundBasicColor=(value) { _foregroundBasicColor = value }
  backgroundBasicColor { _backgroundBasicColor }
  backgroundBasicColor=(value) { _backgroundBasicColor = value }
  inputToGameKeyMapping { _inputToGameKeyMapping }
  inputToGameKeyMapping=(value) { _inputToGameKeyMapping = value }
  gameKeyFactory { _gameKeyFactory }
  gameKeyFactory=(value) { _gameKeyFactory = value }
  gameKeyEventFactory { _gameKeyEventFactory }
  gameKeyEventFactory=(value) { _gameKeyEventFactory = value }
  downGameKeyEventHandler { _downGameKeyEventHandler }
  downGameKeyEventHandler=(value) { _downGameKeyEventHandler = value }
  upGameKeyEventHandler { _upGameKeyEventHandler }
  upGameKeyEventHandler=(value) { _upGameKeyEventHandler = value }
  repaintBehavior { _repaintBehavior }
  repaintBehavior=(value) { _repaintBehavior = value }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  foregroundColor { _foregroundColor }
  foregroundColor=(value) { _foregroundColor = value }
  backgroundColor { _backgroundColor }
  backgroundColor=(value) { _backgroundColor = value }
  menuInputProcessor { _menuInputProcessor }
  menuInputProcessor=(value) { _menuInputProcessor = value }
  menuPaintable { _menuPaintable }
  menuPaintable=(value) { _menuPaintable = value }
  menuForm { _menuForm }
  menuForm=(value) { _menuForm = value }
  isSingleKeyRepeatableProcessing { _isSingleKeyRepeatableProcessing }
  isSingleKeyRepeatableProcessing=(value) { _isSingleKeyRepeatableProcessing = value }
  fontHeight { _fontHeight }
  fontHeight=(value) { _fontHeight = value }

  initFields_GameCommandCanvas() {
    _repaintProcessor = null
    _gameInputStrings = null
    _foregroundBasicColor = null
    _backgroundBasicColor = null
    _inputToGameKeyMapping = null
    _gameKeyFactory = null
    _gameKeyEventFactory = null
    _downGameKeyEventHandler = null
    _upGameKeyEventHandler = null
    _repaintBehavior = null
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _foregroundColor = 0
    _backgroundColor = 0
    _menuInputProcessor = null
    _menuPaintable = null
    _menuForm = null
    _isSingleKeyRepeatableProcessing = false
    _fontHeight = 0
        _repaintProcessor = ScreenRepaintProcessorFactory.getInstance().create(this)
        _gameInputStrings = GameInputStrings.getInstance()
        
        
        _inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        _gameKeyFactory = GameKeyFactory.getInstance()
        _gameKeyEventFactory = GameKeyEventFactory.getInstance()
        _downGameKeyEventHandler = DownGameKeyEventHandler.getInstance()
        _upGameKeyEventHandler = UpGameKeyEventHandler.getInstance()
        
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        
        
        _menuInputProcessor = NoMenuInputProcessor.getInstance()
        _menuPaintable = NullPaintable.getInstance()
        _menuForm = PaintableForm.getNullPaintableForm()
        _isSingleKeyRepeatableProcessing = Features.getInstance().isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        _fontHeight = 0
  }
    

    construct new(cmdListener, name, backgroundBasicColor, foregroundBasicColor) {
        super(name, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST)
        initFields_GameCommandCanvas()
        _repaintBehavior = RepaintBehavior.getInstance()
        _foregroundBasicColor = foregroundBasicColor
        _backgroundBasicColor = backgroundBasicColor
        _foregroundColor = _foregroundBasicColor.intValue()
        _backgroundColor = _backgroundBasicColor.intValue()
        this.initCommands(cmdListener)
        if ((cmdListener != NullCommandListener.NULL_COMMAND_LISTENER)) {
            var jerror0 = Fiber.new {
                this.initMenu()
                _repaintProcessor.process()
            }.try()
            if (jerror0 != null) {
                var e = jerror0
                Fiber.abort(JR.exception("RuntimeException", ""))
            }
        }
    }
    

    updateMeasurement(graphics) {
        var jerror1 = Fiber.new {
            var font = graphics.getFont()
            this.logUtil.putF(StringMaker.new().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(JR.i32(MyFontProcessor.defaultCharWidth(font))).append(this.canvasStrings.FD_HEIGHT).appendint(JR.i32(font.getHeight())).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT)
            _fontHeight = font.getHeight()
            var rectangle = this.createRectangle(_menuForm.size())
            _menuForm.init(rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM)
            this.update()
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        }
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onDisplayChangeEvent(displayChangeEvent) {
        this.logUtil.putF(StringMaker.new().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT)
        _myFontProcessor = _updateMyFontProcessor
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)
    }
    

    initMenu() {
        var form = this.createForm()
        _menuForm = form
        if ((form != ScrollSelectionFormNoneFactory.getInstance())) {
            this.setMenuInputProcessor(ImmediateCommandFormInputProcessor.new(BasicArrayListD.new(), -1, this, form))
            _menuPaintable = FormPaintable.new(form)
        }
        _repaintBehavior.onChangeRepaint(this)
    }
    

    createForm() {
        var items = CommandTextItemArrayFactory.new(AllCommandsVisitor.new()).getInstance(this.getCommandStack(), _backgroundBasicColor, _foregroundBasicColor)
        var rectangle = this.createRectangle(items.count)
        return CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, FormTypeFactory.getInstance().VERTICAL_CENTER_FORM, 15, false, _backgroundBasicColor, _foregroundBasicColor)
    }
    

    createRectangle(size) {
        var height = JR.i32(size * _fontHeight)
        var startY = ((((this.displayInfo.getLastHeight() * 2) / 3)) - height)
        var pointFactory = PointFactory.getInstance()
        var rectangle = Rectangle.new(pointFactory.createXY(30, startY), (this.displayInfo.getLastWidth() - 30), startY)
        return rectangle
    }
    

    open() {
        this.logUtil.putF(this.commonStrings.START, this, "open")
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().addListenerInterface(this)
    }
    

    close() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLOSE)
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor())
        DisplayChangeEventHandler.getInstance().removeListener(this)
    }
    

    update() {
        _repaintProcessor.process()
    }
    

    getSourceId() {
        return GameCommandCanvas.id
    }
    

    keyPressed(keyCode) {
        this.keyPressedByDevice(keyCode, 0)
    }
    

    keyReleased(keyCode) {
        this.keyReleasedByDevice(keyCode, 0)
    }
    

    keyRepeated(keyCode) {
        this.keyRepeatedByDevice(keyCode, 0)
    }
    

    keyPressedByDevice(keyCode, deviceId) {
        this.logUtil.putF(StringMaker.new().append(CommonSeps.getInstance().SPACE).appendint(keyCode).toString(), this, _gameInputStrings.KEY_PRESSED)
        this.addGameKeyEvent(keyCode, 0, false)
    }
    

    keyReleasedByDevice(keyCode, deviceId) {
        this.removeGameKeyEvent(keyCode, deviceId, false)
    }
    

    keyRepeatedByDevice(keyCode, deviceId) {
        if (_isSingleKeyRepeatableProcessing) {
            this.addGameKeyEvent(keyCode, deviceId, true)
        }
    }
    

    addGameKeyEvent(keyCode, deviceId, repeated) {
        var jerror2 = Fiber.new {
            var gameKey = _inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if ((gameKey != _gameKeyFactory.NONE)) {
                var gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(this, gameKey)
                _downGameKeyEventHandler.fireEvent(gameKeyEvent)
                _downGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            } else {
                this.logUtil.putF(StringMaker.new().append(_gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, _gameInputStrings.ADD_KEY_EVENT)
            }
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            this.logUtil.put("Key Event Error", this, _gameInputStrings.ADD_KEY_EVENT, e)
        }
    }
    

    removeGameKeyEvent(keyCode, deviceId, repeated) {
        var jerror3 = Fiber.new {
            var gameKey = _inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if ((gameKey != _gameKeyFactory.NONE)) {
                var gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(this, gameKey)
                _upGameKeyEventHandler.fireEvent(gameKeyEvent)
                _upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent)
            } else {
                this.logUtil.putF(StringMaker.new().append(_gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, _gameInputStrings.REMOVE_KEY_EVENT)
            }
        }.try()
        if (jerror3 != null) {
            var e = jerror3
            this.logUtil.put("Key Event Error", this, _gameInputStrings.REMOVE_KEY_EVENT, e)
        }
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        _menuPaintable.paint(graphics)
        _repaintBehavior.repaint(this)
    }
    

    setMenuInputProcessor(menuInputProcessor) {
        _menuInputProcessor = menuInputProcessor
    }
    

    getMenuInputProcessor() {
        return _menuInputProcessor
    }
}

import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/NullCommandListener" for NullCommandListener
import "../../../../../org/allbinary/canvas/Processor" for Processor
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" for InputFeatureFactory
import "../../../../../org/allbinary/game/displayable/RepaintBehavior" for RepaintBehavior
import "../../../../../org/allbinary/game/input/GameInputStrings" for GameInputStrings
import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" for DownGameKeyEventHandler
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../../org/allbinary/game/input/event/GameKeyEventHandler" for GameKeyEventHandler
import "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" for UpGameKeyEventHandler
import "../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" for DisplayChangeEvent
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" for DisplayChangeEventHandler
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventListener" for DisplayChangeEventListener
import "../../../../../org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory" for ScreenRepaintProcessorFactory
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../../org/allbinary/graphics/form/CommandCurrentSelectionFormFactory" for CommandCurrentSelectionFormFactory
import "../../../../../org/allbinary/graphics/form/FormPaintable" for FormPaintable
import "../../../../../org/allbinary/graphics/form/FormTypeFactory" for FormTypeFactory
import "../../../../../org/allbinary/graphics/form/PaintableForm" for PaintableForm
import "../../../../../org/allbinary/graphics/form/ScrollSelectionForm" for ScrollSelectionForm
import "../../../../../org/allbinary/graphics/form/ScrollSelectionFormNoneFactory" for ScrollSelectionFormNoneFactory
import "../../../../../org/allbinary/graphics/form/item/CommandTextItemArrayFactory" for CommandTextItemArrayFactory
import "../../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "../../../../../org/allbinary/graphics/form/item/validation/AllCommandsVisitor" for AllCommandsVisitor
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" for BasicMotionGesturesHandler
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./MenuListener" for MenuListener
import "./NoMenuInputProcessor" for NoMenuInputProcessor
import "./BasicMenuInputProcessor" for BasicMenuInputProcessor
import "./ImmediateCommandFormInputProcessor" for ImmediateCommandFormInputProcessor

