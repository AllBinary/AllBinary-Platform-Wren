/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.business.advertisement

import "../../../../allbinary_java" for JObject, JException, JR

class GameAdStateBase is JObject {
  adConfigurationP { _adConfigurationP }
  adConfigurationP=(value) { _adConfigurationP = value }
  advertisementsP { _advertisementsP }
  advertisementsP=(value) { _advertisementsP = value }
  okayToShowAdsP { _okayToShowAdsP }
  okayToShowAdsP=(value) { _okayToShowAdsP = value }

  initFields_GameAdStateBase() {
    _adConfigurationP = null
    _advertisementsP = null
    _okayToShowAdsP = false
        
        _advertisementsP = Advertisements.new()
        _okayToShowAdsP = false
  }
    

    construct new(adConfiguration) {
    super()
    initFields_GameAdStateBase()
        _adConfigurationP = adConfiguration
    }
    

    initViewArray(viewArray) {
    }
    

    onStart(anyType) {
        this.init()
    }
    

    init() {
    }
    

    isShowingAtLocation(location) {
        return false
    }
    

    isShowingAt() {
        return false
    }
    

    show() {
    }
    

    hide() {
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    processAdState(gameState, gameType) {
    }
    

    processPageAdState() {
    }
    

    playingAdState() {
    }
    

    playingAdStateWH(width, height) {
    }
    

    notPlayingAdState() {
    }
    

    setGameIsReady(gameIsReady) {
    }
    

    isGameIsReady() {
        return false
    }
    

    getAdvertisements() {
        return _advertisementsP
    }
    

    getAdConfiguration() {
        return _adConfigurationP
    }
    

    isOkayToShowPageAd() {
        return false
    }
    

    setOkayToShowAds(okayToShowAds) {
        _okayToShowAdsP = okayToShowAds
    }
    

    isOkayToShowAds() {
        return _okayToShowAdsP
    }
    

    isEnabled() {
        return false
    }
}

import "../../../../org/allbinary/game/GameType" for GameType
import "../../../../org/allbinary/game/state/GameState" for GameState
import "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "./AdConfiguration" for AdConfiguration
import "./Advertisements" for Advertisements

