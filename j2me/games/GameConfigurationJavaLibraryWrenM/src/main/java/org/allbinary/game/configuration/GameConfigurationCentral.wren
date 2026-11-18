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
// package org.allbinary.game.configuration

import "../../../../allbinary_java" for JObject, JException, JR

class GameConfigurationCentral is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NullUtil.getInstance().NULL_OBJECT
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  SCALE { _SCALE }
  SCALE=(value) { _SCALE = value }
  ORIENTATION { _ORIENTATION }
  ORIENTATION=(value) { _ORIENTATION = value }
  SENSOR_UPDATE_RATE { _SENSOR_UPDATE_RATE }
  SENSOR_UPDATE_RATE=(value) { _SENSOR_UPDATE_RATE = value }
  VIBRATION { _VIBRATION }
  VIBRATION=(value) { _VIBRATION = value }
  CHALLENGE_LEVEL { _CHALLENGE_LEVEL }
  CHALLENGE_LEVEL=(value) { _CHALLENGE_LEVEL = value }
  COLLIDE_DAMAGE { _COLLIDE_DAMAGE }
  COLLIDE_DAMAGE=(value) { _COLLIDE_DAMAGE = value }
  DURABILITY_CHALLENGE_LEVEL { _DURABILITY_CHALLENGE_LEVEL }
  DURABILITY_CHALLENGE_LEVEL=(value) { _DURABILITY_CHALLENGE_LEVEL = value }
  SPEED_CHALLENGE_LEVEL { _SPEED_CHALLENGE_LEVEL }
  SPEED_CHALLENGE_LEVEL=(value) { _SPEED_CHALLENGE_LEVEL = value }
  ATTACK_CHALLENGE_LEVEL { _ATTACK_CHALLENGE_LEVEL }
  ATTACK_CHALLENGE_LEVEL=(value) { _ATTACK_CHALLENGE_LEVEL = value }
  CONTROL_LEVEL { _CONTROL_LEVEL }
  CONTROL_LEVEL=(value) { _CONTROL_LEVEL = value }
  PLAYER_INPUT_WAIT { _PLAYER_INPUT_WAIT }
  PLAYER_INPUT_WAIT=(value) { _PLAYER_INPUT_WAIT = value }
  SPEED { _SPEED }
  SPEED=(value) { _SPEED = value }
  SOUND_VOLUME { _SOUND_VOLUME }
  SOUND_VOLUME=(value) { _SOUND_VOLUME = value }
  MAX_GAME_OBJECTS { _MAX_GAME_OBJECTS }
  MAX_GAME_OBJECTS=(value) { _MAX_GAME_OBJECTS = value }
  MAX_LAYERS { _MAX_LAYERS }
  MAX_LAYERS=(value) { _MAX_LAYERS = value }
  gameControlFidelity { _gameControlFidelity }
  gameControlFidelity=(value) { _gameControlFidelity = value }

  initFields_GameConfigurationCentral() {
    _logUtil = null
    _SCALE = null
    _ORIENTATION = null
    _SENSOR_UPDATE_RATE = null
    _VIBRATION = null
    _CHALLENGE_LEVEL = null
    _COLLIDE_DAMAGE = null
    _DURABILITY_CHALLENGE_LEVEL = null
    _SPEED_CHALLENGE_LEVEL = null
    _ATTACK_CHALLENGE_LEVEL = null
    _CONTROL_LEVEL = null
    _PLAYER_INPUT_WAIT = null
    _SPEED = null
    _SOUND_VOLUME = null
    _MAX_GAME_OBJECTS = null
    _MAX_LAYERS = null
    _gameControlFidelity = 0
        _logUtil = LogUtil.getInstance()
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        _gameControlFidelity = 36
  }
    

    static getInstance() {
        if ((GameConfigurationCentral.SINGLETON == NullUtil.getInstance().NULL_OBJECT)) {
            GameConfigurationCentral.SINGLETON = GameConfigurationCentral.new()
        }
        return GameConfigurationCentral.SINGLETON
    }
    

    construct new() {
    super()
    initFields_GameConfigurationCentral()
        var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        _SCALE = GameConfiguration.new("Scale", smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(2), smallIntegerSingletonFactory.getAt(3))
        _ORIENTATION = GameConfiguration.new("Orientation", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(8))
        _SENSOR_UPDATE_RATE = GameConfiguration.new("Sensor Update Rate", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3))
        _VIBRATION = GameConfiguration.new("Vibration", smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(3))
        _CHALLENGE_LEVEL = GameConfiguration.new("Global Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        _COLLIDE_DAMAGE = GameConfiguration.new("Collide Damage Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        _DURABILITY_CHALLENGE_LEVEL = GameConfiguration.new("Enemy Durability Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        _SPEED_CHALLENGE_LEVEL = GameConfiguration.new("Enemy Speed Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        _ATTACK_CHALLENGE_LEVEL = GameConfiguration.new("Enemy Attack Challenge Level", smallIntegerSingletonFactory.getAt(3), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        _CONTROL_LEVEL = GameConfiguration.new("Control Fidelity", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        _PLAYER_INPUT_WAIT = GameConfiguration.new("Input Wait", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        _SPEED = GameConfiguration.new("Game Speed (Device Specific)", smallIntegerSingletonFactory.getAt(5), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(10))
        _SOUND_VOLUME = GameConfiguration.new("Sound Volume", smallIntegerSingletonFactory.getAt(6), smallIntegerSingletonFactory.getAt(0), smallIntegerSingletonFactory.getAt(10))
        _MAX_GAME_OBJECTS = GameConfiguration.new("Max Game Objects", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50))
        _MAX_LAYERS = GameConfiguration.new("Max Layers", smallIntegerSingletonFactory.getAt(20), smallIntegerSingletonFactory.getAt(1), smallIntegerSingletonFactory.getAt(50))
    }
    

    load(abeClientInformation) {
        var commonStrings = CommonStrings.getInstance()
        var jerror0 = Fiber.new {
            var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            var keyValuePersistance = GameConfigurationPersistanceSingleton.getInstance()
            keyValuePersistance.clear()
            keyValuePersistance.loadAll(abeClientInformation)
            var list = keyValuePersistance.getIds()
            if ((list.size() > 0)) {
                var hashtable = keyValuePersistance.get(0)
                var anyType = _SCALE.getName()
                var value = hashtable.get(anyType)
                _SCALE.setValue(smallIntegerSingletonFactory.getAt(value.intValue()))
            } else {
                _logUtil.putF("No Game Configuration To Load", this, commonStrings.LOAD)
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.LOAD, e)
        }
    }
    

    setGameControlFidelity(gameControlFidelity) {
        _gameControlFidelity = gameControlFidelity
    }
    

    getGameControlFidelity() {
        return _gameControlFidelity
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        var commonStrings = CommonSeps.getInstance()
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_SCALE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_SCALE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_ORIENTATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_ORIENTATION.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_SENSOR_UPDATE_RATE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_SENSOR_UPDATE_RATE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_VIBRATION.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_VIBRATION.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_COLLIDE_DAMAGE.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_COLLIDE_DAMAGE.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_DURABILITY_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_DURABILITY_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_SPEED_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_SPEED_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_ATTACK_CHALLENGE_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_ATTACK_CHALLENGE_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_CONTROL_LEVEL.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_CONTROL_LEVEL.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_SPEED.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_SPEED.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_MAX_GAME_OBJECTS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_MAX_GAME_OBJECTS.getValue().intValue()))
        stringBuffer.append(commonStrings.COMMA_SEP)
        stringBuffer.append(_MAX_LAYERS.getName())
        stringBuffer.append(commonStrings.EQUALS)
        stringBuffer.appendint(JR.i32(_MAX_LAYERS.getValue().intValue()))
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton" for GameConfigurationPersistanceSingleton
import "../../../../org/allbinary/game/configuration/persistance/KeyValuePersistance" for KeyValuePersistance
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../java/lang/Integer" for Integer
import "./GameConfiguration" for GameConfiguration

