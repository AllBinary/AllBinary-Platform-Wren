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
-- package org.allbinary.animation

-- local Graphics = require("javax.microedition.lcdui.Graphics")
local NullIndexedAnimation = require("org.allbinary.animation.NullIndexedAnimation")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local NullIndexedAnimationInner = {}
NullIndexedAnimationInner.__index = NullIndexedAnimationInner
NullIndexedAnimationInner.className = "NullIndexedAnimationInner"
setmetatable(NullIndexedAnimationInner, {__index = NullIndexedAnimation})


function NullIndexedAnimationInner.new()
    local self = setmetatable(NullIndexedAnimation.new(IndexedAnimationBehavior.new(1, 250)), NullIndexedAnimationInner)
        -- super(...) made self above
    return self
end


function NullIndexedAnimationInner:paintXY(graphics, x, y)
end

return NullIndexedAnimationInner

