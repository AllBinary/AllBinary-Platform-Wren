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

//In general allow scrolling of the menu and selection the center item
class CommandFormInputProcessor is BasicMenuInputProcessor {
  MOTION_GESTURE_SOURCE_ID { _MOTION_GESTURE_SOURCE_ID }
  MOTION_GESTURE_SOURCE_ID=(value) { _MOTION_GESTURE_SOURCE_ID = value }
  CLICK_DELAY { _CLICK_DELAY }
  CLICK_DELAY=(value) { _CLICK_DELAY = value }
  clickTimeHelper { _clickTimeHelper }
  clickTimeHelper=(value) { _clickTimeHelper = value }
  DOUBLE_CLICK_DELAY { _DOUBLE_CLICK_DELAY }
  DOUBLE_CLICK_DELAY=(value) { _DOUBLE_CLICK_DELAY = value }
  doubleClickTimeHelper { _doubleClickTimeHelper }
  doubleClickTimeHelper=(value) { _doubleClickTimeHelper = value }
  isSingleKeyProcessing { _isSingleKeyProcessing }
  isSingleKeyProcessing=(value) { _isSingleKeyProcessing = value }
  form { _form }
  form=(value) { _form = value }
  hasPressed { _hasPressed }
  hasPressed=(value) { _hasPressed = value }
  PROCESS_COMMAND { _PROCESS_COMMAND }
  PROCESS_COMMAND=(value) { _PROCESS_COMMAND = value }
  NAME_LABEL { _NAME_LABEL }
  NAME_LABEL=(value) { _NAME_LABEL = value }

  initFields_CommandFormInputProcessor() {
    _MOTION_GESTURE_SOURCE_ID = 0
    _CLICK_DELAY = 0
    _clickTimeHelper = null
    _DOUBLE_CLICK_DELAY = 0
    _doubleClickTimeHelper = null
    _isSingleKeyProcessing = false
    _form = null
    _hasPressed = false
    _PROCESS_COMMAND = null
    _NAME_LABEL = null
        _MOTION_GESTURE_SOURCE_ID = GameKeyEventFactory.getInstance().MOTION_GESTURE_SOURCE_ID
        _CLICK_DELAY = 150
        _clickTimeHelper = TimeDelayHelper.new(_CLICK_DELAY)
        _DOUBLE_CLICK_DELAY = 1200
        _doubleClickTimeHelper = TimeDelayHelper.new(_DOUBLE_CLICK_DELAY)
        _isSingleKeyProcessing = InputFeatureFactory.getInstance().isSingleKeyProcessing()
        
        _hasPressed = false
        _PROCESS_COMMAND = "processCommand"
        _NAME_LABEL = " ScrollSelectionForm: "
  }
    

    construct new(gameKeyEventList, playerInputId, gameCanvas, form) {
        super(gameKeyEventList, playerInputId, gameCanvas)
        initFields_CommandFormInputProcessor()
        _form = form
    }
    

    processInput(key) {
        if (((((key == Canvas.LEFT) || (key == Canvas.RIGHT)) || (key == Canvas.UP)) || (key == Canvas.DOWN))) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            _form.processInputKey(key)
            return 1
        } else if ((key == Canvas.FIRE)) {
            PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
            return this.processCommand()
        }
        return 0
    }
    

    processCommand() {
        var commandCurrentSelectionForm = _form
        var command = commandCurrentSelectionForm.getSelectedCommand()
        this.logUtil.putF(command.toString(), this, _PROCESS_COMMAND)
        var features = Features.getInstance()
        var openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if (((SWTUtil.isSWT && features.isFeature(openGLFeatureFactory.OPENGL)) && (command != GameCommandsFactory.getInstance().EXIT_COMMAND))) {
            CommandRunnable.new(this, command).run()
        } else {
            PrimaryThreadPool.getInstance().runTask(CommandRunnable.new(this, command))
        }
        if ((command == GameCommandsFactory.getInstance().QUIT_COMMAND)) {
            return -1
        } else {
            return 1
        }
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
                key = gameKeyEvent.getKey()
                if ((gameKeyEvent.getSourceId() != _MOTION_GESTURE_SOURCE_ID)) {
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
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.gameInputStrings.PROCESS_INPUT, e)
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
        var touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        var motionGestureInput = motionGestureEvent.getMotionGesture()
        if ((motionGestureInput == touchMotionGestureFactory.RELEASED)) {
            var point = motionGestureEvent.getCurrentPoint()
            if (_form.isInForm(point)) {
                var index = _form.getSelectedIndexForPoint(point)
                if ((index != -1)) {
                    PrimaryPlayerQueueFactory.getInstance().add(SelectSound.getInstance())
                    if ((index == _form.getSelectedIndex())) {
                        if (_clickTimeHelper.isTimeTNT()) {
                            this.processCommand()
                        }
                    } else {
                        _form.setSelectedIndex(index)
                    }
                } else {
                }
            }
            if (_hasPressed) {
                if (!_doubleClickTimeHelper.isTimeTNT()) {
                    this.logUtil.putF("Double Press", this, this.gameInputStrings.PROCESS_MOTION_INPUT)
                    this.processCommand()
                }
                _doubleClickTimeHelper.delay = _DOUBLE_CLICK_DELAY
                _doubleClickTimeHelper.setStartTimeTNT()
            }
            _hasPressed = false
        } else if ((motionGestureInput == touchMotionGestureFactory.PRESSED)) {
            _doubleClickTimeHelper.delay = 0
            _hasPressed = true
        }
    }
    

    toString() {
        return StringMaker.new().append(super.toString()).append(_NAME_LABEL).append(_form.toString()).toString()
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" for InputFeatureFactory
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../../org/allbinary/game/layer/SWTUtil" for SWTUtil
import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../../org/allbinary/graphics/form/CommandCurrentSelectionForm" for CommandCurrentSelectionForm
import "../../../../../org/allbinary/graphics/form/ScrollSelectionForm" for ScrollSelectionForm
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/input/motion/gesture/MotionGestureInput" for MotionGestureInput
import "../../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "../../../../../org/allbinary/input/motion/gesture/observer/MotionGestureEvent" for MotionGestureEvent
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory" for PrimaryPlayerQueueFactory
import "../../../../../org/allbinary/media/audio/SelectSound" for SelectSound
import "../../../../../org/allbinary/thread/PrimaryThreadPool" for PrimaryThreadPool
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./CommandRunnable" for CommandRunnable

