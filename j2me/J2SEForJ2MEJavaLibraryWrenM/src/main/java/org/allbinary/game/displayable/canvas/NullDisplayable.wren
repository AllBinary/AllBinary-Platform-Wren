// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../javax/microedition/lcdui/Canvas" for Canvas

//J2SEForJ2ME
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
  baseGameStatistics { _baseGameStatistics }
  baseGameStatistics=(value) { _baseGameStatistics = value }

  initFields_NullDisplayable() {
    _baseGameStatistics = null
        _baseGameStatistics = GameStatisticsFactory.getInstance()
  }
    

    static getInstance() {
        return NullDisplayable.SINGLETON
    }
    

    construct new() {
    super()
    initFields_NullDisplayable()
    }
    

    paint(graphics) {
        _baseGameStatistics.nextRefresh()
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/canvas/BaseGameStatistics" for BaseGameStatistics
import "../../../../../org/allbinary/canvas/GameStatisticsFactory" for GameStatisticsFactory

