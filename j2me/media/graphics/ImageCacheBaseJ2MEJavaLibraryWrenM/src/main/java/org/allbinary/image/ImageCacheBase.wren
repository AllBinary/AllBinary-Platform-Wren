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
// package org.allbinary.image

import "../../../allbinary_java" for JObject, JException, JR

class ImageCacheBase is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  imageFactory { _imageFactory }
  imageFactory=(value) { _imageFactory = value }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }
  SIZE { _SIZE }
  SIZE=(value) { _SIZE = value }
  widths { _widths }
  widths=(value) { _widths = value }
  heights { _heights }
  heights=(value) { _heights = value }
  listOfList { _listOfList }
  listOfList=(value) { _listOfList = value }
  availableListOfList { _availableListOfList }
  availableListOfList=(value) { _availableListOfList = value }
  volume { _volume }
  volume=(value) { _volume = value }
  nextIndex { _nextIndex }
  nextIndex=(value) { _nextIndex = value }

  initFields_ImageCacheBase() {
    _logUtil = null
    _imageFactory = null
    _hashtable = null
    _SIZE = 0
    _widths = null
    _heights = null
    _listOfList = null
    _availableListOfList = null
    _volume = 0
    _nextIndex = 0
        _logUtil = LogUtil.getInstance()
        _imageFactory = ImageFactory.getInstance()
        _hashtable = StdUtil.getInstance().createHashtable()
        _SIZE = 128
        _widths = List.filled(_SIZE, 0)
        _heights = List.filled(_SIZE, 0)
        _listOfList = List.filled(_SIZE, null)
        _availableListOfList = List.filled(_SIZE, null)
        _volume = 0
        _nextIndex = 0
  }
    

    construct new() {
    super()
    initFields_ImageCacheBase()
        if (true) {
            var index = JR.i32(_listOfList.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _listOfList[index] = BasicArrayListD.new()
            }
        }
        if (true) {
            var index = JR.i32(_availableListOfList.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _availableListOfList[index] = BasicArrayListD.new()
            }
        }
    }
    

    getImage(resourceId) {
        var imageCanBeNull = _hashtable.get(resourceId)
        if ((imageCanBeNull == null)) {
            return NullImage.NULL_IMAGE
        }
        return imageCanBeNull
    }
    

    releaseAll() {
        if (true) {
            var index = JR.i32(_listOfList.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _availableListOfList[index].clear()
            _availableListOfList[index].addAllList(_listOfList[index])
            }
        }
        _logUtil.putF(StringMaker.new().append("ImageCache: ").append(this.toString()).toString(), this, "releaseAll")
    }
    

    getIndexWH(width, height) {
        var foundIndex = -1
        var size = _widths.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            if (((_widths[index] == width) && (_heights[index] == height))) {
                foundIndex = index
                return foundIndex
            }
            }
        }
        return foundIndex
    }
    

    getFromAvailable(foundIndex, width, height) {
        if ((foundIndex != -1)) {
            if ((_availableListOfList[foundIndex].size() > 0)) {
                var list = _availableListOfList[foundIndex]
                return list.removeAt(JR.i32(list.size() - 1))
            }
        }
        return NullImage.NULL_IMAGE
    }
    

    get(caller, width, height) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getWithKey(key) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    createImage(caller, width, height) {
        return _imageFactory.createImage(caller, width, height)
    }
    

    createImageFromInputStream(key, inputStream) {
        return _imageFactory.createImageFromInputStream(key, inputStream)
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        if (true) {
            var index = JR.i32(_nextIndex - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var width = _widths[index]
            var height = _heights[index]
            var total = _listOfList[index].size()
            var totalAvailable = _availableListOfList[index].size()
            stringBuffer.append(" w: ")
            stringBuffer.appendint(width)
            stringBuffer.append(" h: ")
            stringBuffer.appendint(height)
            stringBuffer.append(CommonSeps.getInstance().SPACE)
            stringBuffer.append(CommonLabels.getInstance().TOTAL_LABEL)
            stringBuffer.appendint(total)
            stringBuffer.append(" available: ")
            stringBuffer.appendint(totalAvailable)
            }
        }
        return stringBuffer.toString()
    }
    

    getHashtableP() {
        return _hashtable
    }
    

    init(image) {
    }
    

    initProgress() {
    }
}

import "../../../java/io/InputStream" for InputStream
import "../../../javax/microedition/lcdui/Image" for Image
import "../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./ImageFactory" for ImageFactory

