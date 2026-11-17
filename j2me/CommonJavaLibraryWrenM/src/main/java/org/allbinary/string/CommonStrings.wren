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
// package org.allbinary.string

import "../../../allbinary_java" for JObject, JException, JR

class CommonStrings is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CommonStrings.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  EMPTY { _EMPTY }
  EMPTY=(value) { _EMPTY = value }
  CREATE_IMAGE { _CREATE_IMAGE }
  CREATE_IMAGE=(value) { _CREATE_IMAGE = value }
  PLEASE_WAIT { _PLEASE_WAIT }
  PLEASE_WAIT=(value) { _PLEASE_WAIT = value }
  PLEASE_WAIT_FOR_SERVER { _PLEASE_WAIT_FOR_SERVER }
  PLEASE_WAIT_FOR_SERVER=(value) { _PLEASE_WAIT_FOR_SERVER = value }
  PERIODS { _PERIODS }
  PERIODS=(value) { _PERIODS = value }
  LOADING { _LOADING }
  LOADING=(value) { _LOADING = value }
  CONSTRUCTOR { _CONSTRUCTOR }
  CONSTRUCTOR=(value) { _CONSTRUCTOR = value }
  START { _START }
  START=(value) { _START = value }
  END { _END }
  END=(value) { _END = value }
  EXCEPTION { _EXCEPTION }
  EXCEPTION=(value) { _EXCEPTION = value }
  EXCEPTION_LABEL { _EXCEPTION_LABEL }
  EXCEPTION_LABEL=(value) { _EXCEPTION_LABEL = value }
  CLEANUP { _CLEANUP }
  CLEANUP=(value) { _CLEANUP = value }
  INIT { _INIT }
  INIT=(value) { _INIT = value }
  CLOSE { _CLOSE }
  CLOSE=(value) { _CLOSE = value }
  UP { _UP }
  UP=(value) { _UP = value }
  DOWN { _DOWN }
  DOWN=(value) { _DOWN = value }
  LEFT { _LEFT }
  LEFT=(value) { _LEFT = value }
  RIGHT { _RIGHT }
  RIGHT=(value) { _RIGHT = value }
  DIRECTION_NAME { _DIRECTION_NAME }
  DIRECTION_NAME=(value) { _DIRECTION_NAME = value }
  CREATE { _CREATE }
  CREATE=(value) { _CREATE = value }
  REMOVE { _REMOVE }
  REMOVE=(value) { _REMOVE = value }
  UPDATE { _UPDATE }
  UPDATE=(value) { _UPDATE = value }
  DELETE { _DELETE }
  DELETE=(value) { _DELETE = value }
  delete { _delete }
  delete=(value) { _delete = value }
  LOAD { _LOAD }
  LOAD=(value) { _LOAD = value }
  SAVE { _SAVE }
  SAVE=(value) { _SAVE = value }
  ADD { _ADD }
  ADD=(value) { _ADD = value }
  DROP { _DROP }
  DROP=(value) { _DROP = value }
  INSERT { _INSERT }
  INSERT=(value) { _INSERT = value }
  VISIT { _VISIT }
  VISIT=(value) { _VISIT = value }
  START_METHOD_NAME { _START_METHOD_NAME }
  START_METHOD_NAME=(value) { _START_METHOD_NAME = value }
  END_METHOD_NAME { _END_METHOD_NAME }
  END_METHOD_NAME=(value) { _END_METHOD_NAME = value }
  GET { _GET }
  GET=(value) { _GET = value }
  PROCESS { _PROCESS }
  PROCESS=(value) { _PROCESS = value }
  GET_INSTANCE { _GET_INSTANCE }
  GET_INSTANCE=(value) { _GET_INSTANCE = value }
  GET_LIST { _GET_LIST }
  GET_LIST=(value) { _GET_LIST = value }
  RUN { _RUN }
  RUN=(value) { _RUN = value }
  START_RUNNABLE { _START_RUNNABLE }
  START_RUNNABLE=(value) { _START_RUNNABLE = value }
  RUNNING { _RUNNING }
  RUNNING=(value) { _RUNNING = value }
  END_RUNNABLE { _END_RUNNABLE }
  END_RUNNABLE=(value) { _END_RUNNABLE = value }
  DISABLE { _DISABLE }
  DISABLE=(value) { _DISABLE = value }
  ENABLE { _ENABLE }
  ENABLE=(value) { _ENABLE = value }
  SUCCESS { _SUCCESS }
  SUCCESS=(value) { _SUCCESS = value }
  FAILURE { _FAILURE }
  FAILURE=(value) { _FAILURE = value }
  NOT_IMPLEMENTED { _NOT_IMPLEMENTED }
  NOT_IMPLEMENTED=(value) { _NOT_IMPLEMENTED = value }
  UNKNOWN { _UNKNOWN }
  UNKNOWN=(value) { _UNKNOWN = value }
  ON_EVENT { _ON_EVENT }
  ON_EVENT=(value) { _ON_EVENT = value }
  IS_VALID { _IS_VALID }
  IS_VALID=(value) { _IS_VALID = value }
  TOSTRING { _TOSTRING }
  TOSTRING=(value) { _TOSTRING = value }
  ADD_LISTENER { _ADD_LISTENER }
  ADD_LISTENER=(value) { _ADD_LISTENER = value }
  REMOVE_LISTENER { _REMOVE_LISTENER }
  REMOVE_LISTENER=(value) { _REMOVE_LISTENER = value }
  SIZE { _SIZE }
  SIZE=(value) { _SIZE = value }

  initFields_CommonStrings() {
    _EMPTY = null
    _CREATE_IMAGE = null
    _PLEASE_WAIT = null
    _PLEASE_WAIT_FOR_SERVER = null
    _PERIODS = null
    _LOADING = null
    _CONSTRUCTOR = null
    _START = null
    _END = null
    _EXCEPTION = null
    _EXCEPTION_LABEL = null
    _CLEANUP = null
    _INIT = null
    _CLOSE = null
    _UP = null
    _DOWN = null
    _LEFT = null
    _RIGHT = null
    _DIRECTION_NAME = null
    _CREATE = null
    _REMOVE = null
    _UPDATE = null
    _DELETE = null
    _delete = null
    _LOAD = null
    _SAVE = null
    _ADD = null
    _DROP = null
    _INSERT = null
    _VISIT = null
    _START_METHOD_NAME = null
    _END_METHOD_NAME = null
    _GET = null
    _PROCESS = null
    _GET_INSTANCE = null
    _GET_LIST = null
    _RUN = null
    _START_RUNNABLE = null
    _RUNNING = null
    _END_RUNNABLE = null
    _DISABLE = null
    _ENABLE = null
    _SUCCESS = null
    _FAILURE = null
    _NOT_IMPLEMENTED = null
    _UNKNOWN = null
    _ON_EVENT = null
    _IS_VALID = null
    _TOSTRING = null
    _ADD_LISTENER = null
    _REMOVE_LISTENER = null
    _SIZE = null
        _EMPTY = "Empty"
        _CREATE_IMAGE = "createImage"
        _PLEASE_WAIT = "Please Wait"
        _PLEASE_WAIT_FOR_SERVER = "Please Wait Getting Data From Server..."
        _PERIODS = "..."
        _LOADING = "Loading..."
        _CONSTRUCTOR = "Constructor"
        _START = "Start"
        _END = "End"
        _EXCEPTION = "Exception"
        _EXCEPTION_LABEL = "Exception: "
        _CLEANUP = "cleanup"
        _INIT = "init"
        _CLOSE = "close"
        _UP = "up"
        _DOWN = "down"
        _LEFT = "left"
        _RIGHT = "right"
        _DIRECTION_NAME = [_DOWN, _LEFT, _RIGHT, _UP]
        _CREATE = "Create"
        _REMOVE = "Remove"
        _UPDATE = "Update"
        _DELETE = "Delete"
        _delete = "delete"
        _LOAD = "load"
        _SAVE = "save"
        _ADD = "Add"
        _DROP = "Drop"
        _INSERT = "Insert"
        _VISIT = "visit"
        _START_METHOD_NAME = _START
        _END_METHOD_NAME = "end"
        _GET = "get"
        _PROCESS = "process"
        _GET_INSTANCE = "getInstance"
        _GET_LIST = "getList"
        _RUN = "run"
        _START_RUNNABLE = "Start Runnable"
        _RUNNING = "Running"
        _END_RUNNABLE = "End Runnable"
        _DISABLE = "disable"
        _ENABLE = "enable"
        _SUCCESS = "Command Success"
        _FAILURE = "Command Failed"
        _NOT_IMPLEMENTED = "Not Implemented"
        _UNKNOWN = "Unknown"
        _ON_EVENT = "onEvent"
        _IS_VALID = "isValid"
        _TOSTRING = "toString"
        _ADD_LISTENER = "addListener"
        _REMOVE_LISTENER = "removeListener"
        _SIZE = "size"
  }

  construct new() {
    super()
    initFields_CommonStrings()
  }
    

    static getInstance() {
        return CommonStrings.instance
    }
}


