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
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR
import "./ItemPaintable" for ItemPaintable

class LockablePaintable is ItemPaintable {
  animation { _animation }
  animation=(value) { _animation = value }
  lockedIndex { _lockedIndex }
  lockedIndex=(value) { _lockedIndex = value }

  initFields_LockablePaintable() {
    _animation = null
    _lockedIndex = 0
        _animation = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(LockedResources.getInstance().LOCKED_DEMO_GAME_FEATURE_RESOURCE).getInstance(0)
        
  }
    

    construct new(lockedIndex) {
    super()
    initFields_LockablePaintable()
        _lockedIndex = lockedIndex
    }
    

    paint(graphics, currentIndex, x, y) {
        if ((LockedUtil.getInstance().isLocked() && (currentIndex >= this.getLockedIndex()))) {
            this.getAnimation().paintXY(graphics, x, y)
        }
    }
    

    getLockedIndex() {
        return _lockedIndex
    }
    

    getAnimation() {
        return _animation
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../org/allbinary/logic/system/security/licensing/LockedResources" for LockedResources
import "../../../../org/allbinary/logic/system/security/licensing/LockedUtil" for LockedUtil

