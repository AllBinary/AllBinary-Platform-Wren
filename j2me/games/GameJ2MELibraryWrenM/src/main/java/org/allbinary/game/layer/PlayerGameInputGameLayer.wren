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
import "./AllBinaryGameLayer" for AllBinaryGameLayer

class PlayerGameInputGameLayer is AllBinaryGameLayer {
  playerGameInput { _playerGameInput }
  playerGameInput=(value) { _playerGameInput = value }

  initFields_PlayerGameInputGameLayer() {
    _playerGameInput = null
        
  }
    

    construct new(playerInputId) {
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), StaticViewPosition.new(0, 0, 0))
        initFields_PlayerGameInputGameLayer()
        _playerGameInput = PlayerGameInput.new(this.getGameKeyEventList(), BasicArrayListD.new(), playerInputId)
        var canvasStrings = CanvasStrings.getInstance()
        this.logUtil.putF("Danger Danger Danger: Should Not Be Called Except For Testing Input", this, canvasStrings.PAINT)
    }
    

    getPlayerGameInput() {
        return _playerGameInput
    }
    

    initInputProcessors() {
    }
    

    processInput(myManager) {
    }
    

    paint(graphics) {
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/game/input/PlayerGameInput" for PlayerGameInput
import "../../../../org/allbinary/game/input/PlayerGameInputCompositeInterface" for PlayerGameInputCompositeInterface
import "../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../org/allbinary/view/StaticViewPosition" for StaticViewPosition

