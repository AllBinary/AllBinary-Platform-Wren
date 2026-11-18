// Generated Code Do Not Modify
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR
import "./ScrollSelectionForm" for ScrollSelectionForm

class MultipleScrollSelectionHorizontalForm is ScrollSelectionForm {
  rectPaintable { _rectPaintable }
  rectPaintable=(value) { _rectPaintable = value }
  multipleScrollSelectionHorizontalFormTypeItemIndexPaintable { _multipleScrollSelectionHorizontalFormTypeItemIndexPaintable }
  multipleScrollSelectionHorizontalFormTypeItemIndexPaintable=(value) { _multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = value }
  backgroundColor { _backgroundColor }
  backgroundColor=(value) { _backgroundColor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  logged { _logged }
  logged=(value) { _logged = value }
  fontHeight { _fontHeight }
  fontHeight=(value) { _fontHeight = value }

  initFields_MultipleScrollSelectionHorizontalForm() {
    _rectPaintable = null
    _multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = null
    _backgroundColor = 0
    _myFontProcessor = null
    _logged = false
    _fontHeight = 0
        _rectPaintable = NullPaintable.getInstance()
        _multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = ItemIndexPaintable.getInstance()
        _backgroundColor = BasicColorFactory.getInstance().TRANSPARENT_GREY.intValue()
        _myFontProcessor = UpdateMyFontProcessor.new(this)
        _logged = false
        _fontHeight = 0
  }
    

    static createForm(title, items, rectangle, formType, border, backgroundBasicColor, foregroundBasicColor) {
        var scrollSelectionForm = MultipleScrollSelectionHorizontalForm.new(title, items, ItemPaintableFactory.getInstance(), border, backgroundBasicColor, foregroundBasicColor)
        scrollSelectionForm.init(rectangle, formType)
        return scrollSelectionForm
    }
    

    construct new(title, items, formPaintableFactory, border, backgroundBasicColor, foregroundBasicColor) {
        super(title, items, formPaintableFactory, border, 3, backgroundBasicColor, foregroundBasicColor)
        initFields_MultipleScrollSelectionHorizontalForm()
        if ((J2MEUtil.isJ2ME() || J2MEUtil.isHTML())) {
        } else {
            _rectPaintable = MultipleScrollSelectionFormRectPaintable.new(this)
        }
    }
    

    fillRect(graphics) {
        graphics.setColor(_backgroundColor)
        graphics.fillRect(this.x, this.y, this.rectangle.getWidth(), this.rectangle.getHeight())
    }
    

    init(rectangle, formType) {
        super.init(rectangle, formType)
        var formTypeFactory = FormTypeFactory.getInstance()
        if ((formType == formTypeFactory.HORIZONTAL_FORM)) {
            _multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormHorizontalPaintable.new(this)
        } else if ((formType == formTypeFactory.VERTICAL_CENTER_FORM)) {
            _multipleScrollSelectionHorizontalFormTypeItemIndexPaintable = MultipleScrollSelectionFormVerticalPaintable.new(this)
        } else if ((formType == formTypeFactory.NULL_FORM_TYPE)) {
        } else {
            Fiber.abort(JR.exception("Exception", formTypeFactory.UNK))
        }
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        _fontHeight = font.getHeight()
        _myFontProcessor = MyFontProcessor.getInstance()
    }
    

    paintHorizontal(graphics, index, item, dx, dy) {
        var dx2 = (this.paintItem(graphics, index, item, dx, dy) + this.border)
        this.paintable.paint(graphics, index, dx, dy)
        dx = dx2
        return dx
    }
    

    paintVertical(graphics, index, item, dx, dy) {
        this.paintItem(graphics, index, item, dx, dy)
        this.paintable.paint(graphics, index, dx, dy)
        return dx
    }
    

    getStartIndex() {
        return this.getSelectedIndex()
    }
    

    paint(graphics) {
        var jerror0 = Fiber.new {
            _myFontProcessor.process(graphics)
            var start = this.getStartIndex()
            var size = this.size()
            var dx = this.x
            var dy = this.y
            _rectPaintable.paint(graphics)
            graphics.drawString(this.getTitle(), this.x, (this.y - _fontHeight), 0)
            var item = null
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
                if ((dx >= this.rectangle.getMaxX())) {
                    if (_logged) {
                    } else {
                        _logged = true
                        PreLogUtil.put(StringMaker.new().append("painting beyond maxx: ").appendint(JR.i32(this.rectangle.getMaxX())).toString(), this, this.canvasStrings.PAINT)
                    }
                }
                dx = _multipleScrollSelectionHorizontalFormTypeItemIndexPaintable.paint(graphics, index, item, dx, dy)
                }
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.PAINT)
        }
    }
}

import "../../../../javax/microedition/lcdui/Font" for Font
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "./ItemPaintableFactory" for ItemPaintableFactory
import "./FormType" for FormType
import "./ItemIndexPaintable" for ItemIndexPaintable
import "./MultipleScrollSelectionFormRectPaintable" for MultipleScrollSelectionFormRectPaintable
import "./FormTypeFactory" for FormTypeFactory
import "./MultipleScrollSelectionFormVerticalPaintable" for MultipleScrollSelectionFormVerticalPaintable
import "./MultipleScrollSelectionFormHorizontalPaintable" for MultipleScrollSelectionFormHorizontalPaintable

