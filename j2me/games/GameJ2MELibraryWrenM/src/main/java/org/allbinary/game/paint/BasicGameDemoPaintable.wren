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
import "../../../../org/allbinary/graphics/paint/StatePaintable" for StatePaintable

class BasicGameDemoPaintable is StatePaintable {
  mainDemoStatePaintable { _mainDemoStatePaintable }
  mainDemoStatePaintable=(value) { _mainDemoStatePaintable = value }
  ownershipPaintable { _ownershipPaintable }
  ownershipPaintable=(value) { _ownershipPaintable = value }
  helpPaintableInterface { _helpPaintableInterface }
  helpPaintableInterface=(value) { _helpPaintableInterface = value }
  currentStatePaintable { _currentStatePaintable }
  currentStatePaintable=(value) { _currentStatePaintable = value }

  initFields_BasicGameDemoPaintable() {
    _mainDemoStatePaintable = null
    _ownershipPaintable = null
    _helpPaintableInterface = null
    _currentStatePaintable = null
        
        
        
        _currentStatePaintable = NullPaintable.getInstance()
  }
    

    construct new(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface) {
    super()
    initFields_BasicGameDemoPaintable()
        _mainDemoStatePaintable = mainDemoStatePaintable
        this.setCurrentStatePaintable(NullPaintable.getInstance())
        _ownershipPaintable = ownershipPaintable
        _helpPaintableInterface = helpPaintableInterface
    }
    

    setState(state) {
        if ((state == 0)) {
            this.setCurrentStatePaintable(this.getMainDemoStatePaintable())
        } else if ((state == 1)) {
            this.setCurrentStatePaintable(_helpPaintableInterface)
        } else {
            this.setCurrentStatePaintable(_ownershipPaintable)
        }
    }
    

    paint(graphics) {
        this.getCurrentStatePaintable().paint(graphics)
    }
    

    getHelpPaintableInterface() {
        return _helpPaintableInterface
    }
    

    setCurrentStatePaintable(currentStatePaintable) {
        _currentStatePaintable = currentStatePaintable
    }
    

    getCurrentStatePaintable() {
        return _currentStatePaintable
    }
    

    getMainDemoStatePaintable() {
        return _mainDemoStatePaintable
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable

