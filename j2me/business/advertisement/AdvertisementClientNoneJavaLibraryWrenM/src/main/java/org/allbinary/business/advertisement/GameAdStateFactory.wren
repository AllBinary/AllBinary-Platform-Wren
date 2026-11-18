// Generated Code Do Not Modify
// package org.allbinary.business.advertisement

import "../../../../allbinary_java" for JObject, JException, JR

class GameAdStateFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameAdStateFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  gameAdStateArray { _gameAdStateArray }
  gameAdStateArray=(value) { _gameAdStateArray = value }
  gameAdState { _gameAdState }
  gameAdState=(value) { _gameAdState = value }

  initFields_GameAdStateFactory() {
    _gameAdStateArray = null
    _gameAdState = null
        _gameAdStateArray = [GameAdState.new(AppNameLicensingAdConfiguration.new())]
        _gameAdState = _gameAdStateArray[0]
  }

  construct new() {
    super()
    initFields_GameAdStateFactory()
  }
    

    static getInstance() {
        return GameAdStateFactory.instance
    }
    

    getCurrentInstance() {
        return _gameAdState
    }
    

    getInstanceForApp(softwareInformation) {
        _gameAdState = _gameAdStateArray[0]
        return _gameAdStateArray[0]
    }
    

    isEnabled() {
        return false
    }
}

import "../../../../org/allbinary/game/GameAdState" for GameAdState
import "../../../../org/allbinary/logic/system/SoftwareInformation" for SoftwareInformation
import "./GameAdStateFactoryInterface" for GameAdStateFactoryInterface
import "./AppNameLicensingAdConfiguration" for AppNameLicensingAdConfiguration
import "./GameAdStateBase" for GameAdStateBase

