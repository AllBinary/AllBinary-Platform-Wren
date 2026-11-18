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
// package org.allbinary.game.combat.damage

import "../../../../../allbinary_java" for JObject, JException, JR
import "./DamageFloaters" for DamageFloaters

class PtsDamageFloaters is DamageFloaters {
    static basicColorArrayIndexer {
    if (__basicColorArrayIndexer_set == null) {
      __basicColorArrayIndexer_set = true
      __basicColorArrayIndexer = BasicColorArrayIndexer.new([BasicColorFactory.getInstance().WHITE, BasicColorFactory.getInstance().RED, BasicColorFactory.getInstance().YELLOW, BasicColorFactory.getInstance().BLUE])
    }
    return __basicColorArrayIndexer
  }
  static basicColorArrayIndexer=(value) {
    __basicColorArrayIndexer_set = true
    __basicColorArrayIndexer = value
  }
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  layerInterface { _layerInterface }
  layerInterface=(value) { _layerInterface = value }
  lastDamage { _lastDamage }
  lastDamage=(value) { _lastDamage = value }
  lastDamageString { _lastDamageString }
  lastDamageString=(value) { _lastDamageString = value }
  lastDamageStringSizeArray { _lastDamageStringSizeArray }
  lastDamageStringSizeArray=(value) { _lastDamageStringSizeArray = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  primitiveLongUtil { _primitiveLongUtil }
  primitiveLongUtil=(value) { _primitiveLongUtil = value }
  myRandomFactory { _myRandomFactory }
  myRandomFactory=(value) { _myRandomFactory = value }

  initFields_PtsDamageFloaters() {
    _basicSetColorUtil = null
    _layerInterface = null
    _lastDamage = null
    _lastDamageString = null
    _lastDamageStringSizeArray = null
    _circularIndexUtil = null
    _primitiveLongUtil = null
    _myRandomFactory = null
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        
        _lastDamage = List.filled(5, 0)
        _lastDamageString = JR.listOf(5, Fn.new { List.filled(0, 0) })
        _lastDamageStringSizeArray = List.filled(5, 0)
        _circularIndexUtil = CircularIndexUtil.createInstance(5)
        
        _myRandomFactory = MyRandomFactory.getInstance()
  }
    

    construct new(layerInterface) {
    super()
    initFields_PtsDamageFloaters()
        _primitiveLongUtil = PrimitiveLongUtil.createPowerOfTen(100000)
        _layerInterface = layerInterface
        var CHAR_ARRAY = CharArrayFactory.getInstance().getZeroCharArray()
        if (true) {
            var index = JR.i32(_lastDamageString.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _lastDamageString[index] = CHAR_ARRAY
            }
        }
    }
    

    add(damage) {
        var index = _circularIndexUtil.getIndex()
        _lastDamage[index] = damage
        _lastDamageString[index] = _primitiveLongUtil.getCharArray(_lastDamage[index])
        _lastDamageStringSizeArray[index] = _primitiveLongUtil.getCurrentTotalDigits()
        _circularIndexUtil.next()
    }
    

    paint(graphics) {
        var viewPosition = _layerInterface.getViewPosition()
        var x = viewPosition.getX()
        var y = viewPosition.getY()
        if (true) {
            var index = JR.i32(_lastDamage.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if ((_lastDamage[index] != 0)) {
                var delta = JR.i32(10 * (JR.i32(index + 2)))
                _basicSetColorUtil.setBasicColorP(graphics, PtsDamageFloaters.basicColorArrayIndexer.get())
                graphics.drawChars(_lastDamageString[index], 0, _lastDamageStringSizeArray[index], (x - _myRandomFactory.getNextInt(delta)), JR.i32(y - delta), 0)
                PtsDamageFloaters.basicColorArrayIndexer.next()
            }
            _lastDamage[index] = 0
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/rand/MyRandomFactory" for MyRandomFactory
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/graphics/color/BasicColorArrayIndexer" for BasicColorArrayIndexer
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/logic/java/character/CharArrayFactory" for CharArrayFactory
import "../../../../../org/allbinary/logic/math/PrimitiveLongUtil" for PrimitiveLongUtil
import "../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase

