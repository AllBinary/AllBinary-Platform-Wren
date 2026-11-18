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

class NullRecordComparator is JObject {
    static NULL_RECORD_COMPARATOR {
    if (__NULL_RECORD_COMPARATOR_set == null) {
      __NULL_RECORD_COMPARATOR_set = true
      __NULL_RECORD_COMPARATOR = NullRecordComparator.new()
    }
    return __NULL_RECORD_COMPARATOR
  }
  static NULL_RECORD_COMPARATOR=(value) {
    __NULL_RECORD_COMPARATOR_set = true
    __NULL_RECORD_COMPARATOR = value
  }

  initFields_NullRecordComparator() {
  }

  construct new() {
    super()
    initFields_NullRecordComparator()
  }
    

    compare(rec1, rec2) {
        return 0
    }
}

import "../../../../../javax/microedition/rms/RecordComparator" for RecordComparator

