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
// package org.allbinary.logic.util.cache

import "../../../../../allbinary_java" for JObject, JException, JR
import "./IndexedBasicArrayListCache" for IndexedBasicArrayListCache

class KeylessBasicArrayListCache is IndexedBasicArrayListCache {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  basicArrayListUtil { _basicArrayListUtil }
  basicArrayListUtil=(value) { _basicArrayListUtil = value }

  initFields_KeylessBasicArrayListCache() {
    _logUtil = null
    _basicArrayListUtil = null
        _logUtil = LogUtil.getInstance()
        _basicArrayListUtil = BasicArrayListUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_KeylessBasicArrayListCache()
    }
    

    get() {
        var jerror0 = Fiber.new {
            if ((this.index >= this.list.size())) {
                this.addDefault()
            }
            var list = this.getAt(Fn.new {
var jold = this.index
this.index = JR.i32(jold + 1)
return jold
}.call())
            return list
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.GET, e)
            return _basicArrayListUtil.getImmutableInstance()
        }
    }
    

    clear() {
        super.clear()
        var basicArrayList = null
        if (true) {
            var index = JR.i32(this.list.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            basicArrayList = (this.list.objectArray[index])
            basicArrayList.clear()
            }
        }
    }
    

    log() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("S: ")
        stringBuffer.appendint(this.list.size())
        var S_LABEL = " s: "
        var basicArrayList = null
        if (true) {
            var index = JR.i32(this.list.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            stringBuffer.append(S_LABEL)
            basicArrayList = (this.list.objectArray[index])
            stringBuffer.appendint(basicArrayList.size())
            }
        }
        return stringBuffer.toString()
    }
}

import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil

