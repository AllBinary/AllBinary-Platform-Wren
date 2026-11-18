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
import "../../../../../org/allbinary/game/input/PlayerGameInput" for PlayerGameInput

class CheatGameInputProcessor is PlayerGameInput {
    static inputProcessor {
    if (__inputProcessor_set == null) {
      __inputProcessor_set = true
      __inputProcessor = SpecialGameInputFactory.NO_SPECIAL_GAME_INPUT
    }
    return __inputProcessor
  }
  static inputProcessor=(value) {
    __inputProcessor_set = true
    __inputProcessor = value
  }
  PROCESS_GAME { _PROCESS_GAME }
  PROCESS_GAME=(value) { _PROCESS_GAME = value }
  gameCanvas { _gameCanvas }
  gameCanvas=(value) { _gameCanvas = value }
  gameKeyFactory { _gameKeyFactory }
  gameKeyFactory=(value) { _gameKeyFactory = value }

  initFields_CheatGameInputProcessor() {
    _PROCESS_GAME = null
    _gameCanvas = null
    _gameKeyFactory = null
        _PROCESS_GAME = "processGame"
        
        _gameKeyFactory = GameKeyFactory.getInstance()
  }
    

    construct new(gameCanvas) {
        super(BasicArrayListD.new(), BasicArrayListD.new(), -1)
        initFields_CheatGameInputProcessor()
        _gameCanvas = gameCanvas
    }
    

    update() {
        var jerror0 = Fiber.new {
            var gameLayerManager = _gameCanvas.getLayerManager()
            var list = this.getGameKeyEventList()
            var size = list.size()
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                var anyType = list.objectArray[index]
                var key = GameKeyEventUtil.getKey(anyType)
                if ((key == _gameKeyFactory.LEVEL_DOWN.getId())) {
                    CheatGameInputProcessor.inputProcessor.strafeLeft()
                    break
                } else if ((key == _gameKeyFactory.LEVEL_UP.getId())) {
                    CheatGameInputProcessor.inputProcessor.strafeRight()
                    break
                }
                if ((key == _gameKeyFactory.LEFT.getId())) {
                    CheatGameInputProcessor.inputProcessor.left()
                    break
                } else if ((key == _gameKeyFactory.RIGHT.getId())) {
                    CheatGameInputProcessor.inputProcessor.right()
                    break
                } else if ((key == _gameKeyFactory.UP.getId())) {
                    CheatGameInputProcessor.inputProcessor.up()
                    break
                } else if ((key == _gameKeyFactory.DOWN.getId())) {
                    CheatGameInputProcessor.inputProcessor.down()
                    break
                } else if ((key == _gameKeyFactory.KEY_NUM1.getId())) {
                    CheatGameInputProcessor.inputProcessor.special1(gameLayerManager, GameKeyEvent.NONE)
                    break
                } else if ((key == _gameKeyFactory.KEY_NUM3.getId())) {
                    CheatGameInputProcessor.inputProcessor.special2(gameLayerManager, GameKeyEvent.NONE)
                    break
                }
                }
            }
            list.clear()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)
        }
    }
}

import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/input/event/GameKeyEventUtil" for GameKeyEventUtil
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/layer/special/SpecialGameInputFactory" for SpecialGameInputFactory
import "../../../../../org/allbinary/game/layer/special/SpecialGameInputInterface" for SpecialGameInputInterface
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

