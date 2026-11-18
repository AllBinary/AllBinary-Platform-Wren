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

class MotionGestureReceiveInterfaceFactory is JObject {

  initFields_MotionGestureReceiveInterfaceFactory() {
  }

  construct new() {
    super()
    initFields_MotionGestureReceiveInterfaceFactory()
  }
    

    static getInstance() {
        var configuration = MotionGestureConfigurationFactory.getInstance()
        if (!configuration.isExecutingActionsAllowed()) {
            return NullCompleteMotionGestureReceiver.new()
        } else {
            return ResolveCompleteMotionGestureListener.new()
        }
    }
}

import "../../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration" for MotionGestureConfiguration
import "../../../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" for MotionGestureConfigurationFactory
import "./ResolveCompleteMotionGestureListener" for ResolveCompleteMotionGestureListener
import "./NullCompleteMotionGestureReceiver" for NullCompleteMotionGestureReceiver
import "./CompleteMotionGestureListenerInterface" for CompleteMotionGestureListenerInterface

