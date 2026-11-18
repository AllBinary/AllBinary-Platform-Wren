/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
import "./DemoGameBehavior" for DemoGameBehavior

class BaseGameBehavior is DemoGameBehavior {
    static instanceC {
    if (__instanceC_set == null) {
      __instanceC_set = true
      __instanceC = BaseGameBehavior.new()
    }
    return __instanceC
  }
  static instanceC=(value) {
    __instanceC_set = true
    __instanceC = value
  }

  initFields_BaseGameBehavior() {
  }

  construct new() {
    super()
    initFields_BaseGameBehavior()
  }
    

    static getInstance() {
        return BaseGameBehavior.instanceC
    }
    

    init() {
        var gameAdState = GameAdStateFactory.getInstance().getCurrentInstance()
        gameAdState.playingAdState()
    }
    

    pause(allBinaryGameCanvas) {
        var features = Features.getInstance()
        if (features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            var currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gamePauseRunnable)
        }
    }
    

    unPause(allBinaryGameCanvas) {
        if (Features.getInstance().isDefault(OpenGLFeatureFactory.getInstance().OPENGL_AS_GAME_THREAD)) {
            var currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(allBinaryGameCanvas.gameRunnable)
            currentDisplayableFactory.setDisplayable(allBinaryGameCanvas)
        }
    }
    

    updateTouch(allBinaryGameCanvas) {
        allBinaryGameCanvas.updateTouch2()
    }
    

    updateScreenButtonPaintable(allBinaryGameCanvas) {
        allBinaryGameCanvas.updateScreenButtonPaintable2()
    }
    

    setGameState(allBinaryGameCanvas) {
        allBinaryGameCanvas.updateGameState()
    }
    

    removeAllGameKeyInputListeners(allBinaryGameCanvas) {
        allBinaryGameCanvas.removeAllGameKeyInputListeners2()
    }
    

    updateEndGameProcessor(allBinaryGameCanvas) {
        allBinaryGameCanvas.updateEndGameProcessor2()
    }
    

    buildGame(allBinaryGameCanvas) {
        allBinaryGameCanvas.buildGame2()
    }
    

    run(allBinaryGameCanvas) {
        allBinaryGameCanvas.run2()
    }
    

    setHighScore(abeClientInformation, allBinaryGameCanvas, name, score, autoSubmit, isLast) {
        allBinaryGameCanvas.setHighScore2(abeClientInformation, name, score, autoSubmit, isLast)
    }
}

import "../../../../../org/allbinary/business/advertisement/GameAdStateFactory" for GameAdStateFactory
import "../../../../../org/allbinary/game/GameAdState" for GameAdState
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/graphics/opengles/CurrentDisplayableFactory" for CurrentDisplayableFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

