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
// package org.allbinary.game.init

import "../../../../allbinary_java" for JObject, JException, JR
import "./BaseGameInitialization" for BaseGameInitialization

class CommonGameInitialization is BaseGameInitialization {
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_CommonGameInitialization() {
    _commonStrings = null
        _commonStrings = CommonStrings.getInstance()
  }
    

    construct new(resourceInitializationArray, portion) {
        super(resourceInitializationArray, portion)
        initFields_CommonGameInitialization()
    }
    

    init(abeClientInformation, commandListener, level) {
        super.init(abeClientInformation, commandListener, level)
        var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if ((!this.isGameInitialized() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()))) {
            this.setGameInitialized(true)
            var progressCanvas = ProgressCanvasFactory.getInstance()
            SmallIntegerSingletonFactory.getInstance().init()
            progressCanvas.addNormalPortion(50, "Integers")
            PointFactory.getInstance().init()
            progressCanvas.addNormalPortion(50, "Points")
            AngleFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Angles")
            this.initGame()
            this.resourceInitializationArray[this.GAME_RESOURCES].init()
        }
        super.resourceInitialization(level)
    }
    

    initGame() {
        Fiber.abort(JR.exception("Exception", _commonStrings.NOT_IMPLEMENTED))
    }
}

import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../org/allbinary/game/resource/ResourceInitialization" for ResourceInitialization
import "../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory
import "../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../org/allbinary/math/AngleFactory" for AngleFactory
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

