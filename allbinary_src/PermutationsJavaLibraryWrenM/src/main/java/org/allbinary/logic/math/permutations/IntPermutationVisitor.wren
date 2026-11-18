// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/logic/util/visitor/Visitor" for Visitor

class IntPermutationVisitor is Visitor {
  data { _data }
  data=(value) { _data = value }
  stringBuilder { _stringBuilder }
  stringBuilder=(value) { _stringBuilder = value }

  initFields_IntPermutationVisitor() {
    _data = null
    _stringBuilder = null
        
        _stringBuilder = StringMaker.new()
  }
    

    construct new(data) {
    super()
    initFields_IntPermutationVisitor()
        _data = data
    }
    

    visit(anyType) {
        _stringBuilder.delete(0, _stringBuilder.length())
        this.print(_data, _stringBuilder)
        return NullUtil.getInstance().NULL_OBJECT
    }
    

    print(data) {
        var stringBuilder = StringMaker.new()
        this.print(data, stringBuilder)
    }
    

    print(data, stringBuilder) {
        var commonSeps = CommonSeps.getInstance()
        var size = data.count
        if (true) {
            var i = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    i = JR.i32(i + 1)
                }
                jfirst = false
                if (!((i < size))) break
            stringBuilder.appendint(data[i])
            stringBuilder.append(commonSeps.SPACE)
            }
        }
        System.print(stringBuilder.toString())
    }
}

import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../java/lang/System" for JSystem

