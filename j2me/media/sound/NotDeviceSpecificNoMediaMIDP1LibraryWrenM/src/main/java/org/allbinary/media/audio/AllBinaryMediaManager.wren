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

//NotDeviceSpecificNoMediaMIDP1Library
class AllBinaryMediaManager is JObject {
    static THIS { "AllBinaryMediaManagerNoMediaMIDP1" }

  initFields_AllBinaryMediaManager() {
  }
    

    construct new() {
    super()
    initFields_AllBinaryMediaManager()
    }
    

    static isMuted() {
        return false
    }
    

    static setMuted(aMuted) {
    }
    

    static update() {
        return true
    }
    

    static init(soundsFactoryInterface) {
        var logUtil = LogUtil.getInstance()
        var commonString = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, commonString.INIT)
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Media Manager")
        Sounds.new(soundsFactoryInterface).init()
    }
    

    static shutdown(soundsFactoryInterface) {
        Sounds.new(soundsFactoryInterface).stopAll()
        Sounds.new(soundsFactoryInterface).closeAll()
        TsUtil.getInstance().gc()
    }
    

    static createPlayerFromInputStream(stream, type) {
        var logUtil = LogUtil.getInstance()
        var commonString = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, "creatPlayer(InputStream)")
        return NoPlayer.NO_PLAYER
    }
    

    static createPlayer(locator) {
        var logUtil = LogUtil.getInstance()
        var commonString = CommonStrings.getInstance()
        logUtil.putF(commonString.START, AllBinaryMediaManager.THIS, "creatPlayer(locator)")
        return NoPlayer.NO_PLAYER
    }
    

    static playTone(frequency, time, volume) {
    }
    

    static getSupportedContentTypes(protocol) {
        return StringUtil.getInstance().getArrayInstance()
    }
    

    static getSupportedProtocols(content_type) {
        return StringUtil.getInstance().getArrayInstance()
    }
}

import "../../../../java/io/InputStream" for InputStream
import "../../../../javax/microedition/media/Player" for Player
import "../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./Sounds" for Sounds
import "./SoundsFactoryInterface" for SoundsFactoryInterface
import "./NoPlayer" for NoPlayer

