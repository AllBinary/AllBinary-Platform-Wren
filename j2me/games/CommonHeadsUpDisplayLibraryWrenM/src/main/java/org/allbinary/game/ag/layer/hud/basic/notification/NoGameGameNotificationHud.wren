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
// package org.allbinary.game.ag.layer.hud.basic.notification

import "../../../../../../../../allbinary_java" for JObject, JException, JR
import "./GameNotificationHud" for GameNotificationHud

class NoGameGameNotificationHud is GameNotificationHud {

  initFields_NoGameGameNotificationHud() {
  }
    

    construct new() {
        super(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 2, BasicColorFactory.getInstance().RED)
        this.updateMaxWidth = 40
        this.updateMaxHeight = 14
    }
}

import "../../../../../../../../org/allbinary/game/graphics/hud/BasicHudFactory" for BasicHudFactory
import "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory

