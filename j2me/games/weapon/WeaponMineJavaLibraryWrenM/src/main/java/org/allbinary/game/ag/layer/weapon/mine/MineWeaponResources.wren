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
// package org.allbinary.game.ag.layer.weapon.mine

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/game/layer/resources/BasicGameResources" for BasicGameResources

class MineWeaponResources is BasicGameResources {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  DROP_TEXT_RESOURCE { _DROP_TEXT_RESOURCE }
  DROP_TEXT_RESOURCE=(value) { _DROP_TEXT_RESOURCE = value }
  DROP_RESOURCE { _DROP_RESOURCE }
  DROP_RESOURCE=(value) { _DROP_RESOURCE = value }
  DROP_ICON_RESOURCE { _DROP_ICON_RESOURCE }
  DROP_ICON_RESOURCE=(value) { _DROP_ICON_RESOURCE = value }

  initFields_MineWeaponResources() {
    _DROP_TEXT_RESOURCE = null
    _DROP_RESOURCE = null
    _DROP_ICON_RESOURCE = null
        _DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png"
        _DROP_RESOURCE = "/mine_drop_20_by_20.png"
        _DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png"
  }
    

    static getInstance() {
        if ((MineWeaponResources.instance == NullUtil.getInstance().NULL_OBJECT)) {
            MineWeaponResources.instance = MineWeaponResources.new()
        }
        return MineWeaponResources.instance
    }
    

    construct new() {
    super()
    initFields_MineWeaponResources()
        var ROOT = "/mine"
        var SMALL = "_20_by_20.png"
        var MEDIUM = SMALL
        var SIZE_FOUR = SMALL
        var SIZE_FIVE = SMALL
        var SIZE_SIX = SMALL
        var SIZE = [SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX]
        super.init(ROOT, SIZE)
    }
}

import "../../../../../../../org/allbinary/logic/NullUtil" for NullUtil

