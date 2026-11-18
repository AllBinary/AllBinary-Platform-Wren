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
// package org.allbinary.game.ag.ai

import "../../../../../allbinary_java" for JObject, JException, JR

class NumberOnOwnGroupSequenceAIFactory is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_NumberOnOwnGroupSequenceAIFactory() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_NumberOnOwnGroupSequenceAIFactory()
  }
    

    getInstance(hashtable, artificialIntelligenceInterface, ownerLayerInterface, gameInput) {
        var integerArray = NumberInSameGroupSequence.getInstance().NUMBER_ON_SAME_TEAM_SEQUENCE
        var list = BasicArrayListD.new()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < integerArray.count))) break
            var integerCanBeNull = hashtable.get(integerArray[index])
            if ((integerCanBeNull == null)) {
                break
            }
            list.add(integerCanBeNull)
            }
        }
        var stringBuffer = StringMaker.new()
        stringBuffer.append("Total AI Properties: ")
        stringBuffer.appendint(list.size())
        stringBuffer.append(" == Total AI: ")
        stringBuffer.appendint(artificialIntelligenceInterface.count)
        stringBuffer.append(" + 1")
        var commonStrings = CommonStrings.getInstance()
        _logUtil.putF(stringBuffer.toString(), this, commonStrings.GET_INSTANCE)
        if ((JR.i32(artificialIntelligenceInterface.count - 1) > list.size())) {
            Fiber.abort(JR.exception("Exception", "Not enough AI properties."))
        }
        if ((JR.i32(artificialIntelligenceInterface.count - 1) < list.size())) {
            Fiber.abort(JR.exception("Exception", "Too Many AI properties."))
        }
        var numberOnSameTeam = List.filled(list.size(), null)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < numberOnSameTeam.count))) break
            numberOnSameTeam[index] = list.objectArray[index]
            }
        }
        return NumberOnOwnGroupSequenceAI.new(numberOnSameTeam, artificialIntelligenceInterface, ownerLayerInterface, gameInput)
    }
}

import "../../../../../org/allbinary/ai/ArtificialIntelligenceInterface" for ArtificialIntelligenceInterface
import "../../../../../org/allbinary/game/input/GameInput" for GameInput
import "../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../java/lang/Integer" for Integer
import "./NumberInSameGroupSequence" for NumberInSameGroupSequence
import "./NumberOnOwnGroupSequenceAI" for NumberOnOwnGroupSequenceAI

