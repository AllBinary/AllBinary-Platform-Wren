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
// package org.allbinary.midlet

import "../../../allbinary_java" for JObject, JException, JR

class MidletFactoryInterface is JObject {

  initFields_MidletFactoryInterface() {
  }

  construct new() {
    super()
    initFields_MidletFactoryInterface()
  }
    

    getInstance() {
        return AllBinaryMidlet.getNullInstance()
    }
}

import "../../../javax/microedition/midlet/MIDlet" for MIDlet
import "./AllBinaryMidlet" for AllBinaryMidlet

