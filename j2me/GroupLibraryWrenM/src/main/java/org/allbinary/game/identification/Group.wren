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

class Group is JObject {
  name { _name }
  name=(value) { _name = value }
  teamId { _teamId }
  teamId=(value) { _teamId = value }
  string { _string }
  string=(value) { _string = value }

  initFields_Group() {
    _name = null
    _teamId = 0
    _string = null
        _name = StringUtil.getInstance().EMPTY_STRING
        
        _string = StringUtil.getInstance().EMPTY_STRING
  }
    

    construct new(teamName, teamId) {
    super()
    initFields_Group()
        _teamId = teamId
        this.setName(teamName)
    }
    

    getGroupName() {
        return _name
    }
    

    setName(name) {
        _name = name
        var groupCommonFactory = GroupCommonFactory.getInstance()
        var stringBuffer = StringMaker.new()
        stringBuffer.append(groupCommonFactory.GROUP_NAME_LABEL)
        stringBuffer.append(_name)
        stringBuffer.append(groupCommonFactory.ID_LABEL)
        stringBuffer.appendshort(_teamId)
        _string = stringBuffer.toString()
    }
    

    getGroupId() {
        return _teamId
    }
    

    toString() {
        return _string
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./GroupInterface" for GroupInterface
import "./GroupCommonFactory" for GroupCommonFactory

