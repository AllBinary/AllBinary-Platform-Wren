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
// package org.allbinary.game.part

import "../../../../allbinary_java" for JObject, JException, JR

class CountedLayerInterfaceFactoryPart is JObject {
    static NULL_COUNTED_LAYER_INTERFACE_FACTORY {
    if (__NULL_COUNTED_LAYER_INTERFACE_FACTORY_set == null) {
      __NULL_COUNTED_LAYER_INTERFACE_FACTORY_set = true
      __NULL_COUNTED_LAYER_INTERFACE_FACTORY = CountedLayerInterfaceFactoryPart.new(0, CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY)
    }
    return __NULL_COUNTED_LAYER_INTERFACE_FACTORY
  }
  static NULL_COUNTED_LAYER_INTERFACE_FACTORY=(value) {
    __NULL_COUNTED_LAYER_INTERFACE_FACTORY_set = true
    __NULL_COUNTED_LAYER_INTERFACE_FACTORY = value
  }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  total { _total }
  total=(value) { _total = value }
  totalString { _totalString }
  totalString=(value) { _totalString = value }
  xOffset { _xOffset }
  xOffset=(value) { _xOffset = value }
  countedPickedUpLayerInterfaceFactory { _countedPickedUpLayerInterfaceFactory }
  countedPickedUpLayerInterfaceFactory=(value) { _countedPickedUpLayerInterfaceFactory = value }
  primitiveLongUtil { _primitiveLongUtil }
  primitiveLongUtil=(value) { _primitiveLongUtil = value }

  initFields_CountedLayerInterfaceFactoryPart() {
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _animationInterface = null
    _total = 0
    _totalString = null
    _xOffset = 0
    _countedPickedUpLayerInterfaceFactory = null
    _primitiveLongUtil = null
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        _animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        _total = 0
        _totalString = NullUtil.getInstance().NULL_CHAR_ARRAY
        _xOffset = 0
        _countedPickedUpLayerInterfaceFactory = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
        
  }
    

    construct new(total, countedPickedUpLayerInterfaceFactory) {
    super()
    initFields_CountedLayerInterfaceFactoryPart()
        _primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(1000)
        this.init(total, countedPickedUpLayerInterfaceFactory)
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        this.setXOffset((font.charsWidth(_totalString, 0, _primitiveLongUtil.getCurrentTotalDigits()) + (JR.shr(font.getSize(), 1))))
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    init(total, countedPickedUpLayerInterfaceFactory) {
        this.setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory)
        _total = total
    }
    

    getInstance(hashtable, x, y, z) {
        if ((_total > 0)) {
            this.setTotal(JR.i32(_total - 1))
            return this.getCountedPickedUpLayerInterfaceFactory().getNextInstance(hashtable, x, y, z)
        } else {
            Fiber.abort(JR.exception("Exception", "No more left. Could use a listener to automatically remove"))
        }
    }
    

    getTotal() {
        return _total
    }
    

    setTotal(total) {
        _total = total
        _totalString = _primitiveLongUtil.getCharArray(total)
        _myFontProcessor = _updateMyFontProcessor
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
    }
    

    paintThreed(graphics) {
    }
    

    getAnimationInterface() {
        return _animationInterface
    }
    

    setAnimationInterface(animationInterface) {
        _animationInterface = animationInterface
    }
    

    getXOffset() {
        return _xOffset
    }
    

    setXOffset(totalStringWidth) {
        _xOffset = totalStringWidth
    }
    

    getTotalString() {
        return _totalString
    }
    

    getCountedPickedUpLayerInterfaceFactory() {
        return _countedPickedUpLayerInterfaceFactory
    }
    

    setCountedPickedUpLayerInterfaceFactory(countedPickedUpLayerInterfaceFactory) {
        _countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory" for CountedPickedUpLayerInterfaceFactory
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/math/PrimitiveLongUtil" for PrimitiveLongUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./PartInterface" for PartInterface

