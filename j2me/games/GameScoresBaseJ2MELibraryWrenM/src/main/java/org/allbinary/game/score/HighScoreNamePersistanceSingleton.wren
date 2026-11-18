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
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR

class HighScoreNamePersistanceSingleton is JObject {
    static SINGLETON {
    if (__SINGLETON_set == null) {
      __SINGLETON_set = true
      __SINGLETON = HighScoreNamePersistanceSingleton.new()
    }
    return __SINGLETON
  }
  static SINGLETON=(value) {
    __SINGLETON_set = true
    __SINGLETON = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  platformRecordIdUtil { _platformRecordIdUtil }
  platformRecordIdUtil=(value) { _platformRecordIdUtil = value }
  RECORD_ID { _RECORD_ID }
  RECORD_ID=(value) { _RECORD_ID = value }
  name { _name }
  name=(value) { _name = value }
  nameBasicArrayList { _nameBasicArrayList }
  nameBasicArrayList=(value) { _nameBasicArrayList = value }

  initFields_HighScoreNamePersistanceSingleton() {
    _logUtil = null
    _tsUtil = null
    _commonStrings = null
    _platformRecordIdUtil = null
    _RECORD_ID = null
    _name = null
    _nameBasicArrayList = null
        _logUtil = LogUtil.getInstance()
        _tsUtil = TsUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
        _RECORD_ID = "_SN"
        _name = StringUtil.getInstance().EMPTY_STRING
        _nameBasicArrayList = BasicArrayListD.new()
  }

  construct new() {
    super()
    initFields_HighScoreNamePersistanceSingleton()
  }
    

    static getInstance() {
        return HighScoreNamePersistanceSingleton.SINGLETON
    }
    

    clear() {
        _name = StringUtil.getInstance().EMPTY_STRING
    }
    

    deleteAll(abeClientInformation, gameInfo) {
        var size = _nameBasicArrayList.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var integer = _nameBasicArrayList.objectArray[index]
            this.delete(abeClientInformation, gameInfo, integer.intValue())
            }
        }
        this.clear()
    }
    

    getRecordId(abeClientInformation) {
        return _platformRecordIdUtil.getRecordId(abeClientInformation, _RECORD_ID)
    }
    

    delete(abeClientInformation, gameInfo, deleteId) {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror0 = Fiber.new {
            _logUtil.putF(StringMaker.new().append("Deleting: ").appendint(deleteId).toString(), this, _commonStrings.delete)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            recordStore.deleteRecord(deleteId)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            Fiber.abort(e)
        }
        if (true) {
            if ((recordStore != null)) {
                PreLogUtil.put("Closing RecordStore", this, _commonStrings.delete)
                recordStore.closeRecordStore()
            }
        }
    }
    

    getIds() {
        return _nameBasicArrayList
    }
    

    load(abeClientInformation, gameInfo) {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror1 = Fiber.new {
            if ((_name == StringUtil.getInstance().EMPTY_STRING)) {
                var LOADING_ID = "Loading id: "
                recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
                var recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
                var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
                var recordAsBytes = null
                var byteArrayInputStream = null
                var inputStream = null
                while (recordEnum.hasNextElement()) {
                    var id = recordEnum.nextRecordId()
                    _logUtil.putF(StringMaker.new().append(LOADING_ID).appendint(id).toString(), this, _commonStrings.LOAD)
                    recordAsBytes = _tsUtil.getRecord(recordStore, id)
                    byteArrayInputStream = ByteArrayInputStream.new(recordAsBytes)
                    inputStream = DataInputStream.new(byteArrayInputStream)
                    while ((inputStream.available() > 0)) {
                        _name = inputStream.readUTF()
                    }
                    _nameBasicArrayList.add(smallIntegerSingletonFactory.getAt(id))
                }
            }
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            this.save(abeClientInformation, gameInfo, _name)
            _logUtil.putF(StringMaker.new().append(_commonStrings.EXCEPTION_LABEL).append(ExceptionUtil.getInstance().getStackTrace(e)).toString(), this, _commonStrings.LOAD)
        }
        if (true) {
            var jerror2 = Fiber.new {
                if ((recordStore != null)) {
                    PreLogUtil.put("Closing RecordStore", this, _commonStrings.LOAD)
                    recordStore.closeRecordStore()
                }
            }.try()
            if (jerror2 != null) {
                var e = jerror2
                _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.LOAD, e)
            }
        }
        return _name
    }
    

    save(abeClientInformation, gameInfo, name) {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror3 = Fiber.new {
            _logUtil.putF(StringMaker.new().append("Saving: ").append(name).toString(), this, _commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            var byteArrayOutputStream = ByteArrayOutputStream.new()
            var outputStream = DataOutputStream.new(byteArrayOutputStream)
            outputStream.writeUTF(name)
            var savedGameBytes = byteArrayOutputStream.toByteArray()
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.count)
            _name = name
        }.try()
        if (jerror3 != null) {
            var e = jerror3
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.SAVE, e)
        }
        if (true) {
            var jerror4 = Fiber.new {
                if ((recordStore != null)) {
                    PreLogUtil.put("Closing RecordStore", this, _commonStrings.SAVE)
                    recordStore.closeRecordStore()
                }
            }.try()
            if (jerror4 != null) {
                var e = jerror4
                _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.SAVE, e)
            }
        }
    }
}

import "../../../../java/io/ByteArrayInputStream" for ByteArrayInputStream
import "../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream
import "../../../../java/io/DataInputStream" for DataInputStream
import "../../../../java/io/DataOutputStream" for DataOutputStream
import "../../../../javax/microedition/rms/RecordEnumeration" for RecordEnumeration
import "../../../../javax/microedition/rms/RecordStore" for RecordStore
import "../../../../javax/microedition/rms/RecordStoreException" for RecordStoreException
import "../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../org/allbinary/game/configuration/persistance/NullRecordComparator" for NullRecordComparator
import "../../../../org/allbinary/game/configuration/persistance/NullRecordFilter" for NullRecordFilter
import "../../../../org/allbinary/game/configuration/persistance/NullRecordStore" for NullRecordStore
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/java/exception/ExceptionUtil" for ExceptionUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../org/allbinary/persistance/PlatformRecordIdUtil" for PlatformRecordIdUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../java/lang/Integer" for Integer

