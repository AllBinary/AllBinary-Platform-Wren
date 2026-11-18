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

class LayerPlacer is JObject {
  enumerationUtil { _enumerationUtil }
  enumerationUtil=(value) { _enumerationUtil = value }
  layerInterfaceVisitor { _layerInterfaceVisitor }
  layerInterfaceVisitor=(value) { _layerInterfaceVisitor = value }
  dimension { _dimension }
  dimension=(value) { _dimension = value }

  initFields_LayerPlacer() {
    _enumerationUtil = null
    _layerInterfaceVisitor = null
    _dimension = null
        _enumerationUtil = EnumerationUtil.getInstance()
        
        
  }
    

    construct new(layerInterfaceVisitor, dimension) {
    super()
    initFields_LayerPlacer()
        _layerInterfaceVisitor = layerInterfaceVisitor
        _dimension = dimension
    }
    

    processList(list) {
        var size = list.size()
        var layerPlacementInterface = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            layerPlacementInterface = list.objectArray[index]
            this.process(layerPlacementInterface)
            }
        }
    }
    

    process(layerPlacementInterface) {
        var relativePoint = this.getPoint(layerPlacementInterface)
        var layerInterfaceFactory = LayerInterfaceFactory.getInstance()
        var hashtable = layerPlacementInterface.getInstance()
        var enumeration = hashtable.keys()
        var point = null
        var layerHashtable = null
        var x = 0
        var y = 0
        var z = 0
        var layerInterface = null
        while (_enumerationUtil.hasMoreElements(enumeration)) {
            point = _enumerationUtil.nextElement(enumeration)
            layerHashtable = hashtable.get(point)
            x = (point.getX() + relativePoint.getX())
            y = (point.getY() + relativePoint.getY())
            z = (point.getZ() + relativePoint.getZ())
            layerInterface = layerInterfaceFactory.getNexInstance(layerHashtable, x, y, z)
            _layerInterfaceVisitor.visit(layerInterface)
        }
    }
    

    getPoint(layerPlacementInterface) {
        var pointFactory = PointFactory.getInstance()
        var layerPlacementType = layerPlacementInterface.getLayerType()
        if ((layerPlacementType == LayerPlacementTypeFactory.getInstance().MAP)) {
            var width = layerPlacementInterface.getWidth()
            var height = layerPlacementInterface.getHeight()
            var x = ((((_dimension.getX() - width)) / 2))
            var y = ((((_dimension.getY() - height)) / 2))
            return pointFactory.createXY(x, y)
        } else if ((layerPlacementType == LayerPlacementTypeFactory.getInstance().UP)) {
            var width = layerPlacementInterface.getWidth()
            var height = layerPlacementInterface.getHeight()
            var x = ((((_dimension.getX() - width)) / 2))
            var y = -height
            return pointFactory.createXY(x, y)
        } else {
            Fiber.abort(JR.exception("Exception", "PlacementType Not Recognized"))
        }
    }
}

import "../../../../java/util/Enumeration" for Enumeration
import "../../../../org/allbinary/graphics/GPoint" for GPoint
import "../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../org/allbinary/layer/LayerInterfaceFactory" for LayerInterfaceFactory
import "../../../../org/allbinary/layer/LayerInterfaceVisitor" for LayerInterfaceVisitor
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/EnumerationUtil" for EnumerationUtil
import "./LayerPlacementInterface" for LayerPlacementInterface
import "./LayerPlacementType" for LayerPlacementType
import "./LayerPlacementTypeFactory" for LayerPlacementTypeFactory

