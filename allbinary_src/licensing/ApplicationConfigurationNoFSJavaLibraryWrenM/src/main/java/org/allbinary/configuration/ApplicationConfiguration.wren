// Generated Code Do Not Modify
// package org.allbinary.configuration

import "../../../allbinary_java" for JObject, JException, JR

class ApplicationConfiguration is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  fullscreen { _fullscreen }
  fullscreen=(value) { _fullscreen = value }
  showTitleBar { _showTitleBar }
  showTitleBar=(value) { _showTitleBar = value }
  progressBarView { _progressBarView }
  progressBarView=(value) { _progressBarView = value }

  initFields_ApplicationConfiguration() {
    _logUtil = null
    _fullscreen = false
    _showTitleBar = false
    _progressBarView = false
        _logUtil = LogUtil.getInstance()
        _fullscreen = true
        _showTitleBar = false
        _progressBarView = false
  }
    

    static getInstance() {
        if ((ApplicationConfiguration.instance == NullUtil.getInstance().NULL_OBJECT)) {
            ApplicationConfiguration.instance = ApplicationConfiguration.new()
        }
        return ApplicationConfiguration.instance
    }
    

    construct new() {
    super()
    initFields_ApplicationConfiguration()
        var jerror0 = Fiber.new {
            this.read()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        }
    }
    

    read() {
        this.setFullscreen(true)
        this.setProgressBarView(false)
        this.setShowTitleBar(false)
        _logUtil.putF("Read Configuration: " + this.toString(), this, "read")
    }
    

    write() {
    }
    

    update(gameFeature) {
        if ((gameFeature == MainFeatureFactory.getInstance().FULL_SCREEN)) {
            var features = Features.getInstance()
            if (features.isFeature(gameFeature)) {
                if (!this.isFullscreen()) {
                    this.setFullscreen(true)
                    this.write()
                }
            } else {
                if (this.isFullscreen()) {
                    this.setFullscreen(false)
                    this.write()
                }
            }
        }
    }
    

    setFullscreen(fullscreen) {
        _fullscreen = fullscreen
    }
    

    isFullscreen() {
        return _fullscreen
    }
    

    setShowTitleBar(showTitleBar) {
        _showTitleBar = showTitleBar
    }
    

    isShowTitleBar() {
        return _showTitleBar
    }
    

    setProgressBarView(progressBarView) {
        _progressBarView = progressBarView
    }
    

    isProgressBarView() {
        return _progressBarView
    }
    

    toString() {
        var stringBuffer = StringMaker.new()
        stringBuffer.append("isFullscreen: ")
        stringBuffer.appendboolean(this.isFullscreen())
        stringBuffer.append(" isProgressBarView: ")
        stringBuffer.appendboolean(this.isProgressBarView())
        stringBuffer.append(" isShowTitleBar: ")
        stringBuffer.appendboolean(this.isShowTitleBar())
        return stringBuffer.toString()
    }
}

import "../../../org/allbinary/game/configuration/feature/Feature" for Feature
import "../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonStrings" for CommonStrings

