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
// package org.allbinary.game.ag.layer.pickup.health

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

class HealLayer is AllBinaryLayer {

  initFields_HealLayer() {
  }
    

    construct new() {
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
    }
    

    paint(graphics) {
    }
    

    visit(healthInterface) {
        if (healthInterface.isAlive()) {
            healthInterface.healMax()
        } else {
            this.logUtil.putF("Heal attempt on dead: Does not currently occur", this, "visit")
        }
    }
}

import "../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../org/allbinary/game/health/HealthInterface" for HealthInterface
import "../../../../../../../org/allbinary/game/health/HealthVisitorInterface" for HealthVisitorInterface
import "../../../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../../org/allbinary/view/ViewPosition" for ViewPosition

