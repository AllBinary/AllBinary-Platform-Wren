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
-- package org.allbinary.input.motion.button

local GameKeyEvent = require("org.allbinary.game.input.event.GameKeyEvent")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local ReleaseHelper = {}
ReleaseHelper.__index = ReleaseHelper
ReleaseHelper.className = "ReleaseHelper"

function ReleaseHelper:_init_fields()
    self.touchButtonRecognizer = nil
end


function ReleaseHelper.new(touchButtonRecognizer)
    local self = setmetatable({}, ReleaseHelper)
    self:_init_fields()
        self.touchButtonRecognizer = touchButtonRecognizer
    return self
end


-- throws Exception
function ReleaseHelper:release(touchButtonInput, deviceId)
        local nextTouchButtonInput = nil
        local gameKeyEvent = nil
        for index = self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton:size() - 1, 0, -1 do
            nextTouchButtonInput = self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton:get(index)
            gameKeyEvent = nextTouchButtonInput:getGameKeyEvent()
            self.touchButtonRecognizer.upGameKeyEventHandler:fireEvent(gameKeyEvent)
            self.touchButtonRecognizer.upGameKeyEventHandler:getInstanceForDevice(deviceId):fireEvent(gameKeyEvent)
            self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton:removeAt(index)
        end
end

return ReleaseHelper

