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
import "./AllBinaryMidlet" for AllBinaryMidlet

//J2MEForJ2ME
class ProgressMidlet is AllBinaryMidlet {
  abeClientInformation { _abeClientInformation }
  abeClientInformation=(value) { _abeClientInformation = value }

  initFields_ProgressMidlet() {
    _abeClientInformation = null
        
  }
    

    construct new(clientInformationFactory) {
    super()
    initFields_ProgressMidlet()
        this.preInit()
        _abeClientInformation = clientInformationFactory.getInstance()
    }
    

    preInit() {
    }
    

    exitProgress(isProgress) {
        var processor = MidletExitProcessorFactory.getInstance().getExitInstance(this)
        var jerror0 = Fiber.new {
            var primaryThreadPool = PrimaryThreadPool.getInstance()
            var runnable = ExitRunnable.new(this, processor, isProgress)
            primaryThreadPool.runTask(runnable)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e)
            var jerror1 = Fiber.new {
                processor.process()
            }.try()
            if (jerror1 != null) {
                var e2 = jerror1
                this.logUtil.put(this.commonStrings.EXCEPTION, this, "exit", e)
            }
        }
    }
}

import "../../../org/allbinary/canvas/Processor" for Processor
import "../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../org/allbinary/logic/system/security/licensing/ClientInformationFactory" for ClientInformationFactory
import "../../../org/allbinary/thread/PrimaryThreadPool" for PrimaryThreadPool
import "../../../org/allbinary/thread/ThreadPool" for ThreadPool
import "../../../java/lang/Runnable" for Runnable
import "./MidletExitProcessorFactory" for MidletExitProcessorFactory
import "./ExitRunnable" for ExitRunnable

