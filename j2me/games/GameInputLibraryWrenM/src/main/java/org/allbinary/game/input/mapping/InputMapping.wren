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
// package org.allbinary.game.input.mapping

import "../../../../../allbinary_java" for JObject, JException, JR

class InputMapping is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }
  mappedList { _mappedList }
  mappedList=(value) { _mappedList = value }

  initFields_InputMapping() {
    _logUtil = null
    _commonStrings = null
    _hashtable = null
    _mappedList = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _hashtable = StdUtil.getInstance().createHashtable()
        _mappedList = BasicArrayListD.new()
  }
    

    construct new() {
    super()
    initFields_InputMapping()
    }
    

    getTotalMapped() {
        return _hashtable.size()
    }
    

    isDefaultNew() {
        return false
    }
    

    getDefault() {
        return InputToGameKeyMapping.getNullInstance()
    }
    

    removeAll() {
        _hashtable.clear()
        _mappedList.clear()
    }
    

    remove(input, mappedToInput) {
        var stringBuffer = StringMaker.new()
        var stringUtil = StringUtil.getInstance()
        stringBuffer.append(CommonLabels.getInstance().START_LABEL)
        stringBuffer.append(stringUtil.toString(input))
        stringBuffer.append(" == ")
        stringBuffer.append(stringUtil.toString(mappedToInput))
        _logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove")
        var list = this.getMappedInput(input)
        if (list.contains(mappedToInput)) {
            list.remove(mappedToInput)
            _mappedList.remove(mappedToInput)
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Removed: ")
            stringBuffer.append(stringUtil.toString(input))
            stringBuffer.append(" == ")
            stringBuffer.append(stringUtil.toString(mappedToInput))
            _logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove")
        } else {
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("Not Deleted: ")
            stringBuffer.append(stringUtil.toString(input))
            stringBuffer.append(" == ")
            stringBuffer.append(stringUtil.toString(mappedToInput))
            _logUtil.putF(stringBuffer.toString(), this, "InputMapping::remove")
        }
    }
    

    addMapping(inputToGameKeyMapping) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    add(input, mappedToInput) {
        var list = this.getMappedInput(input)
        if (!list.contains(mappedToInput)) {
            list.add(mappedToInput)
            _mappedList.add(mappedToInput)
        }
    }
    

    isMapped(input) {
        return _mappedList.contains(input)
    }
    

    getMappedInput(id) {
        var mappingInputCanBeNullList = _hashtable.get(id)
        if ((mappingInputCanBeNullList == null)) {
            var list = BasicArrayListD.new()
            _hashtable.put(id, list)
            return list
        }
        return mappingInputCanBeNullList
    }
    

    getHashtable() {
        return _hashtable
    }
}

import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./InputToGameKeyMapping" for InputToGameKeyMapping

