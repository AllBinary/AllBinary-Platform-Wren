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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class GameInput is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  gameKeyEventList { _gameKeyEventList }
  gameKeyEventList=(value) { _gameKeyEventList = value }
  removalGameKeyEventList { _removalGameKeyEventList }
  removalGameKeyEventList=(value) { _removalGameKeyEventList = value }
  isRemoveDuplicateKeyPresses { _isRemoveDuplicateKeyPresses }
  isRemoveDuplicateKeyPresses=(value) { _isRemoveDuplicateKeyPresses = value }

  initFields_GameInput() {
    _logUtil = null
    _commonStrings = null
    _gameKeyEventList = null
    _removalGameKeyEventList = null
    _isRemoveDuplicateKeyPresses = false
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
        
  }
    

    construct new(gameKeyEventList, removalGameKeyEventList) {
    super()
    initFields_GameInput()
        _gameKeyEventList = gameKeyEventList
        _removalGameKeyEventList = removalGameKeyEventList
        _isRemoveDuplicateKeyPresses = Features.getInstance().isFeature(InputFeatureFactory.getInstance().REMOVE_DUPLICATE_KEY_PRESSES)
    }
    

    add(gameKeyEvent) {
        if ((_isRemoveDuplicateKeyPresses && _gameKeyEventList.contains(gameKeyEvent))) {
            return
        }
        if ((gameKeyEvent != null)) {
            _gameKeyEventList.add(gameKeyEvent)
        } else {
            _logUtil.putF("Danger Passed Null GameKeyEvent", this, _commonStrings.ADD)
        }
    }
    

    addForRemoval(gameKeyEvent) {
        _removalGameKeyEventList.add(gameKeyEvent)
    }
    

    isForRemoval(gameKeyEvent) {
        return _removalGameKeyEventList.contains(gameKeyEvent)
    }
    

    clear() {
        _gameKeyEventList.clear()
    }
    

    removeNonAIInputGameKeyEvents() {
        var list = _gameKeyEventList
        var gameKeyEvent = null
        if (true) {
            var index = list.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            gameKeyEvent = list.objectArray[index]
            if ((gameKeyEvent.getSourceId() != 1)) {
                list.removeAt(index)
            }
            }
        }
    }
    

    update() {
        var removeList = _removalGameKeyEventList
        var list = _gameKeyEventList
        var size = removeList.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var anyType = removeList.objectArray[index]
            if (true) {
                var index2 = list.size()
                var jfirst = true
                while (true) {
                    jfirst = false
                    if (!((Fn.new {
index2 = JR.i32(index2 - 1)
return index2
}.call() >= 0))) break
                if ((list.objectArray[index2] == anyType)) {
                    list.removeAt(index2)
                }
                }
            }
            }
        }
        removeList.clear()
    }
    

    getRemovalGameKeyEventList() {
        return _removalGameKeyEventList
    }
    

    getGameKeyEventList() {
        return _gameKeyEventList
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" for InputFeatureFactory
import "../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

