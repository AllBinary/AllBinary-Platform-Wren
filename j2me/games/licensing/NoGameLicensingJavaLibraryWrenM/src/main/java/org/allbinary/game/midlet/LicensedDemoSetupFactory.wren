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

class LicensedDemoSetupFactory is JObject {

  initFields_LicensedDemoSetupFactory() {
  }

  construct new() {
    super()
    initFields_LicensedDemoSetupFactory()
  }
    

    getInstance() {
        return DemoSetup.new()
    }
}

import "./DemoSetup" for DemoSetup

