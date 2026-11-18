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
// package org.allbinary.game.terrain

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject

class TerrainEvent is AllBinaryEventObject {
  basicTerrainInfo { _basicTerrainInfo }
  basicTerrainInfo=(value) { _basicTerrainInfo = value }

  initFields_TerrainEvent() {
    _basicTerrainInfo = null
        _basicTerrainInfo = BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO
  }
    

    construct new(basicTerrainInfo) {
        super(basicTerrainInfo)
        initFields_TerrainEvent()
        this.setBasicTerrainInfo(_basicTerrainInfo)
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("TerrainEvent: \n")
        stringBuffer.append("LayerInterface: ")
        stringBuffer.append(_basicTerrainInfo.toString())
        return stringBuffer.toString()
    }
    

    getBasicTerrainInfo() {
        return _basicTerrainInfo
    }
    

    setBasicTerrainInfo(basicTerrainInfo) {
        _basicTerrainInfo = basicTerrainInfo
    }
    

    setBasicTerrainInfoForCircularStaticPool(basicTerrainInfo) {
        _basicTerrainInfo = basicTerrainInfo
    }
}

import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "./BasicTerrainInfo" for BasicTerrainInfo

