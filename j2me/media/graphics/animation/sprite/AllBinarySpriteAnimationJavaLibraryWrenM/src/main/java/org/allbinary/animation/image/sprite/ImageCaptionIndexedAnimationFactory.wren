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
// package org.allbinary.animation.image.sprite

import "../../../../../allbinary_java" for JObject, JException, JR

class ImageCaptionIndexedAnimationFactory is JObject {
  animationFactoryImageScaleUtil { _animationFactoryImageScaleUtil }
  animationFactoryImageScaleUtil=(value) { _animationFactoryImageScaleUtil = value }
  animationFactorySpriteScaleUtil { _animationFactorySpriteScaleUtil }
  animationFactorySpriteScaleUtil=(value) { _animationFactorySpriteScaleUtil = value }
  captionImage { _captionImage }
  captionImage=(value) { _captionImage = value }
  spriteMovieImage { _spriteMovieImage }
  spriteMovieImage=(value) { _spriteMovieImage = value }
  frameWidth { _frameWidth }
  frameWidth=(value) { _frameWidth = value }
  frameHeight { _frameHeight }
  frameHeight=(value) { _frameHeight = value }
  captionDx { _captionDx }
  captionDx=(value) { _captionDx = value }
  captionDy { _captionDy }
  captionDy=(value) { _captionDy = value }
  dx { _dx }
  dx=(value) { _dx = value }
  dy { _dy }
  dy=(value) { _dy = value }
  time { _time }
  time=(value) { _time = value }
  soundInterface { _soundInterface }
  soundInterface=(value) { _soundInterface = value }
  scaleProperties { _scaleProperties }
  scaleProperties=(value) { _scaleProperties = value }
  animationBehaviorFactory { _animationBehaviorFactory }
  animationBehaviorFactory=(value) { _animationBehaviorFactory = value }

  initFields_ImageCaptionIndexedAnimationFactory() {
    _animationFactoryImageScaleUtil = null
    _animationFactorySpriteScaleUtil = null
    _captionImage = null
    _spriteMovieImage = null
    _frameWidth = 0
    _frameHeight = 0
    _captionDx = 0
    _captionDy = 0
    _dx = 0
    _dy = 0
    _time = 0
    _soundInterface = null
    _scaleProperties = null
    _animationBehaviorFactory = null
        _animationFactoryImageScaleUtil = AnimationFactoryImageScaleUtil.getInstance()
        _animationFactorySpriteScaleUtil = AnimationFactorySpriteScaleUtil.getInstance()
        
        
        
        
        
        
        
        
        
        
        _scaleProperties = ScaleProperties.instance
        
  }
    

    construct new(captionImage, spriteMovieImage, soundInterface, frameWidth, frameHeight, captionDx, captionDy, dx, dy, time, animationBehaviorFactory) {
    super()
    initFields_ImageCaptionIndexedAnimationFactory()
        if ((animationBehaviorFactory == AnimationBehaviorFactory.getInstance())) {
            ForcedLogUtil.log("Using default AnimationBehaviorFactory with IndexedAnimationFactory", this)
        }
        _captionImage = captionImage
        _spriteMovieImage = spriteMovieImage
        _frameWidth = frameWidth
        _frameHeight = frameHeight
        _captionDx = captionDx
        _captionDy = captionDy
        _dx = dx
        _dy = dy
        _time = time
        _soundInterface = soundInterface
        _animationBehaviorFactory = animationBehaviorFactory
    }
    

    getInstance(instanceId) {
        var scaledImage = _animationFactoryImageScaleUtil.createImage(_captionImage, _captionImage.getWidth(), _captionImage.getHeight(), _scaleProperties.scaleWidth, _scaleProperties.scaleHeight)
        var animationInterface = ImageAnimation.new(scaledImage, _animationBehaviorFactory.getOrCreateInstance())
        var sprite = _animationFactorySpriteScaleUtil.createImage(_spriteMovieImage, _frameWidth, _frameHeight, _scaleProperties.scaleWidth, _scaleProperties.scaleHeight)
        var movieIndexedAnimationInterface = SpriteIndexedAnimation.new(sprite, _spriteMovieImage, BasicColorUtil.getInstance().ZERO_ARRAY, _animationBehaviorFactory.getOrCreateInstance())
        var player = _soundInterface.getPlayerP()
        if ((player == null)) {
            Fiber.abort(JR.exception("Exception", "Sound Was not Initialized"))
        }
        return CaptionIndexedAnimation.new(animationInterface, movieIndexedAnimationInterface, player, _captionDx, _captionDy, _dx, _dy, _time, _animationBehaviorFactory.getOrCreateInstance())
    }
    

    setInitialScale(scaleProperties) {
        _scaleProperties = scaleProperties
    }
}

import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/game/Sprite" for Sprite
import "../../../../../javax/microedition/media/Player" for Player
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/AnimationBehaviorFactory" for AnimationBehaviorFactory
import "../../../../../org/allbinary/animation/AnimationInterfaceFactoryInterface" for AnimationInterfaceFactoryInterface
import "../../../../../org/allbinary/animation/IndexedAnimation" for IndexedAnimation
import "../../../../../org/allbinary/animation/caption/CaptionIndexedAnimation" for CaptionIndexedAnimation
import "../../../../../org/allbinary/animation/image/ImageAnimation" for ImageAnimation
import "../../../../../org/allbinary/graphics/color/BasicColorUtil" for BasicColorUtil
import "../../../../../org/allbinary/image/AnimationFactoryImageScaleUtil" for AnimationFactoryImageScaleUtil
import "../../../../../org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil" for AnimationFactorySpriteScaleUtil
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/media/ScaleProperties" for ScaleProperties
import "../../../../../org/allbinary/media/audio/Sound" for Sound
import "./SpriteIndexedAnimation" for SpriteIndexedAnimation

