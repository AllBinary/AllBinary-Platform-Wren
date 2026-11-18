// Generated Code Do Not Modify
// package javax.microedition.lcdui

import "../../../allbinary_java" for JObject, JException, JR

class NullCommandListener is JObject {
    static NULL_COMMAND_LISTENER {
    if (__NULL_COMMAND_LISTENER_set == null) {
      __NULL_COMMAND_LISTENER_set = true
      __NULL_COMMAND_LISTENER = NullCommandListener.new()
    }
    return __NULL_COMMAND_LISTENER
  }
  static NULL_COMMAND_LISTENER=(value) {
    __NULL_COMMAND_LISTENER_set = true
    __NULL_COMMAND_LISTENER = value
  }

  initFields_NullCommandListener() {
  }

  construct new() {
    super()
    initFields_NullCommandListener()
  }
    

    commandAction(c, d) {
    }
}

import "./CommandListener" for CommandListener
import "./Command" for Command
import "./Displayable" for Displayable

