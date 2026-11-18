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
import "./GameCommandCanvas" for GameCommandCanvas

class GameInputMappingCanvas is GameCommandCanvas {
    static NAME { "GameInputMappingCanvas" }
    static DISPLAY {
    if (__DISPLAY_set == null) {
      __DISPLAY_set = true
      __DISPLAY = Command.new("Controls", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    }
    return __DISPLAY
  }
  static DISPLAY=(value) {
    __DISPLAY_set = true
    __DISPLAY = value
  }
    static DEFAULT {
    if (__DEFAULT_set == null) {
      __DEFAULT_set = true
      __DEFAULT = Command.new("Default", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 2)
    }
    return __DEFAULT
  }
  static DEFAULT=(value) {
    __DEFAULT_set = true
    __DEFAULT = value
  }
  paintable { _paintable }
  paintable=(value) { _paintable = value }
  helpPaintable { _helpPaintable }
  helpPaintable=(value) { _helpPaintable = value }
  colorFillPaintable { _colorFillPaintable }
  colorFillPaintable=(value) { _colorFillPaintable = value }
  inputMapping { _inputMapping }
  inputMapping=(value) { _inputMapping = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  abeClientInformation { _abeClientInformation }
  abeClientInformation=(value) { _abeClientInformation = value }
  selectedGameKey { _selectedGameKey }
  selectedGameKey=(value) { _selectedGameKey = value }
  selectedInput { _selectedInput }
  selectedInput=(value) { _selectedInput = value }
  inputFactory { _inputFactory }
  inputFactory=(value) { _inputFactory = value }

  initFields_GameInputMappingCanvas() {
    _paintable = null
    _helpPaintable = null
    _colorFillPaintable = null
    _inputMapping = null
    _NONE = null
    _abeClientInformation = null
    _selectedGameKey = null
    _selectedInput = null
    _inputFactory = null
        
        
        
        
        _NONE = GameKeyFactory.getInstance().NONE
        
        _selectedGameKey = _NONE
        _selectedInput = _NONE
        _inputFactory = InputFactory.getInstance()
  }
    

    construct new(abeClientInformation, commandListener, allBinaryGameLayerManager, helpPaintable) {
        super(commandListener, GameInputMappingCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        initFields_GameInputMappingCanvas()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        if ((helpPaintable == null)) {
            Fiber.abort(JR.exception("Exception", "Help Paintable Exception"))
        }
        _abeClientInformation = abeClientInformation
        _helpPaintable = helpPaintable
        _inputMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance()
        _paintable = ProcessPaintable.new()
        _colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    }
    

    close() {
        super.close()
        _paintable.process()
        _selectedGameKey = _NONE
        _selectedInput = _NONE
        this.update()
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        this.addCommand(GameInputMappingCanvas.DEFAULT)
        this.addCommand(GameInputMappingInstructionsCanvas.DISPLAY)
        this.setCommandListener(cmdListener)
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
        this.addGameKey(keyCode, false)
        super.keyPressedByDevice(keyCode, 0)
    }
    

    addGameKey(keyCode, repeated) {
        var jerror0 = Fiber.new {
            this.logUtil.putF(StringMaker.new().append("Raw Device Key Code: ").append(Integer.toHexString(keyCode)).toString(), this, this.gameInputStrings.ADD_KEY_EVENT)
            var gameKey = this.inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            var input = _inputFactory.getInstanceById(keyCode)
            this.processInputMapping(gameKey, input)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put("Key Event Error", this, this.gameInputStrings.ADD_KEY_EVENT, e)
        }
    }
    

    processInputMapping(gameKey, input) {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Start Passed GameKey: ")
        stringBuffer.append(this.stringUtil.toString(gameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(this.stringUtil.toString(input))
        this.logUtil.putF(stringBuffer.toString(), this, this.commonStrings.PROCESS)
        if ((_selectedGameKey != _NONE)) {
            this.gameActionCrud(gameKey, input)
        } else {
            this.setSelectedAction(gameKey)
        }
    }
    

    setSelectedAction(gameKey) {
        this.logUtil.putF(StringMaker.new().append("Selected GameKey: ").append(this.stringUtil.toString(gameKey)).toString(), this, "setSelectedAction")
        _selectedGameKey = gameKey
        _selectedInput = _NONE
        _helpPaintable.update(_selectedGameKey, _selectedInput)
        this.repaintBehavior.onChangeRepaint(this)
    }
    

    gameActionCrud(gameKey, input) {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Start GameKey: ")
        stringBuffer.append(this.stringUtil.toString(_selectedGameKey))
        stringBuffer.append(" Input: ")
        stringBuffer.append(this.stringUtil.toString(_selectedInput))
        this.logUtil.putF(stringBuffer.toString(), this, "gameActionCrud")
        if ((_selectedInput == _NONE)) {
            var list = _inputMapping.getInputMapping().getMappedInput(_selectedGameKey)
            var isInputAlreadyMappedToSelectedAction = list.contains(input)
            if (isInputAlreadyMappedToSelectedAction) {
                this.logUtil.putF(StringMaker.new().append("Already Mapped Input: ").append(this.stringUtil.toString(input)).toString(), this, "gameActionCrud")
                _selectedInput = input
                _helpPaintable.update(_selectedGameKey, _selectedInput)
                this.repaintBehavior.onChangeRepaint(this)
            } else {
                this.addNewMapping(gameKey, input)
            }
        } else if (_inputMapping.isDelete(input)) {
            this.deleteCurrentMapping()
        } else {
            this.setSelectedAction(gameKey)
        }
    }
    

    addNewMapping(gameKey, input) {
        var METHOD_NAME = "addNewMapping"
        this.logUtil.putF(this.commonStrings.START, this, METHOD_NAME)
        var isInputAlreadyMapped = _inputMapping.getInputMapping().isMapped(input)
        if ((!isInputAlreadyMapped && !_inputMapping.isSystemInput(input))) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append("Add Key Mapping : GameKey: ")
            stringBuffer.append(this.stringUtil.toString(_selectedGameKey))
            stringBuffer.append(" Input: ")
            stringBuffer.append(this.stringUtil.toString(_selectedInput))
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
            _inputMapping.getInputMapping().add(_selectedGameKey, input)
            _selectedInput = input
            this.update()
        } else {
            this.logUtil.putF("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", this, METHOD_NAME)
            this.setSelectedAction(gameKey)
        }
    }
    

    deleteCurrentMapping() {
        var METHOD_NAME = "deleteCurrentMapping"
        var list = _inputMapping.getInputMapping().getMappedInput(_selectedGameKey)
        if ((list.size() > 1)) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append("Start GameKey: ")
            stringBuffer.append("Remove Key Mapping: GameKey: ")
            stringBuffer.append(this.stringUtil.toString(_selectedGameKey))
            stringBuffer.append(" Input: ")
            stringBuffer.append(this.stringUtil.toString(_selectedInput))
            this.logUtil.putF(stringBuffer.toString(), this, METHOD_NAME)
            _inputMapping.getInputMapping().remove(_selectedGameKey, _selectedInput)
            _selectedInput = _NONE
            this.update()
        } else {
            this.logUtil.putF("Can't Remove Last Key Mapping", this, METHOD_NAME)
        }
    }
    

    setDefault() {
        _inputMapping.setDefault(_abeClientInformation)
        _helpPaintable.update(_NONE, _NONE)
        this.repaintBehavior.onChangeRepaint(this)
    }
    

    update() {
        _inputMapping.update(_abeClientInformation)
        _helpPaintable.update(_selectedGameKey, _selectedInput)
        this.repaintBehavior.onChangeRepaint(this)
    }
    

    paint(graphics) {
        _colorFillPaintable.paint(graphics)
        _helpPaintable.paint(graphics)
        _paintable.paint(graphics)
        super.paint(graphics)
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../../org/allbinary/game/input/mapping/InputMappingInterface" for InputMappingInterface
import "../../../../../org/allbinary/game/input/mapping/PersistentInputMapping" for PersistentInputMapping
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/paint/ColorFillBasePaintable" for ColorFillBasePaintable
import "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" for ColorFillPaintableFactory
import "../../../../../org/allbinary/game/paint/help/HelpPaintable" for HelpPaintable
import "../../../../../org/allbinary/game/paint/help/InputMappingHelpPaintable" for InputMappingHelpPaintable
import "../../../../../org/allbinary/graphics/paint/ProcessPaintable" for ProcessPaintable
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../java/lang/Integer" for Integer
import "./GameInputMappingInstructionsCanvas" for GameInputMappingInstructionsCanvas

