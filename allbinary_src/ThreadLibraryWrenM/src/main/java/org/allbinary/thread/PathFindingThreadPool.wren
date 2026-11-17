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
class PathFindingThreadPool is ThreadPool {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = PathFindingThreadPool.new("PathFinding", 1, 1)
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }

  initFields_PathFindingThreadPool() {
  }
    

    static getInstance() {
        return PathFindingThreadPool.instance
    }
    

    construct new(poolName, numThreads, priority) {
        super(poolName, numThreads, ThreadPool.NORMAL_PRIORITY)
    }
    

    runTaskWithPriority(task) {
        super.runTaskWithPriority(task)
    }
    

    runTask(task) {
        super.runTask(task)
    }
    

    startTask(task) {
    }
    

    completedTask(task) {
    }
}

import "../../../java/lang/Runnable" for Runnable
import "./PriorityRunnable" for PriorityRunnable

