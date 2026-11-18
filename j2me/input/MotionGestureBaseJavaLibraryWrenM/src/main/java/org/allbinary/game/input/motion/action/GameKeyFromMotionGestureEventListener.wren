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
// package org.allbinary.game.input.motion.action

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventListener" for CompleteMotionGestureInputEventListener

class GameKeyFromMotionGestureEventListener is CompleteMotionGestureInputEventListener {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  previousGameKeyEvent { _previousGameKeyEvent }
  previousGameKeyEvent=(value) { _previousGameKeyEvent = value }

  initFields_GameKeyFromMotionGestureEventListener() {
    _logUtil = null
    _previousGameKeyEvent = null
        _logUtil = LogUtil.getInstance()
        _previousGameKeyEvent = GameKeyEvent.NONE
  }

  construct new() {
    super()
    initFields_GameKeyFromMotionGestureEventListener()
  }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onCompleteMotionGestureInputEvent(completeMotionGestureInputEvent) {
        var jerror0 = Fiber.new {
            var gameKeyCompleteMotionGestureInputEvent = completeMotionGestureInputEvent
            var gameKeyEvent = gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent()
            if ((gameKeyEvent != _previousGameKeyEvent)) {
                if ((_previousGameKeyEvent != GameKeyEvent.NONE)) {
                    UpGameKeyEventHandler.getInstance().fireEvent(_previousGameKeyEvent)
                }
                _previousGameKeyEvent = gameKeyEvent
                if (((gameKeyEvent != null) && (gameKeyEvent != GameKeyEvent.NONE))) {
                    DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
                }
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "onCompleteMotionGestureInputEvent", e)
        }
    }
}

import "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEvent" for CompleteMotionGestureInputEvent
import "../../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" for DownGameKeyEventHandler
import "../../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" for UpGameKeyEventHandler
import "../../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./GameKeyCompleteMotionGestureInputEvent" for GameKeyCompleteMotionGestureInputEvent

