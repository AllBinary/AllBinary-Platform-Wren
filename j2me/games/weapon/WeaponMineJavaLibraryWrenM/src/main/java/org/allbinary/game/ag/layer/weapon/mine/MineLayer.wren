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
import "../../../../../../../org/allbinary/game/layer/weapon/SimpleWeaponLayer" for SimpleWeaponLayer

class MineLayer is SimpleWeaponLayer {
    static NAME { "MineLayer" }
  viewPositionEventHandler { _viewPositionEventHandler }
  viewPositionEventHandler=(value) { _viewPositionEventHandler = value }

  initFields_MineLayer() {
    _viewPositionEventHandler = null
        _viewPositionEventHandler = ViewPositionEventHandler.getInstance()
  }
    

    construct new(viewPosition) {
        super(MineLayer.NAME, RemoteInfo.REMOTE_INFO, -1, NoMovementFactory.getInstance().getMovmentInstance(), FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(MineWeaponResources.getInstance().RESOURCE).getInstance(0), SimpleWeaponLayer.createDestroyed(), Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 10, 10), viewPosition)
        initFields_MineLayer()
    }
    

    initXYZ(x, y, z) {
        this.setPosition(JR.i32(x + 5), JR.i32(y + 5), z)
        _viewPositionEventHandler.addListener(this)
        SecondaryPlayerQueueFactory.getInstance().add(DropWeaponSound.getInstance())
    }
    

    damage(damage, damageType) {
        this.totalDamage = (this.getInitDamage() + 1)
    }
    

    getDamage(damageType) {
        super.getDamage(damageType)
        return this.getInitDamage()
    }
    

    setDestroyed(destroyed) {
        super.setDestroyed(destroyed)
        if (this.isDestroyed()) {
            _viewPositionEventHandler.removeListener(this)
        }
    }
}

import "../../../../../../../org/allbinary/ag/weapon/media/audio/DropWeaponSound" for DropWeaponSound
import "../../../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" for RemoteInfo
import "../../../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory" for SecondaryPlayerQueueFactory
import "../../../../../../../org/allbinary/physics/movement/NoMovementFactory" for NoMovementFactory
import "../../../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "../../../../../../../org/allbinary/view/event/ViewPositionEventHandler" for ViewPositionEventHandler
import "./MineWeaponResources" for MineWeaponResources

