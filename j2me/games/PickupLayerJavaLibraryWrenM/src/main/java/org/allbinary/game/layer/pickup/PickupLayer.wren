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
// package org.allbinary.game.layer.pickup

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer" for MultiPlayerGameLayer

class PickupLayer is MultiPlayerGameLayer {
  pickedUpLayerInterfaceFactoryInterface { _pickedUpLayerInterfaceFactoryInterface }
  pickedUpLayerInterfaceFactoryInterface=(value) { _pickedUpLayerInterfaceFactoryInterface = value }
  destroyed { _destroyed }
  destroyed=(value) { _destroyed = value }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }

  initFields_PickupLayer() {
    _pickedUpLayerInterfaceFactoryInterface = null
    _destroyed = false
    _animationInterface = null
        _pickedUpLayerInterfaceFactoryInterface = CountedPickedUpLayerInterfaceFactory.NULL_COUNTED_PICKUP_LAYER_FACTORY
        _destroyed = false
        _animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
  }
    

    construct new(name, remoteInfo, total, pickedUpLayerInterfaceFactoryInterface, animationInterface, rectangle, viewPosition) {
        super(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        initFields_PickupLayer()
        this.setCollidableInferface(CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance().createBehavior())
        this.setLayerWidth(10)
        this.setLayerHeight(10)
        this.init(pickedUpLayerInterfaceFactoryInterface, animationInterface)
    }
    

    init(pickedUpLayerInterfaceFactoryInterface, animationInterface) {
        _pickedUpLayerInterfaceFactoryInterface = pickedUpLayerInterfaceFactoryInterface
        _animationInterface = animationInterface
        this.setDestroyed(false)
    }
    

    initXYZ(x, y, z) {
        this.setPosition(x, y, z)
    }
    

    paint(graphics) {
        var viewPosition = this.getViewPosition()
        var viewX = viewPosition.getX()
        var viewY = viewPosition.getY()
        _animationInterface.paintXY(graphics, viewX, viewY)
    }
    

    paintThreed(graphics) {
        var viewPosition = this.getViewPosition()
        var viewX = viewPosition.getX()
        var viewY = viewPosition.getY()
        _animationInterface.paintThreedXYZ(graphics, viewX, viewY, 3)
    }
    

    getPickedUpLayerInterfaceFactoryInterface() {
        return _pickedUpLayerInterfaceFactoryInterface
    }
    

    setPickedUp() {
        this.setDestroyed(true)
    }
    

    isDestroyed() {
        return _destroyed
    }
    

    setDestroyed(destroyed) {
        _destroyed = destroyed
        if (this.isDestroyed()) {
            DestroyedLayerProcessor.getInstance().add(this)
        }
    }
    

    damage(damage, damageType) {
    }
    

    getDamage(damageType) {
        return 0
    }
    

    set(gl) {
        var openGLSurfaceChangedInterface = _animationInterface
        openGLSurfaceChangedInterface.set(gl)
    }
}

import "../../../../../javax/microedition/khronos/opengles/GL" for GL
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../org/allbinary/game/collision/CollidableAlwaysPickupNeverCollideBehaviorFactory" for CollidableAlwaysPickupNeverCollideBehaviorFactory
import "../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor" for DestroyedLayerProcessor
import "../../../../../org/allbinary/game/identification/BasicGroupFactory" for BasicGroupFactory
import "../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" for RemoteInfo
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/image/opengles/OpenGLSurfaceChangedInterface" for OpenGLSurfaceChangedInterface
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "./PickedUpLayerInterface" for PickedUpLayerInterface
import "./PickupableInterface" for PickupableInterface
import "./CountedPickedUpLayerInterfaceFactory" for CountedPickedUpLayerInterfaceFactory
import "./PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface

