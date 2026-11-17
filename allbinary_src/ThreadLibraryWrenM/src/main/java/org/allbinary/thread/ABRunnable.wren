/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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

class ABRunnable is JObject {
  running { _running }
  running=(value) { _running = value }

  initFields_ABRunnable() {
    _running = false
        _running = false
  }

  construct new() {
    super()
    initFields_ABRunnable()
  }
    

    setThread(thread) {
    }
    

    isRunning() {
        return _running
    }
    

    setRunning(running) {
        _running = running
    }
    

    run() {
    }
    

    getType() {
        return -1
    }
}

import "../../../java/lang/Thread" for Thread
import "./RunnableInterface" for RunnableInterface

