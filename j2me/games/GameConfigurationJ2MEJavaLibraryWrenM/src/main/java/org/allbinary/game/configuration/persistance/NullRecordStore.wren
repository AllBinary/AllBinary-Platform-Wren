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
// package org.allbinary.game.configuration.persistance

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../javax/microedition/rms/RecordStore" for RecordStore

class NullRecordStore is RecordStore {
    static NULL_RECORD_STORE {
    if (__NULL_RECORD_STORE_set == null) {
      __NULL_RECORD_STORE_set = true
      __NULL_RECORD_STORE = NullRecordStore.new()
    }
    return __NULL_RECORD_STORE
  }
  static NULL_RECORD_STORE=(value) {
    __NULL_RECORD_STORE_set = true
    __NULL_RECORD_STORE = value
  }

  initFields_NullRecordStore() {
  }

  construct new() {
    super()
    initFields_NullRecordStore()
  }
}


