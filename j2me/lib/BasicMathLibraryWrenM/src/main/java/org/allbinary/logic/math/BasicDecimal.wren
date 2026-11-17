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
// package org.allbinary.logic.math

import "../../../../allbinary_java" for JObject, JException, JR

class BasicDecimal is JObject {
    static ZERO_BIGDECIMAL {
    if (__ZERO_BIGDECIMAL_set == null) {
      __ZERO_BIGDECIMAL_set = true
      __ZERO_BIGDECIMAL = BasicDecimal.new(0)
    }
    return __ZERO_BIGDECIMAL
  }
  static ZERO_BIGDECIMAL=(value) {
    __ZERO_BIGDECIMAL_set = true
    __ZERO_BIGDECIMAL = value
  }
  units { _units }
  units=(value) { _units = value }
  scaled { _scaled }
  scaled=(value) { _scaled = value }
  factor { _factor }
  factor=(value) { _factor = value }
  factorValue { _factorValue }
  factorValue=(value) { _factorValue = value }

  initFields_BasicDecimal() {
    _units = 0
    _scaled = 0
    _factor = 0
    _factorValue = 0
        
        _scaled = 0
        _factor = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
        _factorValue = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
  }
    

    static createBigDecimal(bigDecimal) {
        return BasicDecimal.new(bigDecimal.getUnscaled())
    }
    

    construct new(units) {
    super()
    initFields_BasicDecimal()
        _units = units
        this.updateScaled()
    }
    

    setint(value) {
        _units = value
        this.updateScaled()
    }
    

    setlong(value) {
        _units = value
        this.updateScaled()
    }
    

    set(bigDecimal) {
        _units = bigDecimal.getUnscaled()
        this.updateScaled()
    }
    

    addint(value) {
        _units = JR.i32(_units + value)
        this.updateScaled()
    }
    

    addlong(value) {
        _units = JR.i32(_units + value)
        this.updateScaled()
    }
    

    add(bigDecimal) {
        _units = JR.i32(_units + bigDecimal.getUnscaled())
        this.updateScaled()
    }
    

    subtractint(value) {
        _units = JR.i32(_units - value)
        this.updateScaled()
    }
    

    subtractlong(value) {
        _units = JR.i32(_units - value)
        this.updateScaled()
    }
    

    subtract(bigDecimal) {
        _units = JR.i32(_units - bigDecimal.getUnscaled())
        this.updateScaled()
    }
    

    multiplyint(value) {
        _units = JR.i32(_units * value)
        this.updateScaled()
    }
    

    multiplylong(value) {
        _units = JR.i32(_units * value)
        this.updateScaled()
    }
    

    multiply(bigDecimal) {
        _units = JR.i32(_units * bigDecimal.getUnscaled())
        this.updateScaled()
    }
    

    divideint(value) {
        _units = JR.idiv(_units, value)
        this.updateScaled()
    }
    

    dividelong(value) {
        _units = JR.idiv(_units, value)
        this.updateScaled()
    }
    

    divide(bigDecimal) {
        _units = JR.idiv(_units, bigDecimal.getUnscaled())
        this.updateScaled()
    }
    

    getUnscaled() {
        return _units
    }
    

    updateScaled() {
        _scaled = JR.i32((JR.idiv(_units, _factorValue)))
    }
    

    getScaled() {
        return _scaled
    }
    

    toString() {
        return JR.str(_units)
    }
    

    getScaledFactor() {
        return _factor
    }
    

    getScaledFactorValue() {
        return _factorValue
    }
}

import "../../../../java/lang/Long" for Long
import "./ScaleFactorFactory" for ScaleFactorFactory

