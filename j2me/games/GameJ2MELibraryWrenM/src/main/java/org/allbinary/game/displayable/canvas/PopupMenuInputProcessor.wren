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
import "./BasicMenuInputProcessor" for BasicMenuInputProcessor

class PopupMenuInputProcessor is BasicMenuInputProcessor {
  rectangleCollisionUtil { _rectangleCollisionUtil }
  rectangleCollisionUtil=(value) { _rectangleCollisionUtil = value }
  CLICK_DELAY { _CLICK_DELAY }
  CLICK_DELAY=(value) { _CLICK_DELAY = value }
  clickTimeHelper { _clickTimeHelper }
  clickTimeHelper=(value) { _clickTimeHelper = value }
  rectangle { _rectangle }
  rectangle=(value) { _rectangle = value }

  initFields_PopupMenuInputProcessor() {
    _rectangleCollisionUtil = null
    _CLICK_DELAY = 0
    _clickTimeHelper = null
    _rectangle = null
        _rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        _CLICK_DELAY = 120
        _clickTimeHelper = TimeDelayHelper.new(_CLICK_DELAY)
        
  }
    

    construct new(gameKeyEventList, playerInputId, gameCanvas, rectangle) {
        super(gameKeyEventList, playerInputId, gameCanvas)
        initFields_PopupMenuInputProcessor()
        _rectangle = rectangle
    }
    

    init(rectangle) {
        _rectangle = rectangle
    }
    

    processInput(key) {
        if ((key == Canvas.KEY_STAR)) {
            var gameCanvas = this.getCanvas()
            gameCanvas.toggleMenu()
            return 1
        }
        return 0
    }
    

    processInputList() {
        var jerror0 = Fiber.new {
            var motionInputsIndex = this.processMotionInputs()
            var list = this.getGameKeyEventList()
            var size = list.size()
            var key = 0
            var gameKeyEvent = null
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                gameKeyEvent = list.objectArray[index]
                if ((gameKeyEvent != null)) {
                    key = gameKeyEvent.getKey()
                    if ((this.processInput(key) == 1)) {
                        break
                    }
                }
                }
            }
            this.clear()
            if (((size > 0) || (motionInputsIndex >= 0))) {
                return 1
            } else {
                return -1
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, GameInputStrings.getInstance().PROCESS_INPUT, e)
            return -1
        }
    }
    

    processMotionInputs() {
        var lastIndex = JR.i32(this.motionGestureEventList.size() - 1)
        if ((lastIndex >= 0)) {
            var motionGestureEvent = this.motionGestureEventList.objectArray[lastIndex]
            this.processMotionInput(motionGestureEvent)
        }
        this.motionGestureEventList.clear()
        return lastIndex
    }
    

    processMotionInput(motionGestureEvent) {
        if ((motionGestureEvent == null)) {
            this.logUtil.putF("Exception: Bug", this, this.gameInputStrings.PROCESS_MOTION_INPUT)
            return
        }
        var touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        var motionGestureInput = motionGestureEvent.getMotionGesture()
        if ((motionGestureInput == touchMotionGestureFactory.RELEASED)) {
            var point = motionGestureEvent.getCurrentPoint()
            var rectPoint = _rectangle.getPoint()
            if (_rectangleCollisionUtil.isInside(rectPoint.getX(), rectPoint.getY(), (_rectangle.getMaxX() + 20), _rectangle.getMaxY(), point.getX(), point.getY())) {
                if (_clickTimeHelper.isTimeTNT()) {
                    var gameCanvas = this.getCanvas()
                    gameCanvas.toggleMenu()
                }
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/game/input/GameInputStrings" for GameInputStrings
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionGestureEvent" for MotionGestureEvent
import "../../../../../org/allbinary/math/RectangleCollisionUtil" for RectangleCollisionUtil
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

