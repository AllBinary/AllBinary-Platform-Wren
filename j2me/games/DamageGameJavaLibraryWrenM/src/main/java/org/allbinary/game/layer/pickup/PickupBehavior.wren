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

class PickupBehavior is JObject {
    static NULL_PICKUP_BEHAVIOR {
    if (__NULL_PICKUP_BEHAVIOR_set == null) {
      __NULL_PICKUP_BEHAVIOR_set = true
      __NULL_PICKUP_BEHAVIOR = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_PICKUP_BEHAVIOR
  }
  static NULL_PICKUP_BEHAVIOR=(value) {
    __NULL_PICKUP_BEHAVIOR_set = true
    __NULL_PICKUP_BEHAVIOR = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  countedIndex { _countedIndex }
  countedIndex=(value) { _countedIndex = value }
  ownerLayerInterface { _ownerLayerInterface }
  ownerLayerInterface=(value) { _ownerLayerInterface = value }

  initFields_PickupBehavior() {
    _logUtil = null
    _countedIndex = 0
    _ownerLayerInterface = null
        _logUtil = LogUtil.getInstance()
        
        
  }
    

    static getNullInstance() {
        if ((PickupBehavior.NULL_PICKUP_BEHAVIOR == NullUtil.getInstance().NULL_OBJECT)) {
            PickupBehavior.NULL_PICKUP_BEHAVIOR = PickupBehavior.new(CollidableCompositeLayer.getNullInstance(), 0)
        }
        return PickupBehavior.NULL_PICKUP_BEHAVIOR
    }
    

    construct new(ownerLayerInterface, countedIndex) {
    super()
    initFields_PickupBehavior()
        _ownerLayerInterface = ownerLayerInterface
        _countedIndex = countedIndex
    }
    

    doPickup(pickupProcessorInterface) {
        var jerror0 = Fiber.new {
            var healthInterfaceCompositeInterface = _ownerLayerInterface
            if (healthInterfaceCompositeInterface.getHealthInterface().isAlive()) {
                pickupProcessorInterface.process(_ownerLayerInterface)
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "doPickup", e)
        }
    }
    

    doPickupLayer(pickupLayerInterface) {
        var jerror1 = Fiber.new {
            var pickedUpLayerInterfaceFactoryInterface = pickupLayerInterface.getPickedUpLayerInterfaceFactoryInterface()
            var pickedUpLayerType = pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType()
            var pickedUpLayerTypeFactory = PickedUpLayerTypeFactory.getInstance()
            if (((((pickedUpLayerType == pickedUpLayerTypeFactory.BEAM) || (pickedUpLayerType == pickedUpLayerTypeFactory.MINE)) || (pickedUpLayerType == pickedUpLayerTypeFactory.PROJECTILE)) || (pickedUpLayerType == pickedUpLayerTypeFactory.ENHANCEMENT))) {
                this.add(pickedUpLayerInterfaceFactoryInterface)
            } else if ((pickedUpLayerInterfaceFactoryInterface.getPickedUpLayerType() == pickedUpLayerTypeFactory.PART)) {
                var collidableDestroyableDamageableLayer = _ownerLayerInterface
                collidableDestroyableDamageableLayer.addPart(pickedUpLayerInterfaceFactoryInterface)
            } else if ((pickedUpLayerType == pickedUpLayerTypeFactory.NONE)) {
            } else {
                var pickupProcessorInterface = pickedUpLayerInterfaceFactoryInterface
                this.doPickup(pickupProcessorInterface)
            }
            pickupLayerInterface.setPickedUp()
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            var commonStrings = CommonStrings.getInstance()
            PreLogUtil.putOE(commonStrings.EXCEPTION, this, "doPickup", e)
        }
    }
    

    add(countedPickedUpLayerInterfaceFactoryInterface) {
        var partIndex = (countedPickedUpLayerInterfaceFactoryInterface.getId() + _countedIndex)
        this.addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex)
    }
    

    addAt(countedPickedUpLayerInterfaceFactoryInterface, partIndex) {
        var collidableDestroyableDamageableLayer = _ownerLayerInterface
        var countedLayerInterfaceFactory = collidableDestroyableDamageableLayer.getPartInterfaceArray()[partIndex]
        countedLayerInterfaceFactory.setTotal((countedLayerInterfaceFactory.getTotal() + countedPickedUpLayerInterfaceFactoryInterface.getTotal()))
    }
    

    getFirstAvailableCountedLayerInterfaceFactory(pickedUpLayerTypeArray) {
        var collidableDestroyableDamageableLayer = _ownerLayerInterface
        var partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray()
        var size = partInterfaceArray.count
        var nextCountedLayerInterfaceFactory = null
        var countedPickedUpLayerInterfaceFactory = null
        if (true) {
            var index = _countedIndex
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            nextCountedLayerInterfaceFactory = collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]
            countedPickedUpLayerInterfaceFactory = nextCountedLayerInterfaceFactory.getCountedPickedUpLayerInterfaceFactory()
            if (true) {
                var index2 = pickedUpLayerTypeArray.count
                var jfirst = true
                while (true) {
                    jfirst = false
                    if (!((Fn.new {
index2 = JR.i32(index2 - 1)
return index2
}.call() >= 0))) break
                if ((countedPickedUpLayerInterfaceFactory.getPickedUpLayerType() == pickedUpLayerTypeArray[index2])) {
                    if ((nextCountedLayerInterfaceFactory.getTotal() > 0)) {
                        return nextCountedLayerInterfaceFactory
                    }
                }
                }
            }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY
    }
    

    getCountedLayerInterfaceFactoryForSlot(slotIndex) {
        var currentSlot = 0
        var collidableDestroyableDamageableLayer = _ownerLayerInterface
        var partInterfaceArray = collidableDestroyableDamageableLayer.getPartInterfaceArray()
        var size = partInterfaceArray.count
        var nextCountedLayerInterfaceFactory = null
        if (true) {
            var index = _countedIndex
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            nextCountedLayerInterfaceFactory = collidableDestroyableDamageableLayer.getPartInterfaceArray()[index]
            if ((nextCountedLayerInterfaceFactory.getTotal() > 0)) {
                if ((currentSlot == slotIndex)) {
                    return nextCountedLayerInterfaceFactory
                } else {
                    currentSlot = JR.i32(currentSlot + 1)
                }
            }
            }
        }
        return CountedLayerInterfaceFactoryPart.NULL_COUNTED_LAYER_INTERFACE_FACTORY
    }
    

    getCountedIndex() {
        return _countedIndex
    }
}

import "../../../../../org/allbinary/game/health/HealthInterfaceCompositeInterface" for HealthInterfaceCompositeInterface
import "../../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../../org/allbinary/game/layer/special/CollidableDestroyableDamageableLayer" for CollidableDestroyableDamageableLayer
import "../../../../../org/allbinary/game/part/CountedLayerInterfaceFactoryPart" for CountedLayerInterfaceFactoryPart
import "../../../../../org/allbinary/game/part/PartInterface" for PartInterface
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./PickupBehaviorInterface" for PickupBehaviorInterface
import "./PickupProcessorInterface" for PickupProcessorInterface
import "./PickedUpLayerInterfaceFactoryInterface" for PickedUpLayerInterfaceFactoryInterface
import "./PickedUpLayerType" for PickedUpLayerType
import "./PickedUpLayerTypeFactory" for PickedUpLayerTypeFactory
import "./CountedPickedUpLayerInterfaceFactoryInterface" for CountedPickedUpLayerInterfaceFactoryInterface
import "./PickedUpLayerInterface" for PickedUpLayerInterface
import "./CountedPickedUpLayerInterfaceFactory" for CountedPickedUpLayerInterfaceFactory

