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

class ResourceRelativeRelationshipFactory is JObject {
  basicArrayListUtil { _basicArrayListUtil }
  basicArrayListUtil=(value) { _basicArrayListUtil = value }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }
  initialized { _initialized }
  initialized=(value) { _initialized = value }

  initFields_ResourceRelativeRelationshipFactory() {
    _basicArrayListUtil = null
    _hashtable = null
    _initialized = false
        _basicArrayListUtil = BasicArrayListUtil.getInstance()
        _hashtable = StdUtil.getInstance().createHashtable()
        _initialized = false
  }

  construct new() {
    super()
    initFields_ResourceRelativeRelationshipFactory()
  }
    

    init(level) {
        this.setInitialized(true)
    }
    

    getResourceRelativeRelationshipList(resource) {
        var listCanBeNull = _hashtable.get(resource)
        if ((listCanBeNull == null)) {
            return _basicArrayListUtil.getImmutableInstance()
        }
        return listCanBeNull
    }
    

    addResourceRelativeRelationship(resource, hardPoint) {
        var list = this.getResourceRelativeRelationshipList(resource)
        if ((list == _basicArrayListUtil.getImmutableInstance())) {
            list = BasicArrayListD.new()
        }
        list.add(hardPoint)
        _hashtable.put(resource, list)
    }
    

    isLoadingLevel(level) {
        return false
    }
    

    isFeature() {
        return false
    }
    

    setInitialized(initialized) {
        _initialized = initialized
    }
    

    isInitialized() {
        return _initialized
    }
}

import "../../../../org/allbinary/graphics/RelativeRelationship" for RelativeRelationship
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "./ResourceRelativeRelationshipFactoryInterface" for ResourceRelativeRelationshipFactoryInterface

