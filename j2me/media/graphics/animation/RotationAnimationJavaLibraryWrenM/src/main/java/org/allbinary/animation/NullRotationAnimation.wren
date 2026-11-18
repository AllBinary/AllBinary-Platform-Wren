// Generated Code Do Not Modify
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "./RotationAnimation" for RotationAnimation

class NullRotationAnimation is RotationAnimation {

  initFields_NullRotationAnimation() {
  }
    

    static createTotalAngle(angleInfo, totalAngle, animationBehavior) {
        return NullRotationAnimation.new(angleInfo, CircularIndexUtil.createInstance((totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior)
    }
    

    static createQuarter(animationBehavior) {
        return NullRotationAnimation.new(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior)
    }
    

    construct new(angleInfo, circularIndexUtil, animationBehavior) {
        super(angleInfo, circularIndexUtil, animationBehavior)
    }
    

    getAnimationSize() {
        return 0
    }
}

import "../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./AnimationBehavior" for AnimationBehavior

