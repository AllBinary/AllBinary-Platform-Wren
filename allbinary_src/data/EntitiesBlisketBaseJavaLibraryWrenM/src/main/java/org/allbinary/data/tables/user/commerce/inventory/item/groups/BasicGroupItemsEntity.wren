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
-- package org.allbinary.data.tables.user.commerce.inventory.item.groups

-- local HashMap = require("java.util.HashMap")
local BasicArrayList = require("org.allbinary.util.BasicArrayList")
local BasicArrayListD = require("org.allbinary.util.BasicArrayListD")
local EntryData = require("org.allbinary.business.entry.EntryData")
local InventoryDbInitInfo = require("org.allbinary.business.init.db.InventoryDbInitInfo")
local BasicItemData = require("org.allbinary.business.user.commerce.inventory.item.BasicItemData")
local BasicGroupItemData = require("org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData")
local LogUtil = require("org.allbinary.logic.communication.log.LogUtil")
local AbSqlBean = require("org.allbinary.logic.communication.sql.AbSqlBean")
local StringMaker = require("org.allbinary.logic.string.StringMaker")
local BasicGroupItemsEntityInterface = require("org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntityInterface")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local BasicGroupItemsEntity = {}
BasicGroupItemsEntity.__index = BasicGroupItemsEntity
BasicGroupItemsEntity.className = "BasicGroupItemsEntity"
setmetatable(BasicGroupItemsEntity, {__index = AbSqlBean})

function BasicGroupItemsEntity:_init_fields()
    self.logUtil = LogUtil.getInstance()
    self.basicItemData = BasicItemData.getInstance()
    self.tableName = "basicgroupeditems"
end


function BasicGroupItemsEntity.new()
    local self = setmetatable(AbSqlBean.new(InventoryDbInitInfo.new()), BasicGroupItemsEntity)
    self:_init_fields()
        -- super(...) made self above
        self:setTableName(self.tableName)
    return self
end


function BasicGroupItemsEntity:insert(values)
        local try_ok, try_error = pcall(function()
            AbSqlBean.insert(self, values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING:contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory:getInstance().SQLLOGGING) then
                self.logUtil:putF(self.commonStrings.SUCCESS, self, self.INSERT)
            end
        end)
        if not try_ok then
            local e = try_error
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING:contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory:getInstance().SQLLOGGING) then
                self.logUtil:put(self.commonStrings.FAILURE, self, self.INSERT, e)
            end
        end
end


function BasicGroupItemsEntity:delete(value)
        local try_ok, try_error = pcall(function()
            AbSqlBean.deleteWhere(self, self.basicItemData.ID, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING:contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory:getInstance().SQLLOGGING) then
                self.logUtil:putF(self.commonStrings.SUCCESS, self, self.commonStrings.delete)
            end
        end)
        if not try_ok then
            local e = try_error
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING:contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory:getInstance().SQLLOGGING) then
                self.logUtil:put(self.commonStrings.FAILURE, self, self.commonStrings.delete, e)
            end
        end
end


function BasicGroupItemsEntity:createTableStatement()
        local stringBuffer = StringMaker.new()
        stringBuffer:append(self.sqlStrings.CREATE_TABLE):append(self.tableName):append(self.sqlStrings.START):append(self.basicItemData.ID):append(self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL):append(BasicGroupItemData.ITEM_ONE):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_TWO):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_THREE):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_FOUR):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_FIVE):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_SIX):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_SEVEN):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_EIGHT):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_NINE):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(BasicGroupItemData.ITEM_TEN):append(self.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL):append(EntryData.getInstance().TIMECREATED):append(self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL):append(EntryData.getInstance().LASTMODIFIED):append(self.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL):append(self.sqlStrings.PRIMARY_KEY):append(self.basicItemData.ID):append(self.sqlStrings.END)
        return tostring(stringBuffer)
end


function BasicGroupItemsEntity:createTable()
        return AbSqlBean.createTable(self, self:createTableStatement())
end


function BasicGroupItemsEntity:update(updatedValues)
        AbSqlBean.updateWhere(self, self.basicItemData.ID, updatedValues:get(self.basicItemData.ID), updatedValues)
end


function BasicGroupItemsEntity:dropTable()
        return AbSqlBean.dropTable(self)
end

return BasicGroupItemsEntity

