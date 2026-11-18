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
import "../../../../org/allbinary/graphics/displayable/screen/CommandForm" for CommandForm

class GameOptionsForm is CommandForm {
  meUtil { _meUtil }
  meUtil=(value) { _meUtil = value }

  initFields_GameOptionsForm() {
    _meUtil = null
        _meUtil = MIDPUtil.getInstance()
  }
    

    construct new(commandListener, title, backgrounBasicColor, foregroundBasicColor) {
        super(commandListener, title, backgrounBasicColor, foregroundBasicColor)
        initFields_GameOptionsForm()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.addConfiguration()
        var gameFeatureFormUtil = GameFeatureFormUtil.getInstance()
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getExclusiveInstance().get(), Choice.EXCLUSIVE)
        gameFeatureFormUtil.addChoiceGroup(this, GameFeatureChoiceGroups.getMultipleInstance().get(), Choice.MULTIPLE)
        this.initCommands(commandListener)
        this.setItemStateListener(GameFeatureItemStateListener.new(this))
        this.addTextFieldsIfSimulated()
    }
    

    closeClientInformation(abeClientInformation) {
        super.close()
        this.save(abeClientInformation)
    }
    

    addTextFieldsIfSimulated() {
        var key = OrientationData.getInstance().ORIENTATION_SENSOR_INPUT
        var hashtable = GameFeatureChoiceGroups.getExclusiveInstance().get()
        if ((hashtable != null)) {
            var listCanBeNull = hashtable.get(key)
            if ((listCanBeNull != null)) {
                var list = listCanBeNull
                if (list.contains(SensorFeatureFactory.getInstance().SIMULATED_ORIENTATION_SENSORS)) {
                    this.addTextFields()
                }
            }
        }
    }
    

    addTextFields() {
        var hashtable = GameConfigurationTextInput.getHashtable()
        var size = hashtable.size()
        var objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
        var gameConfigurationTextInput = null
        var textField = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            gameConfigurationTextInput = hashtable.get(objectArray[index])
            textField = TextField.new(gameConfigurationTextInput.getLabel(), gameConfigurationTextInput.getText(), 30, TextField.ANY)
            _meUtil.appendItem(this, textField)
            }
        }
    }
    

    addConfiguration() {
        var METHOD_NAME = "addConfiguration"
        var NAME = "Name: "
        var list = GameConfigurationSingleton.getInstance().getOptionsBasicArrayList()
        var GAUGE_CHANGE = MyCommandsFactory.getInstance().GAUGE_CHANGE
        var stringMaker = StringMaker.new()
        var size = list.size()
        var gameConfiguration = null
        var gauge = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            gameConfiguration = list.objectArray[index]
            stringMaker.delete(0, stringMaker.length())
            this.logUtil.putF(stringMaker.append(NAME).append(gameConfiguration.toString()).toString(), this, METHOD_NAME)
            gauge = GameConfigurationGauge.new(gameConfiguration)
            gauge.setDefaultCommand(GAUGE_CHANGE)
            gauge.setItemCommandListener(GameFeatureItemCommandListener.new(this))
            _meUtil.appendItem(this, gauge)
            }
        }
    }
    

    initCommands(cmdListener) {
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        this.removeAllCommands()
        this.addCommand(gameCommandsFactory.CLOSE_OPTIONS)
        this.addCommand(gameCommandsFactory.DEFAULT_OPTIONS)
        this.setCommandListener(cmdListener)
    }
    

    save(abeClientInformation) {
        var size = this.size()
        var item = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            item = this.get(index)
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().update(item)
            } else if ((item is TextField)) {
                GameConfigurationTextInput.update(item)
            }
            }
        }
        GameConfigurationUtil.getInstance().updateCompetitionValue()
        var hashtable = StdUtil.getInstance().createHashtable()
        var SCALE = GameConfigurationCentral.getInstance().SCALE
        hashtable.put(SCALE.getName(), JR.str(SCALE.getValue().intValue()))
        var keyValuePersistance = GameConfigurationPersistanceSingleton.getInstance()
        keyValuePersistance.clear()
        keyValuePersistance.loadAll(abeClientInformation)
        var list = keyValuePersistance.getIds()
        keyValuePersistance.save(abeClientInformation, hashtable)
        var size2 = list.size()
        var integer = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size2))) break
            integer = list.objectArray[index]
            keyValuePersistance.delete(abeClientInformation, integer.intValue())
            }
        }
    }
}

import "../../../../javax/microedition/lcdui/Choice" for Choice
import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../javax/microedition/lcdui/Item" for Item
import "../../../../javax/microedition/lcdui/TextField" for TextField
import "../../../../org/allbinary/MIDPUtil" for MIDPUtil
import "../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" for GameFeatureChoiceGroups
import "../../../../org/allbinary/game/configuration/feature/GameFeatureFormUtil" for GameFeatureFormUtil
import "../../../../org/allbinary/game/configuration/feature/GameFeatureItemCommandListener" for GameFeatureItemCommandListener
import "../../../../org/allbinary/game/configuration/feature/GameFeatureItemStateListener" for GameFeatureItemStateListener
import "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" for SensorFeatureFactory
import "../../../../org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton" for GameConfigurationPersistanceSingleton
import "../../../../org/allbinary/game/configuration/persistance/KeyValuePersistance" for KeyValuePersistance
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" for MyCommandsFactory
import "../../../../org/allbinary/input/gyro/OrientationData" for OrientationData
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/HashtableUtil" for HashtableUtil
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../java/lang/Integer" for Integer
import "./GameConfigurationTextInput" for GameConfigurationTextInput
import "./GameConfigurationSingleton" for GameConfigurationSingleton
import "./GameConfiguration" for GameConfiguration
import "./GameConfigurationGauge" for GameConfigurationGauge
import "./GameConfigurationUtil" for GameConfigurationUtil
import "./GameConfigurationCentral" for GameConfigurationCentral

