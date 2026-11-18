/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.multiplayer.layer

import "../../../../../allbinary_java" for JObject, JException, JR

class RemoteInfo is JObject {
    static NEW_PLAYER_ID { 0 }
    static REMOTE_INFO {
    if (__REMOTE_INFO_set == null) {
      __REMOTE_INFO_set = true
      __REMOTE_INFO = RemoteInfo.new(StringUtil.getInstance().EMPTY_STRING, -1, -1, RemoteInfo.NEW_PLAYER_ID)
    }
    return __REMOTE_INFO
  }
  static REMOTE_INFO=(value) {
    __REMOTE_INFO_set = true
    __REMOTE_INFO = value
  }

  initFields_RemoteInfo() {
  }
    

    construct new(username, actorSessionId, playerInputId, id) {
    super()
    initFields_RemoteInfo()
    }
}

import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil

