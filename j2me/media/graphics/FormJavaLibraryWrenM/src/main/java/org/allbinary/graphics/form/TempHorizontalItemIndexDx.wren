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
-- package org.allbinary.graphics.form

local ABCustomItem = require("org.allbinary.graphics.form.item.ABCustomItem")
local ItemIndexDx = require("org.allbinary.graphics.form.ItemIndexDx")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local TempHorizontalItemIndexDx = {}
TempHorizontalItemIndexDx.__index = TempHorizontalItemIndexDx
TempHorizontalItemIndexDx.className = "TempHorizontalItemIndexDx"
setmetatable(TempHorizontalItemIndexDx, {__index = ItemIndexDx})

function TempHorizontalItemIndexDx:_init_fields()
    self.scrollCurrentSelectionForm = nil
end


function TempHorizontalItemIndexDx.new(scrollCurrentSelectionForm)
    local self = setmetatable(ItemIndexDx.new(), TempHorizontalItemIndexDx)
    self:_init_fields()
        self.scrollCurrentSelectionForm = scrollCurrentSelectionForm
    return self
end


-- throws Exception
function TempHorizontalItemIndexDx:getDx(index, item, dx, dy)
        return self.scrollCurrentSelectionForm:getXTempHorizontalForm(index, item, dx, dy)
end

return TempHorizontalItemIndexDx

