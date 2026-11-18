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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR
import "./BaseTouchInput" for BaseTouchInput

class BasicNeededTouchButtonsBuilder is BaseTouchInput {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_BasicNeededTouchButtonsBuilder() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_BasicNeededTouchButtonsBuilder()
  }
    

    getList() {
        var jerror0 = Fiber.new {
            _logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
            var list = BasicArrayListD.new()
            var touchButtonLocationHelper = TouchButtonLocationHelper.new()
            var basicTouchButtonCellPositionFactory = BasicTouchButtonCellPositionFactory.new()
            var commonButtons = CommonButtons.getInstance()
            var animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
            var UP = TouchButton.new(BasicTouchInputFactory.getInstance().UP, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.SECOND_FROM_BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var DOWN = TouchButton.new(BasicTouchInputFactory.getInstance().DOWN, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_LEFT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var LEFT = TouchButton.new(BasicTouchInputFactory.getInstance().LEFT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_SECOND_FROM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            var RIGHT = TouchButton.new(BasicTouchInputFactory.getInstance().RIGHT, animationInterface, animationInterface, commonButtons.NORMAL_BUTTON, basicTouchButtonCellPositionFactory.BOTTOM_RIGHT, touchButtonLocationHelper.getColumnsRemainderHalf(), touchButtonLocationHelper.getRowsRemainderHalf())
            list.add(UP)
            list.add(DOWN)
            list.add(LEFT)
            list.add(RIGHT)
            return list
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET_LIST, e)
            return BasicArrayListUtil.getInstance().getImmutableInstance()
        }
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "./TouchButtonLocationHelper" for TouchButtonLocationHelper
import "./BasicTouchButtonCellPositionFactory" for BasicTouchButtonCellPositionFactory
import "./CommonButtons" for CommonButtons
import "./TouchButton" for TouchButton
import "./BasicTouchInputFactory" for BasicTouchInputFactory

