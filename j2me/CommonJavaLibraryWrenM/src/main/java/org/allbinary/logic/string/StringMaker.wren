// Generated Code Do Not Modify
// package org.allbinary.logic.string

import "../../../../allbinary_java" for JObject, JException, JR

class StringMaker is JObject {
  charArray { _charArray }
  charArray=(value) { _charArray = value }
  currentLength { _currentLength }
  currentLength=(value) { _currentLength = value }

  initFields_StringMaker() {
    _charArray = null
    _currentLength = 0
        
        _currentLength = 0
  }
    

    construct new() {
    super()
    initFields_StringMaker()
        _charArray = List.filled(20, 0)
    }
    

    append(string) {
        var stringLength = JR.length(string)
        this.ensureCapacity(JR.i32(_currentLength + stringLength))
        JR.getChars(string, 0, stringLength, _charArray, _currentLength)
        _currentLength = JR.i32(_currentLength + stringLength)
        return this
    }
    

    appendchar(c) {
        this.ensureCapacity(JR.i32(_currentLength + 1))
        _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = c
        return this
    }
    

    appendCharArray(charArray, start, end) {
        this.ensureCapacity(JR.i32(_currentLength + (JR.i32(end - start))))
        if (true) {
            var index = start
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < end))) break
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = charArray[index]
            }
        }
        return this
    }
    

    appendbyte(b) {
        this.append(JR.str(b))
        return this
    }
    

    appendshort(b) {
        this.append(JR.str(b))
        return this
    }
    

    appendint(i) {
        this.append(JR.str(i))
        return this
    }
    

    appendlong(l) {
        this.append(JR.str(l))
        return this
    }
    

    appendfloat(f) {
        this.append(JR.float(f))
        return this
    }
    

    appendboolean(bool) {
        if (bool) {
            this.ensureCapacity(JR.i32(_currentLength + 4))
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "t".bytes[0]
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "r".bytes[0]
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "u".bytes[0]
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "e".bytes[0]
        } else {
            this.ensureCapacity(JR.i32(_currentLength + 5))
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "f".bytes[0]
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "a".bytes[0]
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "l".bytes[0]
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "s".bytes[0]
            _charArray[Fn.new {
var jold = _currentLength
_currentLength = JR.i32(jold + 1)
return jold
}.call()] = "e".bytes[0]
        }
        return this
    }
    

    ensureCapacity(minSize) {
        var oldCapacity = _charArray.count
        if ((minSize > oldCapacity)) {
            var newCapacity = JR.i32(oldCapacity * 3)
            if ((newCapacity < minSize)) {
                newCapacity = minSize
            }
            var copy = List.filled(newCapacity, 0)
            var min = this.min(_charArray.count, newCapacity)
            JR.arraycopy(_charArray, 0, copy, 0, min)
            _charArray = copy
        }
    }
    

    min(value, value2) {
        return (((value <= value2)) ? value : value2)
    }
    

    delete(start, end) {
        _currentLength = JR.i32(_currentLength - (JR.i32(end - start)))
        return this
    }
    

    length() {
        return _currentLength
    }
    

    toString() {
        return JR.fromChars(_charArray, 0, _currentLength)
    }
}

import "../../../../java/lang/System" for JSystem
import "../../../../java/lang/Integer" for Integer
import "../../../../java/lang/Long" for Long
import "../../../../java/lang/Float" for Float

