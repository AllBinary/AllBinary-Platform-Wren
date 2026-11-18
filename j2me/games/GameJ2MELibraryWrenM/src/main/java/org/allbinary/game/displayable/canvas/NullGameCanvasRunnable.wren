/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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

class NullGameCanvasRunnable is JObject {
    static NULL_GAME_CANVAS_RUNNABLE {
    if (__NULL_GAME_CANVAS_RUNNABLE_set == null) {
      __NULL_GAME_CANVAS_RUNNABLE_set = true
      __NULL_GAME_CANVAS_RUNNABLE = NullGameCanvasRunnable.new()
    }
    return __NULL_GAME_CANVAS_RUNNABLE
  }
  static NULL_GAME_CANVAS_RUNNABLE=(value) {
    __NULL_GAME_CANVAS_RUNNABLE_set = true
    __NULL_GAME_CANVAS_RUNNABLE = value
  }
  gameStateFactory { _gameStateFactory }
  gameStateFactory=(value) { _gameStateFactory = value }

  initFields_NullGameCanvasRunnable() {
    _gameStateFactory = null
        _gameStateFactory = GameStateFactory.getInstance()
  }

  construct new() {
    super()
    initFields_NullGameCanvasRunnable()
  }
    

    getTitle() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    isInitialized() {
        return false
    }
    

    isPaused() {
        return false
    }
    

    unPause() {
    }
    

    pause() {
    }
    

    isHighScoreSubmitted() {
        return false
    }
    

    setHighScoreSubmitted(highScoreSubmitted) {
    }
    

    processGameOver() {
    }
    

    isGameOver() {
        return false
    }
    

    initCommands(cmdListener) {
    }
    

    getCurrentStateHashtable() {
        return StdUtil.getInstance().NULL_TABLE
    }
    

    getLoadStateHashtable() {
        return StdUtil.getInstance().NULL_TABLE
    }
    

    setLoadStateHashtable(hashtable) {
    }
    

    getType() {
        return -1
    }
    

    setGameState(gameState) {
    }
    

    getGameState() {
        return _gameStateFactory.NO_GAME_STATE
    }
    

    itemStateChanged(item) {
    }
    

    paint(graphics) {
    }
    

    paintThreed(graphics) {
    }
    

    isRunning() {
        return false
    }
    

    setRunning(isRunning) {
    }
    

    setThread(thread) {
    }
    

    run() {
    }
}

import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Item" for Item
import "../../../../../org/allbinary/game/state/GameState" for GameState
import "../../../../../org/allbinary/game/state/GameStateFactory" for GameStateFactory
import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../java/lang/Thread" for Thread
import "./GameCanvasRunnableInterface" for GameCanvasRunnableInterface

