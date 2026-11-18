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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager

class AllBinaryGameLayerManager is AllBinaryLayerManager {
    static NULL_ALLBINARY_LAYER_MANAGER {
    if (__NULL_ALLBINARY_LAYER_MANAGER_set == null) {
      __NULL_ALLBINARY_LAYER_MANAGER_set = true
      __NULL_ALLBINARY_LAYER_MANAGER = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_ALLBINARY_LAYER_MANAGER
  }
  static NULL_ALLBINARY_LAYER_MANAGER=(value) {
    __NULL_ALLBINARY_LAYER_MANAGER_set = true
    __NULL_ALLBINARY_LAYER_MANAGER = value
  }
    static ID {
    if (__ID_set == null) {
      __ID_set = true
      __ID = SmallIntegerSingletonFactory.getInstance().getAt(22)
    }
    return __ID
  }
  static ID=(value) {
    __ID_set = true
    __ID = value
  }
  backgroundBasicColor { _backgroundBasicColor }
  backgroundBasicColor=(value) { _backgroundBasicColor = value }
  foregroundBasicColor { _foregroundBasicColor }
  foregroundBasicColor=(value) { _foregroundBasicColor = value }
  gameInfo { _gameInfo }
  gameInfo=(value) { _gameInfo = value }
  playerGameInputCompositeInterface { _playerGameInputCompositeInterface }
  playerGameInputCompositeInterface=(value) { _playerGameInputCompositeInterface = value }

  initFields_AllBinaryGameLayerManager() {
    _backgroundBasicColor = null
    _foregroundBasicColor = null
    _gameInfo = null
    _playerGameInputCompositeInterface = null
        
        
        
        _playerGameInputCompositeInterface = NullPlayerGameInputComposite.NULL_PLAYER_GAME_INPUT_COMPOSITE
  }
    

    static getNullInstance() {
        if ((AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER == NullUtil.getInstance().NULL_OBJECT)) {
            AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER = AllBinaryGameLayerManager.new(BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE, GameInfo.NONE)
        }
        return AllBinaryGameLayerManager.NULL_ALLBINARY_LAYER_MANAGER
    }
    

    construct new(backgroundBasicColor, foregroundBasicColor, gameInfo) {
    super()
    initFields_AllBinaryGameLayerManager()
        _backgroundBasicColor = backgroundBasicColor
        _foregroundBasicColor = foregroundBasicColor
        var itemColorFactory = ItemColorFactory.getInstance()
        itemColorFactory.INVERT_PAINT = _backgroundBasicColor.intValue()
        itemColorFactory.PAINT = _foregroundBasicColor.intValue()
        _gameInfo = gameInfo
    }
    

    getLayerManager() {
        return this
    }
    

    init() {
    }
    

    getBackgroundBasicColor() {
        return _backgroundBasicColor
    }
    

    setBackgroundBasicColor(backgroundBasicColor) {
        _backgroundBasicColor = backgroundBasicColor
        ItemColorFactory.getInstance().INVERT_PAINT = _backgroundBasicColor.intValue()
    }
    

    getForegroundBasicColor() {
        return _foregroundBasicColor
    }
    

    setForegroundBasicColor(foregroundBasicColor) {
        _foregroundBasicColor = foregroundBasicColor
        ItemColorFactory.getInstance().PAINT = _foregroundBasicColor.intValue()
    }
    

    getGameInfo() {
        return _gameInfo
    }
    

    setGameInfo(gameInfo) {
        _gameInfo = gameInfo
    }
    

    setLayerProcessorList(list) {
        var layerProcessorInterfaceArray = List.filled(list.size(), null)
        var size = layerProcessorInterfaceArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            layerProcessorInterfaceArray[index] = list.objectArray[index]
            }
        }
        this.setLayerProcessorArray(layerProcessorInterfaceArray)
    }
    

    setPlayerGameInputCompositeInterface(playerGameInputCompositeInterface) {
        _playerGameInputCompositeInterface = playerGameInputCompositeInterface
    }
    

    getPlayerGameInputCompositeInterface() {
        return _playerGameInputCompositeInterface
    }
}

import "../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../org/allbinary/game/input/NullPlayerGameInputComposite" for NullPlayerGameInputComposite
import "../../../../org/allbinary/game/input/PlayerGameInputCompositeInterface" for PlayerGameInputCompositeInterface
import "../../../../org/allbinary/graphics/ItemColorFactory" for ItemColorFactory
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/layer/LayerProcessor" for LayerProcessor
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../java/lang/Integer" for Integer

