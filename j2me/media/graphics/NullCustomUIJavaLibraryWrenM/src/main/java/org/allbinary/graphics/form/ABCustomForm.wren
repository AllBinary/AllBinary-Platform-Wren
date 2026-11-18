// Generated Code Do Not Modify
// package org.allbinary.graphics.form

import "../../../../allbinary_java" for JObject, JException, JR
import "./CustomScreen" for CustomScreen

class ABCustomForm is CustomScreen {
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }

  initFields_ABCustomForm() {
    _logUtil = null
    _commonStrings = null
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
  }
    

    construct new(title, items, backgroundBasicColor, foregroundBasicColor) {
    super()
    initFields_ABCustomForm()
    }
    

    getAllitems() {
        return List.filled(0, null)
    }
    

    size() {
        return 0
    }
    

    setSelectedIndex(index) {
    }
    

    getSelectedIndex() {
        return 0
    }
    

    deleteAll() {
    }
    

    delete(itemNum) {
    }
    

    append(item) {
        return -1
    }
    

    insert(itemNum, item) {
    }
    

    set(itemNum, item) {
    }
    

    get(itemNum) {
        return ABCustomItem.getNullInstance()
    }
    

    getWidth() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    paint(graphics) {
    }
    

    getTitle() {
        return StringUtil.getInstance().EMPTY_STRING
    }
}

import "../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "../../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../org/allbinary/string/CommonStrings" for CommonStrings

