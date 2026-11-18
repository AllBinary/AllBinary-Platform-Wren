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
// package org.allbinary.game.part.weapon

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicWeaponPart is JObject {
    static NULL_BASIC_WEAPON_PART {
    if (__NULL_BASIC_WEAPON_PART_set == null) {
      __NULL_BASIC_WEAPON_PART_set = true
      __NULL_BASIC_WEAPON_PART = BasicWeaponPart.createBasicWeaponPart(NullAnimationFactory.getFactoryInstance().getInstance(0))
    }
    return __NULL_BASIC_WEAPON_PART
  }
  static NULL_BASIC_WEAPON_PART=(value) {
    __NULL_BASIC_WEAPON_PART_set = true
    __NULL_BASIC_WEAPON_PART = value
  }
  animationInterface { _animationInterface }
  animationInterface=(value) { _animationInterface = value }
  ownerLayerInterface { _ownerLayerInterface }
  ownerLayerInterface=(value) { _ownerLayerInterface = value }
  weaponProperties { _weaponProperties }
  weaponProperties=(value) { _weaponProperties = value }
  scoreableInterface { _scoreableInterface }
  scoreableInterface=(value) { _scoreableInterface = value }
  relativeRelationship { _relativeRelationship }
  relativeRelationship=(value) { _relativeRelationship = value }

  initFields_BasicWeaponPart() {
    _animationInterface = null
    _ownerLayerInterface = null
    _weaponProperties = null
    _scoreableInterface = null
    _relativeRelationship = null
        _animationInterface = NullAnimationFactory.getFactoryInstance().getInstance(0)
        _ownerLayerInterface = AllBinaryLayer.NULL_ALLBINARY_LAYER
        _weaponProperties = WeaponProperties.NULL_WEAPON_PROPERTIES
        _scoreableInterface = NoScoreable.getInstance()
        _relativeRelationship = RelativeRelationship.NULL_RELATIVE_RELATIONSHIP
  }
    

    static createBasicWeaponPart(animationInterface) {
        return BasicWeaponPart.new(animationInterface, AllBinaryLayer.NULL_ALLBINARY_LAYER, WeaponProperties.NULL_WEAPON_PROPERTIES, NoScoreable.getInstance(), RelativeRelationship.NULL_RELATIVE_RELATIONSHIP)
    }
    

    construct new(animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship) {
    super()
    initFields_BasicWeaponPart()
        this.init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
        this.setAnimationInterface(animationInterface)
    }
    

    init(sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship) {
        this.setOwnerLayerInterface(sourceLayerInterface)
        this.setWeaponProperties(weaponProperties)
        _scoreableInterface = scoreableInterface
        _relativeRelationship = relativeRelationship
    }
    

    process(allbinaryLayerManager, angle, otherAngle) {
        this.processScore(allbinaryLayerManager, angle, otherAngle, this.getWeaponProperties(), _scoreableInterface)
    }
    

    processScore(allbinaryLayerManager, angle, otherAngle, weaponProperties, scoreableInterface) {
        Fiber.abort(JR.exception("Exception", CommonStrings.getInstance().NOT_IMPLEMENTED))
    }
    

    getOwnerLayerInterface() {
        return _ownerLayerInterface
    }
    

    setOwnerLayerInterface(ownerLayerInterface) {
        _ownerLayerInterface = ownerLayerInterface
    }
    

    getAnimationInterface() {
        return _animationInterface
    }
    

    setAnimationInterface(animationInterface) {
        _animationInterface = animationInterface
    }
    

    paint(graphics) {
        var viewPosition = this.getOwnerLayerInterface().getViewPosition()
        var viewX = viewPosition.getX()
        var viewY = viewPosition.getY()
        _animationInterface.paintXY(graphics, viewX, viewY)
    }
    

    paintThreed(graphics) {
    }
    

    getWeaponProperties() {
        return _weaponProperties
    }
    

    setWeaponProperties(weaponProperties) {
        _weaponProperties = weaponProperties
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../../org/allbinary/game/combat/weapon/WeaponProperties" for WeaponProperties
import "../../../../../org/allbinary/game/part/PartInterface" for PartInterface
import "../../../../../org/allbinary/game/score/NoScoreable" for NoScoreable
import "../../../../../org/allbinary/game/score/ScoreableInterface" for ScoreableInterface
import "../../../../../org/allbinary/graphics/RelativeRelationship" for RelativeRelationship
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "./SalvoInterface" for SalvoInterface

