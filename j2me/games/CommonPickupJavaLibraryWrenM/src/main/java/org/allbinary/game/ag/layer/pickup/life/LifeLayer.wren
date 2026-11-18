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
// package org.allbinary.game.ag.layer.pickup.life

import "../../../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

class LifeLayer is AllBinaryLayer {

  initFields_LifeLayer() {
  }
    

    construct new() {
        super(StringUtil.getInstance().EMPTY_STRING, Rectangle.new(PointFactory.getInstance().ZERO_ZERO, 0, 0), ViewPosition.getInstanceD())
    }
    

    paint(graphics) {
    }
    

    visit(lifeInterface) {
        lifeInterface.add(JR.i16(1))
    }
}

import "../../../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../../../org/allbinary/game/ag/life/Life" for Life
import "../../../../../../../org/allbinary/game/ag/life/LifeVisitorInterface" for LifeVisitorInterface
import "../../../../../../../org/allbinary/graphics/PointFactory" for PointFactory
import "../../../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../../org/allbinary/view/ViewPosition" for ViewPosition

