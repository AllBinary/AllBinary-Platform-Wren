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
// package org.allbinary.game.midlet

import "../../../../allbinary_java" for JObject, JException, JR

class LicenseCheckRunnableFactory is JObject {

  initFields_LicenseCheckRunnableFactory() {
  }

  construct new() {
    super()
    initFields_LicenseCheckRunnableFactory()
  }
    

    getInstance(specialDemoGameMidlet) {
        return NullABRunnable.getInstance()
    }
}

import "../../../../org/allbinary/thread/ABRunnable" for ABRunnable
import "../../../../org/allbinary/thread/NullABRunnable" for NullABRunnable
import "./SpecialDemoGameMidlet" for SpecialDemoGameMidlet

