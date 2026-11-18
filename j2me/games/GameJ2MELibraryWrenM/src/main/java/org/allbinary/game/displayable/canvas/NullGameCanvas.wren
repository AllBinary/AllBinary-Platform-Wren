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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "./AllBinaryGameCanvas" for AllBinaryGameCanvas

class NullGameCanvas is AllBinaryGameCanvas {
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
    static NO_GAME { "No Background Game" }
    static TYPE { 1 }
  runningNull { _runningNull }
  runningNull=(value) { _runningNull = value }

  initFields_NullGameCanvas() {
    _runningNull = false
        _runningNull = true
  }
    

    static createNull() {
        var jerror0 = Fiber.new {
            return NullGameCanvas.new(AllBinaryGameLayerManager.getNullInstance())
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            LogUtil.getInstance().put(CommonStrings.getInstance().EXCEPTION, "NullGameCanvas", CommonStrings.getInstance().GET_INSTANCE, e)
            Fiber.abort(JR.exception("RuntimeException", ""))
        }
    }
    

    static getInstance() {
        if ((NullGameCanvas.instance == NullUtil.getInstance().NULL_OBJECT)) {
            NullGameCanvas.instance = NullGameCanvas.createNull()
        }
        return NullGameCanvas.instance
    }
    

    static createCanvas(gameLayerManager) {
        var nullGameCanvas = NullGameCanvas.new(gameLayerManager)
        nullGameCanvas.setInitialized(true)
        nullGameCanvas.setTitle(NullGameCanvas.NO_GAME)
        return nullGameCanvas
    }
    

    construct new(gameLayerManager) {
        super(NullCommandListener.NULL_COMMAND_LISTENER, gameLayerManager, NoHighScoresFactory.getInstance(), BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY, false)
        initFields_NullGameCanvas()
        super.setWait(1200)
    }
    

    isGameOver() {
        return false
    }
    

    setRunning(running) {
        _runningNull = running
    }
    

    isRunning() {
        return _runningNull
    }
    

    pause() {
        this.setPaused(true)
    }
    

    unPause() {
        this.setPaused(false)
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        this.setCommandListener(cmdListener)
    }
    

    buildGameInit(isProgress) {
    }
    

    draw(graphics) {
    }
    

    run() {
        var jerror1 = Fiber.new {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        }
    }
    

    getType() {
        return NullGameCanvas.TYPE
    }
}

import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/NullCommandListener" for NullCommandListener
import "../../../../../org/allbinary/game/init/BasicBuildGameInitializerFactory" for BasicBuildGameInitializerFactory
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/score/NoHighScoresFactory" for NoHighScoresFactory
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../../org/allbinary/string/CommonStrings" for CommonStrings

