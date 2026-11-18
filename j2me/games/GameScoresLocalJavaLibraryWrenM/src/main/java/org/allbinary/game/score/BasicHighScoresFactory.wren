// Generated Code Do Not Modify
// package org.allbinary.game.score

import "../../../../allbinary_java" for JObject, JException, JR
import "./HighScoresBase" for HighScoresBase

class BasicHighScoresFactory is HighScoresBase {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  abeClientInformation { _abeClientInformation }
  abeClientInformation=(value) { _abeClientInformation = value }
  highScoresArray { _highScoresArray }
  highScoresArray=(value) { _highScoresArray = value }
  TOP { _TOP }
  TOP=(value) { _TOP = value }
  SCORES { _SCORES }
  SCORES=(value) { _SCORES = value }
  PERSONAL_HIGH_SCORES { _PERSONAL_HIGH_SCORES }
  PERSONAL_HIGH_SCORES=(value) { _PERSONAL_HIGH_SCORES = value }
  FETCH { _FETCH }
  FETCH=(value) { _FETCH = value }

  initFields_BasicHighScoresFactory() {
    _logUtil = null
    _abeClientInformation = null
    _highScoresArray = null
    _TOP = null
    _SCORES = null
    _PERSONAL_HIGH_SCORES = null
    _FETCH = null
        _logUtil = LogUtil.getInstance()
        
        _highScoresArray = List.filled(1, null)
        _TOP = "Top"
        _SCORES = "Scores"
        _PERSONAL_HIGH_SCORES = "Personal Top Scores"
        _FETCH = "fetchHighScores"
  }
    

    construct new(abeClientInformation, softwareInformation) {
    super()
    initFields_BasicHighScoresFactory()
        _abeClientInformation = abeClientInformation
    }
    

    fetchHighScores(gameInfo, highScoresResultsListener) {
        _logUtil.putF("Getting Local HighScores", this, _FETCH)
        this.fetchHighScoresPreload(gameInfo, highScoresResultsListener, true)
    }
    

    fetchHighScoresPreload(gameInfo, highScoresResultsListener, preload) {
        var jerror0 = Fiber.new {
            _highScoresArray[0] = RecordStoreHighScores.getInstance(_abeClientInformation, gameInfo, _TOP, _PERSONAL_HIGH_SCORES, _SCORES, ScoreComparator.new(true))
            highScoresResultsListener.setHighScoresArray(_highScoresArray)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(this.commonStrings.EXCEPTION, this, _FETCH, e)
        }
    }
    

    createHighScoresHelper() {
        return HighScoresHelper2.new()
    }
    

    static loaded(index2) {
        if ((index2 >= 0)) {
            return true
        }
        return false
    }
}

import "../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/system/SoftwareInformation" for SoftwareInformation
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "./HighScores" for HighScores
import "./HighScoresResultsListener" for HighScoresResultsListener
import "./RecordStoreHighScores" for RecordStoreHighScores
import "./ScoreComparator" for ScoreComparator
import "./HighScoresHelper2" for HighScoresHelper2
import "./HighScoresHelperBaseInterface" for HighScoresHelperBaseInterface

