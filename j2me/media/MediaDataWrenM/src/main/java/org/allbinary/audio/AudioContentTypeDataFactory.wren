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
// package org.allbinary.audio

import "../../../allbinary_java" for JObject, JException, JR

class AudioContentTypeDataFactory is JObject {
    static instance {
    if (__instance_set == null) {
      __instance_set = true
      __instance = AudioContentTypeDataFactory.new()
    }
    return __instance
  }
  static instance=(value) {
    __instance_set = true
    __instance = value
  }
  MIME_AUDIO_TONE { _MIME_AUDIO_TONE }
  MIME_AUDIO_TONE=(value) { _MIME_AUDIO_TONE = value }
  MIME_AUDIO_AMR { _MIME_AUDIO_AMR }
  MIME_AUDIO_AMR=(value) { _MIME_AUDIO_AMR = value }
  MIME_AUDIO_AMR_WB { _MIME_AUDIO_AMR_WB }
  MIME_AUDIO_AMR_WB=(value) { _MIME_AUDIO_AMR_WB = value }
  MIME_AUDIO_WAV { _MIME_AUDIO_WAV }
  MIME_AUDIO_WAV=(value) { _MIME_AUDIO_WAV = value }
  MIME_AUDIO_MIDI { _MIME_AUDIO_MIDI }
  MIME_AUDIO_MIDI=(value) { _MIME_AUDIO_MIDI = value }
  MIME_AUDIO_SP_MIDI { _MIME_AUDIO_SP_MIDI }
  MIME_AUDIO_SP_MIDI=(value) { _MIME_AUDIO_SP_MIDI = value }

  initFields_AudioContentTypeDataFactory() {
    _MIME_AUDIO_TONE = null
    _MIME_AUDIO_AMR = null
    _MIME_AUDIO_AMR_WB = null
    _MIME_AUDIO_WAV = null
    _MIME_AUDIO_MIDI = null
    _MIME_AUDIO_SP_MIDI = null
        _MIME_AUDIO_TONE = AudioContentTypeData.new("audio/x-tone-seq")
        _MIME_AUDIO_AMR = AudioContentTypeData.new("audio/amr")
        _MIME_AUDIO_AMR_WB = AudioContentTypeData.new("audio/amr-wb")
        _MIME_AUDIO_WAV = AudioContentTypeData.new("audio/x-wav")
        _MIME_AUDIO_MIDI = AudioContentTypeData.new("audio/midi")
        _MIME_AUDIO_SP_MIDI = AudioContentTypeData.new("audio/sp-midi")
  }
    

    static getInstance() {
        return AudioContentTypeDataFactory.instance
    }
    

    construct new() {
    super()
    initFields_AudioContentTypeDataFactory()
    }
}

import "./AudioContentTypeData" for AudioContentTypeData

