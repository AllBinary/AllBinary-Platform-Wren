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
// package org.allbinary.game.ai

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/ai/ArtificialIntelligence" for ArtificialIntelligence

class BasicAI is ArtificialIntelligence {
    static AI_VISITOR {
    if (__AI_VISITOR_set == null) {
      __AI_VISITOR_set = true
      __AI_VISITOR = SmallIntegerSingletonFactory.getInstance().getAt(2)
    }
    return __AI_VISITOR
  }
  static AI_VISITOR=(value) {
    __AI_VISITOR_set = true
    __AI_VISITOR = value
  }
    static ID {
    if (__ID_set == null) {
      __ID_set = true
      __ID = SmallIntegerSingletonFactory.getInstance().getAt(1)
    }
    return __ID
  }
  static ID=(value) {
    __ID_set = true
    __ID = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  gameKeyEventFactory { _gameKeyEventFactory }
  gameKeyEventFactory=(value) { _gameKeyEventFactory = value }
  ownerLayerInterface { _ownerLayerInterface }
  ownerLayerInterface=(value) { _ownerLayerInterface = value }
  gameInput { _gameInput }
  gameInput=(value) { _gameInput = value }
  lastKey { _lastKey }
  lastKey=(value) { _lastKey = value }

  initFields_BasicAI() {
    _logUtil = null
    _commonStrings = null
    _gameKeyEventFactory = null
    _ownerLayerInterface = null
    _gameInput = null
    _lastKey = 0
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _gameKeyEventFactory = GameKeyEventFactory.getInstance()
        
        
        _lastKey = -1
  }
    

    construct new(ownerLayerInterface, gameInput) {
    super()
    initFields_BasicAI()
        _ownerLayerInterface = ownerLayerInterface
        _gameInput = gameInput
    }
    

    processAI(allBinaryLayerManager) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    processKeyAI(key) {
        if ((key != -1)) {
            _gameInput.add(_gameKeyEventFactory.getInstanceForKey(this, key))
        }
    }
    

    setLastKey(lastKey) {
        _lastKey = lastKey
    }
    

    getLastKey() {
        return _lastKey
    }
    

    getOwnerLayerInterface() {
        return _ownerLayerInterface
    }
    

    getGameInput() {
        return _gameInput
    }
    

    getName() {
        return JR.className(this)
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append(this.getName())
        stringBuffer.append(" LastKey: ")
        stringBuffer.append(CanvasUtil.getKeyName(this.getLastKey()))
        return stringBuffer.toString()
    }
    

    getSourceId() {
        return 1
    }
}

import "../../../../org/allbinary/game/displayable/canvas/CanvasUtil" for CanvasUtil
import "../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../org/allbinary/game/input/GameKeyEventSourceInterface" for GameKeyEventSourceInterface
import "../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Integer" for Integer

