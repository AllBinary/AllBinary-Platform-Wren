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
import "./ImageCacheBase" for ImageCacheBase

class ImageCache is ImageCacheBase {
    static NULL_IMAGE_CACHE {
    if (__NULL_IMAGE_CACHE_set == null) {
      __NULL_IMAGE_CACHE_set = true
      __NULL_IMAGE_CACHE = ImageCache.new()
    }
    return __NULL_IMAGE_CACHE
  }
  static NULL_IMAGE_CACHE=(value) {
    __NULL_IMAGE_CACHE_set = true
    __NULL_IMAGE_CACHE = value
  }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }

  initFields_ImageCache() {
    _commonStrings = null
    _tsUtil = null
        _commonStrings = CommonStrings.getInstance()
        _tsUtil = TsUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_ImageCache()
    }
    

    addListener(renderer) {
    }
    

    getIndex(key) {
        var gdResources = GDResources.getInstance()
        var resourceStringArray = gdResources.resourceStringArray
        var size = resourceStringArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            if ((resourceStringArray[index] == key)) {
                return index
            }
            }
        }
        this.logUtil.putF(StringMaker.new().append("unable to find key: ").append(StringUtil.getInstance().toString(key)).toString(), this, _commonStrings.RUN)
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    get(caller, width, height) {
        var foundIndex = this.getIndexWH(width, height)
        var image = this.getFromAvailable(foundIndex, width, height)
        if ((image == NullImage.NULL_IMAGE)) {
            this.volume = (this.volume + JR.i32(width * height))
            if ((this.volume > 32000)) {
                _tsUtil.gc()
                this.volume = 0
            }
            image = this.createImage(caller, width, height)
            var widths = this.widths
            if ((this.nextIndex > JR.i32(widths.count - 1))) {
                if ((foundIndex == -1)) {
                    foundIndex = this.nextIndex
                    widths[this.nextIndex] = width
                    this.heights[this.nextIndex] = height
                    this.nextIndex = JR.i32(this.nextIndex + 1)
                }
                this.listOfList[foundIndex].add(image)
            }
        }
        return image
    }
    

    getWithKey(key) {
        var image = this.getImage(key)
        if ((image == NullImage.NULL_IMAGE)) {
            var resourceUtil = ResourceUtil.getInstance()
            var resourceInputStream = resourceUtil.getResourceAsStream(key)
            if ((resourceInputStream == null)) {
                Fiber.abort(JR.exception("RuntimeException", StringMaker.new().append("Image resource is not available for key: ").append(StringUtil.getInstance().toString(key)).toString()))
            }
            var jerror0 = Fiber.new {
                image = this.createImageFromInputStream(key, resourceInputStream)
            }.try()
            if (jerror0 != null) {
                var e = jerror0
                this.logUtil.put("Exception: Trying Again After GC", this, _commonStrings.GET, e)
                this.logUtil.putF(StringMaker.new().append("InputStream: ").append(StringUtil.getInstance().toString(resourceInputStream)).toString(), this, _commonStrings.GET)
                _tsUtil.gc()
                _tsUtil.gc()
                this.logUtil.putF(Memory.getInfo(), this, _commonStrings.GET)
                Thread.sleep(100)
                image = this.createImageFromInputStream(key, resourceInputStream)
            }
            if (J2MEUtil.isHTML()) {
            } else {
                resourceInputStream.close()
            }
            this.hashtable.put(key, image)
        }
        return image
    }
    

    loadImageForAnimation() {
    }
    

    progressEnded() {
    }
    

    runTask() {
    }
    

    isLazy() {
        return false
    }
}

import "../../../java/io/InputStream" for InputStream
import "../../../javax/microedition/lcdui/Image" for Image
import "../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../org/allbinary/TsUtil" for TsUtil
import "../../../org/allbinary/data/resource/ResourceUtil" for ResourceUtil
import "../../../org/allbinary/game/gd/resource/GDResources" for GDResources
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/system/Memory" for Memory
import "../../../java/lang/Thread" for Thread

