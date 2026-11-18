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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "./VectorBaseRotationAnimation" for VectorBaseRotationAnimation

class VectorRotationAnimation is VectorBaseRotationAnimation {

  initFields_VectorRotationAnimation() {
  }
    

    construct new(currentPoints, basicColor, animationBehavior) {
        super(AngleInfo.getInstance(JR.i16(((AngleFactory.getInstance().TOTAL_ANGLE / currentPoints.count)))), currentPoints, basicColor, animationBehavior)
        this.angleInfo.adjustAngle(this.getFrame())
    }
    

    setFrameByDirection(direction) {
        var angle = this.directionUtil.getFrameAngle(direction)
        this.adjustFrameToAngle(angle)
    }
    

    setFrameToAngle(angle) {
        this.adjustFrameToAngle(angle)
    }
    

    setFrame(index) {
        super.setFrame(index)
        this.angleInfo.adjustAngle(this.getFrame())
    }
    

    adjustFrame(newAngle) {
        this.setFrame(this.frameUtil.getFrameForAngle(newAngle, JR.i32(this.angleInfo.getAngleIncrementInfo().getAngleIncrement())))
    }
    

    adjustFrameToAngle(newAngle) {
        this.adjustFrame(newAngle.getValue())
    }
}

import "../../../org/allbinary/direction/Direction" for Direction
import "../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../org/allbinary/math/Angle" for Angle
import "../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../org/allbinary/math/AngleInfo" for AngleInfo
import "./AnimationBehavior" for AnimationBehavior

