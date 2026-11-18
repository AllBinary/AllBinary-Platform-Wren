// Generated Code Do Not Modify
// package org.allbinary.game.layer.weapon

import "../../../../../allbinary_java" for JObject, JException, JR
import "./SimpleWeaponLayer" for SimpleWeaponLayer

class TempExplosionWeaponLayer is SimpleWeaponLayer {
  weaponProperties { _weaponProperties }
  weaponProperties=(value) { _weaponProperties = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }

  initFields_TempExplosionWeaponLayer() {
    _weaponProperties = null
    _timeDelayHelper = null
        _weaponProperties = WeaponProperties.new(-1, -1, 0, 1000, JR.i16(0))
        _timeDelayHelper = TimeDelayHelper.new(0)
  }
    

    construct new(name, movement, animationInterface, rectangle, viewPosition, timeDelay) {
        super(name, RemoteInfo.REMOTE_INFO, -1, movement, animationInterface, SimpleWeaponLayer.createDestroyed(), rectangle, viewPosition)
        initFields_TempExplosionWeaponLayer()
        _timeDelayHelper.delay = timeDelay
    }
    

    processTick(allBinaryLayerManager) {
        if (_timeDelayHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            this.getCollidableInferface().collide(this, this)
            this.totalDamage = (this.getInitDamage() + 1)
        }
        super.processTick(allBinaryLayerManager)
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" for RemoteInfo
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/physics/movement/Movement" for Movement
import "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase

