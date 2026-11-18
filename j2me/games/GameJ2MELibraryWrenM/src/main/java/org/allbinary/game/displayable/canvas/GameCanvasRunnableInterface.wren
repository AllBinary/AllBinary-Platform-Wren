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
import "../../../../../org/allbinary/thread/RunnableInterface" for RunnableInterface

class GameCanvasRunnableInterface is JObject {
    

    getTitle() {
        Fiber.abort(JR.exception("AbstractMethodError", "getTitle"))
    }
    

    isInitialized() {
        Fiber.abort(JR.exception("AbstractMethodError", "isInitialized"))
    }
    

    isPaused() {
        Fiber.abort(JR.exception("AbstractMethodError", "isPaused"))
    }
    

    unPause() {
        Fiber.abort(JR.exception("AbstractMethodError", "unPause"))
    }
    

    pause() {
        Fiber.abort(JR.exception("AbstractMethodError", "pause"))
    }
    

    isHighScoreSubmitted() {
        Fiber.abort(JR.exception("AbstractMethodError", "isHighScoreSubmitted"))
    }
    

    setHighScoreSubmitted(highScoreSubmitted) {
        Fiber.abort(JR.exception("AbstractMethodError", "setHighScoreSubmitted"))
    }
    

    processGameOver() {
        Fiber.abort(JR.exception("AbstractMethodError", "processGameOver"))
    }
    

    isGameOver() {
        Fiber.abort(JR.exception("AbstractMethodError", "isGameOver"))
    }
    

    initCommands(cmdListener) {
        Fiber.abort(JR.exception("AbstractMethodError", "initCommands"))
    }
    

    getCurrentStateHashtable() {
        Fiber.abort(JR.exception("AbstractMethodError", "getCurrentStateHashtable"))
    }
    

    getLoadStateHashtable() {
        Fiber.abort(JR.exception("AbstractMethodError", "getLoadStateHashtable"))
    }
    

    setLoadStateHashtable(hashtable) {
        Fiber.abort(JR.exception("AbstractMethodError", "setLoadStateHashtable"))
    }
    

    getType() {
        Fiber.abort(JR.exception("AbstractMethodError", "getType"))
    }
}

import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/ItemStateListener" for ItemStateListener
import "../../../../../org/allbinary/game/state/GameStateCompositeInterface" for GameStateCompositeInterface
import "../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable

