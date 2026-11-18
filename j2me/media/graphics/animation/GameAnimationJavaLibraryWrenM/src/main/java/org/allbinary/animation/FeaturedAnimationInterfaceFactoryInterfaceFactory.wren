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
// package org.allbinary.animation

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/game/resource/FeaturedResourceFactory" for FeaturedResourceFactory

class FeaturedAnimationInterfaceFactoryInterfaceFactory is FeaturedResourceFactory {
    static INSTANCE {
    if (__INSTANCE_set == null) {
      __INSTANCE_set = true
      __INSTANCE = FeaturedAnimationInterfaceFactoryInterfaceFactory.new()
    }
    return __INSTANCE
  }
  static INSTANCE=(value) {
    __INSTANCE_set = true
    __INSTANCE = value
  }

  initFields_FeaturedAnimationInterfaceFactoryInterfaceFactory() {
  }
    

    construct new() {
    super()
    initFields_FeaturedAnimationInterfaceFactoryInterfaceFactory()
    }
    

    static getInstance() {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE
    }
    

    getRectangle(resource) {
        return this.getRectangleXY(resource, 0, 0)
    }
    

    getRectangleXY(resource, x, y) {
        var pointFactory = PointFactory.getInstance()
        var list = this.getList()
        var scale = GameConfigurationCentral.getInstance().SCALE.getValue().intValue()
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
            var featureInterface = list.objectArray[index]
            if (featureInterface.isFeature()) {
                var rectangle = featureInterface.getRectangle(resource)
                if ((rectangle != RectangleFactory.SINGLETON)) {
                    return Rectangle.new(pointFactory.createXY(x, y), (JR.shr(((rectangle.getWidth() * scale)), 1)), (JR.shr(((rectangle.getHeight() * scale)), 1)))
                }
            }
            }
        }
        Fiber.abort(JR.exception("Exception", StringMaker.new().append("No rectangle available for current feature selection or Resource: ").append(resource).toString()))
    }
    

    getProcedural(resource) {
        return this.getBasicAnimationInterfaceFactoryInstance(resource)
    }
    

    get(resource) {
        return this.getBasicAnimationInterfaceFactoryInstance(resource)
    }
    

    getBasicAnimationInterfaceFactoryInstance(resource) {
        var list = this.getList()
        var resourceTypeAvailableList = BasicArrayListD.new()
        var size = this.getList().size()
        var featureInterface = null
        var animationInterfaceFactoryInterface = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            featureInterface = list.objectArray[index]
            if (featureInterface.isFeature()) {
                resourceTypeAvailableList.add(featureInterface)
                animationInterfaceFactoryInterface = featureInterface.getBasicAnimationInterfaceFactoryInstance(resource)
                if ((animationInterfaceFactoryInterface != NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY)) {
                    return animationInterfaceFactoryInterface
                }
            }
            }
        }
        if ((resourceTypeAvailableList.size() > 0)) {
            var NO_ANIMATION_AVAILABLE_FROM = "No animation available from: "
            var FOR_FACTORIES = " factories: "
            var FOR_RESOURCE = " for Resource: "
            var HAS_KEY = " has: "
            var RESOURCES_LABEL = " resources "
            var stringBuffer = StringMaker.new()
            stringBuffer.append(NO_ANIMATION_AVAILABLE_FROM)
            stringBuffer.appendint(resourceTypeAvailableList.size())
            stringBuffer.append(CommonSeps.getInstance().FORWARD_SLASH)
            stringBuffer.appendint(size)
            stringBuffer.append(FOR_FACTORIES)
            var size2 = resourceTypeAvailableList.size()
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size2))) break
                stringBuffer.append(resourceTypeAvailableList.get(index).toString())
                stringBuffer.append(CommonSeps.getInstance().COMMA_SEP)
                }
            }
            stringBuffer.append(FOR_RESOURCE)
            stringBuffer.append(resource)
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
                featureInterface = list.objectArray[index]
                if (featureInterface.isFeature()) {
                    stringBuffer.append(StringUtil.getInstance().toString(featureInterface))
                    stringBuffer.append(HAS_KEY)
                    stringBuffer.appendint(featureInterface.getHashtable().size())
                    stringBuffer.append(RESOURCES_LABEL)
                }
                }
            }
            Fiber.abort(JR.exception("Exception", stringBuffer.toString()))
        } else {
            var stringBuffer = StringMaker.new()
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                featureInterface = list.objectArray[index]
                stringBuffer.append(featureInterface.toString())
                stringBuffer.append(CommonSeps.getInstance().SPACE)
                }
            }
            var result = stringBuffer.toString()
            stringBuffer.delete(0, stringBuffer.length())
            Fiber.abort(JR.exception("Exception", stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(result).toString()))
        }
    }
}

import "../../../org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface" for FeatureResourceAnimationInterfaceFactoryInterface
import "../../../org/allbinary/game/configuration/GameConfigurationCentral" for GameConfigurationCentral
import "../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../org/allbinary/graphics/RectangleFactory" for RectangleFactory
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./ProceduralAnimationInterfaceFactoryInterface" for ProceduralAnimationInterfaceFactoryInterface
import "./AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "./BasicAnimationInterfaceFactoryInterface" for BasicAnimationInterfaceFactoryInterface
import "./NullAnimationFactory" for NullAnimationFactory

