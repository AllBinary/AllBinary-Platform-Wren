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
// package org.allbinary.logic.io.path

import "../../../../../allbinary_java" for JObject, JException, JR
import "./AbPath" for AbPath

class AbFilePath is AbPath {

  initFields_AbFilePath() {
  }
    

    construct new(aPath) {
        super(StringUtil.getInstance().EMPTY_STRING, StringUtil.getInstance().EMPTY_STRING)
        var pathData = AbPathData.getInstance()
        var abPathUtil = PathUtil.getInstance()
        this.schema = this.getSchema(aPath)
        this.setName(pathData.getNameFromPath(aPath))
        this.setPath(abPathUtil.adjust(this.getPathFromPath(abPathUtil.removeNameFromPath(aPath).toString())))
    }
}

import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "./AbPathData" for AbPathData
import "./PathUtil" for PathUtil

