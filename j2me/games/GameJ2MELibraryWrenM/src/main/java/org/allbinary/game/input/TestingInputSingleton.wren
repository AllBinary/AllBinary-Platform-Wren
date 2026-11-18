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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/game/layer/AllBinaryGameLayer" for AllBinaryGameLayer

class TestingInputSingleton is AllBinaryGameLayer {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = TestingInputSingleton.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  inputProcessorArray { _inputProcessorArray }
  inputProcessorArray=(value) { _inputProcessorArray = value }
  testInputPaintable { _testInputPaintable }
  testInputPaintable=(value) { _testInputPaintable = value }

  initFields_TestingInputSingleton() {
    _inputProcessorArray = null
    _testInputPaintable = null
        _inputProcessorArray = List.filled(InputFactory.getInstance().MAX, null)
        _testInputPaintable = NullPaintable.getInstance()
  }
    

    static getInstance() {
        return TestingInputSingleton.instance
    }
    

    construct new() {
        super(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPosition.getInstanceD())
        initFields_TestingInputSingleton()
        GameInputProcessorUtil.init(_inputProcessorArray)
    }
    

    initInputProcessors() {
    }
    

    initInputProcessorsForTestInput(aTestInputInterface) {
        var testInputInterface = aTestInputInterface
        _testInputPaintable = testInputInterface
        _inputProcessorArray[Canvas.UP] = GameInputProcessor.new()
        _inputProcessorArray[Canvas.DOWN] = GameInputProcessor.new()
        _inputProcessorArray[Canvas.LEFT] = GameInputProcessor.new()
        _inputProcessorArray[Canvas.RIGHT] = GameInputProcessor.new()
        _inputProcessorArray[Canvas.KEY_NUM7] = GameInputProcessor.new()
        _inputProcessorArray[Canvas.KEY_NUM9] = GameInputProcessor.new()
        GameInputProcessorUtil.init(_inputProcessorArray)
    }
    

    processInputList(allbinaryLayerManager, list) {
        var key = 0
        var gameKeyEvent = null
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            gameKeyEvent = (list.objectArray[index])
            key = gameKeyEvent.getKey()
            _inputProcessorArray[key].processEvent(allbinaryLayerManager, GameKeyEvent.NONE)
            }
        }
    }
    

    processInput(allbinaryLayerManager) {
        this.processInputList(allbinaryLayerManager, this.getGameKeyEventList())
        this.getGameKeyEventList().clear()
    }
    

    paint(graphics) {
        _testInputPaintable.paint(graphics)
    }
    

    implmentsGameInputInterface() {
        return true
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/view/ViewPosition" for ViewPosition
import "./GameInputInterface" for GameInputInterface
import "./GameInputProcessor" for GameInputProcessor
import "./InputFactory" for InputFactory
import "./GameInputProcessorUtil" for GameInputProcessorUtil
import "./TestInputInterface" for TestInputInterface

