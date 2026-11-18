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
import "./BasicPersitance" for BasicPersitance

class KeyValuePersistance is BasicPersitance {
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }

  initFields_KeyValuePersistance() {
    _tsUtil = null
        _tsUtil = TsUtil.getInstance()
  }
    

    construct new(recordId) {
        super(recordId)
        initFields_KeyValuePersistance()
    }
    

    loadAll(abeClientInformation) {
        this.loadAllSize(abeClientInformation, 1)
    }
    

    loadAllSize(abeClientInformation, size) {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror0 = Fiber.new {
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            var recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
            var hashtable = null
            var name = null
            var value = null
            var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            var stringBuffer = StringMaker.new()
            var recordAsBytes = null
            var byteArrayInputStream = null
            var inputStream = null
            while (recordEnum.hasNextElement()) {
                var id = recordEnum.nextRecordId()
                stringBuffer.delete(0, stringBuffer.length())
                this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL)
                recordAsBytes = _tsUtil.getRecord(recordStore, id)
                if ((recordAsBytes != null)) {
                    byteArrayInputStream = ByteArrayInputStream.new(recordAsBytes)
                    inputStream = DataInputStream.new(byteArrayInputStream)
                    hashtable = ABHashtable.new()
                    if (true) {
                        var index = 0
                        var jfirst = true
                        while (true) {
                            if (!jfirst) {
                                index = JR.i32(index + 1)
                            }
                            jfirst = false
                            if (!((index < size))) break
                        name = inputStream.readUTF()
                        inputStream.readUTF()
                        value = inputStream.readUTF()
                        hashtable.put(name, value)
                        }
                    }
                    this.valueList.add(hashtable)
                    this.idList.add(smallIntegerSingletonFactory.getAt(id))
                }
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            Fiber.abort(e)
        }
        if (true) {
            if ((recordStore != null)) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.persistanceStrings.LOAD_ALL)
                recordStore.closeRecordStore()
            }
        }
    }
    

    save(abeClientInformation, hashtable) {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror1 = Fiber.new {
            this.logUtil.putF(StringMaker.new().append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            var byteArrayOutputStream = ByteArrayOutputStream.new()
            var outputStream = DataOutputStream.new(byteArrayOutputStream)
            var value = null
            var commonSeps = CommonSeps.getInstance()
            var objectArray = HashtableUtil.getInstance().getKeysAsArray(hashtable)
            var anyType = null
            var size = objectArray.count
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                outputStream.writeUTF(objectArray[index])
                outputStream.writeUTF(commonSeps.EQUALS)
                anyType = objectArray[index]
                value = hashtable.get(anyType)
                outputStream.writeUTF(value)
                }
            }
            var tsUtil = TsUtil.getInstance()
            var savedGameBytes = tsUtil.getByteArray(byteArrayOutputStream.toString())
            recordStore.addRecord(savedGameBytes, 0, savedGameBytes.count)
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            Fiber.abort(e)
        }
        if (true) {
            if ((recordStore != null)) {
                PreLogUtil.put(this.persistanceStrings.CLOSING_RECORDSTORE, this, this.commonStrings.SAVE)
                recordStore.closeRecordStore()
            }
        }
    }
    

    get(index) {
        var hashtable = this.valueList.objectArray[index]
        return hashtable
    }
}

import "../../../../../java/io/ByteArrayInputStream" for ByteArrayInputStream
import "../../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream
import "../../../../../java/io/DataInputStream" for DataInputStream
import "../../../../../java/io/DataOutputStream" for DataOutputStream
import "../../../../../javax/microedition/rms/RecordEnumeration" for RecordEnumeration
import "../../../../../javax/microedition/rms/RecordStore" for RecordStore
import "../../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/HashtableUtil" for HashtableUtil
import "./NullRecordStore" for NullRecordStore
import "./NullRecordFilter" for NullRecordFilter
import "./NullRecordComparator" for NullRecordComparator

