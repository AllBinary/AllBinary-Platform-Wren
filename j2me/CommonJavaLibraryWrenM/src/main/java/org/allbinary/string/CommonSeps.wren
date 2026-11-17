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
// package org.allbinary.string

import "../../../allbinary_java" for JObject, JException, JR

class CommonSeps is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = CommonSeps.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  NEW_LINE { _NEW_LINE }
  NEW_LINE=(value) { _NEW_LINE = value }
  SEMICOLON { _SEMICOLON }
  SEMICOLON=(value) { _SEMICOLON = value }
  EQUALS { _EQUALS }
  EQUALS=(value) { _EQUALS = value }
  SPACE { _SPACE }
  SPACE=(value) { _SPACE = value }
  COMMA { _COMMA }
  COMMA=(value) { _COMMA = value }
  COLON { _COLON }
  COLON=(value) { _COLON = value }
  PERIOD { _PERIOD }
  PERIOD=(value) { _PERIOD = value }
  UNDERSCORE { _UNDERSCORE }
  UNDERSCORE=(value) { _UNDERSCORE = value }
  COLON_SEP { _COLON_SEP }
  COLON_SEP=(value) { _COLON_SEP = value }
  COMMA_SEP { _COMMA_SEP }
  COMMA_SEP=(value) { _COMMA_SEP = value }
  PARENTHESIS_OPEN { _PARENTHESIS_OPEN }
  PARENTHESIS_OPEN=(value) { _PARENTHESIS_OPEN = value }
  PARENTHESIS_CLOSE { _PARENTHESIS_CLOSE }
  PARENTHESIS_CLOSE=(value) { _PARENTHESIS_CLOSE = value }
  BRACE_OPEN { _BRACE_OPEN }
  BRACE_OPEN=(value) { _BRACE_OPEN = value }
  BRACE_CLOSE { _BRACE_CLOSE }
  BRACE_CLOSE=(value) { _BRACE_CLOSE = value }
  BRACKET_OPEN { _BRACKET_OPEN }
  BRACKET_OPEN=(value) { _BRACKET_OPEN = value }
  BRACKET_CLOSE { _BRACKET_CLOSE }
  BRACKET_CLOSE=(value) { _BRACKET_CLOSE = value }
  DASH { _DASH }
  DASH=(value) { _DASH = value }
  PERCENT { _PERCENT }
  PERCENT=(value) { _PERCENT = value }
  AMPERSAND { _AMPERSAND }
  AMPERSAND=(value) { _AMPERSAND = value }
  FORWARD_SLASH { _FORWARD_SLASH }
  FORWARD_SLASH=(value) { _FORWARD_SLASH = value }
  BACK_SLASH { _BACK_SLASH }
  BACK_SLASH=(value) { _BACK_SLASH = value }
  QUESTION { _QUESTION }
  QUESTION=(value) { _QUESTION = value }
  QUOTE { _QUOTE }
  QUOTE=(value) { _QUOTE = value }
  QUOTE_END { _QUOTE_END }
  QUOTE_END=(value) { _QUOTE_END = value }
  COMMENT { _COMMENT }
  COMMENT=(value) { _COMMENT = value }
  INDENT { _INDENT }
  INDENT=(value) { _INDENT = value }

  initFields_CommonSeps() {
    _NEW_LINE = null
    _SEMICOLON = null
    _EQUALS = null
    _SPACE = null
    _COMMA = null
    _COLON = null
    _PERIOD = null
    _UNDERSCORE = null
    _COLON_SEP = null
    _COMMA_SEP = null
    _PARENTHESIS_OPEN = null
    _PARENTHESIS_CLOSE = null
    _BRACE_OPEN = null
    _BRACE_CLOSE = null
    _BRACKET_OPEN = null
    _BRACKET_CLOSE = null
    _DASH = null
    _PERCENT = null
    _AMPERSAND = null
    _FORWARD_SLASH = null
    _BACK_SLASH = null
    _QUESTION = null
    _QUOTE = null
    _QUOTE_END = null
    _COMMENT = null
    _INDENT = null
        _NEW_LINE = "\n"
        _SEMICOLON = ";"
        _EQUALS = "="
        _SPACE = " "
        _COMMA = ","
        _COLON = ":"
        _PERIOD = "."
        _UNDERSCORE = "_"
        _COLON_SEP = StringMaker.new().append(_COLON).append(_SPACE).toString()
        _COMMA_SEP = StringMaker.new().append(_COMMA).append(_SPACE).toString()
        _PARENTHESIS_OPEN = "("
        _PARENTHESIS_CLOSE = ")"
        _BRACE_OPEN = "{"
        _BRACE_CLOSE = "}"
        _BRACKET_OPEN = "["
        _BRACKET_CLOSE = "]"
        _DASH = "-"
        _PERCENT = "\%"
        _AMPERSAND = "&"
        _FORWARD_SLASH = "/"
        _BACK_SLASH = "\\"
        _QUESTION = "?"
        _QUOTE = "\""
        _QUOTE_END = "\","
        _COMMENT = "//"
        _INDENT = "    "
  }

  construct new() {
    super()
    initFields_CommonSeps()
  }
    

    static getInstance() {
        return CommonSeps.instance
    }
}

import "../../../org/allbinary/logic/string/StringMaker" for StringMaker

