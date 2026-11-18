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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/game/configuration/persistance/BasicPersitance" for BasicPersitance

//GameInputPersistanceLibrary
class InputPersistance is BasicPersitance {
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  hashtableUtil { _hashtableUtil }
  hashtableUtil=(value) { _hashtableUtil = value }

  initFields_InputPersistance() {
    _tsUtil = null
    _hashtableUtil = null
        _tsUtil = TsUtil.getInstance()
        _hashtableUtil = HashtableUtil.getInstance()
  }
    

    construct new(name) {
        super(name)
        initFields_InputPersistance()
    }
    

    loadAll(abeClientInformation) {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror0 = Fiber.new {
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            var recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
            var gameActionInputId = 0
            var inputId = 0
            var gameActionInput = null
            var input = null
            var hashtable = null
            var gameKeyFactory = GameKeyMappingFactory.getInstance()
            var stringBuffer = StringMaker.new()
            var inputFactory = InputFactory.getInstance()
            var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            var stdUtil = StdUtil.getInstance()
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
                    hashtable = stdUtil.createHashtable()
                    var value = 0
                    while ((inputStream.available() > 0)) {
                        var gameActionInputIdAsString = inputStream.readUTF()
                        value = Num.fromString(gameActionInputIdAsString)
                        gameActionInputId = value
                        inputStream.readUTF()
                        value = Num.fromString(inputStream.readUTF())
                        inputId = value
                        gameActionInput = gameKeyFactory.getGameKey(JR.i32(gameActionInputId))
                        input = inputFactory.getInstanceById(JR.i32(inputId))
                        if (((input == inputFactory.NO_INPUT) || (gameActionInput == null))) {
                            stringBuffer.delete(0, stringBuffer.length())
                            if ((input == inputFactory.NO_INPUT)) {
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING_ID)
                                stringBuffer.appendlong(inputId)
                                stringBuffer.append(this.persistanceStrings.GAME_ACTION_INPUT)
                                stringBuffer.appendlong(gameActionInputId)
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL)
                            }
                            if ((gameActionInput == null)) {
                                stringBuffer.delete(0, stringBuffer.length())
                                stringBuffer.append(this.persistanceStrings.ERROR_LOADING)
                                stringBuffer.appendlong(gameActionInputId)
                                stringBuffer.append(this.persistanceStrings.ID)
                                stringBuffer.appendlong(inputId)
                                PreLogUtil.put(stringBuffer.toString(), this, this.persistanceStrings.LOAD_ALL)
                            }
                        } else {
                        }
                        hashtable.put(input, gameActionInput)
                    }
                    this.valueList.add(hashtable)
                    this.idList.add(smallIntegerSingletonFactory.getAt(id))
                } else {
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
            var stringBuffer = StringMaker.new()
            PreLogUtil.put(stringBuffer.append(this.persistanceStrings.SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE)
            recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
            var byteArrayOutputStream = ByteArrayOutputStream.new()
            var outputStream = DataOutputStream.new(byteArrayOutputStream)
            var gameActionInput = null
            var list = null
            var input = null
            var savedGameBytes = null
            var commonSeps = CommonSeps.getInstance()
            var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
            var inputObjectArray = _hashtableUtil.getKeysAsArray(hashtable)
            var size = inputObjectArray.count
            if (true) {
                var index = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        index = JR.i32(index + 1)
                    }
                    jfirst = false
                    if (!((index < size))) break
                gameActionInput = inputObjectArray[index]
                list = hashtable.get(inputObjectArray[index])
                if (true) {
                    var index2 = 0
                    var jfirst = true
                    while (true) {
                        if (!jfirst) {
                            index2 = JR.i32(index2 + 1)
                        }
                        jfirst = false
                        if (!((index2 < list.size()))) break
                    var gameActionInputIdAsString = smallIntegerSingletonFactory.getAt(gameActionInput.getId()).toString()
                    outputStream.writeUTF(gameActionInputIdAsString)
                    outputStream.writeUTF(commonSeps.EQUALS)
                    input = list.objectArray[index2]
                    var inputIdAsString = smallIntegerSingletonFactory.getAt(input.getId()).toString()
                    outputStream.writeUTF(inputIdAsString)
                    }
                }
                }
            }
            savedGameBytes = byteArrayOutputStream.toByteArray()
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
}

import "../../../../java/io/ByteArrayInputStream" for ByteArrayInputStream
import "../../../../java/io/ByteArrayOutputStream" for ByteArrayOutputStream
import "../../../../java/io/DataInputStream" for DataInputStream
import "../../../../java/io/DataOutputStream" for DataOutputStream
import "../../../../javax/microedition/rms/RecordEnumeration" for RecordEnumeration
import "../../../../javax/microedition/rms/RecordStore" for RecordStore
import "../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../org/allbinary/game/configuration/persistance/NullRecordComparator" for NullRecordComparator
import "../../../../org/allbinary/game/configuration/persistance/NullRecordFilter" for NullRecordFilter
import "../../../../org/allbinary/game/configuration/persistance/NullRecordStore" for NullRecordStore
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/HashtableUtil" for HashtableUtil
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../java/lang/Integer" for Integer
import "./Input" for Input
import "./GameKeyMappingFactory" for GameKeyMappingFactory
import "./InputFactory" for InputFactory

