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
// package org.allbinary.game.combat.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" for AllBinaryGameCanvas

class CombatGameCanvas is AllBinaryGameCanvas {
    static basicLayerProcessor {
    if (__basicLayerProcessor_set == null) {
      __basicLayerProcessor_set = true
      __basicLayerProcessor = List.filled(0, null)
    }
    return __basicLayerProcessor
  }
  static basicLayerProcessor=(value) {
    __basicLayerProcessor_set = true
    __basicLayerProcessor = value
  }

  initFields_CombatGameCanvas() {
  }
    

    construct new(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered) {
        super(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
    }
    

    CombatGameCanvas_init() {
        DestroyEventCircularStaticPool.getInstance().init(this)
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Destroy Events")
    }
    

    initApp(abeClientInformation) {
        this.CombatGameCanvas_init()
        super.initApp(abeClientInformation)
    }
    

    initConfigurablePortion(portion) {
        DestroyedLayerProcessor.init()
        ProgressCanvasFactory.getInstance().addNormalPortion(portion, "Basic Processors")
        var features = Features.getInstance()
        var gameFeatureFactory = GameFeatureFactory.getInstance()
        if ((features.isFeature(gameFeatureFactory.DROPPED_ITEMS) && features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH))) {
            CombatGameCanvas.basicLayerProcessor = List.filled(2, null)
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance()
            CombatGameCanvas.basicLayerProcessor[1] = DropLayerProcessor.getInstance()
        } else {
            CombatGameCanvas.basicLayerProcessor = List.filled(1, null)
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance()
        }
    }
    

    processPlayingGame() {
        super.processPlayingGame()
        if (true) {
            var index = CombatGameCanvas.basicLayerProcessor.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            CombatGameCanvas.basicLayerProcessor[index].process(this.gameLayerManager)
            }
        }
    }
    

    cleanupGame() {
        super.cleanupGame()
        if (true) {
            var index = CombatGameCanvas.basicLayerProcessor.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            CombatGameCanvas.basicLayerProcessor[index].getList().clear()
            }
        }
        GroupLayerManagerListener.getInstance().clear()
        GroupLayerManagerListener.getInstance().log()
        DestroyedEventHandler.getInstance().removeAllListeners()
        this.cleanupManager()
    }
    

    cleanupManager() {
        this.gameLayerManager.cleanup()
    }
}

import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../org/allbinary/game/combat/destroy/DestroyedLayerProcessor" for DestroyedLayerProcessor
import "../../../../../org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool" for DestroyEventCircularStaticPool
import "../../../../../org/allbinary/game/combat/destroy/event/DestroyedEventHandler" for DestroyedEventHandler
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" for GameFeatureFactory
import "../../../../../org/allbinary/game/init/BasicBuildGameInitializerFactory" for BasicBuildGameInitializerFactory
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/layer/drop/DropLayerProcessor" for DropLayerProcessor
import "../../../../../org/allbinary/game/layer/identification/GroupLayerManagerListener" for GroupLayerManagerListener
import "../../../../../org/allbinary/game/score/HighScoresFactoryInterface" for HighScoresFactoryInterface
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../../org/allbinary/layer/BasicLayerProcessor" for BasicLayerProcessor
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface

