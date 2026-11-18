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
// package org.allbinary.game.configuration.persistance

import "../../../../../allbinary_java" for JObject, JException, JR

class BasicPersitance is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  persistanceStrings { _persistanceStrings }
  persistanceStrings=(value) { _persistanceStrings = value }
  platformRecordIdUtil { _platformRecordIdUtil }
  platformRecordIdUtil=(value) { _platformRecordIdUtil = value }
  recordId { _recordId }
  recordId=(value) { _recordId = value }
  valueList { _valueList }
  valueList=(value) { _valueList = value }
  idList { _idList }
  idList=(value) { _idList = value }

  initFields_BasicPersitance() {
    _logUtil = null
    _commonStrings = null
    _persistanceStrings = null
    _platformRecordIdUtil = null
    _recordId = null
    _valueList = null
    _idList = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _persistanceStrings = PersistanceStrings.getInstance()
        _platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
        
        _valueList = BasicArrayListD.new()
        _idList = BasicArrayListD.new()
  }
    

    construct new(recordId) {
    super()
    initFields_BasicPersitance()
        _recordId = recordId
    }
    

    deleteRecoreStore(abeClientInformation) {
        RecordStore.deleteRecordStore(this.getRecordId(abeClientInformation))
    }
    

    deleteAll(abeClientInformation) {
        var size = _idList.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var integer = _idList.objectArray[index]
            this.delete(abeClientInformation, integer.intValue())
            }
        }
        this.clear()
    }
    

    delete(abeClientInformation, deleteId) {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror0 = Fiber.new {
            _logUtil.putF(StringMaker.new().append(_persistanceStrings.DELETING_WITH_ID).appendint(deleteId).toString(), this, _commonStrings.delete)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            Fiber.abort(e)
        }
        if (true) {
            if ((recordStore != null)) {
                PreLogUtil.put(_persistanceStrings.CLOSING_RECORDSTORE, this, _commonStrings.delete)
                recordStore.closeRecordStore()
            }
        }
    }
    

    getRecordId(abeClientInformation) {
        return _platformRecordIdUtil.getRecordId(abeClientInformation, _recordId)
    }
    

    getList() {
        return _valueList
    }
    

    getIds() {
        return _idList
    }
    

    clear() {
        _valueList.clear()
        _idList.clear()
    }
}

import "../../../../../javax/microedition/rms/RecordStore" for RecordStore
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/persistance/PlatformRecordIdUtil" for PlatformRecordIdUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../java/lang/Integer" for Integer
import "./PersistanceStrings" for PersistanceStrings
import "./NullRecordStore" for NullRecordStore

