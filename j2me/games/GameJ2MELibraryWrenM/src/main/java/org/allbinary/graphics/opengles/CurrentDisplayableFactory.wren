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
// package org.allbinary.graphics.opengles

import "../../../../allbinary_java" for JObject, JException, JR

class CurrentDisplayableFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CurrentDisplayableFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  canvasStrings { _canvasStrings }
  canvasStrings=(value) { _canvasStrings = value }
  stringUtil { _stringUtil }
  stringUtil=(value) { _stringUtil = value }
  SET_DISPLAYABLE { _SET_DISPLAYABLE }
  SET_DISPLAYABLE=(value) { _SET_DISPLAYABLE = value }
  SET_RUNNABLE { _SET_RUNNABLE }
  SET_RUNNABLE=(value) { _SET_RUNNABLE = value }
  CLEAR_RUNNABLE { _CLEAR_RUNNABLE }
  CLEAR_RUNNABLE=(value) { _CLEAR_RUNNABLE = value }
  SET_USED_RUNNABLE { _SET_USED_RUNNABLE }
  SET_USED_RUNNABLE=(value) { _SET_USED_RUNNABLE = value }
  RUNNABLE { _RUNNABLE }
  RUNNABLE=(value) { _RUNNABLE = value }
  RUNNABLE_WAS_ALREADY_IN_USE { _RUNNABLE_WAS_ALREADY_IN_USE }
  RUNNABLE_WAS_ALREADY_IN_USE=(value) { _RUNNABLE_WAS_ALREADY_IN_USE = value }
  DEFAULT_CHILD_NAME_LIST { _DEFAULT_CHILD_NAME_LIST }
  DEFAULT_CHILD_NAME_LIST=(value) { _DEFAULT_CHILD_NAME_LIST = value }
  displayable { _displayable }
  displayable=(value) { _displayable = value }
  openGlReadydisplayable { _openGlReadydisplayable }
  openGlReadydisplayable=(value) { _openGlReadydisplayable = value }
  runnable { _runnable }
  runnable=(value) { _runnable = value }
  usedRunnable { _usedRunnable }
  usedRunnable=(value) { _usedRunnable = value }

  initFields_CurrentDisplayableFactory() {
    _commonStrings = null
    _canvasStrings = null
    _stringUtil = null
    _SET_DISPLAYABLE = null
    _SET_RUNNABLE = null
    _CLEAR_RUNNABLE = null
    _SET_USED_RUNNABLE = null
    _RUNNABLE = null
    _RUNNABLE_WAS_ALREADY_IN_USE = null
    _DEFAULT_CHILD_NAME_LIST = null
    _displayable = null
    _openGlReadydisplayable = null
    _runnable = null
    _usedRunnable = null
        _commonStrings = CommonStrings.getInstance()
        _canvasStrings = CanvasStrings.getInstance()
        _stringUtil = StringUtil.getInstance()
        _SET_DISPLAYABLE = "setDisplayable"
        _SET_RUNNABLE = "setRunnable"
        _CLEAR_RUNNABLE = "clearRunnable"
        _SET_USED_RUNNABLE = "setUsedRunnable"
        _RUNNABLE = "Runnable: "
        _RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: "
        _DEFAULT_CHILD_NAME_LIST = BasicArrayListD.new()
        _displayable = NullDisplayable.getInstance()
        _openGlReadydisplayable = NullDisplayable.getInstance()
        _runnable = NullWaitGameRunnable.getInstance()
        _usedRunnable = NullWaitGameRunnable.getInstance()
  }
    

    static getInstance() {
        return CurrentDisplayableFactory.instance
    }
    

    construct new() {
    super()
    initFields_CurrentDisplayableFactory()
        _DEFAULT_CHILD_NAME_LIST.add(_canvasStrings.ABOUT)
        _DEFAULT_CHILD_NAME_LIST.add(_canvasStrings.OPTIONS)
        _DEFAULT_CHILD_NAME_LIST.add(GameInputMappingCanvas.NAME)
        _DEFAULT_CHILD_NAME_LIST.add(GameInputMappingInstructionsCanvas.NAME)
        _DEFAULT_CHILD_NAME_LIST.add(HighScoresCanvas.NAME)
    }
    

    setMyCanvas(displayable) {
        if ((_displayable is MyCanvas)) {
            if (displayable.hasChild(_displayable)) {
                PreLogUtil.put(StringMaker.new().append("Child Displayable is already set for: ").append(_stringUtil.toString(displayable)).toString(), this, _SET_DISPLAYABLE)
                return
            }
        }
        this.setDisplayable(displayable)
    }
    

    setDisplayable(displayable) {
        _displayable = displayable
        this.setOpenGlReadydisplayable(displayable)
    }
    

    setOpenGlReadydisplayable(openGlReadydisplayable) {
        _openGlReadydisplayable = openGlReadydisplayable
        this.update()
    }
    

    getOpenGlReadydisplayable() {
        return _openGlReadydisplayable
    }
    

    setRunnable(runnable) {
        PreLogUtil.put(StringMaker.new().append(_RUNNABLE).append(_stringUtil.toString(runnable)).toString(), this, _SET_RUNNABLE)
        _runnable = runnable
        if ((_usedRunnable != _runnable)) {
            this.update()
        } else {
            PreLogUtil.put(StringMaker.new().append(_RUNNABLE_WAS_ALREADY_IN_USE).append(_stringUtil.toString(runnable)).toString(), this, _SET_RUNNABLE)
        }
    }
    

    clearRunnable() {
        PreLogUtil.put(StringMaker.new().append(_RUNNABLE).append(_stringUtil.toString(NullRunnable.getInstance())).toString(), this, _CLEAR_RUNNABLE)
        this.setUsedRunnable(NullWaitGameRunnable.getInstance())
    }
    

    update() {
        if (true) {
            var commonSeps = CommonSeps.getInstance()
            var features = Features.getInstance()
            var stringMaker = StringMaker.new()
            stringMaker.append(_stringUtil.toString(_openGlReadydisplayable))
            if ((SWTUtil.isSWT && !features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL))) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(SWTUtil.SWT).append(commonSeps.SPACE).append(_RUNNABLE).append(_stringUtil.toString(NullRunnable.getInstance())).toString(), this, _commonStrings.UPDATE)
                this.setUsedRunnable(NullWaitGameRunnable.getInstance())
            } else if (J2MEUtil.isHTML()) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(GraphicsStrings.getInstance().HTML).append(commonSeps.SPACE).append(_RUNNABLE).append(_stringUtil.toString(_runnable)).toString(), this, _commonStrings.UPDATE)
                this.setUsedRunnable(_runnable)
            } else if ((((_openGlReadydisplayable is DemoCanvas) || (_openGlReadydisplayable is AllBinaryGameCanvas)) || features.isDefault(OpenGLFeatureFactory.getInstance().OPENGL))) {
                PreLogUtil.put(stringMaker.append(commonSeps.SPACE).append(OpenGLFeatureFactory.getInstance().OPENGL.toString()).append(commonSeps.SPACE).append(_RUNNABLE).append(_stringUtil.toString(_runnable)).toString(), this, _commonStrings.UPDATE)
                this.setUsedRunnable(_runnable)
            } else {
                PreLogUtil.put(stringMaker.append(_RUNNABLE).append(_stringUtil.toString(NullRunnable.getInstance())).toString(), this, _commonStrings.UPDATE)
                this.setUsedRunnable(NullWaitGameRunnable.getInstance())
            }
        }
    }
    

    getDisplayable() {
        return _displayable
    }
    

    getUsedRunnable() {
        return _usedRunnable
    }
    

    setUsedRunnable(usedRunnable) {
        PreLogUtil.put(StringMaker.new().append(_RUNNABLE).append(_stringUtil.toString(_runnable)).append(CommonSeps.getInstance().COLON_SEP).append(_stringUtil.toString(usedRunnable)).toString(), this, _SET_USED_RUNNABLE)
        _usedRunnable = usedRunnable
    }
}

import "../../../../javax/microedition/lcdui/Displayable" for Displayable
import "../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" for AllBinaryGameCanvas
import "../../../../org/allbinary/game/displayable/canvas/DemoCanvas" for DemoCanvas
import "../../../../org/allbinary/game/displayable/canvas/GameInputMappingCanvas" for GameInputMappingCanvas
import "../../../../org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas" for GameInputMappingInstructionsCanvas
import "../../../../org/allbinary/game/displayable/canvas/GameRunnable" for GameRunnable
import "../../../../org/allbinary/game/displayable/canvas/NullDisplayable" for NullDisplayable
import "../../../../org/allbinary/game/displayable/canvas/NullWaitGameRunnable" for NullWaitGameRunnable
import "../../../../org/allbinary/game/layer/SWTUtil" for SWTUtil
import "../../../../org/allbinary/game/score/displayable/HighScoresCanvas" for HighScoresCanvas
import "../../../../org/allbinary/graphics/GraphicsStrings" for GraphicsStrings
import "../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/thread/NullRunnable" for NullRunnable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./OpenGLFeatureFactory" for OpenGLFeatureFactory

