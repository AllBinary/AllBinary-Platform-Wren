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

class ScoreComparator is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  isHighestBest { _isHighestBest }
  isHighestBest=(value) { _isHighestBest = value }

  initFields_ScoreComparator() {
    _logUtil = null
    _isHighestBest = false
        _logUtil = LogUtil.getInstance()
        
  }
    

    construct new(isHighestBest) {
    super()
    initFields_ScoreComparator()
        _isHighestBest = isHighestBest
    }
    

    getBestScore() {
        return (_isHighestBest ? Long.MAX_VALUE : 0)
    }
    

    compare(recordOne, recordTwo) {
        var byteArrayInputStreamOne = ByteArrayInputStream.new(recordOne)
        var inputStreamOne = DataInputStream.new(byteArrayInputStreamOne)
        var byteArrayInputStreamTwo = ByteArrayInputStream.new(recordTwo)
        var inputStreamTwo = DataInputStream.new(byteArrayInputStreamTwo)
        var scoreOne = 0
        var scoreTwo = 0
        var jerror0 = Fiber.new {
            inputStreamOne.readUTF()
            inputStreamTwo.readUTF()
            scoreOne = inputStreamOne.readLong()
            scoreTwo = inputStreamTwo.readLong()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, "compare", e)
        }
        if (_isHighestBest) {
            return this.getHighTooLow(scoreOne, scoreTwo)
        } else {
            return this.getLowTooHigh(scoreOne, scoreTwo)
        }
    }
    

    getHighTooLow(scoreOne, scoreTwo) {
        if ((scoreOne > scoreTwo)) {
            return RecordComparator.PRECEDES
        } else if ((scoreOne < scoreTwo)) {
            return RecordComparator.FOLLOWS
        } else {
            return RecordComparator.EQUIVALENT
        }
    }
    

    getLowTooHigh(scoreOne, scoreTwo) {
        if ((scoreOne < scoreTwo)) {
            return RecordComparator.PRECEDES
        } else if ((scoreOne > scoreTwo)) {
            return RecordComparator.FOLLOWS
        } else {
            return RecordComparator.EQUIVALENT
        }
    }
}

import "../../../../java/io/ByteArrayInputStream" for ByteArrayInputStream
import "../../../../java/io/DataInputStream" for DataInputStream
import "../../../../java/io/EOFException" for EOFException
import "../../../../java/io/IOException" for IOException
import "../../../../javax/microedition/rms/RecordComparator" for RecordComparator
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Long" for Long

