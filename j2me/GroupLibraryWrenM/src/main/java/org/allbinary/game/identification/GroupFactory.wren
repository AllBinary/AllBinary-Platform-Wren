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
// package org.allbinary.game.identification

import "../../../../allbinary_java" for JObject, JException, JR

class GroupFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = GroupFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  NULL_GROUP_ARRAY { _NULL_GROUP_ARRAY }
  NULL_GROUP_ARRAY=(value) { _NULL_GROUP_ARRAY = value }
  list { _list }
  list=(value) { _list = value }
  index { _index }
  index=(value) { _index = value }

  initFields_GroupFactory() {
    _logUtil = null
    _NULL_GROUP_ARRAY = null
    _list = null
    _index = 0
        _logUtil = LogUtil.getInstance()
        _NULL_GROUP_ARRAY = List.filled(0, null)
        _list = BasicArrayListD.new()
        _index = 0
  }

  construct new() {
    super()
    initFields_GroupFactory()
  }
    

    static getInstance() {
        return GroupFactory.instance
    }
    

    getNextGroup() {
        var group = _list.objectArray[_index]
        _index = JR.i32(_index + 1)
        return group
    }
    

    getNextGroupByName(name) {
        var group = this.getNextGroup()
        group.setName(name)
        return group
    }
    

    init(groups, nameArray) {
        var stringMaker = StringMaker.new()
        var stringUtil = StringUtil.getInstance()
        var TEAM = "Team "
        _list.clear()
        _index = 0
        var size = _list.size()
        var name = null
        while ((size < JR.i32(groups))) {
            name = stringUtil.EMPTY_STRING
            if ((size < nameArray.count)) {
                name = nameArray[size]
            } else {
                stringMaker.delete(0, stringMaker.length())
                name = stringMaker.append(TEAM).appendint(size).toString()
            }
            _list.add(Group.new(name, JR.i16((JR.i32(size + 3)))))
            size = JR.i32(size + 1)
        }
    }
}

import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./Group" for Group

