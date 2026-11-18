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
import "./ScrollCurrentSelectionForm" for ScrollCurrentSelectionForm

class CommandCurrentSelectionForm is ScrollCurrentSelectionForm {
  selectedAnimationArray { _selectedAnimationArray }
  selectedAnimationArray=(value) { _selectedAnimationArray = value }
  unSelectedAnimationArray { _unSelectedAnimationArray }
  unSelectedAnimationArray=(value) { _unSelectedAnimationArray = value }

  initFields_CommandCurrentSelectionForm() {
    _selectedAnimationArray = null
    _unSelectedAnimationArray = null
        _selectedAnimationArray = List.filled(16, null)
        _unSelectedAnimationArray = List.filled(16, null)
  }
    

    construct new(title, items, border, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor) {
        super(title, items, ItemPaintableFactory.getInstance(), border, -3, moveForSmallScreen, backgroundBasicColor, foregroundBasicColor)
        initFields_CommandCurrentSelectionForm()
        this.initAnimations()
        this.addAll(items)
    }
    

    updateMeasurement(graphics) {
        this.updateAll(graphics, this.getAllitems())
        super.updateMeasurement(graphics)
    }
    

    initAnimations() {
        var nullAnimation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        if (true) {
            var index = _selectedAnimationArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _selectedAnimationArray[index] = nullAnimation
            }
        }
        if (true) {
            var index = _unSelectedAnimationArray.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            _unSelectedAnimationArray[index] = nullAnimation
            }
        }
    }
    

    addAll(items) {
        if (true) {
            var index = items.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            this.addAt(index, items[index])
            }
        }
    }
    

    addAt(index, item) {
        var basicColorFactory = BasicColorFactory.getInstance()
        var buttonColor = basicColorFactory.TRANSPARENT_GREY
        var selectedButtonColor = basicColorFactory.TRANSPARENT_RED
        var width = item.getMinimumWidth()
        var height = item.getMinimumHeight()
        var adjustedBorder = 3
        var offset = -((this.halfBorder + adjustedBorder))
        var rectWidth = ((width + this.border) - adjustedBorder)
        var rectHeight = ((height + this.border) - adjustedBorder)
        if ((J2MEUtil.isJ2ME() || J2MEUtil.isHTML())) {
            _selectedAnimationArray[index] = RectangleAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        } else {
            _selectedAnimationArray[index] = RectangleFilledAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, selectedButtonColor)
        }
        adjustedBorder = 4
        if ((J2MEUtil.isJ2ME() || J2MEUtil.isHTML())) {
            _unSelectedAnimationArray[index] = RectangleAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, buttonColor)
        } else {
            _unSelectedAnimationArray[index] = RectangleFilledAdjustedAnimation.new(rectWidth, rectHeight, offset, offset, buttonColor)
        }
    }
    

    updateAll(graphics, items) {
        if (true) {
            var index = items.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            items[index].preMeasurement(graphics)
            this.updateAt(index, items[index])
            }
        }
    }
    

    updateAt(index, item) {
        var basicColorFactory = BasicColorFactory.getInstance()
        var buttonColor = basicColorFactory.TRANSPARENT_GREY
        var selectedButtonColor = basicColorFactory.TRANSPARENT_RED
        var width = item.getMinimumWidth()
        var height = item.getMinimumHeight()
        var adjustedBorder = 3
        var offset = -((this.halfBorder + adjustedBorder))
        var rectWidth = ((width + this.border) - adjustedBorder)
        var rectHeight = ((height + this.border) - adjustedBorder)
        if ((J2MEUtil.isJ2ME() || J2MEUtil.isHTML())) {
            var rectangleAdjustedAnimation = _selectedAnimationArray[index]
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor)
        } else {
            var rectangleAdjustedAnimation = _selectedAnimationArray[index]
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(selectedButtonColor)
        }
        adjustedBorder = 4
        if ((J2MEUtil.isJ2ME() || J2MEUtil.isHTML())) {
            var rectangleAdjustedAnimation = _unSelectedAnimationArray[index]
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(buttonColor)
        } else {
            var rectangleAdjustedAnimation = _unSelectedAnimationArray[index]
            rectangleAdjustedAnimation.setWidth(rectWidth)
            rectangleAdjustedAnimation.setHeight(rectHeight)
            rectangleAdjustedAnimation.setOffsetX(offset)
            rectangleAdjustedAnimation.setOffsetY(offset)
            rectangleAdjustedAnimation.setBasicColorP(buttonColor)
        }
    }
    

    getSelectedCommand() {
        var index = super.getSelectedIndex()
        var commandTextItem = this.get(index)
        return commandTextItem.getCommand()
    }
    

    append(item) {
        var result = super.append(item)
        this.addAt(result, item)
        return result
    }
    

    delete(itemNum) {
        super.delete(itemNum)
    }
    

    deleteAll() {
        this.initAnimations()
        super.deleteAll()
    }
    

    insert(itemNum, item) {
        super.insert(itemNum, item)
    }
    

    set(itemNum, item) {
        super.set(itemNum, item)
    }
    

    paint(graphics) {
        this.myFontProcessor.process(graphics)
        super.paint(graphics)
    }
    

    paintItem(graphics, index, item, x, y) {
        _selectedAnimationArray[index].paintXY(graphics, x, y)
        return super.paintItem(graphics, index, item, x, y)
    }
    

    paintUnselectedItem(graphics, index, item, x, y) {
        _unSelectedAnimationArray[index].paintXY(graphics, x, y)
        return super.paintUnselectedItem(graphics, index, item, x, y)
    }
}

import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../org/allbinary/animation/vector/RectangleAdjustedAnimation" for RectangleAdjustedAnimation
import "../../../../org/allbinary/animation/vector/RectangleFilledAdjustedAnimation" for RectangleFilledAdjustedAnimation
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../org/allbinary/graphics/form/item/CommandTextItem" for CommandTextItem
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "./ItemPaintableFactory" for ItemPaintableFactory

