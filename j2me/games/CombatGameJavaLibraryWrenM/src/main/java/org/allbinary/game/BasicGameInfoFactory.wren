// Generated Code Do Not Modify
// package org.allbinary.game

import "../../../allbinary_java" for JObject, JException, JR

class BasicGameInfoFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = BasicGameInfoFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  currentReleaseIndex { _currentReleaseIndex }
  currentReleaseIndex=(value) { _currentReleaseIndex = value }
  currentDestroyIndex { _currentDestroyIndex }
  currentDestroyIndex=(value) { _currentDestroyIndex = value }
  total { _total }
  total=(value) { _total = value }

  initFields_BasicGameInfoFactory() {
    _currentReleaseIndex = 0
    _currentDestroyIndex = 0
    _total = 0
        _currentReleaseIndex = 0
        _currentDestroyIndex = 0
        _total = 0
  }
    

    static getInstance() {
        return BasicGameInfoFactory.SINGLETON
    }
    

    construct new() {
    super()
    initFields_BasicGameInfoFactory()
    }
    

    init(total) {
        _currentReleaseIndex = 0
        _currentDestroyIndex = 0
        _total = total
    }
    

    isPeaked() {
        if ((_currentDestroyIndex >= _total)) {
            return true
        } else {
            return false
        }
    }
    

    howManyLeft() {
        return JR.i32(_total - _currentDestroyIndex)
    }
}


