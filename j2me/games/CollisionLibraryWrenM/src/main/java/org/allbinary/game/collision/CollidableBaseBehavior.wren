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
// package org.allbinary.game.collision

import "../../../../allbinary_java" for JObject, JException, JR

class CollidableBaseBehavior is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  layerCollisionUtil { _layerCollisionUtil }
  layerCollisionUtil=(value) { _layerCollisionUtil = value }
  collidable { _collidable }
  collidable=(value) { _collidable = value }

  initFields_CollidableBaseBehavior() {
    _logUtil = null
    _commonStrings = null
    _layerCollisionUtil = null
    _collidable = false
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _layerCollisionUtil = LayerCollisionUtil.getInstance()
        _collidable = true
  }
    

    construct new(collidable) {
    super()
    initFields_CollidableBaseBehavior()
        _collidable = collidable
    }
    

    update() {
    }
    

    getName() {
        return JR.className(this)
    }
    

    setCollidable(collidable) {
        _collidable = collidable
    }
    

    isCollidable(ownerLayer) {
        return _collidable
    }
    

    collide(ownerLayer, allbinaryCollidableLayer) {
        Fiber.abort(JR.exception("Exception", StringMaker.new().append(_commonStrings.NOT_IMPLEMENTED).append(CommonLabels.getInstance().COLON_SEP).append(JR.className(this)).toString()))
    }
    

    isCollision(ownerLayer, collisionLayer) {
        return _layerCollisionUtil.isCollision(ownerLayer, collisionLayer)
    }
    

    isCollisionInterface(ownerLayer, collidableInterfaceCompositeInterface) {
        return _layerCollisionUtil.isCollision(ownerLayer, collidableInterfaceCompositeInterface)
    }
    

    collideInterface(ownerLayer, collidableInterfaceCompositeInterface) {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
    

    paint(ownerLayer, graphics) {
    }
    

    getCollisionTypeWith(layerInterface) {
        return CollisionTypeFactory.getInstance().NONE
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/game/layer/CollidableCompositeLayer" for CollidableCompositeLayer
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./CollidableInterface" for CollidableInterface
import "./LayerCollisionUtil" for LayerCollisionUtil
import "./CollidableInterfaceCompositeInterface" for CollidableInterfaceCompositeInterface
import "./CollisionTypeFactory" for CollisionTypeFactory
import "./CollisionType" for CollisionType

