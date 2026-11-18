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
// package org.allbinary.media.audio

import "../../../../allbinary_java" for JObject, JException, JR

class PlayerQueue is JObject {
    static TOTAL { "Sounds In Queue: " }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  list { _list }
  list=(value) { _list = value }
  max { _max }
  max=(value) { _max = value }

  initFields_PlayerQueue() {
    _commonStrings = null
    _list = null
    _max = 0
        _commonStrings = CommonStrings.getInstance()
        _list = BasicArrayListD.new()
        
  }
    

    construct new(max) {
    super()
    initFields_PlayerQueue()
        _max = max
    }
    

    add(sound) {
        var jerror0 = Fiber.new {
            if (!_list.contains(sound)) {
                _list.add(sound)
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            PreLogUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.ADD)
        }
    }
    

    process() {
        var sound = NoSound.getInstance()
        var jerror1 = Fiber.new {
            var played = false
            if ((_list.size() > 0)) {
                sound = _list.removeAt(0)
                if ((sound != null)) {
                    sound.getPlayerP().start()
                }
                while ((_list.size() > _max)) {
                    _list.removeAt(0)
                }
                played = true
            }
            return played
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            var resource = StringUtil.getInstance().EMPTY_STRING
            if ((sound != null)) {
                resource = sound.getResource()
            }
            PreLogUtil.put(StringMaker.new().append(_commonStrings.EXCEPTION_LABEL).append(resource).toString(), this, _commonStrings.PROCESS)
            return false
        }
    }
    

    clear() {
        _list.clear()
    }
    

    toString() {
        return StringMaker.new().append(PlayerQueue.TOTAL).appendint(_list.size()).toString()
    }
}

import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./Sound" for Sound
import "./NoSound" for NoSound

