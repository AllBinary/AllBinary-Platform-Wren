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
-- package org.allbinary.game.input

-- local Canvas = require("javax.microedition.lcdui.Canvas")
local BasicArrayList = require("org.allbinary.util.BasicArrayList")
local LockedFeatureNotificationUtil = require("org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil")
local LockedUtil = require("org.allbinary.logic.system.security.licensing.LockedUtil")
local Processor = require("org.allbinary.canvas.Processor")
local AllBinaryGameCanvas = require("org.allbinary.game.displayable.canvas.AllBinaryGameCanvas")
local PreGameSelectorPaintable = require("org.allbinary.game.displayable.canvas.PreGameSelectorPaintable")
local GameKeyEventHandler = require("org.allbinary.game.input.event.GameKeyEventHandler")
local GameKeyEventUtil = require("org.allbinary.game.input.event.GameKeyEventUtil")
local AllBinaryLayerManager = require("org.allbinary.layer.AllBinaryLayerManager")
local LogUtil = require("org.allbinary.logic.communication.log.LogUtil")
local CommonStrings = require("org.allbinary.string.CommonStrings")
local SecondaryPlayerQueueFactory = require("org.allbinary.media.audio.SecondaryPlayerQueueFactory")
local SelectSound = require("org.allbinary.media.audio.SelectSound")
local MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface = require("org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface")
local ABRunnable = require("org.allbinary.thread.ABRunnable")
local ThreadObjectUtil = require("org.allbinary.thread.ThreadObjectUtil")
local TimeDelayHelper = require("org.allbinary.time.TimeDelayHelper")
local GameInputProcessorInterface = require("org.allbinary.game.input.GameInputProcessorInterface")
local PlayerGameInputCompositeInterface = require("org.allbinary.game.input.PlayerGameInputCompositeInterface")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local MapSelectionGameInputProcessor = {}
MapSelectionGameInputProcessor.__index = MapSelectionGameInputProcessor
MapSelectionGameInputProcessor.className = "MapSelectionGameInputProcessor"
setmetatable(MapSelectionGameInputProcessor, {__index = Processor})
local MapSelectionRunnable = {}
    MapSelectionRunnable.__index = MapSelectionRunnable
    MapSelectionRunnable.className = "MapSelectionRunnable"
    setmetatable(MapSelectionRunnable, {__index = ABRunnable})
    MapSelectionGameInputProcessor.MapSelectionRunnable = MapSelectionRunnable

    function MapSelectionRunnable:_init_fields()
        self.inputProcessor = nil
    end
    

    function MapSelectionGameInputProcessor.new(inputProcessor)
        local self = setmetatable(ABRunnable.new(), MapSelectionGameInputProcessor)
        self:_init_fields()
            self.inputProcessor = inputProcessor
        return self
    end
    

    function MapSelectionGameInputProcessor:run()
            local try_ok, try_error = pcall(function()
                self:setRunning(true)
                SecondaryPlayerQueueFactory.getInstance():add(SelectSound.getInstance())
                local track = self.inputProcessor.preGameSelectorPaintable:getPreGameSelectionForm():getSelectedIndex() + 1
                local wave = self.inputProcessor.raceTrackGeographicMapInterfaceFactoryInterface:getFirstWaveWithTrack(track)
                self.inputProcessor.gameCanvas:getLayerManager():getGameInfo():setCurrentLevel(wave)
                self.inputProcessor.gameCanvas:buildGameInit(false)
                GameKeyEventHandler.getInstance():removeListener(self.inputProcessor:getPlayerGameInput())
                self:setRunning(false)
            end)
            if not try_ok then
                local e = try_error
                self:setRunning(false)
                local logUtil = LogUtil.getInstance()
                local commonStrings = CommonStrings.getInstance()
                logUtil:put(commonStrings.EXCEPTION, self, commonStrings.RUN, e)
            end
    end


function MapSelectionGameInputProcessor:_init_fields()
    self.logUtil = LogUtil.getInstance()
    self.gameCanvas = nil
    self.raceTrackGeographicMapInterfaceFactoryInterface = nil
    self.preGameSelectorPaintable = nil
    self.inputTimeHelper = TimeDelayHelper.new(650)
    self.playerGameInput = nil
    self.lockedIndex = nil
    self.abRunnable = MapSelectionRunnable.new(self)
end


function MapSelectionGameInputProcessor.new(gameCanvas, raceTrackGeographicMapInterfaceFactoryInterface, mapSelectorPaintable, lockedIndex)
    local self = setmetatable(Processor.new(), MapSelectionGameInputProcessor)
    self:_init_fields()
        self.gameCanvas = gameCanvas
        self.raceTrackGeographicMapInterfaceFactoryInterface = raceTrackGeographicMapInterfaceFactoryInterface
        self.preGameSelectorPaintable = mapSelectorPaintable
        self.playerGameInput = GameInputProcessorComposite.new("Map Selection", self)
        self.lockedIndex = lockedIndex
    return self
end


-- throws Exception
function MapSelectionGameInputProcessor:process()
        self:getPlayerGameInput():update()
end


-- throws Exception
function MapSelectionGameInputProcessor:onInput(list)
        local size = list:size()
        for index = 0, size - 1 do
            local anyType = list:get(index)
            local key = GameKeyEventUtil.getKey(anyType)
            if key == Canvas.LEFT or key == Canvas.RIGHT or key == Canvas.UP or key == Canvas.DOWN then
                if self.inputTimeHelper:isTimeTNT() then
                    SecondaryPlayerQueueFactory.getInstance():add(SelectSound.getInstance())
                    self.preGameSelectorPaintable:getPreGameSelectionForm():processInputKey(key)
                    break
                end
            elseif key == Canvas.KEY_NUM0 then
                local selectedIndex = self.preGameSelectorPaintable:getPreGameSelectionForm():getSelectedIndex()
                if selectedIndex < self.lockedIndex or not LockedUtil.getInstance():isLocked() then
                    if not self.abRunnable:isRunning() then
                        self.abRunnable:setRunning(true)
                        ThreadObjectUtil.getInstance():processThread(self.abRunnable)
                    end
                    break
                else
                    LockedFeatureNotificationUtil.getInstance():fire()
                end
            end
            list:clear()
        end
end


-- throws Exception
function MapSelectionGameInputProcessor:processInput(layerManager)
end


function MapSelectionGameInputProcessor:initInputProcessors()
end


function MapSelectionGameInputProcessor:getName()
        return tostring(self)
end


function MapSelectionGameInputProcessor:getPlayerGameInput()
        return self.playerGameInput
end

return MapSelectionGameInputProcessor

