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
// package org.allbinary.game.init

import "../../../../allbinary_java" for JObject, JException, JR

class DefaultGameInitializationListener is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  swtJOGLProcessor { _swtJOGLProcessor }
  swtJOGLProcessor=(value) { _swtJOGLProcessor = value }
  firstTime { _firstTime }
  firstTime=(value) { _firstTime = value }

  initFields_DefaultGameInitializationListener() {
    _logUtil = null
    _swtJOGLProcessor = null
    _firstTime = false
        _logUtil = LogUtil.getInstance()
        _swtJOGLProcessor = SWTJOGLProcessor.getInstance()
        _firstTime = true
  }
    

    construct new() {
    super()
    initFields_DefaultGameInitializationListener()
        var gameInitializedEventHandler = GameInitializedEventHandler.getInstance()
        gameInitializedEventHandler.removeAllListeners()
        gameInitializedEventHandler.addListenerInterface(this)
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onGameInitialized(gameInitializedEvent) {
        var ON_GAME_INITIALIZED = "onGameInitialized"
        var commonStrings = CommonStrings.getInstance()
        var jerror0 = Fiber.new {
            _logUtil.putF(commonStrings.START, this, ON_GAME_INITIALIZED)
            while (!_swtJOGLProcessor.isHolderCreated()) {
                _logUtil.putF(commonStrings.UPDATE, this, ON_GAME_INITIALIZED)
                Thread.sleep(20)
            }
            FeatureResourceInitializationUtil.getInstance().init(gameInitializedEvent.getLevel())
            if (_firstTime) {
                _firstTime = false
            } else {
                _swtJOGLProcessor.onSurfaceChanged()
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(commonStrings.EXCEPTION, this, ON_GAME_INITIALIZED, e)
        }
    }
}

import "../../../../org/allbinary/game/configuration/event/GameInitializedEvent" for GameInitializedEvent
import "../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler" for GameInitializedEventHandler
import "../../../../org/allbinary/game/configuration/event/GameInitializedListenerInterface" for GameInitializedListenerInterface
import "../../../../org/allbinary/game/resource/FeatureResourceInitializationUtil" for FeatureResourceInitializationUtil
import "../../../../org/allbinary/graphics/threed/SWTJOGLProcessor" for SWTJOGLProcessor
import "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Thread" for Thread

