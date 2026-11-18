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
// package org.allbinary.animation.caption

import "../../../../allbinary_java" for JObject, JException, JR
import "./CaptionAnimationHelperBase" for CaptionAnimationHelperBase

class CaptionAnimationHelper is CaptionAnimationHelperBase {
  timeHelper { _timeHelper }
  timeHelper=(value) { _timeHelper = value }
  textAnimation { _textAnimation }
  textAnimation=(value) { _textAnimation = value }
  captionAnimation { _captionAnimation }
  captionAnimation=(value) { _captionAnimation = value }
  animation { _animation }
  animation=(value) { _animation = value }

  initFields_CaptionAnimationHelper() {
    _timeHelper = null
    _textAnimation = null
    _captionAnimation = null
    _animation = null
        _timeHelper = TimeDelayHelper.new(620)
        _textAnimation = TextAnimation.new(StringUtil.getInstance().EMPTY_STRING, AnimationBehavior.getInstance())
        
        _animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
  }
    

    construct new(captionAnimation, captionDx, captionDy, dx, dy) {
    super()
    initFields_CaptionAnimationHelper()
        _captionAnimation = CaptionAnimation.new(captionAnimation, _textAnimation, captionDx, captionDy, dx, dy)
    }
    

    isShowing() {
        if ((_animation == _captionAnimation)) {
            return true
        } else {
            return false
        }
    }
    

    tick() {
        if (_timeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime)) {
            _animation = NullAnimationFactory.getFactoryInstance().getInstance(0)
        }
    }
    

    update(message, basicColor) {
        _textAnimation.setBasicColorP(basicColor)
        _textAnimation.setText(message)
        _animation = _captionAnimation
        _timeHelper.setStartTimeTNT()
    }
    

    paintXY(graphics, x, y) {
        _animation.paintXY(graphics, x, y)
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/animation/Animation" for Animation
import "../../../../org/allbinary/animation/AnimationBehavior" for AnimationBehavior
import "../../../../org/allbinary/animation/NullAnimationFactory" for NullAnimationFactory
import "../../../../org/allbinary/animation/text/TextAnimation" for TextAnimation
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "./CaptionAnimation" for CaptionAnimation

