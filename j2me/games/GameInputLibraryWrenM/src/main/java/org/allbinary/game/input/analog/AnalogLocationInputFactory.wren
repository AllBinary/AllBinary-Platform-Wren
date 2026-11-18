// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

import "../../../../../allbinary_java" for JObject, JException, JR

class AnalogLocationInputFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AnalogLocationInputFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  list { _list }
  list=(value) { _list = value }

  initFields_AnalogLocationInputFactory() {
    _list = null
        _list = BasicArrayListD.new()
  }
    

    static getInstance() {
        return AnalogLocationInputFactory.instance
    }
    

    construct new() {
    super()
    initFields_AnalogLocationInputFactory()
    }
    

    addPlayer(playerInputId) {
        var analogLocationInput = AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT
        if ((playerInputId < _list.size())) {
            analogLocationInput = _list.get(playerInputId)
        }
        if ((analogLocationInput == AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT)) {
            analogLocationInput = AnalogLocationInput.new(playerInputId)
            _list.add(analogLocationInput)
        }
    }
    

    getInstanceForPlayer(playerInputId) {
        return _list.get(playerInputId)
    }
    

    getList() {
        return _list
    }
}

import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./AnalogLocationInput" for AnalogLocationInput

