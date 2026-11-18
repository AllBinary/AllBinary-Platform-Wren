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
// package org.allbinary.media.image

import "../../../../allbinary_java" for JObject, JException, JR

class ImageCopyUtil is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = ImageCopyUtil.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  imageCreationUtil { _imageCreationUtil }
  imageCreationUtil=(value) { _imageCreationUtil = value }
  anchor { _anchor }
  anchor=(value) { _anchor = value }
  gameFeatureFactory { _gameFeatureFactory }
  gameFeatureFactory=(value) { _gameFeatureFactory = value }
  features { _features }
  features=(value) { _features = value }
  NO_COPY { _NO_COPY }
  NO_COPY=(value) { _NO_COPY = value }

  initFields_ImageCopyUtil() {
    _logUtil = null
    _commonStrings = null
    _imageCreationUtil = null
    _anchor = 0
    _gameFeatureFactory = null
    _features = null
    _NO_COPY = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _imageCreationUtil = ImageCreationUtil.getInstance()
        _anchor = Anchor.TOP_LEFT
        _gameFeatureFactory = GameFeatureFactory.getInstance()
        _features = Features.getInstance()
        _NO_COPY = "J2ME does not need to copy images after initial loading"
  }
    

    static getInstance() {
        return ImageCopyUtil.instance
    }
    

    construct new() {
    super()
    initFields_ImageCopyUtil()
    }
    

    createImageForRotation(originalImage) {
        return this.createImage(originalImage)
    }
    

    createImage(originalImage) {
        if (!_features.isFeature(_gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            _logUtil.put(_NO_COPY, this, _commonStrings.CONSTRUCTOR, JR.exception("Exception", ""))
            return originalImage
        }
        var image = _imageCreationUtil.createImageWH(originalImage.getWidth(), originalImage.getHeight())
        if (image.isMutable()) {
            image.getGraphics().drawImage(originalImage, 0, 0, _anchor)
            return image
        } else {
            Fiber.abort(JR.exception("Exception", "Not Mutable"))
        }
    }
    

    createImageScale(originalImage, canvasScale, resize) {
        if (!_features.isFeature(_gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) {
            _logUtil.put(_NO_COPY, this, _commonStrings.CONSTRUCTOR, JR.exception("Exception", ""))
            return originalImage
        }
        var newWidth = JR.i32(((originalImage.getWidth() * canvasScale)))
        var newHeight = JR.i32(((originalImage.getHeight() * canvasScale)))
        if (resize) {
            if ((newWidth < newHeight)) {
                newWidth = newHeight
            }
            if ((newHeight < newWidth)) {
                newHeight = newWidth
            }
        }
        var image = _imageCreationUtil.createImageWH(newWidth, newHeight)
        if (image.isMutable()) {
            var halfWidthDelta = (((newWidth - originalImage.getWidth())) / 2)
            var halfHeightDelta = (((newHeight - originalImage.getHeight())) / 2)
            var graphics = image.getGraphics()
            graphics.drawImage(originalImage, halfWidthDelta, halfHeightDelta, _anchor)
            return image
        } else {
            Fiber.abort(JR.exception("Exception", "Not Mutable"))
        }
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../javax/microedition/lcdui/Image" for Image
import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" for GameFeatureFactory
import "../../../../org/allbinary/graphics/Anchor" for Anchor
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings
import "./ImageCreationUtil" for ImageCreationUtil

