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
// package org.allbinary.input.motion.button

import "../../../../../allbinary_java" for JObject, JException, JR

class TouchButtonFactory is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = TouchButtonFactory.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  LIST { _LIST }
  LIST=(value) { _LIST = value }
  list { _list }
  list=(value) { _list = value }
  savedList { _savedList }
  savedList=(value) { _savedList = value }
  saved { _saved }
  saved=(value) { _saved = value }

  initFields_TouchButtonFactory() {
    _LIST = null
    _list = null
    _savedList = null
    _saved = false
        _LIST = BasicArrayListUtil.getInstance().getImmutableInstance()
        _list = _LIST
        _savedList = _LIST
        _saved = false
  }
    

    static getInstance() {
        return TouchButtonFactory.SINGLETON
    }
    

    construct new() {
    super()
    initFields_TouchButtonFactory()
    }
    

    defaultList() {
        _list = _LIST
        this.toggle(false, _LIST)
    }
    

    toggle(save, list) {
        if ((list != BasicArrayListUtil.getInstance().getImmutableInstance())) {
            _savedList = list
            if (!_saved) {
                _list = _savedList
            }
        } else {
            if (save) {
                if (!_saved) {
                    _saved = true
                    _savedList = _list
                    _list = _LIST
                } else {
                }
            } else {
                _list = _savedList
                _saved = false
            }
        }
    }
    

    setList(list) {
        if ((list == null)) {
            Fiber.abort(JR.exception("Exception", "Null List"))
        }
        _list = list
    }
    

    getList() {
        return _list
    }
}

import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

