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
  FILE { _FILE }
  FILE=(value) { _FILE = value }

  initFields_ApplicationConfiguration() {
    _logUtil = null
    _fullscreen = false
    _showTitleBar = false
    _progressBarView = false
    _FILE = null
        _logUtil = LogUtil.getInstance()
        _fullscreen = true
        _showTitleBar = false
        _progressBarView = false
        _FILE = "ReloadConfiguration.dat"
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
            if (FileFactory.getInstance().isFile(_FILE)) {
                this.read()
            } else {
                this.write()
            }
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            var commonStrings = CommonStrings.getInstance()
            _logUtil.put(commonStrings.EXCEPTION, this, commonStrings.CONSTRUCTOR, e)
        }
    }
    

    read() {
        var fileInputStreamFactory = FileStreamFactory.getInstance()
        var fileInputStream = fileInputStreamFactory.getFileInputStreamInstance(StringUtil.getInstance().EMPTY_STRING, _FILE)
        var dataInputStream = AbDataInputStream.new(fileInputStream)
        var fullScreen = dataInputStream.readInt()
        if ((fullScreen == 0)) {
            this.setFullscreen(false)
        } else if ((fullScreen == 1)) {
            this.setFullscreen(true)
        } else {
            Fiber.abort(JR.exception("Exception", "Invalid FullScreen ActivityConfiguration"))
        }
        var progressBarView = dataInputStream.readInt()
        if ((progressBarView == 0)) {
            this.setProgressBarView(false)
        } else if ((progressBarView == 1)) {
            this.setProgressBarView(true)
        } else {
            Fiber.abort(JR.exception("Exception", "Invalid ProgressBarView ActivityConfiguration"))
        }
        var showTitleBar = dataInputStream.readInt()
        if ((showTitleBar == 0)) {
            this.setShowTitleBar(false)
        } else if ((showTitleBar == 1)) {
            this.setShowTitleBar(true)
        } else {
            Fiber.abort(JR.exception("Exception", "Invalid ShowTitleBar ActivityConfiguration"))
        }
        _logUtil.putF("Read Configuration: " + this.toString(), this, "read")
    }
    

    write() {
        var closeable = NullCloseable.NULL_CLOSEABLE
        var jerror1 = Fiber.new {
            _logUtil.putF("Write Configuration: " + this.toString(), this, "write")
            var fileInputStreamFactory = FileStreamFactory.getInstance()
            var fileOutputStream = fileInputStreamFactory.getFileOutputStreamInstance(StringUtil.getInstance().EMPTY_STRING, _FILE)
            var dataOutputStream = AbDataOutputStream.new(fileOutputStream)
            closeable = dataOutputStream
            if (this.isFullscreen()) {
                dataOutputStream.writeInt(1)
            } else {
                dataOutputStream.writeInt(0)
            }
            if (this.isProgressBarView()) {
                dataOutputStream.writeInt(1)
            } else {
                dataOutputStream.writeInt(0)
            }
            if (this.isShowTitleBar()) {
                dataOutputStream.writeInt(1)
            } else {
                dataOutputStream.writeInt(0)
            }
            dataOutputStream.flush()
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            Fiber.abort(e)
        }
        if (true) {
            StreamUtil.getInstance().close(closeable)
        }
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

import "../../../java/io/Closeable" for Closeable
import "../../../java/io/InputStream" for InputStream
import "../../../java/io/OutputStream" for OutputStream
import "../../../org/allbinary/game/configuration/feature/Feature" for Feature
import "../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/io/AbDataInputStream" for AbDataInputStream
import "../../../org/allbinary/logic/io/AbDataOutputStream" for AbDataOutputStream
import "../../../org/allbinary/logic/io/FileStreamFactory" for FileStreamFactory
import "../../../org/allbinary/logic/io/NullCloseable" for NullCloseable
import "../../../org/allbinary/logic/io/StreamUtil" for StreamUtil
import "../../../org/allbinary/logic/io/file/FileFactory" for FileFactory
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings

