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
// package org.allbinary.game.input.mapping

import "../../../../../allbinary_java" for JObject, JException, JR
import "./InputMapping" for InputMapping

class InputToGameKeyMapping is InputMapping {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = NullUtil.getInstance().NULL_OBJECT
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  gameKeyFactory { _gameKeyFactory }
  gameKeyFactory=(value) { _gameKeyFactory = value }
  mappedGameKeys { _mappedGameKeys }
  mappedGameKeys=(value) { _mappedGameKeys = value }
  platformToGameKeyMapping { _platformToGameKeyMapping }
  platformToGameKeyMapping=(value) { _platformToGameKeyMapping = value }
  negativePlatformToGameKeyMapping { _negativePlatformToGameKeyMapping }
  negativePlatformToGameKeyMapping=(value) { _negativePlatformToGameKeyMapping = value }

  initFields_InputToGameKeyMapping() {
    _gameKeyFactory = null
    _mappedGameKeys = null
    _platformToGameKeyMapping = null
    _negativePlatformToGameKeyMapping = null
        _gameKeyFactory = GameKeyFactory.getInstance()
        _mappedGameKeys = [_gameKeyFactory.UP, _gameKeyFactory.DOWN, _gameKeyFactory.LEFT, _gameKeyFactory.RIGHT]
        _platformToGameKeyMapping = List.filled(InputFactory.getInstance().MAX, null)
        _negativePlatformToGameKeyMapping = List.filled(0, null)
  }
    

    static getNullInstance() {
        if ((InputToGameKeyMapping.instance == NullUtil.getInstance().NULL_OBJECT)) {
            InputToGameKeyMapping.instance = InputToGameKeyMapping.new()
        }
        return InputToGameKeyMapping.instance
    }
    

    construct new() {
    super()
    initFields_InputToGameKeyMapping()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        this.clear()
    }
    

    clear() {
        if (true) {
            var index = JR.i32(_platformToGameKeyMapping.count - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            _platformToGameKeyMapping[index] = _gameKeyFactory.NONE
            }
        }
    }
    

    removeAll() {
        super.removeAll()
        this.clear()
    }
    

    addMapping(inputToGameKeyMapping) {
        if (true) {
            var index = JR.i32(inputToGameKeyMapping.getMaxMappable() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var input = inputToGameKeyMapping.getInstance(index)
            if ((input != _gameKeyFactory.NONE)) {
                this.addAll(input, inputToGameKeyMapping.getMappedInput(input))
            }
            }
        }
    }
    

    addAll(input, list) {
        if (true) {
            var index = JR.i32(list.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var mappedToInput = list.objectArray[index]
            this.add(input, mappedToInput)
            }
        }
    }
    

    add(input, mappedToInput) {
        super.add(input, mappedToInput)
        this.set(input, mappedToInput)
    }
    

    remove(input, mappedToInput) {
        this.logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(input)).append(" == ").append(StringUtil.getInstance().toString(mappedToInput)).toString(), this, "InputToGameKeyMapping::remove")
        super.remove(input, mappedToInput)
        this.set(input, _gameKeyFactory.NONE)
    }
    

    set(input, mappedToInput) {
        var id = mappedToInput.getId()
        if (((id >= 0) && (id < _platformToGameKeyMapping.count))) {
            _platformToGameKeyMapping[id] = input
        }
    }
    

    getMaxMappable() {
        return _platformToGameKeyMapping.count
    }
    

    getReverseInstance(id) {
        var list = BasicArrayListD.new()
        var inputFactory = InputFactory.getInstance()
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < _platformToGameKeyMapping.count))) break
            if ((_platformToGameKeyMapping[index].getId() == id)) {
                var input = inputFactory.getInstanceById(index)
                if ((input != null)) {
                    list.add(input)
                }
            }
            }
        }
        return list
    }
    

    initGameKey(canvas, gameKey) {
        var key = canvas.getKeyCode(gameKey.getId())
        if (((key < 0) && (-key < _negativePlatformToGameKeyMapping.count))) {
            _negativePlatformToGameKeyMapping[-key] = gameKey
        } else if ((key > 0)) {
            if ((_platformToGameKeyMapping[key] == _gameKeyFactory.NONE)) {
                _platformToGameKeyMapping[key] = gameKey
            }
        } else {
            PreLogUtil.putOE(StringMaker.new().append(gameKey.toString()).append(CommonSeps.getInstance().COLON_SEP).appendint(key).toString(), this, this.commonStrings.INIT, JR.exception("Exception", ""))
        }
    }
    

    getSmallestCanvasGameKeyCode(canvas) {
        var nextKey = 0
        var smallestKey = 0
        if (true) {
            var index = _mappedGameKeys.count
            var jfirst = true
            while (true) {
                jfirst = false
                if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
            nextKey = canvas.getKeyCode(_mappedGameKeys[index].getId())
            if ((nextKey < smallestKey)) {
                smallestKey = nextKey
            }
            }
        }
        return smallestKey
    }
    

    init(canvas) {
        var jerror0 = Fiber.new {
            var negativePlatformToGameKeyMapping = List.filled(0, null)
            var smallestKey = this.getSmallestCanvasGameKeyCode(canvas)
            if ((smallestKey < 0)) {
                smallestKey = JR.i32(smallestKey - 1)
                if ((smallestKey < -256)) {
                    smallestKey = -256
                }
                negativePlatformToGameKeyMapping = List.filled(-smallestKey, null)
                if (true) {
                    var index = negativePlatformToGameKeyMapping.count
                    var jfirst = true
                    while (true) {
                        jfirst = false
                        if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
                    negativePlatformToGameKeyMapping[index] = _gameKeyFactory.NONE
                    }
                }
                _negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping
            }
            if (true) {
                var index = _mappedGameKeys.count
                var jfirst = true
                while (true) {
                    jfirst = false
                    if (!((Fn.new {
index = JR.i32(index - 1)
return index
}.call() >= 0))) break
                this.initGameKey(canvas, _mappedGameKeys[index])
                }
            }
        }.try()
        if (jerror0 != null) {
            var t = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.INIT, t)
        }
    }
    

    getInstanceForCanvas(canvas, id) {
        if (((id >= 0) && (id < _platformToGameKeyMapping.count))) {
            return _platformToGameKeyMapping[id]
        } else if (((id < 0) && (-id < _negativePlatformToGameKeyMapping.count))) {
            return _negativePlatformToGameKeyMapping[-id]
        } else {
            return _gameKeyFactory.NONE
        }
    }
    

    getInstance(id) {
        if (((id >= 0) && (id < _platformToGameKeyMapping.count))) {
            return _platformToGameKeyMapping[id]
        } else if (((id < 0) && (-id < _negativePlatformToGameKeyMapping.count))) {
            return _negativePlatformToGameKeyMapping[-id]
        } else {
            return _gameKeyFactory.NONE
        }
    }
}

import "../../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/Input" for Input
import "../../../../../org/allbinary/game/input/InputFactory" for InputFactory
import "../../../../../org/allbinary/logic/NullUtil" for NullUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/string/CommonLabels" for CommonLabels
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD

