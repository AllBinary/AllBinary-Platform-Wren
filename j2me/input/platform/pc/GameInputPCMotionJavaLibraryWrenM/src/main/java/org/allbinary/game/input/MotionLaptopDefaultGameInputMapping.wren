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

class MotionLaptopDefaultGameInputMapping is PersistentInputMapping {

  initFields_MotionLaptopDefaultGameInputMapping() {
  }
    

    construct new() {
        super(GamePersistanceStrings.getInstance().DEFAULT_INPUT_MAPPING_RECORD_ID)
        var pcKeyFactory = PCKeyFactory.getInstance()
        var inputToGameKeyMapping = this.getInputMapping()
        var gameKeyFactory = GameKeyFactory.getInstance()
        var touchMotionGestureFactory = TouchMotionGestureFactory.getInstance()
        var basicTouchInputFactory = BasicTouchInputFactory.getInstance()
        inputToGameKeyMapping.add(gameKeyFactory.FIRE, pcKeyFactory.ENTER)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.FOUR)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.u_P)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, pcKeyFactory.p)
        inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.DPAD_UP)
        inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.DPAD_DOWN)
        inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.DPAD_LEFT)
        inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.DPAD_RIGHT)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM7, pcKeyFactory.u_Y)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM9, pcKeyFactory.u_I)
        inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.u_U)
        inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.u_H)
        inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.u_J)
        inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.u_N)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM5, pcKeyFactory.u_M)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM7, pcKeyFactory.y)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM9, pcKeyFactory.i)
        inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.u)
        inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.h)
        inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.j)
        inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.n)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM5, pcKeyFactory.m)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM7, pcKeyFactory.u_Q)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM9, pcKeyFactory.u_E)
        inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.u_W)
        inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.u_A)
        inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.u_D)
        inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.u_S)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM5, pcKeyFactory.u_X)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM7, pcKeyFactory.q)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM9, pcKeyFactory.e)
        inputToGameKeyMapping.add(gameKeyFactory.UP, pcKeyFactory.w)
        inputToGameKeyMapping.add(gameKeyFactory.LEFT, pcKeyFactory.a)
        inputToGameKeyMapping.add(gameKeyFactory.RIGHT, pcKeyFactory.d)
        inputToGameKeyMapping.add(gameKeyFactory.DOWN, pcKeyFactory.s)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM5, pcKeyFactory.x)
        inputToGameKeyMapping.add(gameKeyFactory.UP, touchMotionGestureFactory.UP)
        inputToGameKeyMapping.add(gameKeyFactory.DOWN, touchMotionGestureFactory.DOWN)
        inputToGameKeyMapping.add(gameKeyFactory.LEFT, touchMotionGestureFactory.LEFT)
        inputToGameKeyMapping.add(gameKeyFactory.RIGHT, touchMotionGestureFactory.RIGHT)
        inputToGameKeyMapping.add(gameKeyFactory.UP, basicTouchInputFactory.UP)
        inputToGameKeyMapping.add(gameKeyFactory.LEFT, basicTouchInputFactory.LEFT)
        inputToGameKeyMapping.add(gameKeyFactory.RIGHT, basicTouchInputFactory.RIGHT)
        inputToGameKeyMapping.add(gameKeyFactory.DOWN, basicTouchInputFactory.DOWN)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM0, basicTouchInputFactory.SPECIAL_BUTTON_FIVE)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM7, basicTouchInputFactory.SPECIAL_BUTTON_FOUR)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM9, basicTouchInputFactory.SPECIAL_BUTTON_THREE)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM1, basicTouchInputFactory.SPECIAL_BUTTON_TWO)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM3, basicTouchInputFactory.SPECIAL_BUTTON_ONE)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM2, basicTouchInputFactory.SPECIAL_BUTTON_SIX)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM3, pcKeyFactory.THREE)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM0, pcKeyFactory.ZERO)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM0, pcKeyFactory.ONE)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_NUM0, pcKeyFactory.SPACE)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_POUND, pcKeyFactory.DEL)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_POUND, pcKeyFactory.TWO)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_STAR, pcKeyFactory.ESCAPE)
        inputToGameKeyMapping.add(gameKeyFactory.KEY_STAR, pcKeyFactory.STAR)
        inputToGameKeyMapping.add(gameKeyFactory.LEVEL_DOWN, pcKeyFactory.COMMA)
        inputToGameKeyMapping.add(gameKeyFactory.LEVEL_UP, pcKeyFactory.PERIOD)
    }
}

import "../../../../org/allbinary/game/configuration/persistance/GamePersistanceStrings" for GamePersistanceStrings
import "../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../org/allbinary/input/motion/button/BasicTouchInputFactory" for BasicTouchInputFactory
import "../../../../org/allbinary/input/motion/gesture/TouchMotionGestureFactory" for TouchMotionGestureFactory
import "./PCKeyFactory" for PCKeyFactory
import "./GameKeyFactory" for GameKeyFactory

