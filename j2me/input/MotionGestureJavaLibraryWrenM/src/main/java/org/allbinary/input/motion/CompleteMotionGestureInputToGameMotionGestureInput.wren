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
// package org.allbinary.input.motion

import "../../../../allbinary_java" for JObject, JException, JR

class CompleteMotionGestureInputToGameMotionGestureInput is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CompleteMotionGestureInputToGameMotionGestureInput.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_CompleteMotionGestureInputToGameMotionGestureInput() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_CompleteMotionGestureInputToGameMotionGestureInput()
  }
    

    static getInstance() {
        return CompleteMotionGestureInputToGameMotionGestureInput.instance
    }
    

    init() {
        var commonStrings = CommonStrings.getInstance()
        var jerror0 = Fiber.new {
            PreLogUtil.put("Compound Motion Gestures", this, commonStrings.INIT)
            var motionGestureConfiguration = MotionGestureConfigurationFactory.getInstance()
            var touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
            var list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalDownRightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpLeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DIAGONAL_UP_RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, DiagonalUpRightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.LEFT)
            motionGestureConfiguration.addMotionGestureAction(list, LeftTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.RIGHT)
            motionGestureConfiguration.addMotionGestureAction(list, RightTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.DOWN)
            motionGestureConfiguration.addMotionGestureAction(list, DownTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.UP)
            motionGestureConfiguration.addMotionGestureAction(list, UpTouchInputToGameKeyEventAction.getInstance())
            list = BasicArrayListD.new()
            list.add(touchMotionGestureFactory.RELEASED)
            motionGestureConfiguration.addMotionGestureAction(list, ReleaseTouchInputToGameKeyEventAction.getInstance())
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e)
        }
    }
}

import "../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration" for MotionGestureConfiguration
import "../../../../org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" for MotionGestureConfigurationFactory
import "../../../../org/allbinary/input/motion/touch/action/DiagonalDownLeftTouchInputToGameKeyEventAction" for DiagonalDownLeftTouchInputToGameKeyEventAction
import "../../../../org/allbinary/input/motion/touch/action/DiagonalDownRightTouchInputToGameKeyEventAction" for DiagonalDownRightTouchInputToGameKeyEventAction
import "../../../../org/allbinary/input/motion/touch/action/DiagonalUpLeftTouchInputToGameKeyEventAction" for DiagonalUpLeftTouchInputToGameKeyEventAction
import "../../../../org/allbinary/input/motion/touch/action/DiagonalUpRightTouchInputToGameKeyEventAction" for DiagonalUpRightTouchInputToGameKeyEventAction
import "../../../../org/allbinary/input/motion/touch/action/DownTouchInputToGameKeyEventAction" for DownTouchInputToGameKeyEventAction
import "../../../../org/allbinary/input/motion/touch/action/LeftTouchInputToGameKeyEventAction" for LeftTouchInputToGameKeyEventAction
import "../../../../org/allbinary/input/motion/touch/action/ReleaseTouchInputToGameKeyEventAction" for ReleaseTouchInputToGameKeyEventAction
import "../../../../org/allbinary/input/motion/touch/action/RightTouchInputToGameKeyEventAction" for RightTouchInputToGameKeyEventAction
import "../../../../org/allbinary/input/motion/touch/action/UpTouchInputToGameKeyEventAction" for UpTouchInputToGameKeyEventAction
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

