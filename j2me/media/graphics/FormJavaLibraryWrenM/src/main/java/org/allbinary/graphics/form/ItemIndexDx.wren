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
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR

class ItemIndexDx is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ItemIndexDx.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ItemIndexDx() {
  }

  construct new() {
    super()
    initFields_ItemIndexDx()
  }
    

    static getInstance() {
        return ItemIndexDx.instance
    }
    

    getDx(index, item, dx, dy) {
        return 0
    }
}

import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem

