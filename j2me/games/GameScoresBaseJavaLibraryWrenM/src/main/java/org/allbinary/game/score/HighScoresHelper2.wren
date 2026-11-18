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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR
import "./HighScoresHelperBase" for HighScoresHelperBase

class HighScoresHelper2 is HighScoresHelperBase {
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  selectedHighScores { _selectedHighScores }
  selectedHighScores=(value) { _selectedHighScores = value }

  initFields_HighScoresHelper2() {
    _circularIndexUtil = null
    _selectedHighScores = null
        _circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
        _selectedHighScores = NullHighScoresSingletonFactory.getInstance()
  }

  construct new() {
    super()
    initFields_HighScoresHelper2()
  }
    

    setSelectedHighScores(selectedHighScores) {
        _selectedHighScores = selectedHighScores
    }
    

    getSelectedHighScores() {
        return _selectedHighScores
    }
    

    setHighScoresArray(highScoresArrayP) {
        super.setHighScoresArray(highScoresArrayP)
        _circularIndexUtil.setSize(this.highScoresArrayP.count)
        this.selectHighScores()
    }
    

    selectHighScores() {
        if ((this.highScoresArrayP.count == 0)) {
            this.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
            return
        }
        _circularIndexUtil.next()
        var highScores = this.highScoresArrayP[_circularIndexUtil.getIndex()]
        var index = 0
        while (((highScores.getTotal() < 1) && (index < this.highScoresArrayP.count))) {
            highScores = this.highScoresArrayP[_circularIndexUtil.next()]
            index = JR.i32(index + 1)
        }
        this.setSelectedHighScores(highScores)
    }
}

import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./NullHighScoresSingletonFactory" for NullHighScoresSingletonFactory
import "./HighScores" for HighScores

