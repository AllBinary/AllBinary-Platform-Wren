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
import "../../../../../org/allbinary/canvas/Processor" for Processor

class EndGameProcessor is Processor {
  gameStateFactory { _gameStateFactory }
  gameStateFactory=(value) { _gameStateFactory = value }
  gameCanvas { _gameCanvas }
  gameCanvas=(value) { _gameCanvas = value }
  WAIT { _WAIT }
  WAIT=(value) { _WAIT = value }

  initFields_EndGameProcessor() {
    _gameStateFactory = null
    _gameCanvas = null
    _WAIT = 0
        _gameStateFactory = GameStateFactory.getInstance()
        
        _WAIT = 5000
  }
    

    construct new(gameCanvas) {
    super()
    initFields_EndGameProcessor()
        _gameCanvas = gameCanvas
    }
    

    process() {
        if (_gameCanvas.isHighScoreSubmitted()) {
            if (_gameCanvas.getGameStateTimeHelper().isElapsedTNT(_WAIT)) {
                if ((_gameCanvas.getGameState() == _gameStateFactory.SHOW_END_RESULT_GAME_STATE)) {
                    var highScoresBase = _gameCanvas.highScoresHelper
                    var highScores = highScoresBase.getSelectedHighScores()
                    if ((highScores != NullHighScoresSingletonFactory.getInstance())) {
                        highScoresBase.selectHighScores()
                        _gameCanvas.getRealHighScoresPaintable().setHighScores(highScores)
                        _gameCanvas.setGameState(_gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)
                        _gameCanvas.setHighScoresPaintable(_gameCanvas.getRealHighScoresPaintable())
                    }
                } else if ((_gameCanvas.getGameState() == _gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)) {
                    _gameCanvas.setGameState(_gameStateFactory.SHOW_END_RESULT_GAME_STATE)
                    _gameCanvas.setHighScoresPaintable(NullPaintable.getInstance())
                }
            }
        }
    }
}

import "../../../../../org/allbinary/game/score/HighScores" for HighScores
import "../../../../../org/allbinary/game/score/HighScoresHelperBase" for HighScoresHelperBase
import "../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory" for NullHighScoresSingletonFactory
import "../../../../../org/allbinary/game/state/GameStateFactory" for GameStateFactory
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

