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

class HighScore is JObject {
  id { _id }
  id=(value) { _id = value }
  name { _name }
  name=(value) { _name = value }
  gameInfo { _gameInfo }
  gameInfo=(value) { _gameInfo = value }
  score { _score }
  score=(value) { _score = value }
  scoreString { _scoreString }
  scoreString=(value) { _scoreString = value }

  initFields_HighScore() {
    _id = 0
    _name = null
    _gameInfo = null
    _score = 0
    _scoreString = null
        
        
        
        
        
  }
    

    construct new(id, name, gameInfo, score) {
    super()
    initFields_HighScore()
        _id = id
        _name = name
        _gameInfo = gameInfo
        _score = score
        _scoreString = JR.str(_score)
    }
    

    getId() {
        return _id
    }
    

    getName() {
        return _name
    }
    

    getScore() {
        return _score
    }
    

    getAsBytes() {
        var byteArrayOutputStream = ByteArrayOutputStream.new()
        var outputStream = DataOutputStream.new(byteArrayOutputStream)
        outputStream.writeUTF(this.getName())
        outputStream.writeLong(this.getScore())
        return byteArrayOutputStream.toByteArray()
    }
    

    getGameInfo() {
        return _gameInfo
    }
    

    getScoreString() {
        return _scoreString
    }
    

    setName(name) {
        _name = name
    }
    

    toString() {
        var commonSeps = CommonSeps.getInstance()
        return StringMaker.new().append(_name).append(commonSeps.COLON).appendlong(_score).append(commonSeps.FORWARD_SLASH).append(_scoreString).toString()
    }
}

import "../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream
import "../../../../java/io/DataOutputStream" for DataOutputStream
import "../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../java/lang/Long" for Long

