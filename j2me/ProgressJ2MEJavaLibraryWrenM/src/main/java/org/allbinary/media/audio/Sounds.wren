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
// package org.allbinary.media.audio

import "../../../../allbinary_java" for JObject, JException, JR

class Sounds is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  soundStrings { _soundStrings }
  soundStrings=(value) { _soundStrings = value }
  soundsFactoryInterface { _soundsFactoryInterface }
  soundsFactoryInterface=(value) { _soundsFactoryInterface = value }

  initFields_Sounds() {
    _logUtil = null
    _commonStrings = null
    _soundStrings = null
    _soundsFactoryInterface = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _soundStrings = SoundStrings.getInstance()
        
  }
    

    construct new(soundsFactoryInterface) {
    super()
    initFields_Sounds()
        _soundsFactoryInterface = soundsFactoryInterface
    }
    

    init() {
        _logUtil.putF(_commonStrings.START, this, _commonStrings.INIT)
        var commonLabels = CommonLabels.getInstance()
        var progressCanvas = ProgressCanvasFactory.getInstance()
        _soundsFactoryInterface.init()
        var soundInterfaceArray = _soundsFactoryInterface.getSoundInterfaceArray()
        var smallIntegerSingletonFactory = SmallIntegerSingletonFactory.getInstance()
        var indexInteger = null
        var indexString = null
        var stringBuffer = StringMaker.new()
        if (true) {
            var i = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    i = JR.i32(i + 1)
                }
                jfirst = false
                if (!((i < soundInterfaceArray.count))) break
            var soundInterface = soundInterfaceArray[i]
            if ((soundInterface != null)) {
                indexInteger = smallIntegerSingletonFactory.getAt(i)
                indexString = indexInteger.toString()
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(commonLabels.INDEX_LABEL)
                stringBuffer.append(indexString)
                stringBuffer.append(_soundStrings.SOUND)
                stringBuffer.append(JR.className(soundInterface))
                _logUtil.putF(stringBuffer.toString(), this, _commonStrings.INIT)
                soundInterface.init()
                progressCanvas.addNormalPortion(100, StringMaker.new().append(_soundStrings.INIT_SOUND).append(indexString).toString())
            }
            }
        }
        _soundsFactoryInterface.setInitialized(true)
        _logUtil.putF(_commonStrings.END, this, _commonStrings.INIT)
    }
    

    stopAll() {
        _logUtil.putF(_commonStrings.START, this, _soundStrings.STOP_ALL)
        var soundInterfaceArray = _soundsFactoryInterface.getSoundInterfaceArray()
        var progressCanvas = ProgressCanvasFactory.getInstance()
        var player = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < soundInterfaceArray.count))) break
            if ((soundInterfaceArray[index] != null)) {
                player = soundInterfaceArray[index].getPlayerP()
                if ((player != null)) {
                    player.stop()
                    progressCanvas.addPortion(100, _soundStrings.STOPPING_SOUND, index)
                }
            }
            }
        }
    }
    

    closeAll() {
        _logUtil.putF(_commonStrings.START, this, _soundStrings.CLOSE_ALL)
        var soundInterfaceArray = _soundsFactoryInterface.getSoundInterfaceArray()
        var progressCanvas = ProgressCanvasFactory.getInstance()
        var player = null
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < soundInterfaceArray.count))) break
            if ((soundInterfaceArray[index] != null)) {
                player = soundInterfaceArray[index].getPlayerP()
                if ((player != null)) {
                    player.close()
                    progressCanvas.addPortion(100, _soundStrings.CLOSING_SOUND, index)
                }
            }
            }
        }
    }
}

import "../../../../javax/microedition/media/Player" for Player
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Integer" for Integer
import "./SoundStrings" for SoundStrings
import "./SoundsFactoryInterface" for SoundsFactoryInterface
import "./Sound" for Sound

