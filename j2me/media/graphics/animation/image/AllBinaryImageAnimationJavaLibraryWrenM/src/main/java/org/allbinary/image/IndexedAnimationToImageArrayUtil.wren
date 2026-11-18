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
// package org.allbinary.image

import "../../../allbinary_java" for JObject, JException, JR

class IndexedAnimationToImageArrayUtil is JObject {

  initFields_IndexedAnimationToImageArrayUtil() {
  }

  construct new() {
    super()
    initFields_IndexedAnimationToImageArrayUtil()
  }
    

    static getInstance(width, height, sequentialAnimationInterface) {
        var size = sequentialAnimationInterface.getAnimationSize()
        var imageArray = List.filled(size, null)
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            sequentialAnimationInterface.setFrame(index)
            imageArray[index] = AnimationFrameToImageUtil.getInstance().getInstanceWH(width, height, sequentialAnimationInterface)
            }
        }
        return imageArray
    }
}

import "../../../javax/microedition/lcdui/Image" for Image
import "../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "./AnimationFrameToImageUtil" for AnimationFrameToImageUtil

