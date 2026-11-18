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

class HighScoresHelper is HighScoresHelperBase {
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  lastIndex { _lastIndex }
  lastIndex=(value) { _lastIndex = value }

  initFields_HighScoresHelper() {
    _circularIndexUtil = null
    _lastIndex = 0
        _circularIndexUtil = CircularIndexUtil.createInstanceAt(0, 0)
        _lastIndex = -1
  }

  construct new() {
    super()
    initFields_HighScoresHelper()
  }
    

    setHighScoresArray(highScoresArrayP) {
        super.setHighScoresArray(highScoresArrayP)
        _circularIndexUtil.setSize(this.highScoresArrayP.count)
    }
    

    getNextHighScores() {
        var highScores = this.highScoresArrayP[_circularIndexUtil.getIndex()]
        var index = 0
        while (((((highScores.getTotal() < 1) || (_lastIndex == _circularIndexUtil.getIndex()))) && (index < this.highScoresArrayP.count))) {
            _circularIndexUtil.next()
            highScores = this.highScoresArrayP[_circularIndexUtil.getIndex()]
            index = JR.i32(index + 1)
        }
        _lastIndex = _circularIndexUtil.getIndex()
        return highScores
    }
    

    isAnyHighScores() {
        if ((this.highScoresArrayP.count < 1)) {
            return false
        }
        var anyScores = false
        var highScores = null
        if (true) {
            var index = JR.i32(this.highScoresArrayP.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            highScores = this.highScoresArrayP[index]
            if ((highScores.getTotal() > 0)) {
                anyScores = true
            }
            }
        }
        return anyScores
    }
}

import "../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./HighScores" for HighScores

