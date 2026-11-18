/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.paint

import "../../../../allbinary_java" for JObject, JException, JR
import "./BasicGameDemoPaintable" for BasicGameDemoPaintable

class GameScrollMenuPaintable is BasicGameDemoPaintable {

  initFields_GameScrollMenuPaintable() {
  }
    

    construct new(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface, basicColor) {
        super(mainDemoStatePaintable, ownershipPaintable, helpPaintableInterface)
        this.setColor(basicColor)
        ColorChangeEventHandler.getInstance().addListenerInterface(this)
    }
    

    setState(state) {
        this.setCurrentStatePaintable(this.getMainDemoStatePaintable())
    }
    

    onEvent(eventObject) {
    }
    

    setColor(basicColor) {
        var mainGameDemoStatePaintable = this.getMainDemoStatePaintable()
        var formPaintable = mainGameDemoStatePaintable.getMenuPaintableInterface()
        var scrollSelectionForm = formPaintable.getForm()
        mainGameDemoStatePaintable.getOwnershipPaintableInterface().setBasicColorP(basicColor)
        scrollSelectionForm.setButtonBasicColor(basicColor)
        var item = null
        var stringComponent = null
        if (true) {
            var index = JR.i32(scrollSelectionForm.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            item = scrollSelectionForm.get(index)
            stringComponent = item.getLabelStringComponent()
            if ((stringComponent != null)) {
                stringComponent.setForegroundBasicColor(basicColor)
            }
            }
        }
    }
}

import "../../../../org/allbinary/graphics/color/BasicColor" for BasicColor
import "../../../../org/allbinary/graphics/color/ColorChangeEventHandler" for ColorChangeEventHandler
import "../../../../org/allbinary/graphics/color/ColorChangeListener" for ColorChangeListener
import "../../../../org/allbinary/graphics/form/FormPaintable" for FormPaintable
import "../../../../org/allbinary/graphics/form/ScrollSelectionForm" for ScrollSelectionForm
import "../../../../org/allbinary/graphics/form/item/ABStringComponent" for ABStringComponent
import "../../../../org/allbinary/graphics/form/item/ABTextItem" for ABTextItem
import "../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "./MainGameDemoStatePaintable" for MainGameDemoStatePaintable

