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
// package org.allbinary.game.input.event

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class GameKeyEvent is AllBinaryEventObject {
    static NONE {
    if (__NONE_set == null) {
      __NONE_set = true
      __NONE = GameKeyEvent.new(NullUtil.getInstance().NULL_OBJECT, -1, -1, -1, -1, false)
    }
    return __NONE
  }
  static NONE=(value) {
    __NONE_set = true
    __NONE = value
  }
  sourceId { _sourceId }
  sourceId=(value) { _sourceId = value }
  repeated { _repeated }
  repeated=(value) { _repeated = value }
  key { _key }
  key=(value) { _key = value }
  gameActionKey { _gameActionKey }
  gameActionKey=(value) { _gameActionKey = value }
  originalKey { _originalKey }
  originalKey=(value) { _originalKey = value }

  initFields_GameKeyEvent() {
    _sourceId = 0
    _repeated = false
    _key = 0
    _gameActionKey = 0
    _originalKey = 0
        
        _repeated = false
        
        _gameActionKey = 0
        _originalKey = 0
  }
    

    static createEvent(anyType, sourceId, key) {
        return GameKeyEvent.new(anyType, sourceId, 0, 0, key, false)
    }
    

    construct new(anyType, sourceId, originalKey, gameActionKey, key, repeated) {
        super(anyType)
        initFields_GameKeyEvent()
        _sourceId = sourceId
        this.setOriginalKey(originalKey)
        _key = key
        this.setGameActionKey(gameActionKey)
        this.setRepeatEvents(repeated)
    }
    

    init(anyType) {
        this.setSource(anyType)
    }
    

    setRepeatEvents(repeated) {
        _repeated = repeated
    }
    

    hasRepeatEvents() {
        return _repeated
    }
    

    getKey() {
        return _key
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("\nKey: ")
        stringBuffer.appendint(this.getKey())
        return stringBuffer.toString()
    }
    

    getOriginalKey() {
        return _originalKey
    }
    

    setOriginalKey(originalKey) {
        _originalKey = originalKey
    }
    

    getGameActionKey() {
        return _gameActionKey
    }
    

    setGameActionKey(gameActionKey) {
        _gameActionKey = gameActionKey
    }
    

    getSourceId() {
        return _sourceId
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker

