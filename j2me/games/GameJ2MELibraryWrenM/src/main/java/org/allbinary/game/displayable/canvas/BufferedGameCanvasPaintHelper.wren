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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/graphics/paint/ProcessPaintable" for ProcessPaintable

class BufferedGameCanvasPaintHelper is ProcessPaintable {
    static MAX_IMAGES { 4 }
  gameCanvas { _gameCanvas }
  gameCanvas=(value) { _gameCanvas = value }
  offScreenImage { _offScreenImage }
  offScreenImage=(value) { _offScreenImage = value }
  previousImage { _previousImage }
  previousImage=(value) { _previousImage = value }
  circularIndexUtil { _circularIndexUtil }
  circularIndexUtil=(value) { _circularIndexUtil = value }
  drawCircularIndexUtil { _drawCircularIndexUtil }
  drawCircularIndexUtil=(value) { _drawCircularIndexUtil = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }

  initFields_BufferedGameCanvasPaintHelper() {
    _gameCanvas = null
    _offScreenImage = null
    _previousImage = null
    _circularIndexUtil = null
    _drawCircularIndexUtil = null
    _anchor = 0
        _gameCanvas = NullCanvas.NULL_CANVAS
        _offScreenImage = List.filled(BufferedGameCanvasPaintHelper.MAX_IMAGES, null)
        _previousImage = NullImage.NULL_IMAGE
        _circularIndexUtil = CircularIndexUtil.createInstance(BufferedGameCanvasPaintHelper.MAX_IMAGES)
        _drawCircularIndexUtil = CircularIndexUtil.createInstanceAt(JR.i32(BufferedGameCanvasPaintHelper.MAX_IMAGES - 1), BufferedGameCanvasPaintHelper.MAX_IMAGES)
        _anchor = Anchor.TOP_LEFT
  }
    

    construct new(gameCanvas) {
    super()
    initFields_BufferedGameCanvasPaintHelper()
        Fiber.abort(JR.exception("Exception", "No Longer Used"))
    }
    

    process() {
        var myCanvas = (_gameCanvas)
        myCanvas.draw(_offScreenImage[_circularIndexUtil.getIndex()].getGraphics())
        _circularIndexUtil.next()
        _drawCircularIndexUtil.next()
    }
    

    paint(graphics) {
        _previousImage = _offScreenImage[_drawCircularIndexUtil.getIndex()]
        graphics.drawImage(_previousImage, 0, 0, _anchor)
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../../org/allbinary/util/CircularIndexUtil" for CircularIndexUtil
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

