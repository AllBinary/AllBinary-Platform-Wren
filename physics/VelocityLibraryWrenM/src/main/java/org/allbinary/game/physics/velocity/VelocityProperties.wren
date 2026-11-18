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
// package org.allbinary.game.physics.velocity

import "../../../../../allbinary_java" for JObject, JException, JR
import "./BasicVelocityProperties" for BasicVelocityProperties

class VelocityProperties is BasicVelocityProperties {
    static NULL_VELOCITY_PROPERTIES {
    if (__NULL_VELOCITY_PROPERTIES_set == null) {
      __NULL_VELOCITY_PROPERTIES_set = true
      __NULL_VELOCITY_PROPERTIES = VelocityProperties.new(0, 0)
    }
    return __NULL_VELOCITY_PROPERTIES
  }
  static NULL_VELOCITY_PROPERTIES=(value) {
    __NULL_VELOCITY_PROPERTIES_set = true
    __NULL_VELOCITY_PROPERTIES = value
  }
  maxForwardVelocity { _maxForwardVelocity }
  maxForwardVelocity=(value) { _maxForwardVelocity = value }
  maxReverseVelocity { _maxReverseVelocity }
  maxReverseVelocity=(value) { _maxReverseVelocity = value }

  initFields_VelocityProperties() {
    _maxForwardVelocity = 0
    _maxReverseVelocity = 0
        _maxForwardVelocity = 0
        _maxReverseVelocity = 0
  }
    

    construct new(maxForwardVelocity, maxReverseVelocity) {
    super()
    initFields_VelocityProperties()
        this.setMaxForwardVelocity(maxForwardVelocity)
        this.setMaxReverseVelocity(maxReverseVelocity)
    }
    

    getMaxForwardVelocity() {
        return _maxForwardVelocity
    }
    

    setMaxForwardVelocity(maxForwardVelocity) {
        _maxForwardVelocity = maxForwardVelocity
    }
    

    getMaxReverseVelocity() {
        return _maxReverseVelocity
    }
    

    setMaxReverseVelocity(maxReverseVelocity) {
        _maxReverseVelocity = maxReverseVelocity
    }
    

    limitMaxXYForwardVelocity() {
        this.limitMaxXYVelocity(this.getMaxForwardVelocity())
    }
    

    limitMaxXYReverseVelocity() {
        this.limitMaxXYVelocity(this.getMaxReverseVelocity())
    }
    

    limitMaxYForwardVelocity() {
        this.limitMaxYVelocity(this.getMaxForwardVelocity())
    }
    

    limitMaxYReverseVelocity() {
        this.limitMaxYVelocity(this.getMaxReverseVelocity())
    }
    

    limitMaxXForwardVelocity() {
        this.limitMaxXVelocity(this.getMaxForwardVelocity())
    }
    

    limitMaxXReverseVelocity() {
        this.limitMaxXVelocity(this.getMaxReverseVelocity())
    }
    

    isOverXYMaxForwardVelocity() {
        return this.isOverXYMaxVelocity(this.getMaxForwardVelocity())
    }
    

    isOverXYMaxReverseVelocity() {
        return this.isOverXYMaxVelocity(this.getMaxReverseVelocity())
    }
    

    limitXYToForwardAndReverseMaxVelocity() {
        this.limitMaxXYForwardVelocity()
        this.limitMaxXYReverseVelocity()
    }
    

    limitMaxXYVelocity(maxVelocity) {
        this.limitMaxXVelocity(maxVelocity)
        this.limitMaxYVelocity(maxVelocity)
    }
    

    limitMaxPositiveYVelocity(maxVelocity) {
        if ((this.velocityYBasicDecimal.getUnscaled() > maxVelocity)) {
            this.velocityYBasicDecimal.setint(maxVelocity)
        }
    }
    

    limitMaxNegativeYVelocity(maxVelocity) {
        if ((this.velocityYBasicDecimal.getUnscaled() < -maxVelocity)) {
            this.velocityYBasicDecimal.setint(-maxVelocity)
        }
    }
    

    limitMaxYVelocity(maxVelocity) {
        this.limitMaxPositiveYVelocity(maxVelocity)
        this.limitMaxNegativeYVelocity(maxVelocity)
    }
    

    limitMaxXVelocity(maxVelocity) {
        if ((this.velocityXBasicDecimal.getUnscaled() > maxVelocity)) {
            this.velocityXBasicDecimal.setint(maxVelocity)
        }
        if ((this.velocityXBasicDecimal.getUnscaled() < -maxVelocity)) {
            this.velocityXBasicDecimal.setint(-maxVelocity)
        }
    }
    

    isOverXYMaxVelocity(maxVelocity) {
        if ((this.velocityXBasicDecimal.getUnscaled() > maxVelocity)) {
            return true
        }
        if ((this.velocityXBasicDecimal.getUnscaled() < -maxVelocity)) {
            return true
        }
        if ((this.velocityYBasicDecimal.getUnscaled() > maxVelocity)) {
            return true
        }
        if ((this.velocityYBasicDecimal.getUnscaled() < -maxVelocity)) {
            return true
        }
        return false
    }
    

    setVelocityi(magnitude, angle, otherAngle) {
        super.setVelocityi(magnitude, angle, otherAngle)
        this.limitXYToForwardAndReverseMaxVelocity()
    }
    

    addVelocityi(magnitude, angle, otherAngle) {
        super.addVelocityi(magnitude, angle, otherAngle)
        this.limitXYToForwardAndReverseMaxVelocity()
    }
}

import "./VelocityInterface" for VelocityInterface

