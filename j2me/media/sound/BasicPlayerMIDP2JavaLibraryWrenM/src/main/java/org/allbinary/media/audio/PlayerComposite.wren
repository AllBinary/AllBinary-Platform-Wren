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
// package org.allbinary.media.audio

import "../../../../allbinary_java" for JObject, JException, JR

//BasicPlayerMIDP2
class PlayerComposite is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  player { _player }
  player=(value) { _player = value }
  timeElapsedHelper { _timeElapsedHelper }
  timeElapsedHelper=(value) { _timeElapsedHelper = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }

  initFields_PlayerComposite() {
    _logUtil = null
    _commonStrings = null
    _player = null
    _timeElapsedHelper = null
    _gameTickTimeDelayHelper = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        _timeElapsedHelper = TimeDelayHelper.new(0)
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
  }
    

    construct new(player, repeatTime) {
    super()
    initFields_PlayerComposite()
        _player = player
        _timeElapsedHelper.delay = repeatTime
    }
    

    addPlayerListener(playerListener) {
        _player.addPlayerListener(playerListener)
    }
    

    removePlayerListener(playerListener) {
        _player.removePlayerListener(playerListener)
    }
    

    close() {
        _player.close()
    }
    

    deallocate() {
        _player.deallocate()
    }
    

    getContentType() {
        return _player.getContentType()
    }
    

    getDuration() {
        return _player.getDuration()
    }
    

    getMediaTime() {
        return _player.getMediaTime()
    }
    

    getTimeBase() {
        return (_player).getTimeBase()
    }
    

    setTimeBase(timeBase) {
        (_player).setTimeBase(timeBase)
    }
    

    prefetch() {
        var jerror0 = Fiber.new {
            _player.prefetch()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, "prefetch", e)
        }
    }
    

    realize() {
        var jerror1 = Fiber.new {
            _player.realize()
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            _logUtil.put(_commonStrings.EXCEPTION, this, "realize", e)
        }
    }
    

    getState() {
        return _player.getState()
    }
    

    setLoopCount(count) {
        _player.setLoopCount(count)
    }
    

    setMediaTime(now) {
        var jerror2 = Fiber.new {
            return _player.setMediaTime(now)
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            _logUtil.put(_commonStrings.EXCEPTION, this, "setMediaTime", e)
            return -1
        }
    }
    

    start() {
        var jerror3 = Fiber.new {
            if (_timeElapsedHelper.isTime(_gameTickTimeDelayHelper.startTime)) {
                _player.start()
            }
        }.try()
        if (jerror3 != null) {
            var e = jerror3
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.START_METHOD_NAME, e)
        }
    }
    

    stop() {
        var jerror4 = Fiber.new {
            _player.stop()
        }.try()
        if (jerror4 != null) {
            var e = jerror4
            _logUtil.put(_commonStrings.EXCEPTION, this, "stop", e)
        }
    }
    

    getControl(controlType) {
        return _player.getControl(controlType)
    }
    

    getControls() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    setVolume(leftVolume, rightVolume) {
        var controllable2 = (_player)
        controllable2.setVolume(leftVolume, rightVolume)
    }
    

    getPlayerP() {
        return _player
    }
}

import "../../../../javax/microedition/media/Control" for Control
import "../../../../javax/microedition/media/Controllable" for Controllable
import "../../../../javax/microedition/media/MediaException" for MediaException
import "../../../../javax/microedition/media/Player" for Player
import "../../../../javax/microedition/media/PlayerListener" for PlayerListener
import "../../../../javax/microedition/media/TimeBase" for TimeBase
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "./TimeBaseInterface" for TimeBaseInterface
import "./Controllable2" for Controllable2

