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
-- package views.generic.address.shipping

local BasicArrayList = require("org.allbinary.util.BasicArrayList")
local BasicArrayListD = require("org.allbinary.util.BasicArrayListD")
local StoreFrontFactory = require("org.allbinary.business.context.modules.storefront.StoreFrontFactory")
local StoreFrontInterface = require("org.allbinary.business.context.modules.storefront.StoreFrontInterface")
local ShippingAddressData = require("org.allbinary.business.user.address.ShippingAddressData")
local StreetAddress = require("org.allbinary.business.user.address.StreetAddress")
local TaxFactory = require("org.allbinary.business.user.commerce.money.tax.TaxFactory")
local TaxModuleInterface = require("org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface")
local ShippingAddressesEntity = require("org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity")
local LogUtil = require("org.allbinary.logic.communication.log.LogUtil")
local ValidationComponentInterface = require("org.allbinary.logic.control.validate.ValidationComponentInterface")
local StringMaker = require("org.allbinary.logic.string.StringMaker")
local TransformInfoInterface = require("org.allbinary.logic.visual.transform.info.TransformInfoInterface")
local Document = require("org.w3c.dom.Document")
local Node = require("org.w3c.dom.Node")
local ShippingAddressView = require("views.generic.address.shipping.ShippingAddressView")

local function java_idiv(a, b)
    local q = a / b
    if q < 0 then return math.ceil(q) end
    return math.floor(q)
end

local function java_int(value)
    if value < 0 then return math.tointeger(math.ceil(value)) end
    return math.tointeger(math.floor(value))
end

local AddTaxValidationView = {}
AddTaxValidationView.__index = AddTaxValidationView
AddTaxValidationView.className = "AddTaxValidationView"
setmetatable(AddTaxValidationView, {__index = ShippingAddressView})

function AddTaxValidationView:_init_fields()
    self.logUtil = LogUtil.getInstance()
end


function AddTaxValidationView.new(transformInfoInterface)
    local self = setmetatable(ShippingAddressView.new(transformInfoInterface), AddTaxValidationView)
    self:_init_fields()
        -- super(...) made self above
    return self
end


-- throws Exception
function AddTaxValidationView:isValid()
        local try_ok, try_error = pcall(function()
            self.streetAddress = StreetAddress.new(self:getRequest())
            local storeFrontInterface = StoreFrontFactory.getInstance(self:getTransformInfoInterface():getStoreName())
            local taxInterface = TaxFactory.getInstance():getInstance(self.abeClientInformation, storeFrontInterface)
            if taxInterface == nil then
                return false
            end
            if taxInterface:isValid(self.streetAddress, storeFrontInterface) == false then
                return false
            end
            local billingAddressesEntity = ShippingAddressesEntity.new(self:getWeblisketSession():getUserName())
            local streetAddressList = billingAddressesEntity:get()
            if streetAddressList == nil then
                return false
            end
            local size = streetAddressList:size()
            for index = 0, size - 1 do
                local aStreetAddress = streetAddressList:get(index)
                if aStreetAddress:getName():compareTo(ShippingAddressData.TAX) == 0 then
                    return false
                end
            end
            return true
        end)
        if not try_ok then
            local e = try_error
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING:contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory:getInstance().VIEWERROR) then
                self.logUtil:put("Failed to validate", self, self.commonStrings.IS_VALID, e)
            end
            return false
        end
end


-- throws Exception
function AddTaxValidationView:validationInfo()
        local try_ok, try_error = pcall(function()
            local stringBuffer = StringMaker.new()
            local storeFrontInterface = StoreFrontFactory.getInstance(self:getTransformInfoInterface():getStoreName())
            local taxInterface = TaxFactory.getInstance():getInstance(self.abeClientInformation, storeFrontInterface)
            if taxInterface == nil then
                stringBuffer:append("Unable to Load Tax Component<br/>")
            else
                if taxInterface:isValid(self.streetAddress, storeFrontInterface) == false then
                    stringBuffer:append("Unable to validate address with Tax Component<br/>")
                end
            end
            local billingAddressesEntity = ShippingAddressesEntity.new(self:getWeblisketSession():getUserName())
            local streetAddressList = billingAddressesEntity:get()
            local size = streetAddressList:size()
            for index = 0, size - 1 do
                local aStreetAddress = streetAddressList:get(index)
                if aStreetAddress:getName():compareTo(ShippingAddressData.TAX) == 0 then
                    stringBuffer:append("Not a valid tax location<br/>")
                end
            end
            return tostring(stringBuffer)
        end)
        if not try_ok then
            local e = try_error
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING:contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory:getInstance().VIEWERROR) then
                self.logUtil:put("Failed to create validateInfo", self, "validationInfo()", e)
            end
            return "Error Creating ValidationInfo"
        end
end


function AddTaxValidationView:toValidationInfoDoc()
        return nil
end


function AddTaxValidationView:toValidationInfoNode(document)
        return nil
end


-- throws Exception
function AddTaxValidationView:getTransformInfoInterface()
        return ShippingAddressView.getTransformInfoInterface(self)
end

return AddTaxValidationView

