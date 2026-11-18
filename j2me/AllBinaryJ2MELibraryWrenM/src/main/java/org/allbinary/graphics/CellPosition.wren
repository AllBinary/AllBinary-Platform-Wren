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
import "../../../org/allbinary/graph/V" for V

class CellPosition is V {
  id { _id }
  id=(value) { _id = value }
  column { _column }
  column=(value) { _column = value }
  row { _row }
  row=(value) { _row = value }

  initFields_CellPosition() {
    _id = 0
    _column = 0
    _row = 0
        
        
        
  }
    

    construct new(column, row, columns, rows) {
    super()
    initFields_CellPosition()
        _column = column
        _row = row
        _id = JR.i32((JR.i32(row * columns)) + column)
    }
    

    getColumn() {
        return _column
    }
    

    getRow() {
        return _row
    }
    

    toString() {
        return CellPosition.toStringColRow(this.getColumn(), this.getRow())
    }
    

    static toStringCellPosition(basicGeographicMapCellPosition) {
        return CellPosition.toStringColRow(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow())
    }
    

    static toStringColRow(i_column, i_row) {
        var stringBuffer = StringMaker.new()
        var commonSeps = CommonSeps.getInstance()
        stringBuffer.append(commonSeps.PARENTHESIS_OPEN)
        stringBuffer.appendint(i_column)
        stringBuffer.append(commonSeps.COMMA)
        stringBuffer.appendint(i_row)
        stringBuffer.append(commonSeps.PARENTHESIS_CLOSE)
        return stringBuffer.toString()
    }
    

    getId() {
        return _id
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonSeps" for CommonSeps

