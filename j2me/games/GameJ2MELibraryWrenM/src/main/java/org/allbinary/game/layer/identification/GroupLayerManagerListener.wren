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
// package org.allbinary.game.layer.identification

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/layer/event/LayerManagerEventListener" for LayerManagerEventListener

class GroupLayerManagerListener is LayerManagerEventListener {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = GroupLayerManagerListener.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  list { _list }
  list=(value) { _list = value }

  initFields_GroupLayerManagerListener() {
    _logUtil = null
    _list = null
        _logUtil = LogUtil.getInstance()
        _list = BasicArrayListD.new()
  }
    

    static getInstance() {
        return GroupLayerManagerListener.SINGLETON
    }
    

    construct new() {
    super()
    initFields_GroupLayerManagerListener()
        LayerManagerEventHandler.getInstance().addListener(this)
    }
    

    clear() {
        var groupList = null
        var size = _list.size()
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            groupList = _list.objectArray[index]
            groupList.clear()
            }
        }
    }
    

    getGroupSizeFromInterface(groupInterfaceCompositeInterface) {
        var groupInterfaceArray = groupInterfaceCompositeInterface.getGroupInterface()
        return this.getGroupSize(groupInterfaceArray[0])
    }
    

    getGroupSize(groupInterface) {
        var id = JR.i32(groupInterface.getGroupId())
        return this.getGroupSizeById(id)
    }
    

    getList(groupInterface) {
        var id = JR.i32(groupInterface.getGroupId())
        return this.getListById(id)
    }
    

    getListById(groupId) {
        var groupList = _list.objectArray[groupId]
        return groupList
    }
    

    getGroupSizeById(groupId) {
        var groupList = _list.objectArray[groupId]
        var size = groupList.size()
        return size
    }
    

    areAllOtherGroupsEmpty(groupInterface) {
        var id = JR.i32(groupInterface.getGroupId())
        var size = _list.size()
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if ((id != index)) {
                var groupSize = this.getGroupSizeById(index)
                if ((groupSize != 0)) {
                    _logUtil.putF(StringMaker.new().append("Group Size: ").appendint(groupSize).toString(), this, "areAllOtherGroupsEmpty")
                    return false
                }
            }
            }
        }
        return true
    }
    

    isIdInList(id, excludeGroupList) {
        var size = excludeGroupList.size()
        var groupInterfaceArray = null
        var groupInterface = null
        var groupId = 0
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            groupInterfaceArray = excludeGroupList.objectArray[index]
            var size2 = groupInterfaceArray.count
            if (true) {
                var index2 = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index2 = JR.i32(index2 + 1)
                    }
                    jfirst = false
                    if (!((index2 < size2))) break
                groupInterface = groupInterfaceArray[index2]
                groupId = JR.i32(groupInterface.getGroupId())
                if ((groupId == id)) {
                    return true
                }
                }
            }
            }
        }
        return false
    }
    

    areAllOtherGroupsLessThan(excludeGroupList, maxSize) {
        var size = _list.size()
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            if (!this.isIdInList(index, excludeGroupList)) {
                var groupSize = this.getGroupSizeById(index)
                if ((groupSize >= maxSize)) {
                    return false
                }
            }
            }
        }
        return true
    }
    

    init(total) {
        while ((_list.size() <= JR.i32(total + 1))) {
            _list.add(BasicArrayListD.new())
        }
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onCreateLayerManagerEvent(layerManagerEvent) {
        var layerInterface = layerManagerEvent.getLayerInterface()
        var groupInterfaceArray = layerInterface.getGroupInterface()
        var size = groupInterfaceArray.count
        var id = 0
        var groupList = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            id = JR.i32(groupInterfaceArray[index].getGroupId())
            groupList = _list.objectArray[id]
            if ((groupList == null)) {
                _logUtil.putF(StringMaker.new().append("id: ").appendint(id).toString(), this, "onCreateLayerManagerEvent")
            }
            if (!groupList.contains(layerInterface)) {
                groupList.add(layerInterface)
            } else {
            }
            }
        }
    }
    

    onDeleteLayerManagerEvent(layerManagerEvent) {
        var layerInterface = layerManagerEvent.getLayerInterface()
        var groupInterfaceArray = layerInterface.getGroupInterface()
        var size = groupInterfaceArray.count
        var id = 0
        var groupList = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            id = JR.i32(groupInterfaceArray[index].getGroupId())
            groupList = _list.objectArray[id]
            groupList.remove(layerInterface)
            }
        }
    }
    

    log() {
        var stringBuffer = StringMaker.new()
        var GROUP = "Group: "
        var SPACE = CommonSeps.getInstance().SPACE
        var TOTAL_LABEL = CommonLabels.getInstance().TOTAL_LABEL
        var size = _list.size()
        if (true) {
            var index = JR.i32(size - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var groupList = _list.objectArray[index]
            stringBuffer.append(GROUP)
            stringBuffer.appendint(index)
            stringBuffer.append(SPACE)
            stringBuffer.append(TOTAL_LABEL)
            stringBuffer.appendint(groupList.size())
            stringBuffer.append(SPACE)
            }
        }
        _logUtil.putF(stringBuffer.toString(), this, "log")
    }
}

import "../../../../../org/allbinary/game/identification/Group" for Group
import "../../../../../org/allbinary/game/identification/GroupInterfaceCompositeInterface" for GroupInterfaceCompositeInterface
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/layer/event/LayerManagerEvent" for LayerManagerEvent
import "../../../../../org/allbinary/layer/event/LayerManagerEventHandler" for LayerManagerEventHandler
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

