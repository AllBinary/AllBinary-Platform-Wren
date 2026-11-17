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

local Processor = require("org.allbinary.canvas.Processor")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local VerticalFormProcessor = {}
VerticalFormProcessor.__index = VerticalFormProcessor
VerticalFormProcessor.className = "VerticalFormProcessor"
setmetatable(VerticalFormProcessor, {__index = Processor})

function VerticalFormProcessor:_init_fields()
    self.scrollCurrentSelectionForm = nil
end


function VerticalFormProcessor.new(scrollCurrentSelectionForm)
    local self = setmetatable(Processor.new(), VerticalFormProcessor)
    self:_init_fields()
        self.scrollCurrentSelectionForm = scrollCurrentSelectionForm
    return self
end


-- throws Exception
function VerticalFormProcessor:process()
        self.scrollCurrentSelectionForm:processVerticalForm()
        self.scrollCurrentSelectionForm.processor = Processor.getInstance()
end

return VerticalFormProcessor

