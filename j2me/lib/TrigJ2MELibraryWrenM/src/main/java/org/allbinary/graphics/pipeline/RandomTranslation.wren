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
// package org.allbinary.graphics.pipeline

import "../../../../allbinary_java" for JObject, JException, JR

class RandomTranslation is JObject {

  initFields_RandomTranslation() {
  }

  construct new() {
    super()
    initFields_RandomTranslation()
  }
    

    static getInstance(vector, howMuch) {
        var myRandomFactory = MyRandomFactory.getInstance()
        var x = -myRandomFactory.getNextInt(howMuch)
        var y = myRandomFactory.getNextInt(howMuch)
        var graphicsPipe = BasicGraphicsPipeline.new(vector)
        graphicsPipe.createMatrix()
        graphicsPipe.translate(x, y)
        return graphicsPipe.getMatrix()
    }
}

import "../../../../org/allbinary/game/rand/MyRandomFactory" for MyRandomFactory
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "./BasicGraphicsPipeline" for BasicGraphicsPipeline

