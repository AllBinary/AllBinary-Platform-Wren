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
import "./ThreadPool" for ThreadPool

//This is mainly for network communications.
class SecondaryThreadPool is ThreadPool {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = SecondaryThreadPool.new("Secondary", 1, ThreadPool.NORMAL_PRIORITY)
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_SecondaryThreadPool() {
  }
    

    static getInstance() {
        return SecondaryThreadPool.instance
    }
    

    construct new(poolName, numThreads, priority) {
        super(poolName, numThreads, priority)
    }
    

    runTask(task) {
        this.logUtil.putF(StringMaker.new().append(StringUtil.getInstance().toString(task)).appendlong(JR.currentTimeMillis()).toString(), this, this.threadPoolStrings.ADD_TASK)
        super.runTask(task)
    }
    

    startTask(task) {
        this.logUtil.putF(StringMaker.new().append(this.threadPoolStrings.START_TASK).append(StringUtil.getInstance().toString(task)).appendlong(JR.currentTimeMillis()).toString(), this, this.commonStrings.RUN)
    }
    

    completedTask(task) {
        this.logUtil.putF(StringMaker.new().append(this.threadPoolStrings.COMPLETE_TASK).append(StringUtil.getInstance().toString(task)).appendlong(JR.currentTimeMillis()).toString(), this, this.commonStrings.RUN)
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../java/lang/System" for JSystem
import "../../../java/lang/Runnable" for Runnable

