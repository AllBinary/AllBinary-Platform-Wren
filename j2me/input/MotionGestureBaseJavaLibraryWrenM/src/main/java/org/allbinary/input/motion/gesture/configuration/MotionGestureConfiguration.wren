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
// package org.allbinary.input.motion.gesture.configuration

import "../../../../../../allbinary_java" for JObject, JException, JR

class MotionGestureConfiguration is JObject {
  diagonalMotionGestureAllowed { _diagonalMotionGestureAllowed }
  diagonalMotionGestureAllowed=(value) { _diagonalMotionGestureAllowed = value }
  diagonalTolerance { _diagonalTolerance }
  diagonalTolerance=(value) { _diagonalTolerance = value }
  minimumMotionGesture { _minimumMotionGesture }
  minimumMotionGesture=(value) { _minimumMotionGesture = value }
  button { _button }
  button=(value) { _button = value }
  color { _color }
  color=(value) { _color = value }
  executingActions { _executingActions }
  executingActions=(value) { _executingActions = value }
  mouseButtonMask { _mouseButtonMask }
  mouseButtonMask=(value) { _mouseButtonMask = value }
  activeCommands { _activeCommands }
  activeCommands=(value) { _activeCommands = value }

  initFields_MotionGestureConfiguration() {
    _diagonalMotionGestureAllowed = false
    _diagonalTolerance = 0
    _minimumMotionGesture = 0
    _button = null
    _color = null
    _executingActions = false
    _mouseButtonMask = 0
    _activeCommands = null
        _diagonalMotionGestureAllowed = true
        _diagonalTolerance = 7
        _minimumMotionGesture = 9
        _button = StringUtil.getInstance().EMPTY_STRING
        _color = BasicColorFactory.getInstance().BLUE
        _executingActions = true
        _mouseButtonMask = 0
        _activeCommands = BasicArrayListD.new()
  }
    

    construct new() {
    super()
    initFields_MotionGestureConfiguration()
    }
    

    addMotionGestureAction(list, commandAction) {
        _activeCommands.add(MotionGestureToMotionGestureActionAssociation.new(list, commandAction))
    }
    

    clearMotionGestureAction() {
        _activeCommands.clear()
    }
    

    getAssociateCommandActionsList() {
        return _activeCommands
    }
    

    isDiagonalMotionGestureAllowed() {
        return _diagonalMotionGestureAllowed
    }
    

    isExecutingActionsAllowed() {
        return _executingActions
    }
    

    setExecutingActionsAllowed(executingActionAllowed) {
        _executingActions = executingActionAllowed
    }
    

    setDiagonalMotionGestureAllowed(diagonalMotionGestureAllowed) {
        _diagonalMotionGestureAllowed = diagonalMotionGestureAllowed
    }
    

    getDiagonalTolerance() {
        return _diagonalTolerance
    }
    

    setDiagonalTolerance(diagonalTolerance) {
        _diagonalTolerance = diagonalTolerance
    }
    

    getMinimumMotionGesture() {
        return _minimumMotionGesture
    }
    

    setMinimumMotionGesture(minimumMotionGesture) {
        _minimumMotionGesture = minimumMotionGesture
    }
    

    getButton() {
        return _button
    }
    

    setButton(button) {
        _button = button
    }
    

    getColor() {
        return _color
    }
    

    setColor(color) {
        _color = color
    }
    

    getMouseButtonMask() {
        return _mouseButtonMask
    }
    

    setMouseButtonMask(mouseButtonMask) {
        _mouseButtonMask = mouseButtonMask
    }
}

import "../../../../../../org/allbinary/game/input/CompleteMotionGestureInputEvent" for CompleteMotionGestureInputEvent
import "../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../../org/allbinary/input/motion/gesture/MotionGestureToMotionGestureActionAssociation" for MotionGestureToMotionGestureActionAssociation
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

