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

class GameConfigurationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameConfigurationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  GAUGE_UPDATE { _GAUGE_UPDATE }
  GAUGE_UPDATE=(value) { _GAUGE_UPDATE = value }
  FROM { _FROM }
  FROM=(value) { _FROM = value }
  TO { _TO }
  TO=(value) { _TO = value }
  COMPETITION_VALUE { _COMPETITION_VALUE }
  COMPETITION_VALUE=(value) { _COMPETITION_VALUE = value }

  initFields_GameConfigurationUtil() {
    _logUtil = null
    _commonStrings = null
    _GAUGE_UPDATE = null
    _FROM = null
    _TO = null
    _COMPETITION_VALUE = 0
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _GAUGE_UPDATE = "Gauge Update: "
        _FROM = " from: "
        _TO = " to: "
        _COMPETITION_VALUE = 1
  }

  construct new() {
    super()
    initFields_GameConfigurationUtil()
  }
    

    static getInstance() {
        return GameConfigurationUtil.instance
    }
    

    change(gameOptionsForm, gauge) {
        this.update(gauge)
        var gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        var gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        this.updateChallange(gameOptionsForm, gameConfiguration)
    }
    

    update(gauge) {
        var gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        var gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        var value = smallIntegerSingletonFactory.getAt((gauge.getValue() + gameConfiguration.getMinValue().intValue()))
        var stringBuffer = StringMaker.new()
        stringBuffer.append(_GAUGE_UPDATE)
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(_FROM)
        stringBuffer.appendint(JR.i32(gameConfiguration.getValue().intValue()))
        stringBuffer.append(_TO)
        stringBuffer.appendint(JR.i32(value.intValue()))
        _logUtil.putF(stringBuffer.toString(), this, _commonStrings.UPDATE)
        gameConfiguration.setValue(value)
    }
    

    setDefault(gauge) {
        var gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        var gameConfiguration = gameConfigurationSingleton.getInstanceByName(gauge.getLabel())
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Gauge Default: ")
        stringBuffer.append(gameConfiguration.getName())
        stringBuffer.append(_TO)
        stringBuffer.appendint(JR.i32(gameConfiguration.getDefaultValue().intValue()))
        _logUtil.putF(stringBuffer.toString(), this, "setDefault")
        gauge.setValue((gameConfiguration.getDefaultValue().intValue() - gameConfiguration.getMinValue().intValue()))
        gameConfiguration.setValue(gameConfiguration.getDefaultValue())
    }
    

    updateChallange(gameOptionsForm, gameConfiguration) {
        var gameConfigurationSingleton = GameConfigurationSingleton.getInstance()
        var gameConfigurationCentral = GameConfigurationCentral.getInstance()
        if ((gameConfiguration == gameConfigurationCentral.CHALLENGE_LEVEL)) {
            _logUtil.putF(_commonStrings.START, this, "updateChallange")
            gameConfigurationCentral.COLLIDE_DAMAGE.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.setValue(gameConfiguration.getValue())
            var size = gameOptionsForm.size()
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                var item = gameOptionsForm.get(index)
                if ((item is GameConfigurationGauge)) {
                    var gauge = item
                    var name = item.getLabel()
                    var nextGameConfiguration = gameConfigurationSingleton.getInstanceByName(name)
                    if ((nextGameConfiguration == gameConfigurationCentral.COLLIDE_DAMAGE)) {
                        gauge.setValue((gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() - gameConfiguration.getMinValue().intValue()))
                    } else if ((nextGameConfiguration == gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL)) {
                        gauge.setValue((gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue()))
                    } else if ((nextGameConfiguration == gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL)) {
                        gauge.setValue((gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue()))
                    } else if ((nextGameConfiguration == gameConfigurationCentral.SPEED_CHALLENGE_LEVEL)) {
                        gauge.setValue((gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue() - gameConfiguration.getMinValue().intValue()))
                    }
                }
                }
            }
        }
    }
    

    updateCompetitionValue() {
        _logUtil.putF(_commonStrings.START, this, "updateCompetitionValue")
        var gameConfigurationCentral = GameConfigurationCentral.getInstance()
        _COMPETITION_VALUE = (((gameConfigurationCentral.COLLIDE_DAMAGE.getValue().intValue() + gameConfigurationCentral.ATTACK_CHALLENGE_LEVEL.getValue().intValue()) + gameConfigurationCentral.DURABILITY_CHALLENGE_LEVEL.getValue().intValue()) + gameConfigurationCentral.SPEED_CHALLENGE_LEVEL.getValue().intValue())
        _COMPETITION_VALUE = (JR.shr(_COMPETITION_VALUE, 2))
    }
    

    getCompetitionValue() {
        return _COMPETITION_VALUE
    }
}

import "../../../../javax/microedition/lcdui/Item" for Item
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Integer" for Integer
import "./GameConfigurationSingleton" for GameConfigurationSingleton
import "./GameConfiguration" for GameConfiguration
import "./GameOptionsForm" for GameOptionsForm
import "./GameConfigurationGauge" for GameConfigurationGauge
import "./GameConfigurationCentral" for GameConfigurationCentral

