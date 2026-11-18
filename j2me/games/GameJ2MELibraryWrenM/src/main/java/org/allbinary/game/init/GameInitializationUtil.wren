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
// package org.allbinary.game.init

import "../../../../allbinary_java" for JObject, JException, JR

class GameInitializationUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GameInitializationUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EVENT { _EVENT }
  EVENT=(value) { _EVENT = value }

  initFields_GameInitializationUtil() {
    _EVENT = null
        _EVENT = GameInitializedEvent.new(this)
  }

  construct new() {
    super()
    initFields_GameInitializationUtil()
  }
    

    initDemo(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface) {
        var mainFeatureFactory = MainFeatureFactory.getInstance()
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory.STATIC)) {
            var gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance()
            var features = Features.getInstance()
            if (features.isFeature(mainFeatureFactory.LOAD_ALL)) {
                this.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
            } else if (features.isFeature(mainFeatureFactory.LOAD_ONDEMAND)) {
                var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
                gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel())
                _EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY)
            } else {
                Fiber.abort(JR.exception("Exception", "No Loading Feature Available"))
            }
            GameInitializedEventHandler.getInstance().fireEvent(_EVENT)
        }
    }
    

    initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface) {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            var gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance()
            var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
            gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel())
            _EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL)
            GameInitializedEventHandler.getInstance().fireEvent(_EVENT)
            ChangedGameFeatureListener.getInstance().remove(MainFeatureFactory.getInstance().STATIC)
        }
    }
    

    static getInstance() {
        return GameInitializationUtil.instance
    }
}

import "../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" for ChangedGameFeatureListener
import "../../../../org/allbinary/game/configuration/event/GameInitializedEvent" for GameInitializedEvent
import "../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler" for GameInitializedEventHandler
import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory
import "../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory
import "../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "./GameInitializationInterface" for GameInitializationInterface
import "./BasicBuildGameInitializerFactory" for BasicBuildGameInitializerFactory

