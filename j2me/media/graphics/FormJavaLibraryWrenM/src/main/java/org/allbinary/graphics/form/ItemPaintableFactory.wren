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
import "./ItemPaintable" for ItemPaintable

class ItemPaintableFactory is ItemPaintable {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ItemPaintableFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_ItemPaintableFactory() {
  }

  construct new() {
    super()
    initFields_ItemPaintableFactory()
  }
    

    static getInstance() {
        return ItemPaintableFactory.instance
    }
    

    getInstanceItemPaintable(paintableForm) {
        return ItemPaintableFactory.instance
    }
}

import "./PaintableForm" for PaintableForm

