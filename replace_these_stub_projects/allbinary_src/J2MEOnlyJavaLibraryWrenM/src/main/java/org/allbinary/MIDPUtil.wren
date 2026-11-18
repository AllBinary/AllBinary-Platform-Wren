/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2026 AllBinary
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
// package org.allbinary

import "../../allbinary_java" for JObject, JException, JR

//like microemu-playn, so the languages without overloading can be generated. J2ME uses the MIDP overloads.
class MIDPUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = MIDPUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_MIDPUtil() {
  }

  construct new() {
    super()
    initFields_MIDPUtil()
  }
    

    static getInstance() {
        return MIDPUtil.instance
    }
    

    createImageWH(width, height) {
        return Image.createImage(width, height)
    }
    

    createImageFromByteArray(imageData, imageOffset, imageLength) {
        return Image.createImage(imageData, imageOffset, imageLength)
    }
    

    createImageFromInputStream(inputStream) {
        return Image.createImage(inputStream)
    }
    

    createPlayerFromInputStream(inputStream, type) {
        return Manager.createPlayer(inputStream, type)
    }
    

    appendItem(form, item) {
        return form.append(item)
    }
}

import "../../java/io/IOException" for IOException
import "../../java/io/InputStream" for InputStream
import "../../javax/microedition/lcdui/Form" for Form
import "../../javax/microedition/lcdui/Image" for Image
import "../../javax/microedition/lcdui/Item" for Item
import "../../javax/microedition/media/Manager" for Manager
import "../../javax/microedition/media/MediaException" for MediaException
import "../../javax/microedition/media/Player" for Player

