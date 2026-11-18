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
import "./ScrollSelectionForm" for ScrollSelectionForm

class ScrollCurrentSelectionForm is ScrollSelectionForm {
  moveForSmallScreen { _moveForSmallScreen }
  moveForSmallScreen=(value) { _moveForSmallScreen = value }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  processor { _processor }
  processor=(value) { _processor = value }
  preItemIndexDx { _preItemIndexDx }
  preItemIndexDx=(value) { _preItemIndexDx = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }
  maxWidth { _maxWidth }
  maxWidth=(value) { _maxWidth = value }

  initFields_ScrollCurrentSelectionForm() {
    _moveForSmallScreen = false
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _processor = null
    _preItemIndexDx = null
    _dx = 0
    _dy = 0
    _maxWidth = 0
        
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        _processor = Processor.getInstance()
        _preItemIndexDx = ItemIndexDx.getInstance()
        _dx = 0
        _dy = 0
        _maxWidth = 0
  }
    

    construct new(title, items, formPaintableFactory, border, adjustedExtraBorder, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor) {
        super(title, items, formPaintableFactory, border, adjustedExtraBorder, backgroundBasicColor, foregroundBasicColor)
        initFields_ScrollCurrentSelectionForm()
        _moveForSmallScreen = moveForSmallScreen
    }
    

    init(rectangle, formType) {
        super.init(rectangle, formType)
        var formTypeFactory = FormTypeFactory.getInstance()
        if ((formType == formTypeFactory.TEMP_HORIZONTAL_FORM)) {
            _processor = TempHorizontalFormProcessor.new(this)
            _preItemIndexDx = TempHorizontalItemIndexDx.new(this)
        } else if ((formType == formTypeFactory.HORIZONTAL_FORM)) {
            _processor = HorizontalFormProcessor.new(this)
            _preItemIndexDx = HorizontalItemIndexDx.new(this)
        } else if ((formType == formTypeFactory.VERTICAL_CENTER_FORM)) {
            _processor = VerticalFormProcessor.new(this)
            _preItemIndexDx = VerticalItemIndexDx.new(this)
        } else if ((formType == formTypeFactory.NULL_FORM_TYPE)) {
        } else {
            this.logUtil.putF(formTypeFactory.UNK, this, this.commonStrings.INIT)
        }
        _myFontProcessor = _updateMyFontProcessor
    }
    

    updateMeasurement(graphics) {
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    processTempHorizontalForm() {
        _dx = ((this.x - 30) + (JR.shr(this.rectangle.getWidth(), 1)))
        _dy = this.y
    }
    

    processHorizontalForm() {
        var size = this.size()
        var totalWidth = 0
        var item = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            item = this.get(index)
            totalWidth = JR.i32(totalWidth + (item.getMinimumWidth() + this.border))
            }
        }
        _dx = ((this.x + (JR.shr(this.rectangle.getWidth(), 1))) - (JR.shr(totalWidth, 1)))
        _dy = (this.y + (JR.shr(this.rectangle.getHeight(), 1)))
        if (_moveForSmallScreen) {
            var maxTitleHeight = 175
            if ((_dy < maxTitleHeight)) {
                _dy = maxTitleHeight
            }
        }
    }
    

    processVerticalForm() {
        var totalHeight = 0
        var size = this.size()
        var item2 = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            item2 = this.get(index)
            if ((_maxWidth < item2.getMinimumWidth())) {
                _maxWidth = item2.getMinimumWidth()
            }
            totalHeight = JR.i32(totalHeight + (item2.getMinimumHeight() + this.border))
            }
        }
        _dx = ((((this.rectangle.getWidth() - _maxWidth)) / 2))
        if ((this.size() > 0)) {
            _dy = (this.y + ((((this.rectangle.getHeight() - totalHeight)) / 2)))
            if (_moveForSmallScreen) {
                var maxTitleHeight = 175
                if ((_dy < maxTitleHeight)) {
                    _dy = maxTitleHeight
                }
            }
        } else {
            _dy = this.y
        }
    }
    

    getXTempHorizontalForm(index, item, dx, dy) {
        return this.getDiffX(item)
    }
    

    getXHorizontalForm(index, item, dx, dy) {
        return 0
    }
    

    getXVerticalForm(index, item, dx, dy) {
        return (this.getDiffX(item) + this.halfBorder)
    }
    

    getDiffX(item) {
        return (JR.shr(((_maxWidth - item.getMinimumWidth())), 1))
    }
    

    getDx() {
        return _dx
    }
    

    getDy() {
        return _dy
    }
    

    paint(graphics) {
        var jerror0 = Fiber.new {
            _processor.process()
            var delta = 0
            var deltaX = this.getDx()
            var deltaY = this.getDy()
            var size = this.size()
            var formTypeFactory = FormTypeFactory.getInstance()
            var item = null
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                item = this.get(index)
                var diffX = _preItemIndexDx.getDx(index, item, _dx, _dy)
                if ((index == this.getSelectedIndex())) {
                    delta = this.paintItem(graphics, index, item, JR.i32(deltaX + diffX), deltaY)
                    this.paintable.paint(graphics, index, JR.i32(deltaX + diffX), deltaY)
                } else {
                    delta = this.paintUnselectedItem(graphics, index, item, JR.i32(deltaX + diffX), deltaY)
                    this.paintable.paint(graphics, index, JR.i32(deltaX + diffX), deltaY)
                }
                if ((this.formType == formTypeFactory.TEMP_HORIZONTAL_FORM)) {
                } else if ((this.formType == formTypeFactory.HORIZONTAL_FORM)) {
                    deltaX = delta
                } else if ((this.formType == formTypeFactory.VERTICAL_CENTER_FORM)) {
                    deltaY = delta
                } else {
                    Fiber.abort(JR.exception("Exception", formTypeFactory.UNK))
                }
                }
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT, e)
        }
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/canvas/Processor" for Processor
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "./ItemIndexDx" for ItemIndexDx
import "./ItemPaintableFactory" for ItemPaintableFactory
import "./FormTypeFactory" for FormTypeFactory
import "./VerticalFormProcessor" for VerticalFormProcessor
import "./VerticalItemIndexDx" for VerticalItemIndexDx
import "./HorizontalFormProcessor" for HorizontalFormProcessor
import "./HorizontalItemIndexDx" for HorizontalItemIndexDx
import "./TempHorizontalFormProcessor" for TempHorizontalFormProcessor
import "./TempHorizontalItemIndexDx" for TempHorizontalItemIndexDx
import "./FormType" for FormType

