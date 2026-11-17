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
local AngleFactory = require("org.allbinary.math.AngleFactory")
local AngleInfo = require("org.allbinary.math.AngleInfo")
local CircularIndexUtil = require("org.allbinary.util.CircularIndexUtil")
local NullRotationAnimation = require("org.allbinary.animation.NullRotationAnimation")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local NullRotationAnimation2 = {}
NullRotationAnimation2.__index = NullRotationAnimation2
NullRotationAnimation2.className = "NullRotationAnimation2"
setmetatable(NullRotationAnimation2, {__index = NullRotationAnimation})


function NullRotationAnimation2.new()
    local self = setmetatable(NullRotationAnimation.new(AngleInfo.getInstance(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), IndexedAnimationBehavior.new(1, 250)), NullRotationAnimation2)
        -- super(...) made self above
    return self
end


function NullRotationAnimation2:paintXY(graphics, x, y)
end

return NullRotationAnimation2

