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
// package org.allbinary.game.health

import "../../../../allbinary_java" for JObject, JException, JR
import "./HealthBarAnimation" for HealthBarAnimation

class HealthBarTwodAnimation is HealthBarAnimation {

  initFields_HealthBarTwodAnimation() {
  }
    

    construct new(layerInterface, location) {
        super(layerInterface, location)
    }
    

    paintXY(graphics, x, y) {
        var ax = this.allbinaryLayer.getViewPosition().getX()
        this.basicSetColorUtil.setBasicColorP3(graphics, this.basicColor, this.colorP)
        graphics.fillRect(ax, (this.getY() - 1), this.x2, this.thickness)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

