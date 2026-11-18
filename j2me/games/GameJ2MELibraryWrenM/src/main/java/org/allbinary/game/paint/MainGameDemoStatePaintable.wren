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
// package org.allbinary.game.paint

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable

class MainGameDemoStatePaintable is Paintable {
  ownershipPaintableInterface { _ownershipPaintableInterface }
  ownershipPaintableInterface=(value) { _ownershipPaintableInterface = value }
  menuPaintableInterface { _menuPaintableInterface }
  menuPaintableInterface=(value) { _menuPaintableInterface = value }

  initFields_MainGameDemoStatePaintable() {
    _ownershipPaintableInterface = null
    _menuPaintableInterface = null
        
        
  }
    

    construct new(ownershipPaintableInterface, menuPaintableInterface) {
    super()
    initFields_MainGameDemoStatePaintable()
        _ownershipPaintableInterface = ownershipPaintableInterface
        _menuPaintableInterface = menuPaintableInterface
    }
    

    paint(graphics) {
        _menuPaintableInterface.paint(graphics)
        _ownershipPaintableInterface.paint(graphics)
    }
    

    getOwnershipPaintableInterface() {
        return _ownershipPaintableInterface
    }
    

    getMenuPaintableInterface() {
        return _menuPaintableInterface
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics

