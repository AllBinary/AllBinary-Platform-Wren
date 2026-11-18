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
// package org.allbinary.game.layer

import "../../../../allbinary_java" for JObject, JException, JR
import "./AllBinaryGameLayer" for AllBinaryGameLayer

class CollidableCompositeLayer is AllBinaryGameLayer {
    static NULL_COLLIDABLE_COMPOSITE_LAYER {
    if (__NULL_COLLIDABLE_COMPOSITE_LAYER_set == null) {
      __NULL_COLLIDABLE_COMPOSITE_LAYER_set = true
      __NULL_COLLIDABLE_COMPOSITE_LAYER = NullUtil.getInstance().NULL_OBJECT
    }
    return __NULL_COLLIDABLE_COMPOSITE_LAYER
  }
  static NULL_COLLIDABLE_COMPOSITE_LAYER=(value) {
    __NULL_COLLIDABLE_COMPOSITE_LAYER_set = true
    __NULL_COLLIDABLE_COMPOSITE_LAYER = value
  }
  collidableInferface { _collidableInferface }
  collidableInferface=(value) { _collidableInferface = value }

  initFields_CollidableCompositeLayer() {
    _collidableInferface = null
        _collidableInferface = CollidableNeverCollideBehaviorFactory.getInstance().createBehavior()
  }
    

    static getNullInstance() {
        if ((CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER == NullUtil.getInstance().NULL_OBJECT)) {
            CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER = CollidableCompositeLayer.new(StringUtil.getInstance().EMPTY_STRING, RectangleFactory.SINGLETON, ViewPositionBase.NULL_VIEW_POSITION, CollidableNeverCollideBehaviorFactory.getInstance())
        }
        return CollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER
    }
    

    construct new(name, layerInfo, viewPosition, collidableBaseBehaviorFactory) {
        super(name, layerInfo, viewPosition)
        initFields_CollidableCompositeLayer()
        if ((collidableBaseBehaviorFactory != CollidableNeverCollideBehaviorFactory.getInstance())) {
            this.setCollidableInferface(collidableBaseBehaviorFactory.createBehavior())
        }
    }
    

    getArtificialIntelligenceInterface() {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)
        return ArtificialIntelligence.getInstance()
    }
    

    getCollidableInferface() {
        return _collidableInferface
    }
    

    setCollidableInferface(collidableInferface) {
        _collidableInferface = collidableInferface
    }
    

    implmentsCollidableInterface() {
        return true
    }
    

    toStringAppend(stringBuffer) {
        var commonSeps = CommonSeps.getInstance()
        super.toStringAppend(stringBuffer)
        stringBuffer.append(commonSeps.NEW_LINE)
        stringBuffer.append(this.getCollidableInferface().toString())
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        this.toStringAppend(stringBuffer)
        return stringBuffer.toString()
    }
}

import "../../../../org/allbinary/ai/ArtificialIntelligence" for ArtificialIntelligence
import "../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../org/allbinary/game/collision/CollidableBaseBehavior" for CollidableBaseBehavior
import "../../../../org/allbinary/game/collision/CollidableBaseBehaviorFactory" for CollidableBaseBehaviorFactory
import "../../../../org/allbinary/game/collision/CollidableInterfaceCompositeInterface" for CollidableInterfaceCompositeInterface
import "../../../../org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory" for CollidableNeverCollideBehaviorFactory
import "../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/view/ViewPositionBase" for ViewPositionBase
import "../../../../org/allbinary/logic/NullUtil" for NullUtil

