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
-- package org.allbinary.game.displayable.canvas

local HighScoreTextBox = require("org.allbinary.game.score.displayable.HighScoreTextBox")
local ProgressCanvas = require("org.allbinary.graphics.canvas.transition.progress.ProgressCanvas")
local ProgressCanvasFactory = require("org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory")
local LogUtil = require("org.allbinary.logic.communication.log.LogUtil")
local CommonStrings = require("org.allbinary.string.CommonStrings")
-- java.lang.Runnable has no Lua module
local Runnable = {}

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local SaveHighScoreRunnable = {}
SaveHighScoreRunnable.__index = SaveHighScoreRunnable
SaveHighScoreRunnable.className = "SaveHighScoreRunnable"

function SaveHighScoreRunnable:_init_fields()
    self.progressCanvas = ProgressCanvasFactory.getInstance()
    self.isLast = nil
    self.textBox = nil
end


function SaveHighScoreRunnable.new(isLast, textBox)
    local self = setmetatable({}, SaveHighScoreRunnable)
    self:_init_fields()
        self.isLast = isLast
        self.textBox = textBox
    return self
end


function SaveHighScoreRunnable:run()
        local logUtil = LogUtil.getInstance()
        local try_ok, try_error = pcall(function()
            if self.isLast then
                self.textBox:submit()
            else
                self.textBox:saveHighScore()
            end
        end)
        if not try_ok then
            local e = try_error
            local commonStrings = CommonStrings.getInstance()
            logUtil:put(commonStrings.EXCEPTION, self, "run", e)
            self.progressCanvas:end_()
        end
end

return SaveHighScoreRunnable

