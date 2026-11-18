// Generated Code Do Not Modify
// package org.allbinary.graphics.form.item

import "../../../../../allbinary_java" for JObject, JException, JR
import "./ABCustomItem" for ABCustomItem

class ABCustomImageItem is ABCustomItem {
  yOffset { _yOffset }
  yOffset=(value) { _yOffset = value }

  initFields_ABCustomImageItem() {
    _yOffset = 0
        _yOffset = 0
  }
    

    construct new(label, image, layout, altText, basicColor, yOffset) {
        super(label, basicColor, basicColor)
        initFields_ABCustomImageItem()
    }
    

    getImage() {
        return NullImage.NULL_IMAGE
    }
}

import "../../../../../javax/microedition/lcdui/Image" for Image
import "../../../../../javax/microedition/lcdui/NullImage" for NullImage
import "../../../../../org/allbinary/graphics/color/BasicColor" for BasicColor

