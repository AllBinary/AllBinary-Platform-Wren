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
// package org.allbinary.canvas

import "../../../allbinary_java" for JObject, JException, JR
import "../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas

class RunnableCanvas is MyCanvas {
  nullUtil { _nullUtil }
  nullUtil=(value) { _nullUtil = value }
  stdUtil { _stdUtil }
  stdUtil=(value) { _stdUtil = value }
  systemWrapper { _systemWrapper }
  systemWrapper=(value) { _systemWrapper = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  thread { _thread }
  thread=(value) { _thread = value }
  currentThread { _currentThread }
  currentThread=(value) { _currentThread = value }
  running { _running }
  running=(value) { _running = value }
  loopTimeHelper { _loopTimeHelper }
  loopTimeHelper=(value) { _loopTimeHelper = value }
  runnableCanvasRefreshHelper { _runnableCanvasRefreshHelper }
  runnableCanvasRefreshHelper=(value) { _runnableCanvasRefreshHelper = value }
  commonLabels { _commonLabels }
  commonLabels=(value) { _commonLabels = value }
  threadObjectUtil { _threadObjectUtil }
  threadObjectUtil=(value) { _threadObjectUtil = value }
  SET_RUNNING { _SET_RUNNING }
  SET_RUNNING=(value) { _SET_RUNNING = value }
  IS_RUNNING { _IS_RUNNING }
  IS_RUNNING=(value) { _IS_RUNNING = value }
  THREAD { _THREAD }
  THREAD=(value) { _THREAD = value }
  NOT_EQUAL { _NOT_EQUAL }
  NOT_EQUAL=(value) { _NOT_EQUAL = value }
  PAUSE_SLEEP { _PAUSE_SLEEP }
  PAUSE_SLEEP=(value) { _PAUSE_SLEEP = value }
  START_PAUSE { _START_PAUSE }
  START_PAUSE=(value) { _START_PAUSE = value }
  END_PAUSE { _END_PAUSE }
  END_PAUSE=(value) { _END_PAUSE = value }
  PROCESS_LOOP_SLEEP { _PROCESS_LOOP_SLEEP }
  PROCESS_LOOP_SLEEP=(value) { _PROCESS_LOOP_SLEEP = value }
  pauseWait { _pauseWait }
  pauseWait=(value) { _pauseWait = value }
  notified { _notified }
  notified=(value) { _notified = value }

  initFields_RunnableCanvas() {
    _nullUtil = null
    _stdUtil = null
    _systemWrapper = null
    _tsUtil = null
    _thread = null
    _currentThread = null
    _running = false
    _loopTimeHelper = null
    _runnableCanvasRefreshHelper = null
    _commonLabels = null
    _threadObjectUtil = null
    _SET_RUNNING = null
    _IS_RUNNING = null
    _THREAD = null
    _NOT_EQUAL = null
    _PAUSE_SLEEP = null
    _START_PAUSE = null
    _END_PAUSE = null
    _PROCESS_LOOP_SLEEP = null
    _pauseWait = 0
    _notified = false
        _nullUtil = NullUtil.getInstance()
        _stdUtil = StdUtil.getInstance()
        _systemWrapper = ABSystemWrapper.getInstance()
        _tsUtil = TsUtil.getInstance()
        _thread = NullThread.NULL_THREAD
        _currentThread = NullThread.NULL_THREAD
        _running = false
        _loopTimeHelper = TimeDelayHelper.new(NullWaitGameRunnable.getInstance().WAIT)
        _runnableCanvasRefreshHelper = Processor.getInstance()
        _commonLabels = CommonLabels.getInstance()
        _threadObjectUtil = ThreadObjectUtil.getInstance()
        _SET_RUNNING = "setRunning"
        _IS_RUNNING = "isRunning"
        _THREAD = "Thread: "
        _NOT_EQUAL = " != "
        _PAUSE_SLEEP = "pause sleep"
        _START_PAUSE = "start pause - game thread sleep at: "
        _END_PAUSE = "end pause - game thread sleep at: "
        _PROCESS_LOOP_SLEEP = "processLoopSleep"
        _pauseWait = 0
        _notified = false
  }
    

    construct new(commandListener, childNameList, hasParam) {
        super(CommonStrings.getInstance().UNKNOWN, childNameList)
        initFields_RunnableCanvas()
        this.logUtil.putF(StringMaker.new().append("RunnableCanvas delay: ").appendint(JR.i32(_loopTimeHelper.delay)).toString(), this, this.commonStrings.CONSTRUCTOR)
        _runnableCanvasRefreshHelper = RunnableCanvasRefreshHelper.new(this)
        if ((commandListener != null)) {
            this.initCommands(commandListener)
        } else if (hasParam) {
            this.logUtil.putF("commandListener was null", this, "initCommands")
        }
    }
    

    initCommands(cmdListener) {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, "initCommands")
    }
    

    isMainCanvas() {
        if ((this.getCustomCommandListener() != null)) {
            return true
        } else {
            return false
        }
    }
    

    setThread(thread) {
        _thread = thread
    }
    

    setRunning(running) {
        _running = running
        if (!_running) {
            _thread = NullThread.NULL_THREAD
            if (true) {
                _threadObjectUtil.notifyObject(this)
            }
        }
        this.logUtil.putF(StringMaker.new().append(_IS_RUNNING).appendboolean(_running).toString(), this, _SET_RUNNING)
    }
    

    isRunning() {
        if ((_thread == _currentThread)) {
            return _running
        } else {
            var stringBuffer = StringMaker.new()
            stringBuffer.append(_THREAD)
            if ((_thread != null)) {
                stringBuffer.append(_thread.toString())
            }
            stringBuffer.append(_NOT_EQUAL)
            if ((_currentThread != null)) {
                stringBuffer.append(StringUtil.getInstance().toString(_currentThread))
            }
            this.logUtil.putF(stringBuffer.toString(), this, _IS_RUNNING)
            return false
        }
    }
    

    getLoopTimeHelperP() {
        return _loopTimeHelper
    }
    

    setWait(wait) {
        _loopTimeHelper.delay = wait
        _pauseWait = JR.i32(wait * 3)
        this.logUtil.putF(StringMaker.new().append("setWait - delay: ").appendint(JR.i32(_loopTimeHelper.delay)).toString(), this, this.commonStrings.CONSTRUCTOR)
    }
    

    getWait() {
        return _loopTimeHelper.delay
    }
    

    setCurrentThread() {
        _currentThread = Thread.currentThread()
    }
    

    setCurrentThreadFake() {
        _currentThread = _thread
    }
    

    showNotify() {
        var jerror0 = Fiber.new {
            this.stopWaiting()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "showNotify", e)
        }
    }
    

    stopWaiting() {
        _notified = true
        if (true) {
            _threadObjectUtil.notifyObject(this)
        }
        this.repaint()
    }
    

    waitOnNotify(wait) {
        if (!_notified) {
            if ((wait > 0)) {
                _threadObjectUtil.waitObjectFor(this, wait)
            } else {
                _threadObjectUtil.waitObject(this)
            }
        }
    }
    

    processSleep() {
        Thread.sleep(_pauseWait)
    }
    

    isPausable() {
        return false
    }
    

    processGameSleep(sleep) {
        Thread.sleep(sleep)
    }
    

    processLoopSleep() {
        _runnableCanvasRefreshHelper.process()
        if (this.isPaused()) {
            var stringMaker = StringMaker.new()
            if ((this.isRunning() && !this.isSingleThread())) {
                stringMaker.delete(0, stringMaker.length())
                var currentTimeMillis = _systemWrapper.currentTimeMillis()
                this.logUtil.putF(stringMaker.append(_START_PAUSE).appendlong(currentTimeMillis).append(_PAUSE_SLEEP).appendlong(_pauseWait).toString(), this, _PROCESS_LOOP_SLEEP)
                while (((this.isPaused() && this.isRunning()) && !this.isSingleThread())) {
                    this.processSleep()
                    if (!this.isPausable()) {
                        stringMaker.delete(0, stringMaker.length())
                        this.logUtil.putF(stringMaker.append(_END_PAUSE).appendlong(currentTimeMillis).toString(), this, _PROCESS_LOOP_SLEEP)
                        return
                    }
                }
            }
        }
        var elapsedTime = _loopTimeHelper.getElapsedTNT()
        var wait = _loopTimeHelper.delay
        if ((elapsedTime > wait)) {
            elapsedTime = wait
        } else {
            this.processGameSleep(JR.i32(wait - elapsedTime))
        }
    }
    

    isSingleThread() {
        return false
    }
    

    run() {
        this.setCurrentThread()
    }
    

    end2() {
    }
    

    getType() {
        return -1
    }
}

import "../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../org/allbinary/TsUtil" for TsUtil
import "../../../org/allbinary/game/displayable/canvas/NullWaitGameRunnable" for NullWaitGameRunnable
import "../../../org/allbinary/logic/ABSystemWrapper" for ABSystemWrapper
import "../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/thread/NullThread" for NullThread
import "../../../org/allbinary/thread/RunnableInterface" for RunnableInterface
import "../../../org/allbinary/thread/ThreadObjectUtil" for ThreadObjectUtil
import "../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../java/lang/Thread" for Thread
import "./Processor" for Processor
import "./RunnableCanvasRefreshHelper" for RunnableCanvasRefreshHelper

