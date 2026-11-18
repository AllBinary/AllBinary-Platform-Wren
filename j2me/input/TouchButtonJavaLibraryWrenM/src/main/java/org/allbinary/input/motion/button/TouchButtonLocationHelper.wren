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

class TouchButtonLocationHelper is JObject {
  totalColumns { _totalColumns }
  totalColumns=(value) { _totalColumns = value }
  totalRows { _totalRows }
  totalRows=(value) { _totalRows = value }
  columnsRemainder { _columnsRemainder }
  columnsRemainder=(value) { _columnsRemainder = value }
  rowsRemainder { _rowsRemainder }
  rowsRemainder=(value) { _rowsRemainder = value }
  columnsRemainderHalf { _columnsRemainderHalf }
  columnsRemainderHalf=(value) { _columnsRemainderHalf = value }
  rowsRemainderHalf { _rowsRemainderHalf }
  rowsRemainderHalf=(value) { _rowsRemainderHalf = value }

  initFields_TouchButtonLocationHelper() {
    _totalColumns = 0
    _totalRows = 0
    _columnsRemainder = 0
    _rowsRemainder = 0
    _columnsRemainderHalf = 0
    _rowsRemainderHalf = 0
        
        
        
        
        
        
  }
    

    construct new() {
    super()
    initFields_TouchButtonLocationHelper()
        var buttonSize = CommonButtons.getInstance().STANDARD_BUTTON_SIZE
        var displayInfo = DisplayInfoSingleton.getInstance()
        _totalColumns = ((displayInfo.getLastWidth() / buttonSize)).round
        _totalRows = ((displayInfo.getLastHeight() / buttonSize)).round
        _columnsRemainder = (displayInfo.getLastWidth() % buttonSize)
        _columnsRemainderHalf = (JR.shr(_columnsRemainder, 1))
        _rowsRemainder = (displayInfo.getLastHeight() % buttonSize)
        _rowsRemainderHalf = (JR.shr(_rowsRemainder, 1))
    }
    

    getTotalColumns() {
        return _totalColumns
    }
    

    getTotalRows() {
        return _totalRows
    }
    

    getColumnsRemainder() {
        return _columnsRemainder
    }
    

    getRowsRemainder() {
        return _rowsRemainder
    }
    

    getColumnsRemainderHalf() {
        return _columnsRemainderHalf
    }
    

    getRowsRemainderHalf() {
        return _rowsRemainderHalf
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("totalColumns: ")
        stringBuffer.appendint(_totalColumns)
        stringBuffer.append(" totalRows: ")
        stringBuffer.appendint(_totalRows)
        stringBuffer.append(" columnsRemainder: ")
        stringBuffer.appendint(_columnsRemainder)
        stringBuffer.append(" rowsRemainder: ")
        stringBuffer.appendint(_rowsRemainder)
        stringBuffer.append(" columnsRemainderHalf: ")
        stringBuffer.appendint(_columnsRemainderHalf)
        stringBuffer.append(" rowsRemainderHalf: ")
        stringBuffer.appendint(_rowsRemainderHalf)
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "./CommonButtons" for CommonButtons

