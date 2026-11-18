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
// package org.allbinary.game.score.displayable

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/game/displayable/canvas/GameCommandCanvas" for GameCommandCanvas

class HighScoresCanvas is GameCommandCanvas {
    static NAME { "HighScoresCanvas" }
  paintable { _paintable }
  paintable=(value) { _paintable = value }
  highScoreCommandsFactory { _highScoreCommandsFactory }
  highScoreCommandsFactory=(value) { _highScoreCommandsFactory = value }
  waitPaintable { _waitPaintable }
  waitPaintable=(value) { _waitPaintable = value }
  highScoresPaintable { _highScoresPaintable }
  highScoresPaintable=(value) { _highScoresPaintable = value }
  highScoresFactoryInterface { _highScoresFactoryInterface }
  highScoresFactoryInterface=(value) { _highScoresFactoryInterface = value }
  colorFillPaintable { _colorFillPaintable }
  colorFillPaintable=(value) { _colorFillPaintable = value }
  highScoresHelper { _highScoresHelper }
  highScoresHelper=(value) { _highScoresHelper = value }
  gameInfo { _gameInfo }
  gameInfo=(value) { _gameInfo = value }
  highScoresCanvasInputProcessor { _highScoresCanvasInputProcessor }
  highScoresCanvasInputProcessor=(value) { _highScoresCanvasInputProcessor = value }
  currentCommand { _currentCommand }
  currentCommand=(value) { _currentCommand = value }
  hasPainted { _hasPainted }
  hasPainted=(value) { _hasPainted = value }

  initFields_HighScoresCanvas() {
    _paintable = null
    _highScoreCommandsFactory = null
    _waitPaintable = null
    _highScoresPaintable = null
    _highScoresFactoryInterface = null
    _colorFillPaintable = null
    _highScoresHelper = null
    _gameInfo = null
    _highScoresCanvasInputProcessor = null
    _currentCommand = null
    _hasPainted = false
        _paintable = NullPaintable.getInstance()
        _highScoreCommandsFactory = HighScoreCommandsFactory.getInstance()
        _waitPaintable = SimpleTextPaintable.new(this.commonStrings.PLEASE_WAIT_FOR_SERVER, BasicColorFactory.getInstance().WHITE)
        
        
        
        _highScoresHelper = HighScoresHelperBase.new()
        
        
        _currentCommand = _highScoreCommandsFactory.HIGH_SCORE_COMMANDS[0]
        _hasPainted = false
  }
    

    construct new(commandListener, allBinaryGameLayerManager, gameInfo, paintable, highScoresFactoryInterface, highScoresCanvasInputProcessorFactoryInterface) {
        super(commandListener, HighScoresCanvas.NAME, allBinaryGameLayerManager.getBackgroundBasicColor(), allBinaryGameLayerManager.getForegroundBasicColor())
        initFields_HighScoresCanvas()
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CONSTRUCTOR)
        _highScoresPaintable = paintable
        _highScoresFactoryInterface = highScoresFactoryInterface
        _highScoresCanvasInputProcessor = highScoresCanvasInputProcessorFactoryInterface.getInstance(this)
        _gameInfo = gameInfo
        _waitPaintable.setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        this.getHighScoresPaintable().setBasicColorP(allBinaryGameLayerManager.getForegroundBasicColor())
        _colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(allBinaryGameLayerManager.getBackgroundBasicColor(), false)
        if ((_highScoresHelper.getHighScoresArray().count == NoHighScoresFactory.getInstance().NO_HIGH_SCORES.count)) {
            this.setPaintable(_waitPaintable)
        } else {
            this.logUtil.putF("Show HighScores that are already loaded", this, this.commonStrings.CONSTRUCTOR)
            this.updateCommand(_currentCommand)
            this.setPaintable(this.getHighScoresPaintable())
        }
        SecondaryThreadPool.getInstance().runTask(HighScoreRunnable.new(this))
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        this.addCommand(GameCommandsFactory.getInstance().CLOSE_AND_SHOW_GAME_CANVAS)
        this.setCommandListener(cmdListener)
    }
    

    open() {
        super.open()
        _highScoresCanvasInputProcessor.open()
    }
    

    close() {
        super.close()
        _highScoresCanvasInputProcessor.close()
    }
    

    paint(graphics) {
        _colorFillPaintable.paint(graphics)
        _paintable.paint(graphics)
        if ((_waitPaintable != _paintable)) {
            _highScoresCanvasInputProcessor.paint(graphics)
        }
        super.paint(graphics)
        _hasPainted = true
    }
    

    executeUpdate() {
        var jerror0 = Fiber.new {
            _highScoresFactoryInterface.fetchHighScores(this.getGameInfo(), this)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)
        }
    }
    

    getHighScoresPaintable() {
        return _highScoresPaintable
    }
    

    setHighScoresArray(highScoresArray) {
        var jerror1 = Fiber.new {
            if ((highScoresArray != null)) {
                this.logUtil.putF(StringMaker.new().append(this.commonStrings.START).appendint(highScoresArray.count).toString(), this, "setHighScoresArray")
            } else {
                this.logUtil.putF(this.commonStrings.START, this, "setHighScoresArray")
            }
            _highScoresHelper.setHighScoresArray(highScoresArray)
            this.updateCommand(_currentCommand)
            this.setPaintable(this.getHighScoresPaintable())
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.UPDATE, e)
        }
    }
    

    updateCommand(command) {
        this.logUtil.putF(StringMaker.new().append(this.commonStrings.START).append(this.stringUtil.toString(command)).toString(), this, this.commonStrings.UPDATE)
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        if (_highScoreCommandsFactory.isHighScoreCommand(command)) {
            var index = _highScoreCommandsFactory.getIndex(command)
            var nextIndex = JR.i32(index + 1)
            var highScoresArray = _highScoresHelper.getHighScoresArray()
            if ((nextIndex >= highScoresArray.count)) {
                nextIndex = 0
            }
            if ((highScoresArray.count > 0)) {
                this.getHighScoresPaintable().setHighScores(highScoresArray[index])
            } else {
                this.getHighScoresPaintable().setHighScores(NullHighScoresSingletonFactory.getInstance())
            }
            if ((index != nextIndex)) {
                this.removeAllCommands()
                this.addCommand(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)
                this.addCommand(_highScoreCommandsFactory.HIGH_SCORE_COMMANDS[nextIndex])
            }
        }
        _currentCommand = command
        this.close()
        super.initMenu()
        this.open()
        this.repaintBehavior.onChangeRepaint(this)
    }
    

    getGameInfo() {
        return _gameInfo
    }
    

    setPaintable(paintable) {
        _paintable = paintable
        this.repaintBehavior.onChangeRepaint(this)
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/paint/ColorFillBasePaintable" for ColorFillBasePaintable
import "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" for ColorFillPaintableFactory
import "../../../../../org/allbinary/game/score/HighScoreCommandsFactory" for HighScoreCommandsFactory
import "../../../../../org/allbinary/game/score/HighScores" for HighScores
import "../../../../../org/allbinary/game/score/HighScoresCanvasInputProcessor" for HighScoresCanvasInputProcessor
import "../../../../../org/allbinary/game/score/HighScoresCanvasInputProcessorFactoryInterface" for HighScoresCanvasInputProcessorFactoryInterface
import "../../../../../org/allbinary/game/score/HighScoresFactoryInterface" for HighScoresFactoryInterface
import "../../../../../org/allbinary/game/score/HighScoresHelperBase" for HighScoresHelperBase
import "../../../../../org/allbinary/game/score/HighScoresPaintable" for HighScoresPaintable
import "../../../../../org/allbinary/game/score/HighScoresResultsListener" for HighScoresResultsListener
import "../../../../../org/allbinary/game/score/NoHighScoresFactory" for NoHighScoresFactory
import "../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory" for NullHighScoresSingletonFactory
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../../org/allbinary/graphics/paint/SimpleTextPaintable" for SimpleTextPaintable
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/thread/SecondaryThreadPool" for SecondaryThreadPool
import "./HighScoreRunnable" for HighScoreRunnable

