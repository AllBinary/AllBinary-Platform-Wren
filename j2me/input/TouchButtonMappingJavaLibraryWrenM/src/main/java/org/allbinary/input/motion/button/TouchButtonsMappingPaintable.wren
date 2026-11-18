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
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class TouchButtonsMappingPaintable is Paintable {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  foregroundColor { _foregroundColor }
  foregroundColor=(value) { _foregroundColor = value }
  paintableTable { _paintableTable }
  paintableTable=(value) { _paintableTable = value }
  touchButtonLocationHelper { _touchButtonLocationHelper }
  touchButtonLocationHelper=(value) { _touchButtonLocationHelper = value }

  initFields_TouchButtonsMappingPaintable() {
    _logUtil = null
    _foregroundColor = 0
    _paintableTable = null
    _touchButtonLocationHelper = null
        _logUtil = LogUtil.getInstance()
        
        _paintableTable = JR.listOf(0, Fn.new { List.filled(0, null) })
        _touchButtonLocationHelper = TouchButtonLocationHelper.new()
  }
    

    construct new(basicColor) {
    super()
    initFields_TouchButtonsMappingPaintable()
        _foregroundColor = basicColor.intValue()
        this.init()
    }
    

    init() {
        var jerror0 = Fiber.new {
            _paintableTable = this.createPaintableTable()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "updateRectangle", e)
        }
    }
    

    createPaintableTable() {
        var totalColumns = _touchButtonLocationHelper.getTotalColumns()
        var totalRows = _touchButtonLocationHelper.getTotalRows()
        var paintableTable = JR.listOf(totalColumns, Fn.new { List.filled(totalRows, null) })
        var cellPositionFactory = CellPositionFactory.getInstance()
        var commonButtons = CommonButtons.getInstance()
        if (true) {
            var index = JR.i32(totalColumns - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if (true) {
                var rowIndex = JR.i32(totalRows - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        rowIndex = JR.i32(rowIndex - 1)
                    }
                    jfirst = false
                    if (!((rowIndex >= 0))) break
                _paintableTable[index][rowIndex] = TouchButton.createButton(BasicTouchInputFactory.getInstance().NONE, TouchButtonBlankResource.getInstance(), commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow(index, rowIndex), _touchButtonLocationHelper.getColumnsRemainderHalf(), _touchButtonLocationHelper.getRowsRemainderHalf())
                }
            }
            }
        }
        return paintableTable
    }
    

    paint(graphics) {
        var totalColumns = _touchButtonLocationHelper.getTotalColumns()
        var totalRows = _touchButtonLocationHelper.getTotalRows()
        if (true) {
            var index = JR.i32(totalColumns - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if (true) {
                var rowIndex = JR.i32(totalRows - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        rowIndex = JR.i32(rowIndex - 1)
                    }
                    jfirst = false
                    if (!((rowIndex >= 0))) break
                _paintableTable[index][rowIndex].paint(graphics)
                }
            }
            }
        }
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/graphics/CellPositionFactory" for CellPositionFactory
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./TouchButtonLocationHelper" for TouchButtonLocationHelper
import "./CommonButtons" for CommonButtons
import "./TouchButton" for TouchButton
import "./BasicTouchInputFactory" for BasicTouchInputFactory
import "./TouchButtonBlankResource" for TouchButtonBlankResource

