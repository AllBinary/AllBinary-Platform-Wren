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
import "./TouchButton" for TouchButton

class FullTouchButton is TouchButton {

  initFields_FullTouchButton() {
  }
    

    static createButton(touchButtonInput, touchButtonResource, rawRectangle, cellPosition, xBorder, yBorder) {
        return FullTouchButton.new(touchButtonInput, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.RESOURCE).getInstance(0), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(touchButtonResource.HINT).getInstance(0), rawRectangle, cellPosition, xBorder, yBorder)
    }
    

    construct new(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder) {
        super(touchButtonInput, animationInterface, hintAnimationInterface, rawRectangle, cellPosition, xBorder, yBorder)
    }
    

    updateRectangle() {
        var jerror0 = Fiber.new {
            var pointFactory = PointFactory.getInstance()
            var x = (this.rawRectangle.getWidth() * this.cellPositionP.getColumn())
            var y = (this.rawRectangle.getHeight() * this.cellPositionP.getRow())
            this.rectangleP = Rectangle.new(pointFactory.createXY(x, y), (this.rawRectangle.getWidth() + ((2 * this.xBorder))), (this.rawRectangle.getHeight() + ((2 * this.yBorder))))
            var point = this.rectangleP.getPoint()
            this.animationX = (point.getX() + this.xBorder)
            this.animationY = (point.getY() + this.yBorder)
            this.hintAnimationY = JR.shr((this.animationY - this.rectangleP.getHeight()), 1)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "updateRectangle", e)
        }
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../../org/allbinary/graphics/CellPosition" for CellPosition
import "../../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "./TouchButtonInput" for TouchButtonInput
import "./TouchButtonResource" for TouchButtonResource

