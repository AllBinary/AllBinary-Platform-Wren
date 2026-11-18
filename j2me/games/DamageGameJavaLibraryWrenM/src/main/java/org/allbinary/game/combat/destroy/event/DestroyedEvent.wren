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
// package org.allbinary.game.combat.destroy.event

import "../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class DestroyedEvent is AllBinaryEventObject {
  allBinaryGameCanvas { _allBinaryGameCanvas }
  allBinaryGameCanvas=(value) { _allBinaryGameCanvas = value }
  allBinaryLayerInterface { _allBinaryLayerInterface }
  allBinaryLayerInterface=(value) { _allBinaryLayerInterface = value }

  initFields_DestroyedEvent() {
    _allBinaryGameCanvas = null
    _allBinaryLayerInterface = null
        _allBinaryGameCanvas = NullGameCanvas.getInstance()
        _allBinaryLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
  }
    

    construct new(combatGameCanvas) {
        super(DestroyedEventHandler.getInstance())
        initFields_DestroyedEvent()
        this.setAllBinaryGameCanvas(combatGameCanvas)
    }
    

    getAllBinaryGameCanvas() {
        return _allBinaryGameCanvas
    }
    

    getLayerInterface() {
        return _allBinaryLayerInterface
    }
    

    setAllBinaryGameCanvas(allBinaryGameCanvas) {
        _allBinaryGameCanvas = allBinaryGameCanvas
    }
    

    setLayerInterfaceForCircularStaticPool(allBinaryLayerInterface) {
        _allBinaryLayerInterface = allBinaryLayerInterface
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("DestroyedEvent: \n")
        stringBuffer.append("AllBinaryLayerInterface: ")
        stringBuffer.append(_allBinaryLayerInterface.toString())
        stringBuffer.append("\nAllBinaryGameCanvas: ")
        stringBuffer.append(StringUtil.getInstance().toString(this.getAllBinaryGameCanvas()))
        return stringBuffer.toString()
    }
}

import "../../../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" for AllBinaryGameCanvas
import "../../../../../../org/allbinary/game/displayable/canvas/NullGameCanvas" for NullGameCanvas
import "../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./DestroyedEventHandler" for DestroyedEventHandler

