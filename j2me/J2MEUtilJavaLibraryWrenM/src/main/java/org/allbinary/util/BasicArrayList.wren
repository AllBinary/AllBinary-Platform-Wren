// Generated Code Do Not Modify
// package org.allbinary.util

import "../../../allbinary_java" for JObject, JException, JR

//This is a very fast and simple resizable list.
class BasicArrayList is JObject {
    static SIZE {
    if (__SIZE_set == null) {
      __SIZE_set = true
      __SIZE = ", Size: "
    }
    return __SIZE
  }
  static SIZE=(value) {
    __SIZE_set = true
    __SIZE = value
  }
  arrayUtil { _arrayUtil }
  arrayUtil=(value) { _arrayUtil = value }
  objectArray { _objectArray }
  objectArray=(value) { _objectArray = value }
  currentIndex { _currentIndex }
  currentIndex=(value) { _currentIndex = value }

  initFields_BasicArrayList() {
    _arrayUtil = null
    _objectArray = null
    _currentIndex = 0
        _arrayUtil = ArrayUtil.getInstance()
        
        _currentIndex = 0
  }
    

    construct new(objectArray) {
    super()
    initFields_BasicArrayList()
        _objectArray = objectArray
    }
    

    addAt(index, element) {
        if (((index > _currentIndex) || (index < 0))) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(_currentIndex)
            Fiber.abort(JR.exception("IndexOutOfBoundsException", stringBuffer.toString()))
        }
        this.ensureCapacity(JR.i32(_currentIndex + 1))
        JR.arraycopy(_objectArray, index, _objectArray, JR.i32(index + 1), JR.i32(_currentIndex - index))
        _objectArray[index] = element
        _currentIndex = JR.i32(_currentIndex + 1)
    }
    

    add(anyType) {
        this.ensureCapacity(JR.i32(_currentIndex + 1))
        _objectArray[Fn.new {
var jold = _currentIndex
_currentIndex = JR.i32(jold + 1)
return jold
}.call()] = anyType
        return true
    }
    

    removeAt(index) {
        if ((index >= _currentIndex)) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(_currentIndex)
            Fiber.abort(JR.exception("IndexOutOfBoundsException", stringBuffer.toString()))
        }
        var oldValue = _objectArray[index]
        var numMoved = JR.i32(JR.i32(_currentIndex - index) - 1)
        if ((numMoved > 0)) {
            JR.arraycopy(_objectArray, JR.i32(index + 1), _objectArray, index, numMoved)
        }
        _objectArray[Fn.new {
_currentIndex = JR.i32(_currentIndex - 1)
return _currentIndex
}.call()] = null
        return oldValue
    }
    

    remove(anyType) {
        if ((anyType == null)) {
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < _currentIndex))) break
                if ((_objectArray[index] == null)) {
                    var numMoved = JR.i32(JR.i32(_currentIndex - index) - 1)
                    if ((numMoved > 0)) {
                        JR.arraycopy(_objectArray, JR.i32(index + 1), _objectArray, index, numMoved)
                    }
                    _objectArray[Fn.new {
_currentIndex = JR.i32(_currentIndex - 1)
return _currentIndex
}.call()] = null
                    return true
                }
                }
            }
        } else {
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < _currentIndex))) break
                if (((anyType == _objectArray[index]) || anyType.equals(_objectArray[index]))) {
                    var numMoved = JR.i32(JR.i32(_currentIndex - index) - 1)
                    if ((numMoved > 0)) {
                        JR.arraycopy(_objectArray, JR.i32(index + 1), _objectArray, index, numMoved)
                    }
                    _objectArray[Fn.new {
_currentIndex = JR.i32(_currentIndex - 1)
return _currentIndex
}.call()] = null
                    return true
                }
                }
            }
        }
        return false
    }
    

    removeAll2(list) {
        var result = true
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            if (this.remove(list.get(index))) {
            } else {
                result = false
            }
            }
        }
        return result
    }
    

    addAll2(list) {
        this.ensureCapacity((_currentIndex + list.currentIndex))
        var listSize = list.currentIndex
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < listSize))) break
            _objectArray[Fn.new {
var jold = _currentIndex
_currentIndex = JR.i32(jold + 1)
return jold
}.call()] = list.objectArray[index]
            }
        }
        return true
    }
    

    addAllList(list) {
        var newObjectArray = list.toArray()
        return this.addAll(newObjectArray)
    }
    

    addAll(newObjectArray) {
        var numSize = newObjectArray.count
        this.ensureCapacity(JR.i32(_currentIndex + numSize))
        JR.arraycopy(newObjectArray, 0, _objectArray, _currentIndex, numSize)
        _currentIndex = JR.i32(_currentIndex + numSize)
        return (numSize != 0)
    }
    

    ensureCapacity(minSize) {
        var oldCapacity = _objectArray.count
        if ((minSize > oldCapacity)) {
            var newCapacity = JR.i32((JR.shr((JR.i32(oldCapacity * 3)), 1)) + 1)
            if ((newCapacity < minSize)) {
                newCapacity = minSize
            }
            _objectArray = _arrayUtil.copyOf(_objectArray, newCapacity)
        }
    }
    

    trimToSize() {
        var oldCapacity = _objectArray.count
        if ((_currentIndex < oldCapacity)) {
            _objectArray = _arrayUtil.copyOf(_objectArray, _currentIndex)
        }
    }
    

    indexOf(anyType) {
        if ((anyType == null)) {
            if (true) {
                var i = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        i = JR.i32(i + 1)
                    }
                    jfirst = false
                    if (!((i < _currentIndex))) break
                if ((_objectArray[i] == null)) {
                    return i
                }
                }
            }
        } else {
            if (true) {
                var i = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        i = JR.i32(i + 1)
                    }
                    jfirst = false
                    if (!((i < _currentIndex))) break
                if (anyType.equals(_objectArray[i])) {
                    return i
                }
                }
            }
        }
        return -1
    }
    

    lastIndexOf(anyType) {
        if ((anyType == null)) {
            if (true) {
                var i = JR.i32(_currentIndex - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        i = JR.i32(i - 1)
                    }
                    jfirst = false
                    if (!((i >= 0))) break
                if ((_objectArray[i] == null)) {
                    return i
                }
                }
            }
        } else {
            if (true) {
                var i = JR.i32(_currentIndex - 1)
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        i = JR.i32(i - 1)
                    }
                    jfirst = false
                    if (!((i >= 0))) break
                if (anyType.equals(_objectArray[i])) {
                    return i
                }
                }
            }
        }
        return -1
    }
    

    get(index) {
        if ((index >= _currentIndex)) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(_currentIndex)
            Fiber.abort(JR.exception("IndexOutOfBoundsException", stringBuffer.toString()))
        }
        return _objectArray[index]
    }
    

    set(index, element) {
        if ((index >= _currentIndex)) {
            var stringBuffer = StringMaker.new()
            stringBuffer.append(CommonLabels.getInstance().INDEX_LABEL)
            stringBuffer.appendint(index)
            stringBuffer.append(BasicArrayList.SIZE)
            stringBuffer.appendint(_currentIndex)
            Fiber.abort(JR.exception("IndexOutOfBoundsException", stringBuffer.toString()))
        }
        var oldValue = _objectArray[index]
        _objectArray[index] = element
        return oldValue
    }
    

    clear() {
        if (true) {
            var i = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    i = JR.i32(i + 1)
                }
                jfirst = false
                if (!((i < _currentIndex))) break
            _objectArray[i] = null
            }
        }
        _currentIndex = 0
    }
    

    size() {
        return _currentIndex
    }
    

    isEmpty() {
        return (_currentIndex == 0)
    }
    

    contains(anyType) {
        return (this.indexOf(anyType) >= 0)
    }
    

    toArray() {
        return _arrayUtil.copyOf(_objectArray, _currentIndex)
    }
    

    toArrayType(objectArray) {
        if ((objectArray.count < _currentIndex)) {
            return _arrayUtil.copyOfType(_objectArray, _currentIndex, JR.className(objectArray))
        }
        JR.arraycopy(_objectArray, 0, objectArray, 0, _currentIndex)
        if ((objectArray.count > _currentIndex)) {
            objectArray[_currentIndex] = null
        }
        return objectArray
    }
    

    clone() {
        var size = this.size()
        var list = BasicArrayListS.new(size)
        var anyType = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            anyType = _objectArray[index]
            list.add(anyType)
            }
        }
        return list
    }
    

    toString() {
        var COMMA_SEP = CommonSeps.getInstance().COMMA_SEP
        var stringBuffer = StringMaker.new()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _currentIndex))) break
            stringBuffer.append(_objectArray[index].toString())
            stringBuffer.append(COMMA_SEP)
            }
        }
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../java/lang/System" for JSystem
import "./ArrayUtil" for ArrayUtil
import "./BasicArrayListS" for BasicArrayListS

