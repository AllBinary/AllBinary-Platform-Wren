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
// package org.allbinary.game.layer.special

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer

class CollidableDestroyableDamageableLayer is CollidableCompositeLayer {
    static NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER {
    if (__NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_set == null) {
      __NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_set = true
      __NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER
  }
  static NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER=(value) {
    __NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER_set = true
    __NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = value
  }
    static READYFOREXPLOSION { "ReadyForExplosion: " }
  groupInterface { _groupInterface }
  groupInterface=(value) { _groupInterface = value }
  readyForExplosion { _readyForExplosion }
  readyForExplosion=(value) { _readyForExplosion = value }
  initWidth { _initWidth }
  initWidth=(value) { _initWidth = value }
  initHeight { _initHeight }
  initHeight=(value) { _initHeight = value }
  initX { _initX }
  initX=(value) { _initX = value }
  initY { _initY }
  initY=(value) { _initY = value }
  initZ { _initZ }
  initZ=(value) { _initZ = value }
  partInterfaceArrayP { _partInterfaceArrayP }
  partInterfaceArrayP=(value) { _partInterfaceArrayP = value }
  pickupBehavior { _pickupBehavior }
  pickupBehavior=(value) { _pickupBehavior = value }
  allBinaryGameLayerManagerP { _allBinaryGameLayerManagerP }
  allBinaryGameLayerManagerP=(value) { _allBinaryGameLayerManagerP = value }
  isDraggable { _isDraggable }
  isDraggable=(value) { _isDraggable = value }
  isDragged { _isDragged }
  isDragged=(value) { _isDragged = value }
  isDropped { _isDropped }
  isDropped=(value) { _isDropped = value }

  initFields_CollidableDestroyableDamageableLayer() {
    _groupInterface = null
    _readyForExplosion = false
    _initWidth = 0
    _initHeight = 0
    _initX = 0
    _initY = 0
    _initZ = 0
    _partInterfaceArrayP = null
    _pickupBehavior = null
    _allBinaryGameLayerManagerP = null
    _isDraggable = false
    _isDragged = false
    _isDropped = false
        
        _readyForExplosion = false
        
        
        _initX = 0
        _initY = 0
        _initZ = 0
        _partInterfaceArrayP = PartInterfaceUtil.getZeroArray()
        
        _allBinaryGameLayerManagerP = AllBinaryGameLayerManager.getNullInstance()
        _isDraggable = false
        _isDragged = false
        _isDropped = false
  }
    

    static getNullInstance() {
        if ((CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER == NullUtil.getInstance().NULL_OBJECT)) {
            CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = CollidableDestroyableDamageableLayer.new(BasicGroupFactory.getInstance().NONE_ARRAY, StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION)
        }
        return CollidableDestroyableDamageableLayer.NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER
    }
    

    construct new(groupInterface, name, layerInfo, viewPosition) {
        super(name, layerInfo, viewPosition, CollidableNeverCollideBehaviorFactory.getInstance())
        initFields_CollidableDestroyableDamageableLayer()
        _initWidth = layerInfo.getWidth()
        _initHeight = layerInfo.getHeight()
        _groupInterface = groupInterface
        _pickupBehavior = PickupBehavior.getNullInstance()
    }
    

    initPosition() {
        this.setPosition(_initX, _initY, _initZ)
    }
    

    initPositionXYZ(x, y, z) {
        _initX = x
        _initY = y
        _initZ = z
    }
    

    paint(graphics) {
        super.paint(graphics)
    }
    

    damage(damage, damageType) {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    getDamage(damageType) {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    isDestroyed() {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    getGroupInterface() {
        return _groupInterface
    }
    

    setGroupInterface(teamInterface) {
        _groupInterface = teamInterface
    }
    

    setAllBinaryGameLayerManager(allBinaryGameLayerManager) {
        _allBinaryGameLayerManagerP = allBinaryGameLayerManager
        if ((_allBinaryGameLayerManagerP == null)) {
            Fiber.abort(JR.exception("RuntimeException", ""))
        }
    }
    

    isReadyForExplosion() {
        return _readyForExplosion
    }
    

    setReadyForExplosion(isReadyForExplosion) {
        _readyForExplosion = isReadyForExplosion
    }
    

    getInitWidth() {
        return _initWidth
    }
    

    getInitHeight() {
        return _initHeight
    }
    

    getInitX() {
        return _initX
    }
    

    getInitY() {
        return _initY
    }
    

    up() {
    }
    

    down() {
    }
    

    right() {
    }
    

    left() {
    }
    

    strafeLeft() {
    }
    

    strafeRight() {
    }
    

    fire(layerManager, gameKeyEvent) {
    }
    

    special1(layerManager, gameKeyEvent) {
    }
    

    special2(layerManager, gameKeyEvent) {
    }
    

    special3(layerManager, gameKeyEvent) {
    }
    

    special4(layerManager, gameKeyEvent) {
    }
    

    special5(layerManager, gameKeyEvent) {
    }
    

    upAnalog(yAnalogValue) {
    }
    

    downAnalog(yAnalogValue) {
    }
    

    rightAnalog(xAnalogValue) {
    }
    

    leftAnalog(xAnalogValue) {
    }
    

    rightTrigger(layerManager, gameKeyEvent, xAnalogValue) {
    }
    

    leftTrigger(layerManager, gameKeyEvent, xAnalogValue) {
    }
    

    onDestroyed(destroyedEvent) {
    }
    

    getPickupBehavior() {
        return _pickupBehavior
    }
    

    setPickupBehavior(pickupBehavior) {
        _pickupBehavior = pickupBehavior
    }
    

    addPart(pickedUpLayerInterfaceFactoryInterface) {
    }
    

    setPartInterfaceArray(partInterfaceArray) {
        _partInterfaceArrayP = partInterfaceArray
    }
    

    getPartInterfaceArray() {
        return _partInterfaceArrayP
    }
    

    toStringAppend(stringBuffer) {
        var commonSeps = CommonSeps.getInstance()
        var positionStrings = PositionStrings.getInstance()
        super.toStringAppend(stringBuffer)
        stringBuffer.append(commonSeps.NEW_LINE)
        var groupInterfaceArray = this.getGroupInterface()
        var size = groupInterfaceArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            stringBuffer.append(groupInterfaceArray[index].toString())
            stringBuffer.append(commonSeps.COMMA)
            }
        }
        var pickupBehavior = this.getPickupBehavior()
        if ((pickupBehavior != null)) {
            stringBuffer.append(commonSeps.NEW_LINE)
            stringBuffer.append(pickupBehavior.toString())
        }
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(CollidableDestroyableDamageableLayer.READYFOREXPLOSION)
        stringBuffer.appendboolean(_readyForExplosion)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(this.commonStrings.INIT)
        stringBuffer.append(commonSeps.SPACE)
        stringBuffer.append(positionStrings.X_LABEL)
        stringBuffer.appendint(_initX)
        stringBuffer.append(positionStrings.Y_LABEL)
        stringBuffer.appendint(_initX)
        stringBuffer.append(positionStrings.Z_LABEL)
        stringBuffer.appendint(_initZ)
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        this.toStringAppend(stringBuffer)
        return stringBuffer.toString()
    }
}

import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory" for CollidableNeverCollideBehaviorFactory
import "../../../../../org/allbinary/game/combat/damage/DamageableInterface" for DamageableInterface
import "../../../../../org/allbinary/game/combat/destroy/DestroyableInterface" for DestroyableInterface
import "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEvent" for DestroyedEvent
import "../../../../../org/allbinary/game/identification/BasicGroupFactory" for BasicGroupFactory
import "../../../../../org/allbinary/game/identification/Group" for Group
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface
import "../../../../../org/allbinary/game/layer/pickup/PickupBehavior" for PickupBehavior
import "../../../../../org/allbinary/game/layer/pickup/PickupCompositeInterface" for PickupCompositeInterface
import "../../../../../org/allbinary/game/part/PartInterface" for PartInterface
import "../../../../../org/allbinary/game/part/PartInterfaceUtil" for PartInterfaceUtil
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../../../org/allbinary/layer/AllBinaryLayerManager" for AllBinaryLayerManager
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/math/PositionStrings" for PositionStrings
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "./SpecialGameInputInterface" for SpecialGameInputInterface

