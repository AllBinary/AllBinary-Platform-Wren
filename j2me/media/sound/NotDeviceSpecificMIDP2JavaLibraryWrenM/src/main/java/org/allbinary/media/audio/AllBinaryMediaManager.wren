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

//NotDeviceSpecificMIDP2JavaLibrary
class AllBinaryMediaManager is JObject {
    static THIS { "AllBinaryMediaManagerNoMIPD2" }

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
    

    static createPlayer(resource) {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)) {
            if ((TsUtil.getInstance().compareTo(resource, Manager.TONE_DEVICE_LOCATOR) == 0)) {
                return Manager.createPlayer(resource)
            } else {
                var inputStream = ResourceUtil.getInstance().getResourceAsStream(resource)
                return MIDPUtil.getInstance().createPlayerFromInputStream(inputStream, AudioContentTypeDataFactory.getInstance().MIME_AUDIO_WAV.getName())
            }
        } else {
            return NoPlayer.NO_PLAYER
        }
    }
    

    static playTone(frequency, time, volume) {
        if (Features.getInstance().isFeature(GameFeatureFactory.getInstance().SOUND)) {
            Manager.playTone(frequency, time, volume)
        }
    }
}

import "../../../../java/io/InputStream" for InputStream
import "../../../../javax/microedition/media/Manager" for Manager
import "../../../../javax/microedition/media/MediaException" for MediaException
import "../../../../javax/microedition/media/Player" for Player
import "../../../../org/allbinary/MIDPUtil" for MIDPUtil
import "../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../org/allbinary/audio/AudioContentTypeDataFactory" for AudioContentTypeDataFactory
import "../../../../org/allbinary/data/resource/ResourceUtil" for ResourceUtil
import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" for GameFeatureFactory
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./Sounds" for Sounds
import "./SoundsFactoryInterface" for SoundsFactoryInterface
import "./NoPlayer" for NoPlayer

