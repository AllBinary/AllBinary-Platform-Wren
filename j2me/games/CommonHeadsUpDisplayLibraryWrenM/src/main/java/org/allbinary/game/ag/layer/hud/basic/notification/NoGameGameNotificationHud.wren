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
-- package org.allbinary.game.ag.layer.hud.basic.notification

local BasicHudFactory = require("org.allbinary.game.graphics.hud.BasicHudFactory")
local BasicColorFactory = require("org.allbinary.graphics.color.BasicColorFactory")
local GameNotificationHud = require("org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local NoGameGameNotificationHud = {}
NoGameGameNotificationHud.__index = NoGameGameNotificationHud
NoGameGameNotificationHud.className = "NoGameGameNotificationHud"
setmetatable(NoGameGameNotificationHud, {__index = GameNotificationHud})


function NoGameGameNotificationHud.new()
    local self = setmetatable(GameNotificationHud.new(BasicHudFactory.getInstance().TOPCENTER, BasicHudFactory.getInstance().HORIZONTAL, 2, BasicColorFactory.getInstance().RED), NoGameGameNotificationHud)
        -- super(...) made self above
        self.updateMaxWidth = 40
        self.updateMaxHeight = 14
    return self
end

return NoGameGameNotificationHud

