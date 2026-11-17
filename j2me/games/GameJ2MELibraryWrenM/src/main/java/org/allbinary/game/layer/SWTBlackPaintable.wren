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
-- package org.allbinary.game.layer

-- local Graphics = require("javax.microedition.lcdui.Graphics")
local BasicColor = require("org.allbinary.graphics.color.BasicColor")
local BasicColorFactory = require("org.allbinary.graphics.color.BasicColorFactory")
local BasicColorSetUtil = require("org.allbinary.graphics.color.BasicColorSetUtil")
local Paintable = require("org.allbinary.graphics.paint.Paintable")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local SWTBlackPaintable = {}
SWTBlackPaintable.__index = SWTBlackPaintable
SWTBlackPaintable.className = "SWTBlackPaintable"
setmetatable(SWTBlackPaintable, {__index = Paintable})

function SWTBlackPaintable:_init_fields()
    self.basicSetColorUtil = BasicColorSetUtil.getInstance()
    self.BLACK = BasicColorFactory.getInstance().BLACK
end

function SWTBlackPaintable.new()
    local self = setmetatable(Paintable.new(), SWTBlackPaintable)
    self:_init_fields()
    return self
end


function SWTBlackPaintable:paint(graphics)
        self.basicSetColorUtil:setBasicColorP(graphics, self.BLACK)
end

return SWTBlackPaintable

