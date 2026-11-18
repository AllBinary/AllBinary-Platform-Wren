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
// package org.allbinary.game.midlet

import "../../../../allbinary_java" for JObject, JException, JR

class DemoRunnable is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  demoGameMidlet { _demoGameMidlet }
  demoGameMidlet=(value) { _demoGameMidlet = value }
  startDemoGameMidletEvent { _startDemoGameMidletEvent }
  startDemoGameMidletEvent=(value) { _startDemoGameMidletEvent = value }

  initFields_DemoRunnable() {
    _logUtil = null
    _commonStrings = null
    _demoGameMidlet = null
    _startDemoGameMidletEvent = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
  }
    

    construct new(demoGameMidlet) {
    super()
    initFields_DemoRunnable()
        _demoGameMidlet = demoGameMidlet
        _startDemoGameMidletEvent = DemoGameMidletEvent.new(_demoGameMidlet, DemoGameMidletStateFactory.getInstance().START_DEMO)
    }
    

    run() {
        var jerror0 = Fiber.new {
            _logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append("GameCanvasRunnableInterface").toString(), this, _commonStrings.RUN)
            _demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, ProgressCanvasFactory.getInstance())
            _demoGameMidlet.setGameCanvasRunnableInterface(_demoGameMidlet.createDemoGameCanvasRunnableInterface())
            _demoGameMidlet.demoSetup()
            DemoGameMidletEventHandler.getInstance().fireEvent(_startDemoGameMidletEvent)
            _demoGameMidlet.startGameCanvasRunnableInterface()
            _demoGameMidlet.postDemoSetup()
            _logUtil.putF(_commonStrings.END_RUNNABLE, this, _commonStrings.RUN)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.RUN, e)
        }
    }
}

import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" for MyCommandsFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../java/lang/Runnable" for Runnable
import "./DemoGameMidlet" for DemoGameMidlet
import "./DemoGameMidletEvent" for DemoGameMidletEvent
import "./DemoGameMidletStateFactory" for DemoGameMidletStateFactory
import "./DemoGameMidletEventHandler" for DemoGameMidletEventHandler

