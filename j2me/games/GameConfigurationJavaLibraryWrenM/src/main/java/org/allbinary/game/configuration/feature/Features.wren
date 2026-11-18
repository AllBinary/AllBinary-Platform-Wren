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
// package org.allbinary.game.configuration.feature

import "../../../../../allbinary_java" for JObject, JException, JR

class Features is JObject {
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
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  list { _list }
  list=(value) { _list = value }
  defaultList { _defaultList }
  defaultList=(value) { _defaultList = value }

  initFields_Features() {
    _logUtil = null
    _commonStrings = null
    _list = null
    _defaultList = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
  }
    

    static getInstance() {
        if ((Features.SINGLETON == NullUtil.getInstance().NULL_OBJECT)) {
            Features.SINGLETON = Features.new()
        }
        return Features.SINGLETON
    }
    

    construct new() {
    super()
    initFields_Features()
        _list = BasicArrayListD.new()
        _defaultList = BasicArrayListD.new()
        this.init()
    }
    

    addDefault(gameFeature) {
        this.add(gameFeature)
        if (!_defaultList.contains(gameFeature)) {
            _defaultList.add(gameFeature)
        }
    }
    

    add(gameFeature) {
        if (!_list.contains(gameFeature)) {
            _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, _commonStrings.ADD)
            _list.add(gameFeature)
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent.new(gameFeature, gameFeature.toString()))
        }
    }
    

    removeDefault(gameFeature) {
        _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.toString()).toString(), this, "removeDefault")
        this.remove(gameFeature)
        _defaultList.remove(gameFeature)
    }
    

    remove(gameFeature) {
        if (_list.contains(gameFeature)) {
            _logUtil.putF(_commonStrings.START, this, _commonStrings.REMOVE)
            _list.remove(gameFeature)
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent.new(gameFeature, gameFeature.toString()))
        }
    }
    

    init() {
        var jerror0 = Fiber.new {
            var gameFeatureFactory = GameFeatureFactory.getInstance()
            var inputFeatureFactory = InputFeatureFactory.getInstance()
            var sensorFeatureFactory = SensorFeatureFactory.getInstance()
            var touchFeatureFactory = TouchFeatureFactory.getInstance()
            this.addDefault(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
            this.addDefault(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
            this.addDefault(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
            this.addDefault(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
            this.addDefault(inputFeatureFactory.MULTI_KEY_PRESS)
            this.addDefault(inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES)
            this.addDefault(gameFeatureFactory.SCREEN_SHAKE)
            this.addDefault(gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            var operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
            if (operatingSystemInterface.isOverScan()) {
                this.addDefault(sensorFeatureFactory.NO_ORIENTATION)
                this.addDefault(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            } else {
                this.addDefault(sensorFeatureFactory.ORIENTATION_SENSORS)
                this.addDefault(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            }
            this.addDefault(touchFeatureFactory.TOUCH_ENABLED)
            this.addDefault(MainFeatureFactory.getInstance().FULL_SCREEN)
            this.addDefault(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.putOE(_commonStrings.EXCEPTION, this, _commonStrings.INIT, e)
        }
    }
    

    isDefault(gameFeature) {
        return _defaultList.contains(gameFeature)
    }
    

    isFeature(gameFeature) {
        return _list.contains(gameFeature)
    }
    

    toggle(gameFeature) {
        if (this.isFeature(gameFeature)) {
            this.remove(gameFeature)
        } else {
            this.add(gameFeature)
        }
    }
}

import "../../../../../org/allbinary/game/configuration/event/GameFeatureEvent" for GameFeatureEvent
import "../../../../../org/allbinary/game/configuration/event/GameFeatureEventHandler" for GameFeatureEventHandler
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/system/os/GenericOperatingSystem" for GenericOperatingSystem
import "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" for OperatingSystemFactory
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./Feature" for Feature
import "./GameFeatureFactory" for GameFeatureFactory
import "./InputFeatureFactory" for InputFeatureFactory
import "./SensorFeatureFactory" for SensorFeatureFactory
import "./TouchFeatureFactory" for TouchFeatureFactory
import "./MainFeatureFactory" for MainFeatureFactory

