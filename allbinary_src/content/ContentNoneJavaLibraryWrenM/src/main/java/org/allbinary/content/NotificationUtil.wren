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
// package org.allbinary.content

import "../../../allbinary_java" for JObject, JException, JR

class NotificationUtil is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = NotificationUtil.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }

  initFields_NotificationUtil() {
  }

  construct new() {
    super()
    initFields_NotificationUtil()
  }
    

    static getInstance() {
        return NotificationUtil.SINGLETON
    }
    

    notify(command, resource, message) {
    }
}

import "../../../javax/microedition/lcdui/Command" for Command

