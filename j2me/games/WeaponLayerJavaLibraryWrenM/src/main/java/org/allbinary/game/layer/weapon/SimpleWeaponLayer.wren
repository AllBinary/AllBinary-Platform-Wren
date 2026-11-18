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
// package org.allbinary.game.layer.weapon

import "../../../../../allbinary_java" for JObject, JException, JR
import "./WeaponLayer" for WeaponLayer

class SimpleWeaponLayer is WeaponLayer {

  initFields_SimpleWeaponLayer() {
  }
    

    static createDestroyed() {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getProcedural(ExplosionResources.getInstance().THIRD_EXPLOSION_RESOURCE).getInstanceAnimation(NullIndexedAnimationFactory.getFactoryInstance().getInstance(0))
    }
    

    construct new(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition) {
        super(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
        this.setCollidableInferface(CollidableWeaponBehavior.new(true))
    }
}

import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" for FeaturedAnimationInterfaceFactoryInterfaceFactory
import "../../../../../org/allbinary/animation/NullIndexedAnimationFactory" for NullIndexedAnimationFactory
import "../../../../../org/allbinary/game/combat/damage/ExplosionResources" for ExplosionResources
import "../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" for RemoteInfo
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/physics/movement/Movement" for Movement
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "./CollidableWeaponBehavior" for CollidableWeaponBehavior

