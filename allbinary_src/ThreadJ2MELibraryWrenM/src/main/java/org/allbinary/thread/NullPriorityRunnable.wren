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

class NullPriorityRunnable is JObject {

  initFields_NullPriorityRunnable() {
  }

  construct new() {
    super()
    initFields_NullPriorityRunnable()
  }
    

    getPriority() {
        return 0
    }
    

    isDone() {
        return true
    }
    

    reset() {
    }
    

    run() {
    }
}

import "./PriorityRunnable" for PriorityRunnable

