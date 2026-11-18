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

class CompositeGroup is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  groupInterface { _groupInterface }
  groupInterface=(value) { _groupInterface = value }
  list { _list }
  list=(value) { _list = value }

  initFields_CompositeGroup() {
    _logUtil = null
    _groupInterface = null
    _list = null
        _logUtil = LogUtil.getInstance()
        
        _list = BasicArrayListD.new()
  }
    

    construct new(groupInterface) {
    super()
    initFields_CompositeGroup()
        _groupInterface = groupInterface
    }
    

    clear() {
        _list.clear()
    }
    

    add(groupInterface) {
        var commonStrings = CommonStrings.getInstance()
        var groupCommonFactory = GroupCommonFactory.getInstance()
        var stringBuffer = StringMaker.new()
        stringBuffer.append(groupCommonFactory.ADDING_LABEL)
        stringBuffer.append(groupInterface.toString())
        stringBuffer.append(groupCommonFactory.TO_LABEL)
        stringBuffer.append(StringUtil.getInstance().toString(_groupInterface))
        _logUtil.putF(stringBuffer.toString(), this, commonStrings.ADD)
        _list.add(groupInterface)
    }
    

    isInGroup(groupInterface) {
        if (_list.contains(groupInterface)) {
            return true
        } else {
            return false
        }
    }
    

    getGroup() {
        return _groupInterface
    }
}

import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./Group" for Group
import "./GroupCommonFactory" for GroupCommonFactory

