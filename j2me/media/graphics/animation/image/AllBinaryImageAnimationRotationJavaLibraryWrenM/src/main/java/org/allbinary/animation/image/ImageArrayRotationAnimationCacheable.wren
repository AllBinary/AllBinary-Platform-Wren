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
// package org.allbinary.animation.image

import "../../../../allbinary_java" for JObject, JException, JR
import "./AdjustedImageArrayRotationAnimation" for AdjustedImageArrayRotationAnimation

class ImageArrayRotationAnimationCacheable is AdjustedImageArrayRotationAnimation {

  initFields_ImageArrayRotationAnimationCacheable() {
  }
    

    construct new(anyType, animationBehavior) {
        super((anyType).getImageArray(), (anyType).getAngleInfoP(), (anyType).getTotalAngle(), (anyType).getDx(), (anyType).getDy(), animationBehavior)
    }
    

    getKey() {
        return NullUtil.getInstance().NULL_OBJECT
    }
    

    toString() {
        return StringUtil.getInstance().EMPTY_STRING
    }
}

import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/logic/util/cache/CacheableInterface" for CacheableInterface
import "./ImageArrayRotationAnimationInfo" for ImageArrayRotationAnimationInfo

