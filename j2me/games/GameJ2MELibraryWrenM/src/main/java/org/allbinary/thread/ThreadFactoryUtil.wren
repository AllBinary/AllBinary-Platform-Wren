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
// package org.allbinary.thread

import "../../../allbinary_java" for JObject, JException, JR

class ThreadFactoryUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ThreadFactoryUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }

  initFields_ThreadFactoryUtil() {
    _logUtil = null
        _logUtil = LogUtil.getInstance()
  }

  construct new() {
    super()
    initFields_ThreadFactoryUtil()
  }
    

    static getInstance() {
        return ThreadFactoryUtil.instance
    }
    

    getInstanceGameCanvasRunnable(runnable) {
        return this.getInstanceType(runnable, runnable.getType())
    }
    

    getInstanceForRunnable(runnable) {
        return this.getInstanceType(runnable, runnable.getType())
    }
    

    getInstanceType(runnable, type) {
        var commonStrings = CommonStrings.getInstance()
        if (J2MEUtil.isHTML()) {
            if (((type == DemoCanvas.TYPE) || (type == AllBinaryGameCanvas.TYPE))) {
                var demoGameSingleThreadStartRunnable = RunnableCanvasSingleThreadStartRunnable.new(runnable)
                PreLogUtil.put(StringMaker.new().append("Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: ").append(StringUtil.getInstance().toString(runnable)).toString(), this, commonStrings.CONSTRUCTOR)
                var primaryThreadPool = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(demoGameSingleThreadStartRunnable)
            } else {
                PreLogUtil.put(StringMaker.new().append("Using Pseudo Thread for Runnable under PlayN/HTML5: ").append(StringUtil.getInstance().toString(runnable)).toString(), this, commonStrings.CONSTRUCTOR)
                var primaryThreadPool = PrimaryThreadPool.getInstance()
                primaryThreadPool.runTask(runnable)
            }
        }
        var thread = Thread.new(runnable, runnable.toString())
        _logUtil.putF(thread.toString(), this, commonStrings.CONSTRUCTOR)
        return thread
    }
    

    start(thread) {
        thread.start()
    }
}

import "../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../org/allbinary/canvas/RunnableCanvas" for RunnableCanvas
import "../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" for AllBinaryGameCanvas
import "../../../org/allbinary/game/displayable/canvas/DemoCanvas" for DemoCanvas
import "../../../org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface" for GameCanvasRunnableInterface
import "../../../org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable" for RunnableCanvasSingleThreadStartRunnable
import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../java/lang/Thread" for Thread
import "../../../java/lang/Runnable" for Runnable
import "./ABRunnable" for ABRunnable
import "./PrimaryThreadPool" for PrimaryThreadPool
import "./ThreadPool" for ThreadPool

