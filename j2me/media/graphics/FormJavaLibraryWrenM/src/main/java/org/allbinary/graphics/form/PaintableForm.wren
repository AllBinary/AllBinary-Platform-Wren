// Generated Code Do Not Modify
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR
import "./ABCustomForm" for ABCustomForm

class PaintableForm is ABCustomForm {
    static NULL_PAINTABLE_FORM {
    if (__NULL_PAINTABLE_FORM_set == null) {
      __NULL_PAINTABLE_FORM_set = true
      __NULL_PAINTABLE_FORM = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_PAINTABLE_FORM
  }
  static NULL_PAINTABLE_FORM=(value) {
    __NULL_PAINTABLE_FORM_set = true
    __NULL_PAINTABLE_FORM = value
  }
  canvasStrings { _canvasStrings }
  canvasStrings=(value) { _canvasStrings = value }
  rectangle { _rectangle }
  rectangle=(value) { _rectangle = value }
  x { _x }
  x=(value) { _x = value }
  y { _y }
  y=(value) { _y = value }
  formType { _formType }
  formType=(value) { _formType = value }

  initFields_PaintableForm() {
    _canvasStrings = null
    _rectangle = null
    _x = 0
    _y = 0
    _formType = null
        _canvasStrings = CanvasStrings.getInstance()
        _rectangle = RectangleFactory.SINGLETON
        _x = 0
        _y = 0
        _formType = FormTypeFactory.getInstance().NULL_FORM_TYPE
  }
    

    static getNullPaintableForm() {
        if ((PaintableForm.NULL_PAINTABLE_FORM == NullUtil.getInstance().NULL_OBJECT)) {
            PaintableForm.NULL_PAINTABLE_FORM = PaintableForm.new(StringUtil.getInstance().EMPTY_STRING, List.filled(0, null), BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return PaintableForm.NULL_PAINTABLE_FORM
    }
    

    construct new(title, items, backgroundBasicColor, foregroundBasicColor) {
        super(title, items, backgroundBasicColor, foregroundBasicColor)
        initFields_PaintableForm()
        this.setSelectedIndex(0)
    }
    

    init(rectangle, formType) {
        _rectangle = rectangle
        var point = _rectangle.getPoint()
        _x = point.getX()
        _y = point.getY()
        _formType = formType
    }
    

    getWidth() {
        return _rectangle.getWidth()
    }
}

import "../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./FormTypeFactory" for FormTypeFactory
import "./FormType" for FormType

