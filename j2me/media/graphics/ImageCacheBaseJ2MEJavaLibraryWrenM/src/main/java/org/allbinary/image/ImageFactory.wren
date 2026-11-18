/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.image

import "../../../allbinary_java" for JObject, JException, JR

//ImageCacheBaseJavaLibrary - J2ME
class ImageFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ImageFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ImageFactory() {
  }

  construct new() {
    super()
    initFields_ImageFactory()
  }
    

    static getInstance() {
        return ImageFactory.instance
    }
    

    createImageUrl(url) {
        return Image.createImage(url)
    }
    

    createImage(caller, width, height) {
        return MIDPUtil.getInstance().createImageWH(width, height)
    }
    

    createImageFromInputStream(key, inputStream) {
        var image = MIDPUtil.getInstance().createImageFromInputStream(inputStream)
        return image
    }
    

    createImageFromInputStream(inputStream) {
        return MIDPUtil.getInstance().createImageFromInputStream(inputStream)
    }
}

import "../../../java/io/InputStream" for InputStream
import "../../../javax/microedition/lcdui/Image" for Image
import "../../../org/allbinary/MIDPUtil" for MIDPUtil

