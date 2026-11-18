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
// package org.allbinary.game.layer.resources

import "../../../../../allbinary_java" for JObject, JException, JR

class OnDemandLoader is JObject {
  onDemandResourcesFactory { _onDemandResourcesFactory }
  onDemandResourcesFactory=(value) { _onDemandResourcesFactory = value }
  gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory { _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory }
  gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory=(value) { _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = value }
  resourceAnimationInterfaceFactoryInterfaceFactory { _resourceAnimationInterfaceFactoryInterfaceFactory }
  resourceAnimationInterfaceFactoryInterfaceFactory=(value) { _resourceAnimationInterfaceFactoryInterfaceFactory = value }

  initFields_OnDemandLoader() {
    _onDemandResourcesFactory = null
    _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = null
    _resourceAnimationInterfaceFactoryInterfaceFactory = null
        
        
        
  }
    

    construct new(onDemandResourcesFactory, gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, resourceAnimationInterfaceFactoryInterfaceFactory) {
    super()
    initFields_OnDemandLoader()
        _onDemandResourcesFactory = onDemandResourcesFactory
        _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory = gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        _resourceAnimationInterfaceFactoryInterfaceFactory = resourceAnimationInterfaceFactoryInterfaceFactory
    }
    

    init(imageCache, level, loadingString) {
        var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if (Features.getInstance().isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            if (_resourceAnimationInterfaceFactoryInterfaceFactory.isInitialized()) {
                return
            }
            this.initAll(imageCache, loadingString)
        } else if ((level != resourceLoadingLevelFactory.LOAD_ALL.getLevel())) {
            var layerPlacementInterfaceBasicArrayListFactoryInterface = _gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory.getInstance(level)
            this.initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString)
        }
    }
    

    initAll(imageCache, loadingString) {
        var index = 0
        var portion = 120
        var onDemandResources = null
        if (true) {
            var onDemandIndex = _onDemandResourcesFactory.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
onDemandIndex = JR.i32(onDemandIndex - 1)
return onDemandIndex
}.call() >= 0))) break
            onDemandResources = _onDemandResourcesFactory.remove(onDemandIndex)
            if ((onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES)) {
                index = onDemandResources.initAt(imageCache, _resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            }
            }
        }
    }
    

    initLevel(layerPlacementInterfaceBasicArrayListFactoryInterface, imageCache, level, loadingString) {
        var commonStrings = CommonStrings.getInstance()
        var portion = 120
        var index = 0
        var onDemandArray = layerPlacementInterfaceBasicArrayListFactoryInterface.getOnDemandResources()
        PreLogUtil.put(StringMaker.new().append(commonStrings.START).appendint(onDemandArray.count).toString(), this, "initLevel")
        var onDemandResources = null
        if (true) {
            var onDemandIndex = onDemandArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
onDemandIndex = JR.i32(onDemandIndex - 1)
return onDemandIndex
}.call() >= 0))) break
            onDemandResources = _onDemandResourcesFactory.remove(onDemandArray[onDemandIndex])
            if ((onDemandResources != OnDemandResources.NULL_ON_DEMAND_RESOURCES)) {
                index = onDemandResources.initAt(imageCache, _resourceAnimationInterfaceFactoryInterfaceFactory, portion, loadingString, index)
            }
            }
        }
    }
}

import "../../../../../org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory" for BaseResourceAnimationInterfaceFactoryInterfaceFactory
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory
import "../../../../../org/allbinary/game/layer/GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory" for GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
import "../../../../../org/allbinary/game/layer/LayerPlacementInterfaceBasicArrayListFactoryInterface" for LayerPlacementInterfaceBasicArrayListFactoryInterface
import "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory
import "../../../../../org/allbinary/image/ImageCache" for ImageCache
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./OnDemandResourcesFactory" for OnDemandResourcesFactory
import "./OnDemandResources" for OnDemandResources

