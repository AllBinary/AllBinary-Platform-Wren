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
// package org.allbinary.game.configuration.feature

import "../../../../../allbinary_java" for JObject, JException, JR

class InGameFeatureChoiceGroups is JObject {
    static gameFeatureChoiceGroupsExclusive {
    if (__gameFeatureChoiceGroupsExclusive_set == null) {
      __gameFeatureChoiceGroupsExclusive_set = true
      __gameFeatureChoiceGroupsExclusive = InGameFeatureChoiceGroups.new()
    }
    return __gameFeatureChoiceGroupsExclusive
  }
  static gameFeatureChoiceGroupsExclusive=(value) {
    __gameFeatureChoiceGroupsExclusive_set = true
    __gameFeatureChoiceGroupsExclusive = value
  }
    static gameFeatureChoiceGroupsMultiple {
    if (__gameFeatureChoiceGroupsMultiple_set == null) {
      __gameFeatureChoiceGroupsMultiple_set = true
      __gameFeatureChoiceGroupsMultiple = InGameFeatureChoiceGroups.new()
    }
    return __gameFeatureChoiceGroupsMultiple
  }
  static gameFeatureChoiceGroupsMultiple=(value) {
    __gameFeatureChoiceGroupsMultiple_set = true
    __gameFeatureChoiceGroupsMultiple = value
  }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }

  initFields_InGameFeatureChoiceGroups() {
    _hashtable = null
        _hashtable = StdUtil.getInstance().createHashtable()
  }
    

    construct new() {
    super()
    initFields_InGameFeatureChoiceGroups()
    }
    

    static getExclusiveInstance() {
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsExclusive
    }
    

    static getMultipleInstance() {
        return InGameFeatureChoiceGroups.gameFeatureChoiceGroupsMultiple
    }
    

    get() {
        return _hashtable
    }
    

    add(name, list) {
        _hashtable.put(name, list)
    }
}

import "../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList

