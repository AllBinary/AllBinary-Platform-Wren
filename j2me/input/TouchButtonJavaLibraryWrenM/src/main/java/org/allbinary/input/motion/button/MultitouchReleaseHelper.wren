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
local ReleaseHelper = require("org.allbinary.input.motion.button.ReleaseHelper")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local MultitouchReleaseHelper = {}
MultitouchReleaseHelper.__index = MultitouchReleaseHelper
MultitouchReleaseHelper.className = "MultitouchReleaseHelper"
setmetatable(MultitouchReleaseHelper, {__index = ReleaseHelper})


function MultitouchReleaseHelper.new(touchButtonRecognizer)
    local self = setmetatable(ReleaseHelper.new(touchButtonRecognizer), MultitouchReleaseHelper)
        -- super(...) made self above
    return self
end


-- throws Exception
function MultitouchReleaseHelper:release(touchButtonInput, deviceId)
        local cancelTouchButtonInput = CancelTouchButtonInputFactory.getInstance():getCancel(touchButtonInput)
        local nextTouchButtonInput = nil
        local gameKeyEvent = nil
        for index = self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton:size() - 1, 0, -1 do
            nextTouchButtonInput = self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton:get(index)
            if cancelTouchButtonInput == nextTouchButtonInput then
                gameKeyEvent = nextTouchButtonInput:getGameKeyEvent()
                self.touchButtonRecognizer.upGameKeyEventHandler:fireEvent(gameKeyEvent)
                self.touchButtonRecognizer.upGameKeyEventHandler:getInstanceForDevice(deviceId):fireEvent(gameKeyEvent)
                self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton:removeAt(index)
            end
        end
end

return MultitouchReleaseHelper

