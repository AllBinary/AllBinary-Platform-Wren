// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../javax/microedition/lcdui/Canvas" for Canvas

//Temp should not be in any build
class NullDisplayable is Canvas {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NullDisplayable.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_NullDisplayable() {
  }
    

    static getInstance() {
        return NullDisplayable.SINGLETON
    }
    

    construct new() {
    super()
    initFields_NullDisplayable()
    }
    

    paint(graphics) {
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics

