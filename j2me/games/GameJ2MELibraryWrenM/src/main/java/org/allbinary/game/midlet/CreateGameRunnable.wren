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

class CreateGameRunnable is JObject {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  demoGameMidlet { _demoGameMidlet }
  demoGameMidlet=(value) { _demoGameMidlet = value }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }
  startGameMidletEvent { _startGameMidletEvent }
  startGameMidletEvent=(value) { _startGameMidletEvent = value }

  initFields_CreateGameRunnable() {
    _logUtil = null
    _commonStrings = null
    _demoGameMidlet = null
    _hashtable = null
    _startGameMidletEvent = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        
        
        
  }
    

    construct new(demoGameMidlet, hashtable) {
    super()
    initFields_CreateGameRunnable()
        _demoGameMidlet = demoGameMidlet
        _hashtable = hashtable
        _startGameMidletEvent = DemoGameMidletEvent.new(this, DemoGameMidletStateFactory.getInstance().START_GAME)
    }
    

    run() {
        var jerror0 = Fiber.new {
            _logUtil.putF(_commonStrings.START_RUNNABLE, this, _commonStrings.RUN)
            var progressCanvas = ProgressCanvasFactory.getInstance()
            _demoGameMidlet.commandAction(MyCommandsFactory.getInstance().SET_DISPLAYABLE, progressCanvas)
            _demoGameMidlet.stopGameCanvasRunnableInterface()
            _demoGameMidlet.setGameCanvasRunnableInterface(_demoGameMidlet.createGameCanvasRunnableInterface())
            _demoGameMidlet.getGameCanvasRunnableInterface().setLoadStateHashtable(_hashtable)
            _demoGameMidlet.startGameCanvasRunnableInterface()
            DemoGameMidletEventHandler.getInstance().fireEvent(_startGameMidletEvent)
            _logUtil.putF(_commonStrings.END_RUNNABLE, this, _commonStrings.RUN)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            _logUtil.put(_commonStrings.EXCEPTION, this, _commonStrings.RUN, e)
        }
    }
}

import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" for MyCommandsFactory
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../java/lang/Runnable" for Runnable
import "./DemoGameMidlet" for DemoGameMidlet
import "./DemoGameMidletEvent" for DemoGameMidletEvent
import "./DemoGameMidletStateFactory" for DemoGameMidletStateFactory
import "./DemoGameMidletEventHandler" for DemoGameMidletEventHandler

