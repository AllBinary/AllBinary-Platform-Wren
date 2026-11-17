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
-- package org.allbinary.game.score.displayable

local J2MEUtil = require("org.allbinary.J2MEUtil")
local ABSystemWrapper = require("org.allbinary.logic.ABSystemWrapper")
local LogUtil = require("org.allbinary.logic.communication.log.LogUtil")
local StringMaker = require("org.allbinary.logic.string.StringMaker")
local CommonStrings = require("org.allbinary.string.CommonStrings")
local ARunnable = require("org.allbinary.thread.ARunnable")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local HighScoreRunnable = {}
HighScoreRunnable.__index = HighScoreRunnable
HighScoreRunnable.className = "HighScoreRunnable"
setmetatable(HighScoreRunnable, {__index = ARunnable})

function HighScoreRunnable:_init_fields()
    self.highScoresCanvas = nil
end


function HighScoreRunnable.new(highScoresCanvas)
    local self = setmetatable(ARunnable.new(), HighScoreRunnable)
    self:_init_fields()
        self.highScoresCanvas = highScoresCanvas
    return self
end


function HighScoreRunnable:run()
        local commonStrings = CommonStrings.getInstance()
        local logUtil = LogUtil.getInstance()
        local highScoresCanvas = self.highScoresCanvas
        local try_ok, try_error = pcall(function()
            local isHTML = J2MEUtil.isHTML()
            if not isHTML then
                while not highScoresCanvas.hasPainted do
                end
                highScoresCanvas.hasPainted = false
            end
            local stringMaker = StringMaker.new()
            local systemWrapper = ABSystemWrapper.getInstance()
            local currentTimeMillis = systemWrapper:currentTimeMillis()
            logUtil:putF(tostring(stringMaker:append("HighScoresCanvas - Request repaint to be sure: "):appendlong(currentTimeMillis)), self, commonStrings.RUN)
            highScoresCanvas.repaintBehavior:onChangeRepaint(highScoresCanvas)
            if not isHTML then
                while not highScoresCanvas.hasPainted do
                end
            end
            stringMaker:delete(0, stringMaker:length())
            logUtil:putF(tostring(stringMaker:append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: "):appendlong(currentTimeMillis)), self, commonStrings.RUN)
            highScoresCanvas:executeUpdate()
        end)
        if not try_ok then
            local e = try_error
            logUtil:put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
        end
end

return HighScoreRunnable

