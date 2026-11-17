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
// package org.allbinary.thread

import "../../../allbinary_java" for JObject, JException, JR
import "../../../java/lang/Thread" for Thread

class PooledThread is Thread {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  threadObjectUtil { _threadObjectUtil }
  threadObjectUtil=(value) { _threadObjectUtil = value }
  threadPool { _threadPool }
  threadPool=(value) { _threadPool = value }
  INTERRUPT_EXCEPTION { _INTERRUPT_EXCEPTION }
  INTERRUPT_EXCEPTION=(value) { _INTERRUPT_EXCEPTION = value }

  initFields_PooledThread() {
    _logUtil = null
    _commonStrings = null
    _threadObjectUtil = null
    _threadPool = null
    _INTERRUPT_EXCEPTION = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _threadObjectUtil = ThreadObjectUtil.getInstance()
        
        _INTERRUPT_EXCEPTION = "Exit InterruptedException"
  }
    

    construct new(threadPool) {
        super(threadPool.createName())
        initFields_PooledThread()
        _logUtil.putF(_commonStrings.CONSTRUCTOR, this, _commonStrings.CONSTRUCTOR)
        _threadPool = threadPool
    }
    

    run() {
        _threadPool.threadStarted()
        while (true) {
            var task2 = _threadObjectUtil.NULL_PRIORITY_RUNNABLE
            var jerror0 = Fiber.new {
                task2 = _threadPool.getTask()
                _threadPool.runningTask = true
                _threadPool.startTask(task2)
            }.try()
            if (jerror0 != null) {
                var ex = jerror0
                var logUtil = LogUtil.getInstance()
                logUtil.putF(_INTERRUPT_EXCEPTION, this, _commonStrings.RUN)
                break
            }
            if ((task2 == _threadObjectUtil.NULL_PRIORITY_RUNNABLE)) {
                break
            }
            var jerror1 = Fiber.new {
                task2.run()
                _threadPool.completedTask(task2)
                _threadPool.runningTask = false
            }.try()
            if (jerror1 != null) {
                var e = jerror1
                var logUtil = LogUtil.getInstance()
                logUtil.put(StringMaker.new().append(_commonStrings.EXCEPTION_LABEL).append(StringUtil.getInstance().toString(task2)).toString(), this, _commonStrings.RUN, e)
            }
        }
        _threadPool.threadStopped()
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../java/lang/Runnable" for Runnable
import "./ThreadObjectUtil" for ThreadObjectUtil
import "./ThreadPool" for ThreadPool

