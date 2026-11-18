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
import "../../../../../org/allbinary/game/multiplayer/layer/MultiPlayerGameLayer" for MultiPlayerGameLayer

class WeaponLayer is MultiPlayerGameLayer {
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  initAnimationInterface { _initAnimationInterface }
  initAnimationInterface=(value) { _initAnimationInterface = value }
  destroyedAnimationInterface { _destroyedAnimationInterface }
  destroyedAnimationInterface=(value) { _destroyedAnimationInterface = value }
  sourceLayerInterface { _sourceLayerInterface }
  sourceLayerInterface=(value) { _sourceLayerInterface = value }
  totalDamage { _totalDamage }
  totalDamage=(value) { _totalDamage = value }
  initDamage { _initDamage }
  initDamage=(value) { _initDamage = value }
  destroyed { _destroyed }
  destroyed=(value) { _destroyed = value }
  scoreableInterface { _scoreableInterface }
  scoreableInterface=(value) { _scoreableInterface = value }
  movement { _movement }
  movement=(value) { _movement = value }
  weaponProperties { _weaponProperties }
  weaponProperties=(value) { _weaponProperties = value }
  multiPlayerType { _multiPlayerType }
  multiPlayerType=(value) { _multiPlayerType = value }
  collidableWeaponBehavior { _collidableWeaponBehavior }
  collidableWeaponBehavior=(value) { _collidableWeaponBehavior = value }

  initFields_WeaponLayer() {
    _animationInterface = null
    _initAnimationInterface = null
    _destroyedAnimationInterface = null
    _sourceLayerInterface = null
    _totalDamage = 0
    _initDamage = 0
    _destroyed = false
    _scoreableInterface = null
    _movement = null
    _weaponProperties = null
    _multiPlayerType = 0
    _collidableWeaponBehavior = null
        _animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        
        
        _sourceLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
        _totalDamage = 0
        _initDamage = 0
        _destroyed = true
        _scoreableInterface = NoScoreable.getInstance()
        
        _weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES
        
        _collidableWeaponBehavior = CollidableWeaponBehavior.getNullInstance()
  }
    

    construct new(name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition) {
        super(remoteInfo, BasicGroupFactory.getInstance().NONE_ARRAY, name, rectangle, viewPosition)
        initFields_WeaponLayer()
        _initAnimationInterface = animationInterface
        this.setAnimationInterface(animationInterface)
        _destroyedAnimationInterface = destroyedAnimationInterface
        _movement = movement
        _multiPlayerType = multiPlayerType
    }
    

    setCollidableInferface(collidableInferface) {
        super.setCollidableInferface(collidableInferface)
        _collidableWeaponBehavior = this.getCollidableInferface()
    }
    

    initXYZ(x, y, z) {
        this.x = x
        this.y = y
        this.z = z
    }
    

    init(sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable) {
        this.setWeaponPropertiesP(weaponProperties)
        this.setReadyForExplosion(false)
        this.setAnimationInterface(this.getInitAnimationInterfaceP())
        this.setOwnerLayerInterface(sourceLayerInterface)
        _collidableWeaponBehavior.init(sourceLayerInterface)
        this.setGroupInterfaces()
        if ((scoreable != null)) {
            _scoreableInterface = scoreable
        }
        _totalDamage = 0
        _initDamage = weaponProperties.getDamage()
        this.setDestroyed(false)
        _movement.init(weaponProperties.getSpeed(), angle, otherAngle)
    }
    

    setGroupInterfaces() {
        var basicGroupFactory = BasicGroupFactory.getInstance()
        if ((_sourceLayerInterface.getGroupInterface()[0] == basicGroupFactory.ENEMY)) {
            this.setGroupInterface(basicGroupFactory.ENEMY_ARRAY)
        } else {
            this.setGroupInterface(_sourceLayerInterface.getGroupInterface())
        }
    }
    

    processTick(allBinaryLayerManager) {
        if ((this.isExhausted() && !this.isDestroyed())) {
            if (this.isReadyForExplosion()) {
                var indexedAnimationInterface = this.getAnimationInterface()
                var currentFrame = indexedAnimationInterface.getFrame()
                if ((currentFrame < (indexedAnimationInterface.getAnimationSize() - 1))) {
                    indexedAnimationInterface.nextFrame()
                } else {
                    this.setDestroyed(true)
                }
            } else {
                var collidableWeaponBehavior = this.getCollidableInferface()
                if (collidableWeaponBehavior.isCollided()) {
                    this.setAnimationInterface(_destroyedAnimationInterface)
                    this.getMovement().stop()
                    this.setReadyForExplosion(true)
                } else {
                    this.setDestroyed(true)
                }
            }
        }
        _movement.process(this)
        _totalDamage = JR.i32(_totalDamage + _weaponProperties.getDissipation())
    }
    

    isDestroyed() {
        return _destroyed
    }
    

    damage(damage, damageType) {
        _totalDamage = JR.i32(_totalDamage + JR.i32(damage * damage))
    }
    

    givePoints(total) {
        _scoreableInterface.addPoints((GameConfigurationUtil.getInstance().getCompetitionValue() * total))
    }
    

    isExhausted() {
        if (((_totalDamage > this.getInitDamage()) || (_totalDamage < 0))) {
            return true
        } else {
            return false
        }
    }
    

    getDamage(damageType) {
        if (!this.isExhausted()) {
            var total = JR.i32(this.getInitDamage() - _totalDamage)
            this.givePoints(total)
            return total
        }
        return 0
    }
    

    setDestroyed(destroyed) {
        _destroyed = destroyed
        if (this.isDestroyed()) {
            _scoreableInterface = NoScoreable.getInstance()
            DestroyedLayerProcessor.getInstance().add(this)
        }
    }
    

    getInitDamage() {
        return _initDamage
    }
    

    setAnimationInterface(animationInterface) {
        _animationInterface = animationInterface
    }
    

    getAnimationInterface() {
        return _animationInterface
    }
    

    getInitAnimationInterfaceP() {
        return _initAnimationInterface
    }
    

    setInitAnimationInterfaceP(initAnimationInterface) {
        _initAnimationInterface = initAnimationInterface
    }
    

    getDestroyedAnimationInterface() {
        return _destroyedAnimationInterface
    }
    

    getOwnerLayerInterface() {
        return _sourceLayerInterface
    }
    

    setOwnerLayerInterface(sourceLayerInterface) {
        _sourceLayerInterface = sourceLayerInterface
    }
    

    paint(graphics) {
        var viewPosition = this.getViewPosition()
        _animationInterface.paintXY(graphics, (viewPosition.getX() - this.getHalfWidth()), (viewPosition.getY() - this.getHalfHeight()))
    }
    

    paintThreed(graphics) {
        var viewPosition = this.getViewPosition()
        _animationInterface.paintThreedXYZ(graphics, (viewPosition.getX() - this.getHalfWidth()), (viewPosition.getY() - this.getHalfHeight()), (viewPosition.getZ() - this.getHalfDepth()))
    }
    

    getMovement() {
        return _movement
    }
    

    setMovement(movement) {
        _movement = movement
    }
    

    getType() {
        return WeaponLayer.getStaticType()
    }
    

    static getStaticType() {
        return 0
    }
    

    getMultiPlayerType() {
        return _multiPlayerType
    }
    

    setWeaponPropertiesP(weaponProperties) {
        _weaponProperties = weaponProperties
    }
    

    getWeaponPropertiesP() {
        return _weaponProperties
    }
    

    implmentsTickableInterface() {
        return true
    }
    

    set(gl) {
        _initAnimationInterface.set(gl)
    }
}

import "../../../../../javax/microedition/khronos/opengles/GL" for GL
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../org/allbinary/game/collision/CollidableBaseBehavior" for CollidableBaseBehavior
import "../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor" for DestroyedLayerProcessor
import "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../org/allbinary/game/configuration/GameConfigurationUtil" for GameConfigurationUtil
import "../../../../../org/allbinary/game/identification/BasicGroupFactory" for BasicGroupFactory
import "../../../../../org/allbinary/game/multiplayer/layer/RemoteInfo" for RemoteInfo
import "../../../../../org/allbinary/game/score/NoScoreable" for NoScoreable
import "../../../../../org/allbinary/game/score/ScoreableInterface" for ScoreableInterface
import "../../../../../org/allbinary/game/tick/TickableInterface" for TickableInterface
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/physics/movement/Movement" for Movement
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "./CollidableWeaponBehavior" for CollidableWeaponBehavior

