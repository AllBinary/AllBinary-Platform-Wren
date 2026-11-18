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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR

class LocalPlayerInputIdFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = LocalPlayerInputIdFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  MAX_NUMBER_OF_PLAYERS { _MAX_NUMBER_OF_PLAYERS }
  MAX_NUMBER_OF_PLAYERS=(value) { _MAX_NUMBER_OF_PLAYERS = value }
  MAX_FAST_DEVICEID { _MAX_FAST_DEVICEID }
  MAX_FAST_DEVICEID=(value) { _MAX_FAST_DEVICEID = value }
  deviceIdToplayerId { _deviceIdToplayerId }
  deviceIdToplayerId=(value) { _deviceIdToplayerId = value }
  playerIdToDeviceId { _playerIdToDeviceId }
  playerIdToDeviceId=(value) { _playerIdToDeviceId = value }
  playersInPlay { _playersInPlay }
  playersInPlay=(value) { _playersInPlay = value }
  totalDevicesMapped { _totalDevicesMapped }
  totalDevicesMapped=(value) { _totalDevicesMapped = value }

  initFields_LocalPlayerInputIdFactory() {
    _logUtil = null
    _MAX_NUMBER_OF_PLAYERS = 0
    _MAX_FAST_DEVICEID = 0
    _deviceIdToplayerId = null
    _playerIdToDeviceId = null
    _playersInPlay = null
    _totalDevicesMapped = 0
        _logUtil = LogUtil.getInstance()
        _MAX_NUMBER_OF_PLAYERS = 6
        _MAX_FAST_DEVICEID = 65
        _deviceIdToplayerId = List.filled(_MAX_FAST_DEVICEID, 0)
        _playerIdToDeviceId = List.filled(_MAX_NUMBER_OF_PLAYERS, 0)
        _playersInPlay = List.filled(_MAX_NUMBER_OF_PLAYERS, false)
        _totalDevicesMapped = 0
  }
    

    construct new() {
    super()
    initFields_LocalPlayerInputIdFactory()
        if (true) {
            var index = JR.i32(_deviceIdToplayerId.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _deviceIdToplayerId[index] = -1
            }
        }
    }
    

    static getInstance() {
        return LocalPlayerInputIdFactory.instance
    }
    

    getDeviceId(playerInputId) {
        return _playerIdToDeviceId[playerInputId]
    }
    

    getPlayerForDevice(deviceId) {
        var index = 0
        if ((deviceId < _MAX_FAST_DEVICEID)) {
            var playerInputId = _deviceIdToplayerId[deviceId]
            if ((playerInputId != -1)) {
                return playerInputId
            }
        } else {
            if (true) {
                index = JR.i32(_totalDevicesMapped - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index - 1)
                    }
                    jfirst = false
                    if (!((index >= 0))) break
                if ((_playerIdToDeviceId[index] == deviceId)) {
                    return index
                }
                }
            }
        }
        index = _totalDevicesMapped
        if ((deviceId < _MAX_FAST_DEVICEID)) {
            _deviceIdToplayerId[deviceId] = index
        } else {
            _logUtil.putF(StringMaker.new().append("Added DeviceId: ").appendint(deviceId).append(" beyond fast Id list").toString(), this, "getPlayerForDevice")
        }
        _playerIdToDeviceId[index] = deviceId
        AnalogLocationInputFactory.getInstance().addPlayer(_totalDevicesMapped)
        _totalDevicesMapped = JR.i32(_totalDevicesMapped + 1)
        _logUtil.putF(StringMaker.new().append("Added DeviceId: ").appendint(deviceId).append(" at: ").appendint(index).append(" Total: ").appendint(_totalDevicesMapped).toString(), this, "getPlayerForDevice")
        return index
    }
    

    getTotalDevicesInPlay() {
        var total = 0
        if (true) {
            var index = JR.i32(_totalDevicesMapped - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if ((_playersInPlay[index] == true)) {
                total = JR.i32(total + 1)
            }
            }
        }
        return total
    }
    

    isPlayerInPlay(playerInputId) {
        return _playersInPlay[playerInputId]
    }
    

    setPlayerInPlay(playerInputId) {
        _logUtil.putF(StringMaker.new().append("Setting PlayerInPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerInPlay")
        _playersInPlay[playerInputId] = true
    }
    

    setPlayerOutOfPlay(playerInputId) {
        _logUtil.putF(StringMaker.new().append("Setting PlayerOutOfPlay with playerInputId: ").appendint(playerInputId).toString(), this, "setPlayerOutOfPlay")
        _playersInPlay[playerInputId] = false
    }
    

    getPlayersInPlay() {
        return _playersInPlay
    }
}

import "../../../../org/allbinary/game/input/analog/AnalogLocationInputFactory" for AnalogLocationInputFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker

