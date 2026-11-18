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

class BasicTouchButtonCellPositionFactory is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  TOP_RIGHT { _TOP_RIGHT }
  TOP_RIGHT=(value) { _TOP_RIGHT = value }
  TOP_LEFT { _TOP_LEFT }
  TOP_LEFT=(value) { _TOP_LEFT = value }
  SECOND_FROM_TOP_LEFT { _SECOND_FROM_TOP_LEFT }
  SECOND_FROM_TOP_LEFT=(value) { _SECOND_FROM_TOP_LEFT = value }
  SECOND_FROM_TOP_RIGHT { _SECOND_FROM_TOP_RIGHT }
  SECOND_FROM_TOP_RIGHT=(value) { _SECOND_FROM_TOP_RIGHT = value }
  TOP_SECOND_FROM_LEFT { _TOP_SECOND_FROM_LEFT }
  TOP_SECOND_FROM_LEFT=(value) { _TOP_SECOND_FROM_LEFT = value }
  TOP_SECOND_FROM_RIGHT { _TOP_SECOND_FROM_RIGHT }
  TOP_SECOND_FROM_RIGHT=(value) { _TOP_SECOND_FROM_RIGHT = value }
  BOTTOM_RIGHT { _BOTTOM_RIGHT }
  BOTTOM_RIGHT=(value) { _BOTTOM_RIGHT = value }
  BOTTOM_SECOND_FROM_RIGHT { _BOTTOM_SECOND_FROM_RIGHT }
  BOTTOM_SECOND_FROM_RIGHT=(value) { _BOTTOM_SECOND_FROM_RIGHT = value }
  SECOND_FROM_BOTTOM_RIGHT { _SECOND_FROM_BOTTOM_RIGHT }
  SECOND_FROM_BOTTOM_RIGHT=(value) { _SECOND_FROM_BOTTOM_RIGHT = value }
  THIRD_FROM_BOTTOM_RIGHT { _THIRD_FROM_BOTTOM_RIGHT }
  THIRD_FROM_BOTTOM_RIGHT=(value) { _THIRD_FROM_BOTTOM_RIGHT = value }
  FOURTH_FROM_BOTTOM_RIGHT { _FOURTH_FROM_BOTTOM_RIGHT }
  FOURTH_FROM_BOTTOM_RIGHT=(value) { _FOURTH_FROM_BOTTOM_RIGHT = value }
  SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT { _SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT }
  SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT=(value) { _SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = value }
  SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT { _SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT }
  SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT=(value) { _SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = value }
  SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT { _SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT }
  SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT=(value) { _SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = value }
  BOTTOM_THIRD_FROM_RIGHT { _BOTTOM_THIRD_FROM_RIGHT }
  BOTTOM_THIRD_FROM_RIGHT=(value) { _BOTTOM_THIRD_FROM_RIGHT = value }
  BOTTOM_FOURTH_FROM_RIGHT { _BOTTOM_FOURTH_FROM_RIGHT }
  BOTTOM_FOURTH_FROM_RIGHT=(value) { _BOTTOM_FOURTH_FROM_RIGHT = value }
  BOTTOM_SECOND_FROM_LEFT { _BOTTOM_SECOND_FROM_LEFT }
  BOTTOM_SECOND_FROM_LEFT=(value) { _BOTTOM_SECOND_FROM_LEFT = value }
  SECOND_FROM_BOTTOM_LEFT { _SECOND_FROM_BOTTOM_LEFT }
  SECOND_FROM_BOTTOM_LEFT=(value) { _SECOND_FROM_BOTTOM_LEFT = value }
  THIRD_FROM_BOTTOM_LEFT { _THIRD_FROM_BOTTOM_LEFT }
  THIRD_FROM_BOTTOM_LEFT=(value) { _THIRD_FROM_BOTTOM_LEFT = value }
  BOTTOM_LEFT { _BOTTOM_LEFT }
  BOTTOM_LEFT=(value) { _BOTTOM_LEFT = value }
  SECOND_FROM_BOTTOM_SECOND_FROM_LEFT { _SECOND_FROM_BOTTOM_SECOND_FROM_LEFT }
  SECOND_FROM_BOTTOM_SECOND_FROM_LEFT=(value) { _SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = value }

  initFields_BasicTouchButtonCellPositionFactory() {
    _logUtil = null
    _commonStrings = null
    _TOP_RIGHT = null
    _TOP_LEFT = null
    _SECOND_FROM_TOP_LEFT = null
    _SECOND_FROM_TOP_RIGHT = null
    _TOP_SECOND_FROM_LEFT = null
    _TOP_SECOND_FROM_RIGHT = null
    _BOTTOM_RIGHT = null
    _BOTTOM_SECOND_FROM_RIGHT = null
    _SECOND_FROM_BOTTOM_RIGHT = null
    _THIRD_FROM_BOTTOM_RIGHT = null
    _FOURTH_FROM_BOTTOM_RIGHT = null
    _SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = null
    _SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = null
    _SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = null
    _BOTTOM_THIRD_FROM_RIGHT = null
    _BOTTOM_FOURTH_FROM_RIGHT = null
    _BOTTOM_SECOND_FROM_LEFT = null
    _SECOND_FROM_BOTTOM_LEFT = null
    _THIRD_FROM_BOTTOM_LEFT = null
    _BOTTOM_LEFT = null
    _SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
        _SECOND_FROM_TOP_LEFT = null
        _SECOND_FROM_TOP_RIGHT = null
        _TOP_SECOND_FROM_LEFT = null
        _TOP_SECOND_FROM_RIGHT = null
        
        
        
        _THIRD_FROM_BOTTOM_RIGHT = null
        _FOURTH_FROM_BOTTOM_RIGHT = null
        
        _SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = null
        _SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = null
        _BOTTOM_THIRD_FROM_RIGHT = null
        _BOTTOM_FOURTH_FROM_RIGHT = null
        
        
        _THIRD_FROM_BOTTOM_LEFT = null
        
        
  }
    

    construct new() {
    super()
    initFields_BasicTouchButtonCellPositionFactory()
        _logUtil.putF(_commonStrings.START, this, _commonStrings.CONSTRUCTOR)
        var touchButtonLocationHelper = TouchButtonLocationHelper.new()
        var cellPositionFactory = CellPositionFactory.getInstance()
        cellPositionFactory.init(touchButtonLocationHelper.getTotalColumns(), touchButtonLocationHelper.getTotalRows())
        _TOP_LEFT = cellPositionFactory.getInstanceColRow(0, 0)
        _TOP_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 1), 0)
        _BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, (touchButtonLocationHelper.getTotalRows() - 1))
        _BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 1), (touchButtonLocationHelper.getTotalRows() - 1))
        _BOTTOM_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 2), (touchButtonLocationHelper.getTotalRows() - 1))
        _SECOND_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 1), (touchButtonLocationHelper.getTotalRows() - 2))
        _SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 2), (touchButtonLocationHelper.getTotalRows() - 2))
        _BOTTOM_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, (touchButtonLocationHelper.getTotalRows() - 1))
        _SECOND_FROM_BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, (touchButtonLocationHelper.getTotalRows() - 2))
        _SECOND_FROM_BOTTOM_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, (touchButtonLocationHelper.getTotalRows() - 2))
        if ((touchButtonLocationHelper.getTotalRows() > 2)) {
            _SECOND_FROM_TOP_LEFT = cellPositionFactory.getInstanceColRow(0, 1)
            _SECOND_FROM_TOP_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 1), 1)
        } else {
            _SECOND_FROM_TOP_LEFT = cellPositionFactory.NONE
            _SECOND_FROM_TOP_RIGHT = cellPositionFactory.NONE
        }
        if ((touchButtonLocationHelper.getTotalRows() >= 4)) {
            _THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 1), (touchButtonLocationHelper.getTotalRows() - 3))
            _FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 1), (touchButtonLocationHelper.getTotalRows() - 4))
            _THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.getInstanceColRow(0, (touchButtonLocationHelper.getTotalRows() - 3))
        } else {
            _THIRD_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE
            _FOURTH_FROM_BOTTOM_RIGHT = cellPositionFactory.NONE
            _THIRD_FROM_BOTTOM_LEFT = cellPositionFactory.NONE
        }
        if ((touchButtonLocationHelper.getTotalColumns() >= 4)) {
            _SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 3), (touchButtonLocationHelper.getTotalRows() - 2))
            _SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 4), (touchButtonLocationHelper.getTotalRows() - 2))
            _BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 3), (touchButtonLocationHelper.getTotalRows() - 1))
            _BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 4), (touchButtonLocationHelper.getTotalRows() - 1))
            _TOP_SECOND_FROM_LEFT = cellPositionFactory.getInstanceColRow(1, 0)
            _TOP_SECOND_FROM_RIGHT = cellPositionFactory.getInstanceColRow((touchButtonLocationHelper.getTotalColumns() - 2), 0)
        } else {
            _SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE
            _SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE
            _BOTTOM_THIRD_FROM_RIGHT = cellPositionFactory.NONE
            _BOTTOM_FOURTH_FROM_RIGHT = cellPositionFactory.NONE
            _TOP_SECOND_FROM_LEFT = cellPositionFactory.NONE
            _TOP_SECOND_FROM_RIGHT = cellPositionFactory.NONE
        }
    }
}

import "../../../../../org/allbinary/graphics/CellPosition" for CellPosition
import "../../../../../org/allbinary/graphics/CellPositionFactory" for CellPositionFactory
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./TouchButtonLocationHelper" for TouchButtonLocationHelper

