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

class GameFeatureItemCommandListener is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  gameOptionsForm { _gameOptionsForm }
  gameOptionsForm=(value) { _gameOptionsForm = value }

  initFields_GameFeatureItemCommandListener() {
    _logUtil = null
    _gameOptionsForm = null
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new(gameOptionsForm) {
    super()
    initFields_GameFeatureItemCommandListener()
        _gameOptionsForm = gameOptionsForm
    }
    

    commandAction(command, item) {
        var jerror0 = Fiber.new {
            var itemLabel = item.getLabel()
            _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, MidletStrings.getInstance().COMMAND_ACTION)
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(_gameOptionsForm, item)
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, MidletStrings.getInstance().COMMAND_ACTION, e)
        }
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/Item" for Item
import "../../../../../javax/microedition/lcdui/ItemCommandListener" for ItemCommandListener
import "../../../../../org/allbinary/game/configuration/GameConfigurationGauge" for GameConfigurationGauge
import "../../../../../org/allbinary/game/configuration/GameConfigurationUtil" for GameConfigurationUtil
import "../../../../../org/allbinary/game/configuration/GameOptionsForm" for GameOptionsForm
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/midlet/MidletStrings" for MidletStrings
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

