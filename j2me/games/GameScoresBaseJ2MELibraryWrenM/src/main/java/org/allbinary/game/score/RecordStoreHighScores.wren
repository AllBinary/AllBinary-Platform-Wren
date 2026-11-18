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
import "./HighScores" for HighScores

class RecordStoreHighScores is HighScores {
    static hashTable {
    if (__hashTable_set == null) {
      __hashTable_set = true
      __hashTable = StdUtil.getInstance().createHashtable()
    }
    return __hashTable
  }
  static hashTable=(value) {
    __hashTable_set = true
    __hashTable = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  platformRecordIdUtil { _platformRecordIdUtil }
  platformRecordIdUtil=(value) { _platformRecordIdUtil = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  RECORD_ID { _RECORD_ID }
  RECORD_ID=(value) { _RECORD_ID = value }
  MAXHIGHSCORES { _MAXHIGHSCORES }
  MAXHIGHSCORES=(value) { _MAXHIGHSCORES = value }
  gameInfo { _gameInfo }
  gameInfo=(value) { _gameInfo = value }
  abeClientInformation { _abeClientInformation }
  abeClientInformation=(value) { _abeClientInformation = value }
  recordComparatorInterface { _recordComparatorInterface }
  recordComparatorInterface=(value) { _recordComparatorInterface = value }

  initFields_RecordStoreHighScores() {
    _logUtil = null
    _commonStrings = null
    _platformRecordIdUtil = null
    _tsUtil = null
    _RECORD_ID = null
    _MAXHIGHSCORES = 0
    _gameInfo = null
    _abeClientInformation = null
    _recordComparatorInterface = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _platformRecordIdUtil = PlatformRecordIdUtil.getInstance()
        _tsUtil = TsUtil.getInstance()
        _RECORD_ID = "_HS"
        _MAXHIGHSCORES = 100
        
        
        
  }
    

    construct new(abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface) {
        super(name, heading, columnTwoHeading)
        initFields_RecordStoreHighScores()
        _abeClientInformation = abeClientInformation
        _gameInfo = gameInfo
        _recordComparatorInterface = recordComparatorInterface
        this.load()
    }
    

    static getInstance(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface) {
        var highScoresCanBeNull = RecordStoreHighScores.hashTable.get(highScoreName)
        if ((highScoresCanBeNull == null)) {
            var highScores = RecordStoreHighScores.new(abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface)
            RecordStoreHighScores.hashTable.put(highScores.getName(), highScores)
            return highScores
        }
        return highScoresCanBeNull
    }
    

    getRecordId(abeClientInformation) {
        return _platformRecordIdUtil.getRecordId(abeClientInformation, StringMaker.new().append(CommonSeps.getInstance().UNDERSCORE).append(this.getName()).append(_RECORD_ID).toString())
    }
    

    addHighScore(newHighScore) {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror0 = Fiber.new {
            _logUtil.putF(StringMaker.new().append("Adding HighScore: ").appendlong(newHighScore.getScore()).toString(), this, _commonStrings.ADD)
            if (this.isTooManyHighScores()) {
                _logUtil.putF("Removing Lowest Score", this, _commonStrings.ADD)
                this.removeLowestHighScore()
            }
            recordStore = RecordStore.openRecordStore(this.getRecordId(_abeClientInformation), true)
            var highScoreBytes = newHighScore.getAsBytes()
            var recordId = recordStore.addRecord(highScoreBytes, 0, highScoreBytes.count)
            this.load()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.ADD, e)
        }
        if (true) {
            var jerror1 = Fiber.new {
                if ((recordStore != null)) {
                    PreLogUtil.put("Closing RecordStore", this, _commonStrings.ADD)
                    recordStore.closeRecordStore()
                }
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.ADD, e)
            }
        }
    }
    

    removeLowestHighScore() {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror2 = Fiber.new {
            recordStore = RecordStore.openRecordStore(this.getRecordId(_abeClientInformation), true)
            var recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
            var scoreComparator = (_recordComparatorInterface)
            var bestHighScore = HighScore.new(-1, "none", GameInfo.NONE, scoreComparator.getBestScore())
            var recordAsBytes = null
            var byteArrayInputStream = null
            var inputStream = null
            while (recordEnum.hasNextElement()) {
                var id = recordEnum.nextRecordId()
                recordAsBytes = _tsUtil.getRecord(recordStore, id)
                if ((recordAsBytes != null)) {
                    byteArrayInputStream = ByteArrayInputStream.new(recordAsBytes)
                    inputStream = DataInputStream.new(byteArrayInputStream)
                    var name = inputStream.readUTF()
                    var nextScore = inputStream.readLong()
                    var nextCurrentHighScore = HighScore.new(id, name, GameInfo.NONE, nextScore)
                    if ((_recordComparatorInterface.compare(nextCurrentHighScore.getAsBytes(), bestHighScore.getAsBytes()) == RecordComparator.FOLLOWS)) {
                        bestHighScore = nextCurrentHighScore
                    }
                }
            }
            if ((bestHighScore.getId() != -1)) {
                _logUtil.putF(StringMaker.new().append("Removing Lowest HighScore: ").appendlong(bestHighScore.getScore()).toString(), this, _commonStrings.LOAD)
                recordStore.deleteRecord(bestHighScore.getId())
            }
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            _logUtil.put(_commonStrings.EXCEPTION, this, "removeLowestHighScore", e)
        }
        if (true) {
            var jerror3 = Fiber.new {
                if ((recordStore != null)) {
                    PreLogUtil.put("Closing RecordStore", this, "removeLowestHighScore")
                    recordStore.closeRecordStore()
                }
            }.try()
            if (jerror3 != null) {
                var e = jerror3
                _logUtil.put(_commonStrings.EXCEPTION, this, "removeLowestHighScore", e)
            }
        }
    }
    

    load() {
        var recordStore = NullRecordStore.NULL_RECORD_STORE
        var jerror4 = Fiber.new {
            recordStore = RecordStore.openRecordStore(this.getRecordId(_abeClientInformation), true)
            this.setList(BasicArrayListD.new())
            var recordEnum = recordStore.enumerateRecords(NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true)
            var recordAsBytes = null
            var byteArrayInputStream = null
            var inputStream = null
            while (recordEnum.hasNextElement()) {
                var id = recordEnum.nextRecordId()
                recordAsBytes = _tsUtil.getRecord(recordStore, id)
                if ((recordAsBytes != null)) {
                    byteArrayInputStream = ByteArrayInputStream.new(recordAsBytes)
                    inputStream = DataInputStream.new(byteArrayInputStream)
                    var jerror6 = Fiber.new {
                        var name = inputStream.readUTF()
                        var score = inputStream.readLong()
                        var newHighScore = HighScore.new(id, name, GameInfo.NONE, score)
                        var list = this.getList()
                        var size = list.size()
                        var lastIndex = size
                        if (true) {
                            var index = 0
                            var jfirst = true
                            while (true) {
                                if (!jfirst) {
                                    index = JR.i32(index + 1)
                                }
                                jfirst = false
                                if (!((index < size))) break
                            var highScore = list.objectArray[index]
                            if ((_recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.PRECEDES)) {
                                lastIndex = index
                                break
                            }
                            }
                        }
                        list.addAt(lastIndex, newHighScore)
                    }.try()
                    if (jerror6 != null) {
                        var e = jerror6
                        _logUtil.put("EOF", this, _commonStrings.LOAD, e)
                        Fiber.abort(e)
                    }
                }
            }
        }.try()
        if (jerror4 != null) {
            var e = jerror4
            _logUtil.put("No High Scores", this, _commonStrings.LOAD, e)
        }
        if (true) {
            var jerror5 = Fiber.new {
                if ((recordStore != null)) {
                    PreLogUtil.put("Closing RecordStore", this, _commonStrings.LOAD)
                    recordStore.closeRecordStore()
                }
            }.try()
            if (jerror5 != null) {
                var e = jerror5
                _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.LOAD, e)
            }
        }
    }
    

    isTooManyHighScores() {
        if (((this.getList() != null) && (this.getList().size() < _MAXHIGHSCORES))) {
            return false
        } else {
            _logUtil.putF(StringMaker.new().append("HighScores RecordStore Max Reached: ").appendint(_MAXHIGHSCORES).toString(), this, "isTooManyHighScores")
            return true
        }
    }
    

    isBestScore(newHighScore) {
        var jerror7 = Fiber.new {
            if (!this.isTooManyHighScores()) {
                _logUtil.putF("Slot Available for a High Score", this, "isBestScore")
                return true
            } else {
                var list = this.getList()
                var size = list.size()
                if (true) {
                    var index = 0
                    var jfirst = true
                    while (true) {
                        if (!jfirst) {
                            index = JR.i32(index + 1)
                        }
                        jfirst = false
                        if (!((index < size))) break
                    var highScore = list.objectArray[index]
                    if ((_recordComparatorInterface.compare(newHighScore.getAsBytes(), highScore.getAsBytes()) == RecordComparator.FOLLOWS)) {
                        _logUtil.putF("Obtained a High Score", this, "isBestScore")
                        return true
                    }
                    }
                }
            }
            _logUtil.putF("Not a High Score", this, "isBestScore")
            return false
        }.try()
        if (jerror7 != null) {
            var e = jerror7
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.ADD, e)
            Fiber.abort(e)
        }
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append(super.toString())
        var list = this.getList()
        var size = list.size()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            var highScore = list.objectArray[index]
            stringBuffer.append(highScore.getScoreString())
            stringBuffer.append(CommonSeps.getInstance().COMMA_SEP)
            }
        }
        return stringBuffer.toString()
    }
}

import "../../../../java/io/ByteArrayInputStream" for ByteArrayInputStream
import "../../../../java/io/DataInputStream" for DataInputStream
import "../../../../java/io/EOFException" for EOFException
import "../../../../java/io/IOException" for IOException
import "../../../../javax/microedition/rms/RecordComparator" for RecordComparator
import "../../../../javax/microedition/rms/RecordEnumeration" for RecordEnumeration
import "../../../../javax/microedition/rms/RecordStore" for RecordStore
import "../../../../javax/microedition/rms/RecordStoreException" for RecordStoreException
import "../../../../javax/microedition/rms/RecordStoreNotFoundException" for RecordStoreNotFoundException
import "../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../org/allbinary/game/configuration/persistance/NullRecordComparator" for NullRecordComparator
import "../../../../org/allbinary/game/configuration/persistance/NullRecordFilter" for NullRecordFilter
import "../../../../org/allbinary/game/configuration/persistance/NullRecordStore" for NullRecordStore
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../org/allbinary/persistance/PlatformRecordIdUtil" for PlatformRecordIdUtil
import "../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./HighScore" for HighScore
import "./ScoreComparator" for ScoreComparator

