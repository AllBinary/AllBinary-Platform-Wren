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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "./CommandFormInputProcessor" for CommandFormInputProcessor

class ImmediateCommandFormInputProcessor is CommandFormInputProcessor {
  timeHelper { _timeHelper }
  timeHelper=(value) { _timeHelper = value }
  gameCommandCanvas { _gameCommandCanvas }
  gameCommandCanvas=(value) { _gameCommandCanvas = value }

  initFields_ImmediateCommandFormInputProcessor() {
    _timeHelper = null
    _gameCommandCanvas = null
        _timeHelper = TimeDelayHelper.new(25)
        
  }
    

    construct new(gameKeyEventList, playerInputId, gameCommandCanvas, form) {
        super(gameKeyEventList, playerInputId, gameCommandCanvas, form)
        initFields_ImmediateCommandFormInputProcessor()
        _gameCommandCanvas = gameCommandCanvas
    }
    

    onPressGameKeyEvent(gameKeyEvent) {
        var jerror0 = Fiber.new {
            super.onPressGameKeyEvent(gameKeyEvent)
            if (_timeHelper.isTimeTNT()) {
                this.processInputList()
                _gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas())
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_PRESS_GAME_KEY, e)
        }
    }
    

    onDownGameKeyEvent(gameKeyEvent) {
        var jerror1 = Fiber.new {
            super.onDownGameKeyEvent(gameKeyEvent)
            if (_timeHelper.isTimeTNT()) {
                this.processInputList()
                _gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas())
            }
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_DOWN_GAME_KEY, e)
        }
    }
    

    onUpGameKeyEvent(gameKeyEvent) {
        var jerror2 = Fiber.new {
            super.onUpGameKeyEvent(gameKeyEvent)
            if (_timeHelper.isTimeTNT()) {
                this.processInputList()
                _gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas())
            }
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.ON_UP_GAME_KEY, e)
        }
    }
    

    onMotionGestureEvent(motionGestureEvent) {
        var jerror3 = Fiber.new {
            super.onMotionGestureEvent(motionGestureEvent)
            if (_timeHelper.isTimeTNT()) {
                this.processInputList()
                _gameCommandCanvas.repaintBehavior.onChangeRepaint(this.getCanvas())
            }
        }.try()
        if (jerror3 != null) {
            var e = jerror3
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "onMotionGestureEvent", e)
        }
    }
}

import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/graphics/form/ScrollSelectionForm" for ScrollSelectionForm
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionGestureEvent" for MotionGestureEvent
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./GameCommandCanvas" for GameCommandCanvas

