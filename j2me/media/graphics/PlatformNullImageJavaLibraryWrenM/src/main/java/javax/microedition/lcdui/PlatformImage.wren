/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package javax.microedition.lcdui

import "../../../allbinary_java" for JObject, JException, JR

//PlatformNullImageJavaLibrary
class PlatformImage is JObject {

  initFields_PlatformImage() {
  }

  construct new() {
    super()
    initFields_PlatformImage()
  }
    

    getImage(graphicsSurface2) {
        return NullImage.NULL_IMAGE
    }
    

    getSurfaceWidth(graphicsSurface2, width) {
        return width
    }
    

    getSurfaceHeight(graphicsSurface2, height) {
        return height
    }
    

    getWidth(image, width) {
        return width
    }
    

    getHeight(image, height) {
        return height
    }
    

    getGraphics(graphicsSurface, width, height, image) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    drawImage(image, x, y, anchor, g2, g) {
    }
    

    drawRegion(image, x_src, y_src, width, height, transform, x_dst, y_dst, anchor, g) {
    }
    

    getRGB(argb, offset, scanlength, x, y, width, height, image) {
    }
    

    setRGB(argb, offset, scanlength, x, y, width, height, image) {
    }
    

    getData(image) {
        return NullUtil.getInstance().NULL_INT_ARRAY
    }
}

import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "./NullImage" for NullImage
import "./Image" for Image
import "./Graphics" for Graphics

