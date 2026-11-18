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
import "./BasicMenuInputProcessor" for BasicMenuInputProcessor

class DemoCanvasBasicStartInputProcessor is BasicMenuInputProcessor {

  initFields_DemoCanvasBasicStartInputProcessor() {
  }
    

    construct new(gameKeyEventList, gameCanvas) {
        super(gameKeyEventList, -1, gameCanvas)
    }
    

    processInputList() {
        var list = this.getGameKeyEventList()
        var size = list.size()
        var gameKeyEvent = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            gameKeyEvent = list.objectArray[index]
            this.logUtil.putF(StringMaker.new().append("Start GameKey: ").append(StringUtil.getInstance().toString(gameKeyEvent)).toString(), this, GameInputStrings.getInstance().PROCESS_INPUT)
            }
        }
        this.getCanvas().getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().START_COMMAND, NullCanvas.NULL_CANVAS)
        return size
    }
}

import "../../../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../../../org/allbinary/canvas/RunnableCanvas" for RunnableCanvas
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../org/allbinary/game/input/GameInputStrings" for GameInputStrings
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

