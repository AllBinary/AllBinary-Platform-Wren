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

class BasicBuildGameInitializerFactory is JObject {
    static NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY {
    if (__NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_set == null) {
      __NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_set = true
      __NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = BasicBuildGameInitializerFactory.new()
    }
    return __NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
  }
  static NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY=(value) {
    __NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY_set = true
    __NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = value
  }

  initFields_BasicBuildGameInitializerFactory() {
  }

  construct new() {
    super()
    initFields_BasicBuildGameInitializerFactory()
  }
    

    getInstance() {
        return BaseGameInitialization.NULL_BASE_GAME_INITIALIZATION
    }
}

import "./GameInitializationInterfaceFactoryInterface" for GameInitializationInterfaceFactoryInterface
import "./BaseGameInitialization" for BaseGameInitialization
import "./GameInitializationInterface" for GameInitializationInterface

