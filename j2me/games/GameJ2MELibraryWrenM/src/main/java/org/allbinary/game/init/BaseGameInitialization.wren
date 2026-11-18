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

class BaseGameInitialization is JObject {
    static NULL_BASE_GAME_INITIALIZATION {
    if (__NULL_BASE_GAME_INITIALIZATION_set == null) {
      __NULL_BASE_GAME_INITIALIZATION_set = true
      __NULL_BASE_GAME_INITIALIZATION = BaseGameInitialization.new(List.filled(0, null), 0)
    }
    return __NULL_BASE_GAME_INITIALIZATION
  }
  static NULL_BASE_GAME_INITIALIZATION=(value) {
    __NULL_BASE_GAME_INITIALIZATION_set = true
    __NULL_BASE_GAME_INITIALIZATION = value
  }
  resourceInitializationArray { _resourceInitializationArray }
  resourceInitializationArray=(value) { _resourceInitializationArray = value }
  portion { _portion }
  portion=(value) { _portion = value }
  initialized { _initialized }
  initialized=(value) { _initialized = value }
  EARLY_RESOURCES { _EARLY_RESOURCES }
  EARLY_RESOURCES=(value) { _EARLY_RESOURCES = value }
  GAME_RESOURCES { _GAME_RESOURCES }
  GAME_RESOURCES=(value) { _GAME_RESOURCES = value }
  EARLY_CHANGABLE_RESOURCES { _EARLY_CHANGABLE_RESOURCES }
  EARLY_CHANGABLE_RESOURCES=(value) { _EARLY_CHANGABLE_RESOURCES = value }
  GAME_CHANGABLE_RESOURCES { _GAME_CHANGABLE_RESOURCES }
  GAME_CHANGABLE_RESOURCES=(value) { _GAME_CHANGABLE_RESOURCES = value }
  gameInitialized { _gameInitialized }
  gameInitialized=(value) { _gameInitialized = value }
  allLoaded { _allLoaded }
  allLoaded=(value) { _allLoaded = value }

  initFields_BaseGameInitialization() {
    _resourceInitializationArray = null
    _portion = 0
    _initialized = false
    _EARLY_RESOURCES = 0
    _GAME_RESOURCES = 0
    _EARLY_CHANGABLE_RESOURCES = 0
    _GAME_CHANGABLE_RESOURCES = 0
    _gameInitialized = false
    _allLoaded = false
        
        
        _initialized = false
        _EARLY_RESOURCES = 0
        _GAME_RESOURCES = 1
        _EARLY_CHANGABLE_RESOURCES = 2
        _GAME_CHANGABLE_RESOURCES = 3
        _gameInitialized = false
        _allLoaded = false
  }
    

    construct new(resourceInitializationArray, portion) {
    super()
    initFields_BaseGameInitialization()
        _resourceInitializationArray = resourceInitializationArray
        _portion = portion
    }
    

    initKey(portion) {
    }
    

    initKeyMapping(abeClientInformation, portion) {
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(InputFeatureFactory.getInstance().INPUT_MAPPING)) {
            PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().init(abeClientInformation)
            ProgressCanvasFactory.getInstance().addNormalPortion(50, "Game Keys")
            ChangedGameFeatureListener.getInstance().remove(InputFeatureFactory.getInstance().INPUT_MAPPING)
        }
    }
    

    init(abeClientInformation, commandListener, level) {
        var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if ((!this.isInitialized() && (((level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()) || (level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()))))) {
            var localPortion = 40
            if ((level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel())) {
                localPortion = 8
            }
            this.setInitialized(true)
            this.initKey(this.getPortion())
            this.initKeyMapping(abeClientInformation, this.getPortion())
            GameKeyEventFactory.getInstance().init()
            var progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Game Key Events")
            BasicTouchInputFactory.getInstance().init(PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
            CancelTouchButtonInputFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Touch Input")
            CompleteMotionGestureInputToGameMotionGestureInput.getInstance().init()
            progressCanvas.addNormalPortion(localPortion, "Motion Input")
            GameFeatureImageCacheFactory.init()
            progressCanvas.addNormalPortion(localPortion, "Image Cache")
            _resourceInitializationArray[_EARLY_RESOURCES].init()
        }
    }
    

    resourceInitialization(level) {
        var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if ((this.resourceAnimationChange() && (level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()))) {
            this.clearResources()
            _resourceInitializationArray[_EARLY_CHANGABLE_RESOURCES].init()
        }
        if ((this.resourceAnimationChange() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()))) {
            if (_allLoaded) {
                this.clearResources()
            }
            if ((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size() == 0)) {
                _resourceInitializationArray[_EARLY_CHANGABLE_RESOURCES].init()
            }
            _resourceInitializationArray[_GAME_CHANGABLE_RESOURCES].init()
            _allLoaded = true
        }
    }
    

    resourceAnimationChange() {
        var changedGameFeatureListener = ChangedGameFeatureListener.getInstance()
        var gameConfigurationCentral = GameConfigurationCentral.getInstance()
        if (changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE)) {
            return true
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)) {
            return true
        }
        return false
    }
    

    clearResources() {
        _allLoaded = false
        GameFeatureImageCacheFactory.releaseAll()
        var featuredAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredAnimationInterfaceFactoryInterfaceFactory.clear()
        FeaturedResourceRelativeRelationshipFactory.getInstance().clear()
    }
    

    setGameInitialized(gameInitialized) {
        _gameInitialized = gameInitialized
    }
    

    isGameInitialized() {
        return _gameInitialized
    }
    

    getPortion() {
        return _portion
    }
    

    setInitialized(initialized) {
        _initialized = initialized
    }
    

    isInitialized() {
        return _initialized
    }
}

import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../org/allbinary/game/configuration/GameConfigurationCentral" for GameConfigurationCentral
import "../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" for ChangedGameFeatureListener
import "../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" for InputFeatureFactory
import "../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory
import "../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory" for FeaturedResourceRelativeRelationshipFactory
import "../../../../org/allbinary/game/resource/ResourceInitialization" for ResourceInitialization
import "../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/image/GameFeatureImageCacheFactory" for GameFeatureImageCacheFactory
import "../../../../org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput" for CompleteMotionGestureInputToGameMotionGestureInput
import "../../../../org/allbinary/input/motion/button/BasicTouchInputFactory" for BasicTouchInputFactory
import "../../../../org/allbinary/input/motion/button/CancelTouchButtonInputFactory" for CancelTouchButtonInputFactory
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "./GameInitializationInterface" for GameInitializationInterface

