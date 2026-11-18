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

class BasicTerrainInfo is JObject {
    static NULL_BASIC_TERRAIN_INFO {
    if (__NULL_BASIC_TERRAIN_INFO_set == null) {
      __NULL_BASIC_TERRAIN_INFO_set = true
      __NULL_BASIC_TERRAIN_INFO = BasicTerrainInfo.new(AngleFactory.getInstance().NOT_ANGLE)
    }
    return __NULL_BASIC_TERRAIN_INFO
  }
  static NULL_BASIC_TERRAIN_INFO=(value) {
    __NULL_BASIC_TERRAIN_INFO_set = true
    __NULL_BASIC_TERRAIN_INFO = value
  }
  angle { _angle }
  angle=(value) { _angle = value }

  initFields_BasicTerrainInfo() {
    _angle = null
        
  }
    

    construct new(angle) {
    super()
    initFields_BasicTerrainInfo()
        _angle = angle
    }
    

    getAngle() {
        return _angle
    }
    

    setAngle(angle) {
        _angle = angle
    }
}

import "../../../../org/allbinary/math/Angle" for Angle
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory

