--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
-- Generated Code Do Not Modify
-- package org.allbinary.game.paint.help

local NullUtil = require("org.allbinary.logic.NullUtil")
local StringUtil = require("org.allbinary.logic.string.StringUtil")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local UpdateMyFontProperties = {}
UpdateMyFontProperties.__index = UpdateMyFontProperties
UpdateMyFontProperties.className = "UpdateMyFontProperties"

function UpdateMyFontProperties:_init_fields()
    self.actionStringArray = StringUtil.getInstance():getArrayInstance()
    self.keymappingBeginWidthArray = NullUtil.getInstance().NULL_INT_ARRAY
    self.actionStringDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY
    self.inputDeltaXArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
    self.sepArray = StringUtil.getInstance().ONE_EMPTY_STRING_ARRAY_OF_ARRAYS
    self.sepWidthArray = NullUtil.getInstance().NULL_INT_ARRAY_ARRAY
    self.charHeight = 0
end

function UpdateMyFontProperties.new()
    local self = setmetatable({}, UpdateMyFontProperties)
    self:_init_fields()
    return self
end

return UpdateMyFontProperties

