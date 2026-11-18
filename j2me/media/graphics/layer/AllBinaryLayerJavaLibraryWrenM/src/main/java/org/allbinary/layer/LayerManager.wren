// Generated Code Do Not Modify
// package org.allbinary.layer

import "../../../allbinary_java" for JObject, JException, JR

class LayerManager is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  systemWrapper { _systemWrapper }
  systemWrapper=(value) { _systemWrapper = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  layerManagerLogging { _layerManagerLogging }
  layerManagerLogging=(value) { _layerManagerLogging = value }
  list { _list }
  list=(value) { _list = value }
  anyType { _anyType }
  anyType=(value) { _anyType = value }

  initFields_LayerManager() {
    _logUtil = null
    _commonStrings = null
    _systemWrapper = null
    _tsUtil = null
    _layerManagerLogging = null
    _list = null
    _anyType = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _systemWrapper = ABSystemWrapper.getInstance()
        _tsUtil = TsUtil.getInstance()
        
        _list = BasicArrayListD.new()
        _anyType = SynchObject.new()
  }
    

    construct new(layerManagerLogging) {
    super()
    initFields_LayerManager()
        _logUtil.putF(_commonStrings.START, this, _commonStrings.CONSTRUCTOR)
        _layerManagerLogging = layerManagerLogging
    }
    

    contains(layerInterface) {
        return _list.contains(layerInterface)
    }
    

    update(layerInterface) {
        var had = _list.remove(layerInterface)
        if (had) {
            var nextLayerInterface = null
            var size = _list.size()
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                nextLayerInterface = _list.get(index)
                if ((layerInterface.getZP() > nextLayerInterface.getZP())) {
                    _list.addAt(index, layerInterface)
                    return
                }
                }
            }
            _list.add(layerInterface)
        }
    }
    

    insert(layerInterface) {
        var nextLayerInterface = null
        var size = _list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            nextLayerInterface = _list.get(index)
            if ((layerInterface.getZP() > nextLayerInterface.getZP())) {
                this.appendAt(layerInterface, index)
                return
            }
            }
        }
        this.append(layerInterface)
    }
    

    append(layerInterface) {
        _layerManagerLogging.append(layerInterface)
        _list.add(layerInterface)
    }
    

    appendAt(layerInterface, index) {
        _layerManagerLogging.appendAt(layerInterface, index)
        _list.addAt(index, layerInterface)
    }
    

    remove(layerInterface) {
        if (true) {
            _layerManagerLogging.remove(layerInterface)
            var result = _list.remove(layerInterface)
            _layerManagerLogging.removeResult(this, layerInterface, result)
        }
    }
    

    getLayerAt(index) {
        return _list.objectArray[index]
    }
    

    getSize() {
        return _list.size()
    }
    

    cleanup() {
        if (true) {
            _list.clear()
            _layerManagerLogging.clear()
            _tsUtil.gc()
            _tsUtil.gc()
        }
    }
    

    paint(g, x, y) {
        if (true) {
            var comp = null
            if (true) {
                var index = _list.size()
                var jfirst = true
                while (true) {
                    jfirst = false
                    if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
                comp = _list.objectArray[index]
                if (((comp != null) && comp.isVisible())) {
                    comp.paint(g)
                }
                }
            }
        }
    }
}

import "../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../org/allbinary/TsUtil" for TsUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/thread/SynchObject" for SynchObject
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../org/allbinary/logic/ABSystemWrapper" for ABSystemWrapper
import "./LayerManagerLoggingBase" for LayerManagerLoggingBase
import "./AllBinaryLayer" for AllBinaryLayer
import "./Layer" for Layer

