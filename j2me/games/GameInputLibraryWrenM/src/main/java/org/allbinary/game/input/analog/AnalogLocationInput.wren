// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

import "../../../../../allbinary_java" for JObject, JException, JR

class AnalogLocationInput is JObject {
    static NULL_ANALOG_LOCATION_INPUT {
    if (__NULL_ANALOG_LOCATION_INPUT_set == null) {
      __NULL_ANALOG_LOCATION_INPUT_set = true
      __NULL_ANALOG_LOCATION_INPUT = AnalogLocationInput.new(-1)
    }
    return __NULL_ANALOG_LOCATION_INPUT
  }
  static NULL_ANALOG_LOCATION_INPUT=(value) {
    __NULL_ANALOG_LOCATION_INPUT_set = true
    __NULL_ANALOG_LOCATION_INPUT = value
  }
  playerId { _playerId }
  playerId=(value) { _playerId = value }
  customGPoint { _customGPoint }
  customGPoint=(value) { _customGPoint = value }
  rz { _rz }
  rz=(value) { _rz = value }
  rightTrigger { _rightTrigger }
  rightTrigger=(value) { _rightTrigger = value }
  leftTrigger { _leftTrigger }
  leftTrigger=(value) { _leftTrigger = value }

  initFields_AnalogLocationInput() {
    _playerId = 0
    _customGPoint = null
    _rz = 0
    _rightTrigger = 0
    _leftTrigger = 0
        
        
        _rz = 0
        _rightTrigger = 0
        _leftTrigger = 0
  }
    

    construct new(playerId) {
    super()
    initFields_AnalogLocationInput()
        _playerId = playerId
        _customGPoint = CustomGPoint.new(0, 0, 0)
    }
    

    getPlayerId() {
        return _playerId
    }
    

    getCustomGPoint() {
        return _customGPoint
    }
    

    getRz() {
        return _rz
    }
    

    setRz(rz) {
        _rz = rz
    }
    

    getRightTrigger() {
        return _rightTrigger
    }
    

    setRightTrigger(rightTrigger) {
        _rightTrigger = rightTrigger
    }
    

    getLeftTrigger() {
        return _leftTrigger
    }
    

    setLeftTrigger(leftTrigger) {
        _leftTrigger = leftTrigger
    }
}

import "../../../../../org/allbinary/graphics/CustomGPoint" for CustomGPoint

