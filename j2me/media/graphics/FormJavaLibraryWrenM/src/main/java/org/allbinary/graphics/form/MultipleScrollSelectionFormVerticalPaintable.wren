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

-- local Graphics = require("javax.microedition.lcdui.Graphics")
local ABCustomItem = require("org.allbinary.graphics.form.item.ABCustomItem")
local ItemIndexPaintable = require("org.allbinary.graphics.form.ItemIndexPaintable")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local MultipleScrollSelectionFormVerticalPaintable = {}
MultipleScrollSelectionFormVerticalPaintable.__index = MultipleScrollSelectionFormVerticalPaintable
MultipleScrollSelectionFormVerticalPaintable.className = "MultipleScrollSelectionFormVerticalPaintable"
setmetatable(MultipleScrollSelectionFormVerticalPaintable, {__index = ItemIndexPaintable})

function MultipleScrollSelectionFormVerticalPaintable:_init_fields()
    self.multipleScrollSelectionForm = nil
end


function MultipleScrollSelectionFormVerticalPaintable.new(multipleScrollSelectionForm)
    local self = setmetatable(ItemIndexPaintable.new(), MultipleScrollSelectionFormVerticalPaintable)
    self:_init_fields()
        self.multipleScrollSelectionForm = multipleScrollSelectionForm
    return self
end


-- throws Exception
function MultipleScrollSelectionFormVerticalPaintable:paint(graphics, index, item, dx, dy)
        return self.multipleScrollSelectionForm:paintVertical(graphics, index, item, dx, dy)
end

return MultipleScrollSelectionFormVerticalPaintable

