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

class PersistanceStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PersistanceStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  SAVING { _SAVING }
  SAVING=(value) { _SAVING = value }
  NUMBER_OF_RECORDS { _NUMBER_OF_RECORDS }
  NUMBER_OF_RECORDS=(value) { _NUMBER_OF_RECORDS = value }
  LOADING_ID { _LOADING_ID }
  LOADING_ID=(value) { _LOADING_ID = value }
  LOAD_ALL { _LOAD_ALL }
  LOAD_ALL=(value) { _LOAD_ALL = value }
  DELETING_WITH_ID { _DELETING_WITH_ID }
  DELETING_WITH_ID=(value) { _DELETING_WITH_ID = value }
  CLOSING_RECORDSTORE { _CLOSING_RECORDSTORE }
  CLOSING_RECORDSTORE=(value) { _CLOSING_RECORDSTORE = value }
  NOT_SAVING { _NOT_SAVING }
  NOT_SAVING=(value) { _NOT_SAVING = value }
  ERROR_LOADING { _ERROR_LOADING }
  ERROR_LOADING=(value) { _ERROR_LOADING = value }
  ERROR_LOADING_ID { _ERROR_LOADING_ID }
  ERROR_LOADING_ID=(value) { _ERROR_LOADING_ID = value }
  ID { _ID }
  ID=(value) { _ID = value }
  GAME_ACTION_INPUT { _GAME_ACTION_INPUT }
  GAME_ACTION_INPUT=(value) { _GAME_ACTION_INPUT = value }

  initFields_PersistanceStrings() {
    _SAVING = null
    _NUMBER_OF_RECORDS = null
    _LOADING_ID = null
    _LOAD_ALL = null
    _DELETING_WITH_ID = null
    _CLOSING_RECORDSTORE = null
    _NOT_SAVING = null
    _ERROR_LOADING = null
    _ERROR_LOADING_ID = null
    _ID = null
    _GAME_ACTION_INPUT = null
        _SAVING = "Saving: "
        _NUMBER_OF_RECORDS = "Number of records: "
        _LOADING_ID = "Loading data with id: "
        _LOAD_ALL = "loadAll"
        _DELETING_WITH_ID = "Deleting data with id: "
        _CLOSING_RECORDSTORE = "Closing RecordStore"
        _NOT_SAVING = "Not Saving: "
        _ERROR_LOADING = "Error Loading gameActionInput: "
        _ERROR_LOADING_ID = "Error Loading id: "
        _ID = " id: "
        _GAME_ACTION_INPUT = " GameActionInput: "
  }

  construct new() {
    super()
    initFields_PersistanceStrings()
  }
    

    static getInstance() {
        return PersistanceStrings.instance
    }
}


