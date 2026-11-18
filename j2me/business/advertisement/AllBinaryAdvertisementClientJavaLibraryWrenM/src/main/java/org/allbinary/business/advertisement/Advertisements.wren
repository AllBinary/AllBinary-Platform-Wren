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
// package org.allbinary.business.advertisement

import "../../../../allbinary_java" for JObject, JException, JR

class Advertisements is JObject {
  bannerList { _bannerList }
  bannerList=(value) { _bannerList = value }
  pageList { _pageList }
  pageList=(value) { _pageList = value }
  myRandomFactory { _myRandomFactory }
  myRandomFactory=(value) { _myRandomFactory = value }

  initFields_Advertisements() {
    _bannerList = null
    _pageList = null
    _myRandomFactory = null
        _bannerList = BasicArrayListD.new()
        _pageList = BasicArrayListD.new()
        _myRandomFactory = MyRandomFactory.getInstance()
  }

  construct new() {
    super()
    initFields_Advertisements()
  }
    

    addPage(advertisementProcessorInterface) {
        if (!_pageList.contains(advertisementProcessorInterface)) {
            _pageList.add(advertisementProcessorInterface)
        }
    }
    

    startRandomPage() {
        var size = _pageList.size()
        if ((size > 0)) {
            var random = _myRandomFactory.getAbsoluteNextInt(size)
            var advertisementProcessorInterface = _pageList.objectArray[random]
            advertisementProcessorInterface.start()
        }
    }
    

    processRandomPage() {
        if (LockedUtil.getInstance().isLocked()) {
            var size = _pageList.size()
            if ((size > 0)) {
                var random = _myRandomFactory.getAbsoluteNextInt(size)
                var advertisementProcessorInterface = _pageList.objectArray[random]
                advertisementProcessorInterface.process()
            }
        }
    }
    

    stopAllPage() {
        if (true) {
            var index = _pageList.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            var advertisementProcessorInterface = _pageList.objectArray[index]
            advertisementProcessorInterface.stop()
            }
        }
    }
    

    addBanner(advertisementProcessorInterface) {
        if (!_bannerList.contains(advertisementProcessorInterface)) {
            _bannerList.add(advertisementProcessorInterface)
        }
    }
    

    startAll() {
        if (true) {
            var index = _bannerList.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            var advertisementProcessorInterface = _bannerList.objectArray[index]
            advertisementProcessorInterface.start()
            }
        }
    }
    

    stopAllBanner() {
        if (true) {
            var index = _bannerList.size()
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            var advertisementProcessorInterface = _bannerList.objectArray[index]
            advertisementProcessorInterface.stop()
            }
        }
    }
    

    getBanner(index) {
        var advertisementProcessorInterface = _bannerList.objectArray[index]
        return advertisementProcessorInterface
    }
    

    stopAll() {
        this.stopAllBanner()
        this.stopAllPage()
    }
}

import "../../../../org/allbinary/game/rand/MyRandomFactory" for MyRandomFactory
import "../../../../org/allbinary/logic/system/security/licensing/LockedUtil" for LockedUtil
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./AdvertisementProcessorInterface" for AdvertisementProcessorInterface

