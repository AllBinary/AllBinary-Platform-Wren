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
// package org.allbinary.game.ag.layer.hud.basic.score

import "../../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../../org/allbinary/game/ag/layer/hud/basic/NumberStringHud" for NumberStringHud

class ScoreHudWidget is NumberStringHud {

  initFields_ScoreHudWidget() {
  }
    

    static getInstance(maxscore, location, direction) {
        return ScoreHudWidget.new(maxscore, location, direction, 2, BasicColorFactory.getInstance().GREY)
    }
    

    construct new(maxscore, location, direction, bufferZone, basicColor) {
        super("Pts ", maxscore, location, direction, bufferZone, basicColor)
        this.updateMaxHeight = 14
    }
    

    updateMeasurement(graphics) {
        var font = graphics.getFont()
        this.updateMaxWidth = (font.getSize() * 5)
        super.updateMeasurement(graphics)
    }
}

import "../../../../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory

