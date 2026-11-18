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
// package org.allbinary.game.physics.acceleration

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicAccelerationProperties is JObject {
  forward { _forward }
  forward=(value) { _forward = value }
  reverse { _reverse }
  reverse=(value) { _reverse = value }

  initFields_BasicAccelerationProperties() {
    _forward = 0
    _reverse = 0
        _forward = 0
        _reverse = 0
  }
    

    construct new(forward, reverse) {
    super()
    initFields_BasicAccelerationProperties()
        this.setForward(forward)
        this.setReverse(reverse)
    }
    

    setReverse(reverse) {
        _reverse = reverse
    }
    

    getReverse() {
        return _reverse
    }
    

    setForward(forward) {
        _forward = forward
    }
    

    getForward() {
        return _forward
    }
}


