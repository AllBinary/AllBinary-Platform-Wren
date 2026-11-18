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
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR
import "./PaintableForm" for PaintableForm

class ScrollSelectionForm is PaintableForm {
    static NULL_SCROLL_SELECTION_FORM {
    if (__NULL_SCROLL_SELECTION_FORM_set == null) {
      __NULL_SCROLL_SELECTION_FORM_set = true
      __NULL_SCROLL_SELECTION_FORM = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_SCROLL_SELECTION_FORM
  }
  static NULL_SCROLL_SELECTION_FORM=(value) {
    __NULL_SCROLL_SELECTION_FORM_set = true
    __NULL_SCROLL_SELECTION_FORM = value
  }
    static NULL_SCROLL_SELECTION_HORIZONTAL_FORM {
    if (__NULL_SCROLL_SELECTION_HORIZONTAL_FORM_set == null) {
      __NULL_SCROLL_SELECTION_HORIZONTAL_FORM_set = true
      __NULL_SCROLL_SELECTION_HORIZONTAL_FORM = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_SCROLL_SELECTION_HORIZONTAL_FORM
  }
  static NULL_SCROLL_SELECTION_HORIZONTAL_FORM=(value) {
    __NULL_SCROLL_SELECTION_HORIZONTAL_FORM_set = true
    __NULL_SCROLL_SELECTION_HORIZONTAL_FORM = value
  }
    static INSIDE_FORM { " inside form" }
    static IS_IN_FORM { "isInForm" }
    static GET_SELECTED_INDEX { "getSelectedIndexForPoint" }
  rectangleCollisionUtil { _rectangleCollisionUtil }
  rectangleCollisionUtil=(value) { _rectangleCollisionUtil = value }
  border { _border }
  border=(value) { _border = value }
  halfBorder { _halfBorder }
  halfBorder=(value) { _halfBorder = value }
  buttonBasicColor { _buttonBasicColor }
  buttonBasicColor=(value) { _buttonBasicColor = value }
  scrollSelectionFormFormTypeItemIndexPaintable { _scrollSelectionFormFormTypeItemIndexPaintable }
  scrollSelectionFormFormTypeItemIndexPaintable=(value) { _scrollSelectionFormFormTypeItemIndexPaintable = value }
  formTypeItemIndexDx { _formTypeItemIndexDx }
  formTypeItemIndexDx=(value) { _formTypeItemIndexDx = value }
  paintable { _paintable }
  paintable=(value) { _paintable = value }
  adjustedExtraBorder { _adjustedExtraBorder }
  adjustedExtraBorder=(value) { _adjustedExtraBorder = value }

  initFields_ScrollSelectionForm() {
    _rectangleCollisionUtil = null
    _border = 0
    _halfBorder = 0
    _buttonBasicColor = null
    _scrollSelectionFormFormTypeItemIndexPaintable = null
    _formTypeItemIndexDx = null
    _paintable = null
    _adjustedExtraBorder = 0
        _rectangleCollisionUtil = RectangleCollisionUtil.getInstance()
        
        
        
        _scrollSelectionFormFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
        _formTypeItemIndexDx = ItemIndexDx.getInstance()
        _paintable = ItemPaintableFactory.getInstance()
        
  }
    

    static createForm(title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor) {
        var jerror0 = Fiber.new {
            if ((formPaintableFactory == ItemPaintableFactory.getInstance())) {
                return ScrollSelectionForm.new(title, items, formPaintableFactory, border, -3, backgroundBasicColor, foregroundBasicColor)
            } else {
                var commonStrings = CommonStrings.getInstance()
                var logUtil = LogUtil.getInstance()
                logUtil.putF(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION)
                return PaintableForm.getNullPaintableForm()
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            var logUtil = LogUtil.getInstance()
            logUtil.put(commonStrings.EXCEPTION, logUtil, commonStrings.EXCEPTION, e)
            return PaintableForm.getNullPaintableForm()
        }
    }
    

    static getNullScrollSelectionForm() {
        if ((ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM == NullUtil.getInstance().NULL_OBJECT)) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, List.filled(0, null), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return ScrollSelectionForm.NULL_SCROLL_SELECTION_FORM
    }
    

    static getNullScrollSelectionFormHorizontal() {
        if ((ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM == NullUtil.getInstance().NULL_OBJECT)) {
            ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM = ScrollSelectionForm.createForm(StringUtil.getInstance().EMPTY_STRING, List.filled(0, null), ItemPaintableFactory.getInstance(), 0, BasicColorFactory.getInstance().BLACK, BasicColorFactory.getInstance().WHITE)
        }
        return ScrollSelectionForm.NULL_SCROLL_SELECTION_HORIZONTAL_FORM
    }
    

    construct new(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor) {
        super(title, items, backgroundBasicColor, foregroundBasicColor)
        initFields_ScrollSelectionForm()
        _adjustedExtraBorder = adjustedExtraBorder
        _buttonBasicColor = foregroundBasicColor
        _border = border
        _halfBorder = (JR.shr(border, 1))
        _paintable = formPaintableFactory.getInstanceItemPaintable(this)
    }
    

    init(rectangle, formType) {
        super.init(rectangle, formType)
        var formTypeFactory = FormTypeFactory.getInstance()
        if ((formType == formTypeFactory.HORIZONTAL_FORM)) {
            _scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormHorizontalPaintable.new(this)
            _formTypeItemIndexDx = ScrollSelectionFormHorizontalDx.new(this)
        } else if ((formType == formTypeFactory.VERTICAL_CENTER_FORM)) {
            _scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormVerticalPaintable.new(this)
            _formTypeItemIndexDx = ScrollSelectionFormVericalDx.new(this)
        } else if ((formType == formTypeFactory.TEMP_HORIZONTAL_FORM)) {
            _scrollSelectionFormFormTypeItemIndexPaintable = ScrollSelectionFormTempHorizontalPaintable.new(this)
            _formTypeItemIndexDx = ScrollSelectionFormTempHorizontalDx.new(this)
        } else if ((formType == formTypeFactory.NULL_FORM_TYPE)) {
        } else {
            Fiber.abort(JR.exception("Exception", formTypeFactory.UNK))
        }
    }
    

    paintItemHorizontal(graphics, index, item, x, y) {
        var width = item.getMinimumWidth()
        return JR.i32(JR.i32(x + width) + _border)
    }
    

    paintItemVertical(graphics, index, item, x, y) {
        var height = item.getMinimumHeight()
        return JR.i32(JR.i32(y + height) + _border)
    }
    

    paintItemTempHorizontal(graphics, index, item, x, y) {
        return 0
    }
    

    getSelectedIndexForPointHorizontalDx(index, item, dx, dy) {
        return JR.i32(dx - _halfBorder)
    }
    

    getSelectedIndexForPointVerticalDx(index, item, dx, dy) {
        return JR.i32(dx + this.getDiffX(item))
    }
    

    getSelectedIndexForPointTempHorizontalDx(index, item, dx, dy) {
        return JR.i32(dx + this.getDiffX(item))
    }
    

    append(item) {
        return super.append(item)
    }
    

    getSelectedItem(point) {
        var index = this.getSelectedIndexForPoint(point)
        if ((index != -1)) {
            return this.get(index)
        } else {
            return ABCustomItem.getNullInstance()
        }
    }
    

    getItemIndex(item) {
        var nextItem = null
        var size = this.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            nextItem = this.get(index)
            if ((nextItem == item)) {
                return index
            }
            }
        }
        return -1
    }
    

    getStartIndex() {
        return 0
    }
    

    getSelectedIndexForPoint(point) {
        var start = this.getStartIndex()
        var size = this.size()
        var dx = this.getDx()
        var dy = this.getDy()
        var formTypeFactory = FormTypeFactory.getInstance()
        var commonLabels = CommonLabels.getInstance()
        var stringBuffer = StringMaker.new()
        stringBuffer.append(commonLabels.START_LABEL)
        stringBuffer.appendint(start)
        stringBuffer.append(CommonSeps.getInstance().SPACE)
        stringBuffer.append(commonLabels.TOTAL_LABEL)
        stringBuffer.appendint(size)
        this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX)
        var item = null
        var width = 0
        var height = 0
        var diffX = 0
        if (true) {
            var index = start
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            item = this.get(index)
            width = item.getMinimumWidth()
            height = item.getMinimumHeight()
            diffX = _formTypeItemIndexDx.getDx(index, item, dx, dy)
            if (_rectangleCollisionUtil.isInside(diffX, JR.i32(dy - _halfBorder), JR.i32(JR.i32(diffX + width) + _border), JR.i32(JR.i32(JR.i32(dy + height) + _halfBorder) + 1), point.getX(), point.getY())) {
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(commonLabels.ITEM_LABEL)
                stringBuffer.append(item.getLabel())
                stringBuffer.append(CommonSeps.getInstance().SPACE)
                stringBuffer.append(commonLabels.INDEX_LABEL)
                stringBuffer.appendint(index)
                this.logUtil.putF(stringBuffer.toString(), this, ScrollSelectionForm.GET_SELECTED_INDEX)
                return index
            }
            if ((this.formType == formTypeFactory.HORIZONTAL_FORM)) {
                dx = JR.i32(JR.i32(dx + width) + _border)
                if ((dx > this.rectangle.getMaxX())) {
                    break
                }
            } else if ((this.formType == formTypeFactory.VERTICAL_CENTER_FORM)) {
                dy = JR.i32(JR.i32(dy + height) + _border)
                if ((dy > this.rectangle.getMaxY())) {
                    break
                }
            } else if ((this.formType == formTypeFactory.NULL_FORM_TYPE)) {
            } else {
                Fiber.abort(JR.exception("Exception", formTypeFactory.UNK))
            }
            }
        }
        return -1
    }
    

    processInputKey(gameKeyCode) {
        var formTypeFactory = FormTypeFactory.getInstance()
        if ((this.size() == 0)) {
            return -1
        }
        var index = this.getSelectedIndex()
        if (((this.formType == formTypeFactory.HORIZONTAL_FORM) || (this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM))) {
            if ((gameKeyCode == Canvas.RIGHT)) {
                index = JR.i32(index + 1)
            } else if ((gameKeyCode == Canvas.LEFT)) {
                index = JR.i32(index - 1)
            }
        } else if ((this.formType == formTypeFactory.VERTICAL_CENTER_FORM)) {
            if ((gameKeyCode == Canvas.DOWN)) {
                index = JR.i32(index + 1)
            } else if ((gameKeyCode == Canvas.UP)) {
                index = JR.i32(index - 1)
            }
        } else if ((this.formType == formTypeFactory.NULL_FORM_TYPE)) {
        } else {
            Fiber.abort(JR.exception("Exception", formTypeFactory.UNK))
        }
        var max = JR.i32(this.size() - 1)
        if ((index < 0)) {
            this.setSelectedIndex(0)
        } else if ((index > max)) {
            this.setSelectedIndex(max)
        } else {
            this.setSelectedIndex(index)
        }
        return -1
    }
    

    isInForm(point) {
        if (_rectangleCollisionUtil.isInside(this.x, (this.y - _halfBorder), (this.rectangle.getMaxX() + _border), (this.rectangle.getMaxY() + _border), point.getX(), point.getY())) {
            this.logUtil.putF(StringMaker.new().append(StringUtil.getInstance().toString(point)).append(ScrollSelectionForm.INSIDE_FORM).toString(), this, ScrollSelectionForm.IS_IN_FORM)
            return true
        }
        return false
    }
    

    paintItem(graphics, index, item, x, y) {
        item.paintXY(graphics, x, y)
        var width = item.getMinimumWidth()
        var height = item.getMinimumHeight()
        graphics.setColor(this.getButtonBasicColor().intValue())
        var adjustedBorder = 3
        graphics.drawRect(JR.i32(JR.i32(x - _halfBorder) - adjustedBorder), JR.i32(JR.i32(y - _halfBorder) - adjustedBorder), JR.i32(JR.i32(width + _border) + _adjustedExtraBorder), JR.i32(JR.i32(height + _border) + _adjustedExtraBorder))
        return _scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)
    }
    

    paintUnselectedItem(graphics, index, item, x, y) {
        graphics.setColor(this.getButtonBasicColor().intValue())
        item.paintUnselected(graphics, x, y)
        return _scrollSelectionFormFormTypeItemIndexPaintable.paint(graphics, index, item, x, y)
    }
    

    getDiffX(item) {
        return 0
    }
    

    getDx() {
        return this.x
    }
    

    getDy() {
        return this.y
    }
    

    setButtonBasicColor(buttonBasicColor) {
        _buttonBasicColor = buttonBasicColor
    }
    

    getButtonBasicColor() {
        return _buttonBasicColor
    }
}

import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/math/RectangleCollisionUtil" for RectangleCollisionUtil
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./ItemPaintableFactory" for ItemPaintableFactory
import "./ItemIndexPaintable" for ItemIndexPaintable
import "./ItemIndexDx" for ItemIndexDx
import "./ItemPaintable" for ItemPaintable
import "./FormTypeFactory" for FormTypeFactory
import "./ScrollSelectionFormTempHorizontalPaintable" for ScrollSelectionFormTempHorizontalPaintable
import "./ScrollSelectionFormTempHorizontalDx" for ScrollSelectionFormTempHorizontalDx
import "./ScrollSelectionFormVerticalPaintable" for ScrollSelectionFormVerticalPaintable
import "./ScrollSelectionFormVericalDx" for ScrollSelectionFormVericalDx
import "./ScrollSelectionFormHorizontalPaintable" for ScrollSelectionFormHorizontalPaintable
import "./ScrollSelectionFormHorizontalDx" for ScrollSelectionFormHorizontalDx
import "./FormType" for FormType

