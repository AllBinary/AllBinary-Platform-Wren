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
// package org.allbinary.input.motion.gesture.observer

import "../../../../../../allbinary_java" for JObject, JException, JR

class ResolveCompleteMotionGestureListener is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_ResolveCompleteMotionGestureListener() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_ResolveCompleteMotionGestureListener()
        var commonStrings = CommonStrings.getInstance()
        _logUtil.putF("MotionGesture to CompleteMotionGesture Reciever", this, commonStrings.CONSTRUCTOR)
        CompleteMotionGestureInputEventHandler.getInstance().addListener(GameKeyFromMotionGestureEventListener.new())
    }
    

    onMotionGestureCompleted(list) {
        var configuration = MotionGestureConfigurationFactory.getInstance()
        var commandActionsList = configuration.getAssociateCommandActionsList()
        var size = commandActionsList.size()
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var association = commandActionsList.objectArray[index]
            if ((association.isMotionGestureArrayEquals(list) == true)) {
                var completeMotionGestureInputEvent = association.getCommandAction()
                CompleteMotionGestureInputEventHandler.getInstance().fireEvent(completeMotionGestureInputEvent)
                break
            }
            }
        }
    }
}

import "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEventHandler" for CompleteMotionGestureInputEventHandler
import "../../../../../../org/allbinary/game/input/motion/action/GameKeyCompleteMotionGestureInputEvent" for GameKeyCompleteMotionGestureInputEvent
import "../../../../../../org/allbinary/game/input/motion/action/GameKeyFromMotionGestureEventListener" for GameKeyFromMotionGestureEventListener
import "../../../../../../org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation" for MotionGestureToMotionGestureActionAssociation
import "../../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration" for MotionGestureConfiguration
import "../../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" for MotionGestureConfigurationFactory
import "../../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./CompleteMotionGestureListenerInterface" for CompleteMotionGestureListenerInterface

