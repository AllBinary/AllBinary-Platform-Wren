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
// package org.allbinary.math

import "../../../allbinary_java" for JObject, JException, JR

class FrameUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = FrameUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_FrameUtil() {
  }
    

    static getInstance() {
        return FrameUtil.instance
    }
    

    construct new() {
    super()
    initFields_FrameUtil()
    }
    

    getFrameForAngle(angle, angleIncrement) {
        return JR.idiv(this.adjustAngleToFrameAngle(JR.i32(angle)), angleIncrement)
    }
    

    getFrameAngle(frame, angleIncrement) {
        var frameAngle = JR.i32(JR.i32(angleIncrement * frame) - 90)
        return this.adjustAngleToFrameAngle(frameAngle)
    }
    

    adjustAngleToFrameAngle(currentAngle) {
        var angleFactory = AngleFactory.getInstance()
        if ((currentAngle > 359)) {
            currentAngle = ((currentAngle - angleFactory.TOTAL_ANGLE))
            while ((currentAngle > 359)) {
                currentAngle = ((currentAngle - angleFactory.TOTAL_ANGLE))
            }
        }
        if ((currentAngle < 0)) {
            currentAngle = ((currentAngle + angleFactory.TOTAL_ANGLE))
            while ((currentAngle < 0)) {
                currentAngle = ((currentAngle + angleFactory.TOTAL_ANGLE))
            }
        }
        return currentAngle
    }
}

import "./AngleFactory" for AngleFactory

