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
// package org.allbinary.game.input

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/game/input/mapping/PersistentInputMapping" for PersistentInputMapping

class J2MEGameInputMapping is PersistentInputMapping {

  initFields_J2MEGameInputMapping() {
  }
    

    construct new() {
        super(GamePersistanceStrings.getInstance().SAVED_INPUT_CONFIGURATION_RECORD_ID)
    }
    

    init(abeClientInformation) {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.INIT)
        J2MEKeyFactory.getInstance().init()
        super.init(abeClientInformation)
        if (((this.getTotalMapped() == 0) || this.isDefaultNew())) {
            this.getInputMapping().addMapping(this.getDefault())
            this.save(abeClientInformation)
        }
    }
    

    isDelete(input) {
        if ((input == GameKeyFactory.getInstance().GAME_D)) {
            return true
        } else {
            return false
        }
    }
    

    isSystemInput(input) {
        return false
    }
}

import "../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings" for GamePersistanceStrings
import "../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "./J2MEKeyFactory" for J2MEKeyFactory
import "./GameKeyFactory" for GameKeyFactory
import "./Input" for Input

