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

class HighScores is JObject {
  orderedHighScoresList { _orderedHighScoresList }
  orderedHighScoresList=(value) { _orderedHighScoresList = value }
  name { _name }
  name=(value) { _name = value }
  heading { _heading }
  heading=(value) { _heading = value }
  columnOneHeading { _columnOneHeading }
  columnOneHeading=(value) { _columnOneHeading = value }
  columnTwoHeading { _columnTwoHeading }
  columnTwoHeading=(value) { _columnTwoHeading = value }

  initFields_HighScores() {
    _orderedHighScoresList = null
    _name = null
    _heading = null
    _columnOneHeading = null
    _columnTwoHeading = null
        _orderedHighScoresList = BasicArrayListD.new()
        
        
        _columnOneHeading = "Name"
        
  }
    

    construct new(name, heading, columnTwoHeading) {
    super()
    initFields_HighScores()
        _name = name
        _heading = heading
        _columnTwoHeading = columnTwoHeading
    }
    

    setList(orderedHighScoresList) {
        _orderedHighScoresList = orderedHighScoresList
    }
    

    getList() {
        return _orderedHighScoresList
    }
    

    getName() {
        return _name
    }
    

    getTotal() {
        return this.getList().size()
    }
    

    addHighScore(newHighScore) {
        _orderedHighScoresList.add(newHighScore)
    }
    

    getHeading() {
        return _heading
    }
    

    getColumnOneHeading() {
        return _columnOneHeading
    }
    

    getColumnTwoHeading() {
        return _columnTwoHeading
    }
    

    isBestScore(newHighScore) {
        return false
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("HighScores: ")
        stringBuffer.append(_heading)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
        stringBuffer.appendint(_orderedHighScoresList.size())
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./HighScoresInterface" for HighScoresInterface
import "./HighScore" for HighScore

