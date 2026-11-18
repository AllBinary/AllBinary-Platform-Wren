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

class GameInputMappingInstructionsCanvas is GameCommandCanvas {
    static DISPLAY {
    if (__DISPLAY_set == null) {
      __DISPLAY_set = true
      __DISPLAY = Command.new("Help", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    }
    return __DISPLAY
  }
  static DISPLAY=(value) {
    __DISPLAY_set = true
    __DISPLAY = value
  }
    static CLOSE {
    if (__CLOSE_set == null) {
      __CLOSE_set = true
      __CLOSE = Command.new("Close", StringUtil.getInstance().EMPTY_STRING, Command.SCREEN, 1)
    }
    return __CLOSE
  }
  static CLOSE=(value) {
    __CLOSE_set = true
    __CLOSE = value
  }
    static NAME { "GameInputMappingInstructionsCanvas" }
  drawStringUtil { _drawStringUtil }
  drawStringUtil=(value) { _drawStringUtil = value }
  TITLE { _TITLE }
  TITLE=(value) { _TITLE = value }
  instructions { _instructions }
  instructions=(value) { _instructions = value }
  colorFillPaintable { _colorFillPaintable }
  colorFillPaintable=(value) { _colorFillPaintable = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_GameInputMappingInstructionsCanvas() {
    _drawStringUtil = null
    _TITLE = null
    _instructions = null
    _colorFillPaintable = null
    _anchor = 0
        _drawStringUtil = DrawStringUtil.getInstance()
        _TITLE = "Input Instructions"
        _instructions = ["Add Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the '1' key to select the Fire action)", "2. Make the newly desired input for the selected action.", "(Example: Press 'f' to add it to the selected action)", "Note: If the input is already mapped to another action then it will not be added. You", "will need to deleted from the other action before adding it to another.", "Warning: Not all keys map for a given platform and show as Unknown.", StringUtil.getInstance().EMPTY_STRING, "Remove Input Mapping:", "1. Select the desired action by generating a currently defined input for a given action.", "(Example: Press the key '1' to select the Fire action)", "2. Select a mapped input for the selected action.", "(Example: Press the key '1' to select the '1' key input for the selected Fire action)", "3. Press the Delete Key."]
        
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(commandListener, allBinaryGameLayerManager) {
        super(commandListener, GameInputMappingInstructionsCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        initFields_GameInputMappingInstructionsCanvas()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        _colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        this.addCommand(GameInputMappingInstructionsCanvas.CLOSE)
        this.setCommandListener(cmdListener)
    }
    

    paint(graphics) {
        this.myFontProcessor.process(graphics)
        _colorFillPaintable.paint(graphics)
        var halfWidth = this.displayInfo.getLastHalfWidth()
        var beginWidth = (JR.shr(graphics.getFont().stringWidth(_TITLE), 1))
        graphics.setColor(this.foregroundColor)
        graphics.drawString(_TITLE, JR.i32(halfWidth - beginWidth), this.fontHeight, _anchor)
        _drawStringUtil.drawCenterStrings(graphics, _instructions, this.displayInfo.getLastWidth(), this.fontHeight, halfWidth, (3 * this.fontHeight))
        super.paint(graphics)
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/paint/ColorFillBasePaintable" for ColorFillBasePaintable
import "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" for ColorFillPaintableFactory
import "../../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../../org/allbinary/graphics/draw/DrawStringUtil" for DrawStringUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

