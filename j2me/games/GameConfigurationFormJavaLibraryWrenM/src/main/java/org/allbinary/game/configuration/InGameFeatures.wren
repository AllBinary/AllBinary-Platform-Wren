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
import "../../../../org/allbinary/init/Init" for Init

class InGameFeatures is Init {

  initFields_InGameFeatures() {
  }

  construct new() {
    super()
    initFields_InGameFeatures()
  }
    

    init() {
        var LABEL = "Screen Buttons"
        var orientationData = OrientationData.getInstance()
        var exclusiveOrientationSensorVector = GameFeatureChoiceGroups.getExclusiveInstance().get().get(orientationData.ORIENTATION_SENSOR_INPUT)
        var inGameFeatureChoiceGroups = InGameFeatureChoiceGroups.getExclusiveInstance()
        if ((exclusiveOrientationSensorVector != null)) {
            var inGameExclusiveOrientationSensorVectorCanBeNull = inGameFeatureChoiceGroups.get().get(orientationData.ORIENTATION_SENSOR_INPUT)
            if ((inGameExclusiveOrientationSensorVectorCanBeNull == null)) {
                this.addToInGameMenu()
            } else {
                var inGameExclusiveOrientationSensorVector = inGameExclusiveOrientationSensorVectorCanBeNull
                if ((inGameExclusiveOrientationSensorVector.size() == 0)) {
                    this.addToInGameMenu()
                }
            }
        }
        var features = Features.getInstance()
        if (((features.isFeature(TouchFeatureFactory.getInstance().SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS)) || features.isFeature(TouchFeatureFactory.getInstance().HIDE_SCREEN_BUTTONS))) {
            var exclusiveScreenButtonsVector = BasicArrayListD.new()
            var touchFeatureFactory = TouchFeatureFactory.getInstance()
            exclusiveScreenButtonsVector.add(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            inGameFeatureChoiceGroups.add(LABEL, exclusiveScreenButtonsVector)
        }
    }
    

    addToInGameMenu() {
        var orientationData = OrientationData.getInstance()
        var inGameExclusiveOrientationSensorVector = BasicArrayListD.new()
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().ORIENTATION_SENSORS)
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().NO_ORIENTATION)
        InGameFeatureChoiceGroups.getExclusiveInstance().add(orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector)
    }
    

    isAny() {
        var features = Features.getInstance()
        var touchFeatureFactory = TouchFeatureFactory.getInstance()
        if (((features.isFeature(touchFeatureFactory.SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) || features.isFeature(touchFeatureFactory.HIDE_SCREEN_BUTTONS))) {
            return true
        }
        var exclusiveOrientationSensorVector = GameFeatureChoiceGroups.getExclusiveInstance().get().get(OrientationData.getInstance().ORIENTATION_SENSOR_INPUT)
        if ((exclusiveOrientationSensorVector != null)) {
            return true
        }
        return false
    }
}

import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" for GameFeatureChoiceGroups
import "../../../../org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups" for InGameFeatureChoiceGroups
import "../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" for SensorFeatureFactory
import "../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory" for TouchFeatureFactory
import "../../../../org/allbinary/input/gyro/OrientationData" for OrientationData
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

