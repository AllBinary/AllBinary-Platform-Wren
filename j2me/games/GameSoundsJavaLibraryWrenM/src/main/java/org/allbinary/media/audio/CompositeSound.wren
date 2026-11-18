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
// package org.allbinary.media.audio

import "../../../../allbinary_java" for JObject, JException, JR
import "./Sound" for Sound

class CompositeSound is Sound {

  initFields_CompositeSound() {
  }
    

    construct new(resource) {
        super(resource)
    }
    

    init() {
        this.setPlayerP(PlayerComposite.new(AllBinaryMediaManager.createPlayer(this.getResource()), 570))
    }
}

import "./PlayerComposite" for PlayerComposite
import "./AllBinaryMediaManager" for AllBinaryMediaManager

