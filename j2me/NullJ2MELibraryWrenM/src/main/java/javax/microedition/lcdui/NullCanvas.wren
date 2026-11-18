// Generated Code Do Not Modify
// package javax.microedition.lcdui

import "../../../allbinary_java" for JObject, JException, JR
import "./Canvas" for Canvas

class NullCanvas is Canvas {
    static NULL_CANVAS {
    if (__NULL_CANVAS_set == null) {
      __NULL_CANVAS_set = true
      __NULL_CANVAS = NullCanvas.new()
    }
    return __NULL_CANVAS
  }
  static NULL_CANVAS=(value) {
    __NULL_CANVAS_set = true
    __NULL_CANVAS = value
  }

  initFields_NullCanvas() {
  }
    

    construct new() {
    super()
    initFields_NullCanvas()
    }
    

    setFullScreenMode(mode) {
    }
    

    sizeChanged(w, h) {
    }
    

    getCommandStack() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    isCommand(command) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    addCommand(command) {
    }
    

    removeCommand(command) {
    }
    

    removeAllCommands() {
    }
    

    setCommandListener(l) {
    }
    

    getCustomCommandListener() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    isPaused() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    removePauseCommand() {
    }
    

    pause() {
    }
    

    unPause() {
    }
    

    process() {
    }
    

    paint(graphics) {
    }
    

    destroy() {
    }
    

    setPaused(isPaused) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    pointerDragged(x, y) {
    }
    

    pointerPressed(x, y) {
    }
    

    pointerReleased(x, y) {
    }
}

import "../../../java/util/Stack" for Stack
import "./Command" for Command
import "./CommandListener" for CommandListener
import "./Graphics" for Graphics

