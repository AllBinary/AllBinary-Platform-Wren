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
// package org.allbinary.game.ag.layer.hud.basic.score

import "../../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../../org/allbinary/game/score/Scoreable" for Scoreable

class ScoreableAddOnlyForHud is Scoreable {
  scoreHudWidget { _scoreHudWidget }
  scoreHudWidget=(value) { _scoreHudWidget = value }

  initFields_ScoreableAddOnlyForHud() {
    _scoreHudWidget = null
        
  }
    

    construct new(scoreVectorGraphic) {
        super(0)
        initFields_ScoreableAddOnlyForHud()
        _scoreHudWidget = scoreVectorGraphic
        this.getScoreHudWidget().set(0)
    }
    

    removePoints(points) {
    }
    

    addPoints(points) {
        super.addPoints(points)
        this.getScoreHudWidget().add(points)
    }
    

    getScoreHudWidget() {
        return _scoreHudWidget
    }
}

import "./ScoreHudWidget" for ScoreHudWidget

