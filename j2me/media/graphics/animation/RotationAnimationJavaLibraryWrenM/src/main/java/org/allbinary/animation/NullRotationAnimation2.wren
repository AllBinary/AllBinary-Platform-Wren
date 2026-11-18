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
import "./NullRotationAnimation" for NullRotationAnimation

class NullRotationAnimation2 is NullRotationAnimation {

  initFields_NullRotationAnimation2() {
  }
    

    construct new() {
        super(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), IndexedAnimationBehavior.new(1, 250))
    }
    

    paintXY(graphics, x, y) {
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../org/allbinary/math/AngleInfo" for AngleInfo
import "../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./IndexedAnimationBehavior" for IndexedAnimationBehavior

