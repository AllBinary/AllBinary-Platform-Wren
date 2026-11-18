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
import "./GameMidlet" for GameMidlet

class DemoGameMidlet is GameMidlet {

  initFields_DemoGameMidlet() {
  }
    

    construct new(clientInformationFactory) {
        super(clientInformationFactory)
    }
    

    isContinue() {
        var hashtable = this.getStartStateHashtable()
        if (((hashtable != null) && (hashtable.size() > 0))) {
            return true
        } else {
            return false
        }
    }
    

    getHighestLevel() {
        return 1
    }
    

    createDemoGameCanvasRunnableInterface() {
        this.logUtil.putF(this.commonStrings.NOT_IMPLEMENTED, this, this.commonStrings.CREATE)
        return NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE
    }
    

    createGameCanvasRunnable(allBinaryGameLayerManager) {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    createGameCanvasRunnableInterface() {
        return this.createGameCanvasRunnable(this.createGameLayerManager())
    }
    

    demoSetup() {
    }
    

    postDemoSetup() {
    }
    

    setDemo() {
        this.logUtil.putF(this.commonStrings.START, this, "setDemo")
        var progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        PrimaryThreadPool.getInstance().runTask(DemoRunnable.new(this))
    }
    

    createGame() {
        var CREATE_GAME = "createGame"
        this.logUtil.putF(this.commonStrings.START, this, CREATE_GAME)
        var progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.start()
        var hashtable = this.getStartStateHashtable()
        this.setStartStateHashtable(StdUtil.getInstance().NULL_TABLE)
        PrimaryThreadPool.getInstance().runTask(CreateGameRunnable.new(this, hashtable))
        this.logUtil.putF(this.commonStrings.END, this, CREATE_GAME)
    }
    

    isReady() {
        return true
    }
}

import "../../../../org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface" for GameCanvasRunnableInterface
import "../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/logic/system/security/licensing/ClientInformationFactory" for ClientInformationFactory
import "../../../../org/allbinary/thread/PrimaryThreadPool" for PrimaryThreadPool
import "../../../../org/allbinary/game/displayable/canvas/NullGameCanvasRunnable" for NullGameCanvasRunnable
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "./DemoRunnable" for DemoRunnable
import "./CreateGameRunnable" for CreateGameRunnable

