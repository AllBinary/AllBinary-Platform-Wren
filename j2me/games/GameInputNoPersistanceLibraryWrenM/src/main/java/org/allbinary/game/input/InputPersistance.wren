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

//GameInputNoPersistanceLibrary
class InputPersistance is BasicPersitance {
  hashtableUtil { _hashtableUtil }
  hashtableUtil=(value) { _hashtableUtil = value }

  initFields_InputPersistance() {
    _hashtableUtil = null
        _hashtableUtil = HashtableUtil.getInstance()
  }
    

    construct new(name) {
        super(name)
        initFields_InputPersistance()
    }
    

    loadAll(abeClientInformation) {
        var recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
        var recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
        var hashtable = null
        var stringBuffer = StringMaker.new()
        var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        var id = 0
        while (recordEnum.hasNextElement()) {
            id = recordEnum.nextRecordId()
            stringBuffer.delete(0, stringBuffer.length())
            this.logUtil.putF(stringBuffer.append(this.persistanceStrings.LOADING_ID).appendint(id).toString(), this, this.persistanceStrings.LOAD_ALL)
            hashtable = StdUtil.getInstance().createHashtable()
            this.valueList.add(hashtable)
            this.idList.add(smallIntegerSingletonFactory.getAt(id))
        }
        recordStore.closeRecordStore()
    }
    

    save(abeClientInformation, hashtable) {
        PreLogUtil.put(StringMaker.new().append(this.persistanceStrings.NOT_SAVING).append(StringUtil.getInstance().toString(hashtable)).toString(), this, this.commonStrings.SAVE)
        var recordStore = RecordStore.openRecordStore(this.getRecordId(abeClientInformation), true)
        var gameActionInput = null
        var list = null
        var input = null
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
                input = list.get(index2)
                }
            }
            }
        }
        recordStore.closeRecordStore()
    }
}

import "../../../../javax/microedition/rms/RecordEnumeration" for RecordEnumeration
import "../../../../javax/microedition/rms/RecordStore" for RecordStore
import "../../../../org/allbinary/game/configuration/persistance/NullRecordComparator" for NullRecordComparator
import "../../../../org/allbinary/game/configuration/persistance/NullRecordFilter" for NullRecordFilter
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/HashtableUtil" for HashtableUtil
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./Input" for Input

