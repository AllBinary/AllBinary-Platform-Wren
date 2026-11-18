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
// package org.allbinary.game.resource

import "../../../../allbinary_java" for JObject, JException, JR
import "./FeaturedResourceFactory" for FeaturedResourceFactory

class FeaturedResourceRelativeRelationshipFactory is FeaturedResourceFactory {
    static INSTANCE {
    if (__INSTANCE_set == null) {
      __INSTANCE_set = true
      __INSTANCE = FeaturedResourceRelativeRelationshipFactory.new()
    }
    return __INSTANCE
  }
  static INSTANCE=(value) {
    __INSTANCE_set = true
    __INSTANCE = value
  }
  basicArrayListUtil { _basicArrayListUtil }
  basicArrayListUtil=(value) { _basicArrayListUtil = value }

  initFields_FeaturedResourceRelativeRelationshipFactory() {
    _basicArrayListUtil = null
        _basicArrayListUtil = BasicArrayListUtil.getInstance()
  }
    

    construct new() {
    super()
    initFields_FeaturedResourceRelativeRelationshipFactory()
    }
    

    static getInstance() {
        return FeaturedResourceRelativeRelationshipFactory.INSTANCE
    }
    

    getRelativeRelationshipList(resource, layer) {
        var featureReleaseList = this.getList()
        var size = this.getList().size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var featureInterface = featureReleaseList.objectArray[index]
            if (featureInterface.isFeature()) {
                var list = featureInterface.getResourceRelativeRelationshipList(resource)
                if ((list != _basicArrayListUtil.getImmutableInstance())) {
                    return this.duplicate(list, layer)
                }
            }
            }
        }
        Fiber.abort(JR.exception("Exception", StringMaker.new().append("Not available for current feature selection or Resource: ").append(resource).toString()))
    }
    

    duplicate(list, layer) {
        var pointFactory = PointFactory.getInstance()
        var newList = BasicArrayListD.new()
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var relativeRelationship = list.objectArray[index]
            newList.add(RelativeLayerRelationship.new(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), BasicArrayListUtil.getInstance().getImmutableInstance()))
            }
        }
        return newList
    }
}

import "../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../org/allbinary/graphics/RelativeRelationship" for RelativeRelationship
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/layer/relationship/RelativeLayerRelationship" for RelativeLayerRelationship
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "./ResourceRelativeRelationshipFactoryInterface" for ResourceRelativeRelationshipFactoryInterface

