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
// package org.allbinary.android.input.motion

import "../../../../../allbinary_java" for JObject, JException, JR

class AnalogControllerHelper is JObject {
  reduceTimeFactor { _reduceTimeFactor }
  reduceTimeFactor=(value) { _reduceTimeFactor = value }
  SCALE_VALUE { _SCALE_VALUE }
  SCALE_VALUE=(value) { _SCALE_VALUE = value }
  rightTimeElapsedHelper { _rightTimeElapsedHelper }
  rightTimeElapsedHelper=(value) { _rightTimeElapsedHelper = value }
  leftTimeElapsedHelper { _leftTimeElapsedHelper }
  leftTimeElapsedHelper=(value) { _leftTimeElapsedHelper = value }
  downTimeElapsedHelper { _downTimeElapsedHelper }
  downTimeElapsedHelper=(value) { _downTimeElapsedHelper = value }
  upTimeElapsedHelper { _upTimeElapsedHelper }
  upTimeElapsedHelper=(value) { _upTimeElapsedHelper = value }

  initFields_AnalogControllerHelper() {
    _reduceTimeFactor = 0
    _SCALE_VALUE = 0
    _rightTimeElapsedHelper = null
    _leftTimeElapsedHelper = null
    _downTimeElapsedHelper = null
    _upTimeElapsedHelper = null
        
        _SCALE_VALUE = AnalogControllerConfigurationFactory.getInstance().SCALE_VALUE
        _rightTimeElapsedHelper = TimeDelayHelper.new(0)
        _leftTimeElapsedHelper = TimeDelayHelper.new(0)
        _downTimeElapsedHelper = TimeDelayHelper.new(0)
        _upTimeElapsedHelper = TimeDelayHelper.new(0)
  }
    

    construct new(reduceTimeFactor) {
    super()
    initFields_AnalogControllerHelper()
        _reduceTimeFactor = reduceTimeFactor
    }
    

    right(collidableDestroyableDamageableLayer, xAnalogValue) {
        _rightTimeElapsedHelper.delay = (JR.shr((JR.i32(_SCALE_VALUE - xAnalogValue)), _reduceTimeFactor))
        if (_rightTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.right()
        }
    }
    

    left(collidableDestroyableDamageableLayer, xAnalogValue) {
        _leftTimeElapsedHelper.delay = (JR.shr((JR.i32(_SCALE_VALUE + xAnalogValue)), _reduceTimeFactor))
        if (_leftTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.left()
        }
    }
    

    up(collidableDestroyableDamageableLayer, xAnalogValue) {
        _upTimeElapsedHelper.delay = (JR.shr((JR.i32(_SCALE_VALUE - xAnalogValue)), _reduceTimeFactor))
        if (_upTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.up()
        }
    }
    

    down(collidableDestroyableDamageableLayer, xAnalogValue) {
        _downTimeElapsedHelper.delay = (JR.shr((JR.i32(_SCALE_VALUE + xAnalogValue)), _reduceTimeFactor))
        if (_downTimeElapsedHelper.isTimeTNT()) {
            collidableDestroyableDamageableLayer.down()
        }
    }
}

import "../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "./AnalogControllerConfigurationFactory" for AnalogControllerConfigurationFactory

