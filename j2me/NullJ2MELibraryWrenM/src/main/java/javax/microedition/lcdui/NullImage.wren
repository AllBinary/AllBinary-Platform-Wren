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
// package javax.microedition.lcdui

import "../../../allbinary_java" for JObject, JException, JR

class NullImage is JObject {
    static NULL_IMAGE_ARRAY {
    if (__NULL_IMAGE_ARRAY_set == null) {
      __NULL_IMAGE_ARRAY_set = true
      __NULL_IMAGE_ARRAY = List.filled(0, null)
    }
    return __NULL_IMAGE_ARRAY
  }
  static NULL_IMAGE_ARRAY=(value) {
    __NULL_IMAGE_ARRAY_set = true
    __NULL_IMAGE_ARRAY = value
  }
    static NULL_IMAGE {
    if (__NULL_IMAGE_set == null) {
      __NULL_IMAGE_set = true
      __NULL_IMAGE = Image.new()
    }
    return __NULL_IMAGE
  }
  static NULL_IMAGE=(value) {
    __NULL_IMAGE_set = true
    __NULL_IMAGE = value
  }

  initFields_NullImage() {
  }

  construct new() {
    super()
    initFields_NullImage()
  }
}

import "./Image" for Image

