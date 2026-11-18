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
// package org.allbinary.graphics

import "../../../allbinary_java" for JObject, JException, JR

class CellPositionFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = CellPositionFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  cellPositionArray { _cellPositionArray }
  cellPositionArray=(value) { _cellPositionArray = value }
  columns { _columns }
  columns=(value) { _columns = value }
  rows { _rows }
  rows=(value) { _rows = value }

  initFields_CellPositionFactory() {
    _logUtil = null
    _NONE = null
    _cellPositionArray = null
    _columns = 0
    _rows = 0
        _logUtil = LogUtil.getInstance()
        _NONE = CellPosition.new(-1, -1, -1, -1)
        _cellPositionArray = JR.listOf(0, Fn.new { List.filled(0, null) })
        _columns = 0
        _rows = 0
  }
    

    static getInstance() {
        return CellPositionFactory.SINGLETON
    }
    

    construct new() {
    super()
    initFields_CellPositionFactory()
    }
    

    init(columns, rows) {
        var commonStrings = CommonStrings.getInstance()
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Init: columns: ")
        stringBuffer.appendint(columns)
        stringBuffer.append(" rows: ")
        stringBuffer.appendint(rows)
        _logUtil.putF(stringBuffer.toString(), this, commonStrings.INIT)
        _cellPositionArray = JR.listOf(columns, Fn.new { List.filled(rows, null) })
        _columns = columns
        _rows = rows
        if (true) {
            var column = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    column = JR.i32(column + 1)
                }
                jfirst = false
                if (!((column < columns))) break
            if (true) {
                var row = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        row = JR.i32(row + 1)
                    }
                    jfirst = false
                    if (!((row < rows))) break
                this.createInstance(column, row)
                }
            }
            }
        }
    }
    

    getInstanceColRow(i_column, i_row) {
        var jerror0 = Fiber.new {
            return _cellPositionArray[i_column][i_row]
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(StringMaker.new().append("columns: ").appendint(this.getColumns()).append(" rows: ").appendint(this.getRows()).append(" col: ").appendint(i_column).append(" row: ").appendint(i_row).toString(), this, commonStrings.GET_INSTANCE, e)
            return _NONE
        }
    }
    

    createInstance(i_column, i_row) {
        var cellPositionCanBeNull = _cellPositionArray[i_column][i_row]
        if ((cellPositionCanBeNull == null)) {
            cellPositionCanBeNull = CellPosition.new(i_column, i_row, _columns, _rows)
            _cellPositionArray[i_column][i_row] = cellPositionCanBeNull
        }
        return cellPositionCanBeNull
    }
    

    getColumns() {
        return _columns
    }
    

    getRows() {
        return _rows
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./CellPosition" for CellPosition

