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

class NullRecordFilter is JObject {
    static NULL_RECORD_FILTER {
    if (__NULL_RECORD_FILTER_set == null) {
      __NULL_RECORD_FILTER_set = true
      __NULL_RECORD_FILTER = NullRecordFilter.new()
    }
    return __NULL_RECORD_FILTER
  }
  static NULL_RECORD_FILTER=(value) {
    __NULL_RECORD_FILTER_set = true
    __NULL_RECORD_FILTER = value
  }

  initFields_NullRecordFilter() {
  }

  construct new() {
    super()
    initFields_NullRecordFilter()
  }
    

    matches(candidate) {
        return true
    }
}

import "../../../../../javax/microedition/rms/RecordFilter" for RecordFilter

