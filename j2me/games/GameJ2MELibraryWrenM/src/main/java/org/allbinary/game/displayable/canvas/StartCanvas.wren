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
// package org.allbinary.game.displayable.canvas

import "../../../../../allbinary_java" for JObject, JException, JR
import "../../../../../org/allbinary/canvas/RunnableCanvas" for RunnableCanvas

class StartCanvas is RunnableCanvas {
    static id { 0 }
    static BOT_GAME_STATS { "Bot Game Statistics: " }
  basicColorFactory { _basicColorFactory }
  basicColorFactory=(value) { _basicColorFactory = value }
  features { _features }
  features=(value) { _features = value }
  openGLFeatureFactory { _openGLFeatureFactory }
  openGLFeatureFactory=(value) { _openGLFeatureFactory = value }
  myCommandsFactory { _myCommandsFactory }
  myCommandsFactory=(value) { _myCommandsFactory = value }
  gameAdStateFactory { _gameAdStateFactory }
  gameAdStateFactory=(value) { _gameAdStateFactory = value }
  gameStateFactory { _gameStateFactory }
  gameStateFactory=(value) { _gameStateFactory = value }
  gameInputStrings { _gameInputStrings }
  gameInputStrings=(value) { _gameInputStrings = value }
  formUtil { _formUtil }
  formUtil=(value) { _formUtil = value }
  basicGameDemoPaintable { _basicGameDemoPaintable }
  basicGameDemoPaintable=(value) { _basicGameDemoPaintable = value }
  specialAnimationInterface { _specialAnimationInterface }
  specialAnimationInterface=(value) { _specialAnimationInterface = value }
  paintedSpecialAnimationInterface { _paintedSpecialAnimationInterface }
  paintedSpecialAnimationInterface=(value) { _paintedSpecialAnimationInterface = value }
  fullScreenUtil { _fullScreenUtil }
  fullScreenUtil=(value) { _fullScreenUtil = value }
  highScoresHelper { _highScoresHelper }
  highScoresHelper=(value) { _highScoresHelper = value }
  realHighScoresPaintable { _realHighScoresPaintable }
  realHighScoresPaintable=(value) { _realHighScoresPaintable = value }
  highScoresPaintable { _highScoresPaintable }
  highScoresPaintable=(value) { _highScoresPaintable = value }
  state { _state }
  state=(value) { _state = value }
  timeDelayHelper { _timeDelayHelper }
  timeDelayHelper=(value) { _timeDelayHelper = value }
  highScoresFactoryInterface { _highScoresFactoryInterface }
  highScoresFactoryInterface=(value) { _highScoresFactoryInterface = value }
  menuInputProcessor { _menuInputProcessor }
  menuInputProcessor=(value) { _menuInputProcessor = value }
  menuForm { _menuForm }
  menuForm=(value) { _menuForm = value }
  gameInitializationInterfaceFactoryInterface { _gameInitializationInterfaceFactoryInterface }
  gameInitializationInterfaceFactoryInterface=(value) { _gameInitializationInterfaceFactoryInterface = value }
  initialized { _initialized }
  initialized=(value) { _initialized = value }
  defaultPaintableInterface { _defaultPaintableInterface }
  defaultPaintableInterface=(value) { _defaultPaintableInterface = value }
  paintableInterface { _paintableInterface }
  paintableInterface=(value) { _paintableInterface = value }
  overlayPaintable { _overlayPaintable }
  overlayPaintable=(value) { _overlayPaintable = value }
  tempWait { _tempWait }
  tempWait=(value) { _tempWait = value }
  inputToGameKeyMapping { _inputToGameKeyMapping }
  inputToGameKeyMapping=(value) { _inputToGameKeyMapping = value }
  gameRunnable { _gameRunnable }
  gameRunnable=(value) { _gameRunnable = value }
  progressPaintable { _progressPaintable }
  progressPaintable=(value) { _progressPaintable = value }
  isSingleKeyRepeatableProcessing { _isSingleKeyRepeatableProcessing }
  isSingleKeyRepeatableProcessing=(value) { _isSingleKeyRepeatableProcessing = value }
  NONE { _NONE }
  NONE=(value) { _NONE = value }
  gameKeyEventFactory { _gameKeyEventFactory }
  gameKeyEventFactory=(value) { _gameKeyEventFactory = value }
  SET_STATE { _SET_STATE }
  SET_STATE=(value) { _SET_STATE = value }
  baseGameStatistics { _baseGameStatistics }
  baseGameStatistics=(value) { _baseGameStatistics = value }

  initFields_StartCanvas() {
    _basicColorFactory = null
    _features = null
    _openGLFeatureFactory = null
    _myCommandsFactory = null
    _gameAdStateFactory = null
    _gameStateFactory = null
    _gameInputStrings = null
    _formUtil = null
    _basicGameDemoPaintable = null
    _specialAnimationInterface = null
    _paintedSpecialAnimationInterface = null
    _fullScreenUtil = null
    _highScoresHelper = null
    _realHighScoresPaintable = null
    _highScoresPaintable = null
    _state = 0
    _timeDelayHelper = null
    _highScoresFactoryInterface = null
    _menuInputProcessor = null
    _menuForm = null
    _gameInitializationInterfaceFactoryInterface = null
    _initialized = false
    _defaultPaintableInterface = null
    _paintableInterface = null
    _overlayPaintable = null
    _tempWait = 0
    _inputToGameKeyMapping = null
    _gameRunnable = null
    _progressPaintable = null
    _isSingleKeyRepeatableProcessing = false
    _NONE = null
    _gameKeyEventFactory = null
    _SET_STATE = null
    _baseGameStatistics = null
        _basicColorFactory = BasicColorFactory.getInstance()
        _features = Features.getInstance()
        _openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        _myCommandsFactory = MyCommandsFactory.getInstance()
        _gameAdStateFactory = GameAdStateFactory.getInstance()
        _gameStateFactory = GameStateFactory.getInstance()
        _gameInputStrings = GameInputStrings.getInstance()
        _formUtil = FormUtil.getInstance()
        _basicGameDemoPaintable = StatePaintableFactory.getInstance()
        _specialAnimationInterface = SpecialAnimation.getInstance()
        _paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        _fullScreenUtil = FullScreenUtil.getInstance()
        _highScoresHelper = HighScoresHelper.new()
        _realHighScoresPaintable = HighScoresPaintable.new()
        _highScoresPaintable = NullPaintable.getInstance()
        _state = 0
        _timeDelayHelper = TimeDelayHelper.new(6000)
        
        _menuInputProcessor = NoMenuInputProcessor.getInstance()
        _menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
        
        _initialized = false
        _defaultPaintableInterface = NullPaintable.getInstance()
        _paintableInterface = NullPaintable.getInstance()
        
        _tempWait = NullWaitGameRunnable.getInstance().WAIT
        _inputToGameKeyMapping = PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping()
        _gameRunnable = NullWaitGameRunnable.getInstance()
        _progressPaintable = ProgressCanvasFactory.getLazyInstance()
        _isSingleKeyRepeatableProcessing = _features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        _NONE = GameKeyFactory.getInstance().NONE
        _gameKeyEventFactory = GameKeyEventFactory.getInstance()
        _SET_STATE = "setState"
        _baseGameStatistics = GameStatisticsFactory.getInstance()
  }
    

    construct new(abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue) {
        super(commandListener, CurrentDisplayableFactory.getInstance().DEFAULT_CHILD_NAME_LIST, true)
        initFields_StartCanvas()
        this.setWait(NullWaitGameRunnable.getInstance().WAIT)
        _gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        GameInitializationUtil.getInstance().initDemo(abeClientInformation, this, gameInitializationInterfaceFactoryInterface)
        ResizableListenerHandler.getInstance().fireEvent(false)
        _overlayPaintable = overlayPaintable
        _highScoresFactoryInterface = highScoresFactoryInterface
        this.setDefaultPaintableInterface(paintable)
        this.setPaintableInterface(this.getDefaultPaintableInterface())
        if (isContinue) {
            this.addCommand(GameCommandsFactory.getInstance().CONTINUE_COMMAND)
        }
        if (ChangedGameFeatureListener.getInstance().isChangedFeature(GameFeatureFactory.getInstance().SOUND)) {
            this.mediaInit()
        }
        DisplayChangeEventHandler.getInstance().addListenerInterface(this)
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onDisplayChangeEvent(displayChangeEvent) {
        var jerror0 = Fiber.new {
            var scrollSelectionForm = this.getMenuForm()
            if ((scrollSelectionForm != null)) {
                var formType = FormTypeFactory.getInstance().getFormType()
                var rectangle = _formUtil.createFormRectangle()
                scrollSelectionForm.init(rectangle, formType)
            }
            _overlayPaintable.init()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        }
    }
    

    getCustomCommands() {
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        if (J2MEUtil.isHTML()) {
            var commandArray = [gameCommandsFactory.START_COMMAND, HighScoreCommands.getInstance().DISPLAY, GameInputMappingCanvas.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT]
            return commandArray
        } else {
            var commandList = BasicArrayListD.new()
            commandList.add(gameCommandsFactory.START_COMMAND)
            var inApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance()
            if (inApplicationPurchaseFactory.isEnabled()) {
                var list = LockableFeatureFactory.getInstance().getList()
                if (((list.size() > 0) && !inApplicationPurchaseFactory.isPurchased(list.get(0)))) {
                    commandList.add(gameCommandsFactory.BUY_COMMAND)
                }
            }
            commandList.add(HighScoreCommands.getInstance().DISPLAY)
            var jerror1 = Fiber.new {
                var isOverScan = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
                if (SWTUtil.isSWT) {
                    commandList.add(GameInputMappingCanvas.DISPLAY)
                } else if (!isOverScan) {
                    commandList.add(gameCommandsFactory.DISPLAY_OPTIONS)
                    commandList.add(gameCommandsFactory.DISPLAY_LOAD_FORM)
                    commandList.add(GameInputMappingCanvas.DISPLAY)
                }
            }.try()
            if (jerror1 != null) {
                var e = jerror1
            }
            commandList.add(gameCommandsFactory.DISPLAY_ABOUT)
            var commandArray = commandList.toArray()
            return commandArray
        }
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        var commandArray = this.getCustomCommands()
        var size = commandArray.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            this.addCommand(commandArray[index])
            }
        }
        CustomGameMenuUtil.add(this)
        this.setCommandListener(cmdListener)
    }
    

    initPostPaint() {
    }
    

    mediaInit() {
        AllBinaryMediaManager.init(EarlySoundsFactory.getInstance())
    }
    

    itemStateChanged(item) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)
    }
    

    initMenu() {
        this.close()
        this.open()
    }
    

    open() {
        BasicMotionGesturesHandler.getInstance().addListenerInterface(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().addListener(this.getMenuInputProcessor())
    }
    

    close() {
        BasicMotionGesturesHandler.getInstance().removeListener(this.getMenuInputProcessor())
        GameKeyEventHandler.getInstance().removeListener(this.getMenuInputProcessor())
    }
    

    getSourceId() {
        return StartCanvas.id
    }
    

    keyPressed(keyCode) {
        this.keyPressedByDevice(keyCode, 0)
    }
    

    keyReleased(keyCode) {
        this.keyReleasedByDevice(keyCode, 0)
    }
    

    keyRepeated(keyCode) {
        this.keyRepeatedByDevice(keyCode, 0)
    }
    

    keyPressedByDevice(keyCode, deviceId) {
        this.addGameKeyEvent(keyCode, false)
    }
    

    keyReleasedByDevice(keyCode, deviceId) {
        this.removeGameKeyEvent(keyCode, false)
    }
    

    keyRepeatedByDevice(keyCode, deviceId) {
        if (_isSingleKeyRepeatableProcessing) {
            this.addGameKeyEvent(keyCode, true)
        }
    }
    

    addGameKeyEvent(keyCode, repeated) {
        var jerror2 = Fiber.new {
            var gameKey = _inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if ((gameKey != _NONE)) {
                var gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(this, gameKey)
                DownGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            } else {
                this.logUtil.putF(StringMaker.new().append(_gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, _gameInputStrings.ADD_KEY_EVENT)
            }
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            this.logUtil.put("Key Event Error", this, _gameInputStrings.ADD_KEY_EVENT, e)
        }
    }
    

    removeGameKeyEvent(keyCode, repeated) {
        var jerror3 = Fiber.new {
            var gameKey = _inputToGameKeyMapping.getInstanceForCanvas(this, keyCode)
            if ((gameKey != _NONE)) {
                var gameKeyEvent = _gameKeyEventFactory.getInstanceForInput(this, gameKey)
                UpGameKeyEventHandler.getInstance().fireEvent(gameKeyEvent)
            } else {
                this.logUtil.putF(StringMaker.new().append(_gameInputStrings.NO_KEY).appendint(keyCode).toString(), this, _gameInputStrings.REMOVE_KEY_EVENT)
            }
        }.try()
        if (jerror3 != null) {
            var e = jerror3
            this.logUtil.put("Key Event Error", this, _gameInputStrings.REMOVE_KEY_EVENT, e)
        }
    }
    

    pause() {
        this.close()
        this.setPaused(true)
    }
    

    unPause() {
        this.open()
        this.setPaused(false)
    }
    

    isPausable() {
        if ((CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance())) {
            return true
        } else {
            return false
        }
    }
    

    isGameOver() {
        this.logUtil.putF(StringMaker.new().append(this.commonStrings.NOT_IMPLEMENTED).append(" since not a game").toString(), this, "isGameOver")
        return false
    }
    

    setLoadStateHashtable(hashtable) {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "setLoadStateHashtable")
    }
    

    getLoadStateHashtable() {
        this.logUtil.putF("Trying to continue a demo lol - only continue a game canvas not the demo", this, "getLoadStateHashtable")
        return this.stdUtil.NULL_TABLE
    }
    

    getCurrentStateHashtable() {
        this.logUtil.putF("Trying to save the AI lol", this, "getCurrentStateHashtable")
        return this.stdUtil.NULL_TABLE
    }
    

    setHighScoreSubmitted(isNotUsed) {
    }
    

    paint(graphics) {
        _paintableInterface.paint(graphics)
        _paintedSpecialAnimationInterface.paintXY(graphics, 0, 0)
        _highScoresPaintable.paint(graphics)
        this.getBasicGameDemoPaintable().paint(graphics)
        _overlayPaintable.paint(graphics)
        _progressPaintable.paint(graphics)
    }
    

    paintThreed(graphics) {
        _paintableInterface.paintThreed(graphics)
        _paintedSpecialAnimationInterface.paintThreedXYZ(graphics, 0, 0, 0)
    }
    

    processGameOver() {
        this.logUtil.putF("Not Implemented since not a game", this, "setGameOver")
    }
    

    demoStateChange() {
        var newState = JR.i32(_state + 1)
        if ((newState > 2)) {
            newState = 0
        } else if ((newState == 2)) {
            if (!_highScoresHelper.isAnyHighScores()) {
                newState = 0
            } else {
                var highScores = _highScoresHelper.getNextHighScores()
                if ((highScores == NullHighScoresSingletonFactory.getInstance())) {
                    newState = 0
                } else {
                    this.getRealHighScoresPaintable().setHighScores(highScores)
                }
            }
        }
        this.setState(newState)
        this.updateDemoState()
    }
    

    updateDemoState() {
        PreLogUtil.put(SmallIntegerSingletonFactory.getInstance().createInstance(_state).toString(), this, _SET_STATE)
        this.getBasicGameDemoPaintable().setState(_state)
        if ((_state == 0)) {
            _highScoresPaintable = NullPaintable.getInstance()
            _paintedSpecialAnimationInterface = this.getSpecialAnimationInterface()
            this.getSpecialAnimationInterface().reset()
        } else if ((_state == 1)) {
            _paintedSpecialAnimationInterface = SpecialAnimation.getInstance()
        } else if ((_state == 2)) {
            _highScoresPaintable = this.getRealHighScoresPaintable()
        }
        var gameAdState = _gameAdStateFactory.getCurrentInstance()
        gameAdState.processPageAdState()
    }
    

    getNextRandom() {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    createGameLayerManager(randomValue) {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    createRunnable(randomLevel) {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    createCanvas() {
        _highScoresPaintable = NullPaintable.getInstance()
        var randomLevel = this.getNextRandom()
    }
    

    start() {
    }
    

    preDemoProcess() {
        _overlayPaintable.update()
    }
    

    process() {
        this.getMenuInputProcessor().processInputList()
        this.preDemoProcess()
        if ((_state == 0)) {
            var indexedAnimationBehavior = this.getSpecialAnimationInterface().getAnimationBehavior()
            if ((indexedAnimationBehavior.loopIndex < 1)) {
                _timeDelayHelper.setStartTimeTNT()
            }
            var demoGameMidlet = this.getCustomCommandListener()
        }
    }
    

    startDemoGame() {
    }
    

    processGame() {
        _gameRunnable.run()
        _specialAnimationInterface.nextFrame()
        this.process()
    }
    

    run() {
        this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
        var jerror4 = Fiber.new {
            var progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Demo Thread")
            this.setCurrentThread()
            this.setRunning(true)
            if (_features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                progressCanvas.end()
            } else {
                progressCanvas.addNormalPortion(50, "Demo Thread Running")
            }
            _fullScreenUtil.initOnRun(this, this.getCustomCommandListener())
            this.initMenu()
            this.initPostPaint()
            this.updateDemoState()
            if (_features.isDefault(_openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                OpenGLThreadUtil.getInstance().onResume()
            }
            if ((_features.isDefault(_openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML())) {
            } else {
                while (this.isRunning()) {
                    this.loopTimeHelper.setStartTimeTNT()
                    this.processGame()
                    this.processLoopSleep()
                }
                this.end()
            }
        }.try()
        if (jerror4 != null) {
            var e = jerror4
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        }
        this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
    }
    

    setRunning(running) {
        super.setRunning(running)
        var jerror5 = Fiber.new {
            if ((((_features.isDefault(_openGLFeatureFactory.OPENGL) || J2MEUtil.isHTML())) && !running)) {
                var currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                currentDisplayableFactory.clearRunnable()
                this.end()
            }
        }.try()
        if (jerror5 != null) {
            var e = jerror5
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e)
        }
    }
    

    end() {
        var progressCanvas = ProgressCanvasFactory.getInstance()
        _baseGameStatistics.add(StringMaker.new().append(StartCanvas.BOT_GAME_STATS).append(_baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString())
        _baseGameStatistics.init()
        if (_features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
            progressCanvas.start()
        }
        this.logUtil.putF("Demo End", this, this.commonStrings.RUN)
        this.close()
        DisplayChangeEventHandler.getInstance().removeListener(this)
    }
    

    setGameState(gameState) {
    }
    

    getGameState() {
        return _gameStateFactory.PLAYING_GAME_STATE
    }
    

    getState() {
        return _state
    }
    

    setState(state) {
        _state = state
    }
    

    isHighScoreSubmitted() {
        this.logUtil.putF("Wow the AI got a high score!", this, "isHighScoreSubmitted")
        return false
    }
    

    getRealHighScoresPaintable() {
        return _realHighScoresPaintable
    }
    

    setSpecialAnimationInterface(specialAnimationInterface) {
        specialAnimationInterface.setFrame(0)
        _specialAnimationInterface = specialAnimationInterface
    }
    

    getSpecialAnimationInterface() {
        return _specialAnimationInterface
    }
    

    setPaintableInterface(paintableInterface) {
        _paintableInterface = paintableInterface
    }
    

    getPaintableInterface() {
        return _paintableInterface
    }
    

    setDefaultPaintableInterface(defaultPaintableInterface) {
        _defaultPaintableInterface = defaultPaintableInterface
    }
    

    getDefaultPaintableInterface() {
        return _defaultPaintableInterface
    }
    

    getHighScoresFactoryInterface() {
        return _highScoresFactoryInterface
    }
    

    setMenuInputProcessor(menuInputProcessor) {
        _menuInputProcessor = menuInputProcessor
    }
    

    getMenuInputProcessor() {
        return _menuInputProcessor
    }
    

    getMenuForm() {
        return _menuForm
    }
    

    setMenuForm(menuForm) {
        _menuForm = menuForm
    }
    

    isInitialized() {
        return _initialized
    }
    

    getOverlayPaintable() {
        return _overlayPaintable
    }
    

    setBasicGameDemoPaintable(basicGameDemoPaintable) {
        _basicGameDemoPaintable = basicGameDemoPaintable
    }
    

    getBasicGameDemoPaintable() {
        return _basicGameDemoPaintable
    }
    

    setTempWait(tempWait) {
        _tempWait = tempWait
    }
    

    getTempWait() {
        return _tempWait
    }
    

    isSingleThread() {
        return (OpenGLFeatureUtil.getInstance().isAnyThreed() || SWTUtil.isSWT)
    }
    

    isRunningInAnotherThread() {
        var features = Features.getInstance()
        var openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        if (features.isDefault(openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
            return true
        } else {
            return this.isRunning()
        }
    }
    

    getGameInitializationInterfaceFactoryInterface() {
        return _gameInitializationInterfaceFactoryInterface
    }
    

    getTitle() {
        return super.getTitle()
    }
    

    isPaused() {
        return super.isPaused()
    }
    

    getType() {
        return super.getType()
    }
}

import "../../../../../javax/microedition/lcdui/Command" for Command
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Item" for Item
import "../../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../../org/allbinary/animation/Animation" for Animation
import "../../../../../org/allbinary/animation/IndexedAnimationBehavior" for IndexedAnimationBehavior
import "../../../../../org/allbinary/animation/special/SpecialAnimation" for SpecialAnimation
import "../../../../../org/allbinary/business/advertisement/GameAdStateFactory" for GameAdStateFactory
import "../../../../../org/allbinary/canvas/BaseGameStatistics" for BaseGameStatistics
import "../../../../../org/allbinary/canvas/CustomGameMenuUtil" for CustomGameMenuUtil
import "../../../../../org/allbinary/canvas/FullScreenUtil" for FullScreenUtil
import "../../../../../org/allbinary/canvas/GameStatisticsFactory" for GameStatisticsFactory
import "../../../../../org/allbinary/game/GameAdState" for GameAdState
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" for ChangedGameFeatureListener
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" for GameFeatureFactory
import "../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" for InputFeatureFactory
import "../../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory
import "../../../../../org/allbinary/game/init/BasicBuildGameInitializerFactory" for BasicBuildGameInitializerFactory
import "../../../../../org/allbinary/game/init/GameInitializationUtil" for GameInitializationUtil
import "../../../../../org/allbinary/game/input/GameInputStrings" for GameInputStrings
import "../../../../../org/allbinary/game/input/GameKey" for GameKey
import "../../../../../org/allbinary/game/input/GameKeyFactory" for GameKeyFactory
import "../../../../../org/allbinary/game/input/PlatformInputMappingFactory" for PlatformInputMappingFactory
import "../../../../../org/allbinary/game/input/event/DownGameKeyEventHandler" for DownGameKeyEventHandler
import "../../../../../org/allbinary/game/input/event/GameKeyEvent" for GameKeyEvent
import "../../../../../org/allbinary/game/input/event/GameKeyEventFactory" for GameKeyEventFactory
import "../../../../../org/allbinary/game/input/event/GameKeyEventHandler" for GameKeyEventHandler
import "../../../../../org/allbinary/game/input/event/UpGameKeyEventHandler" for UpGameKeyEventHandler
import "../../../../../org/allbinary/game/input/mapping/InputToGameKeyMapping" for InputToGameKeyMapping
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/layer/SWTUtil" for SWTUtil
import "../../../../../org/allbinary/game/midlet/DemoGameMidlet" for DemoGameMidlet
import "../../../../../org/allbinary/game/score/HighScoreCommands" for HighScoreCommands
import "../../../../../org/allbinary/game/score/HighScores" for HighScores
import "../../../../../org/allbinary/game/score/HighScoresFactoryInterface" for HighScoresFactoryInterface
import "../../../../../org/allbinary/game/score/HighScoresHelper" for HighScoresHelper
import "../../../../../org/allbinary/game/score/HighScoresPaintable" for HighScoresPaintable
import "../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory" for NullHighScoresSingletonFactory
import "../../../../../org/allbinary/game/state/GameState" for GameState
import "../../../../../org/allbinary/game/state/GameStateFactory" for GameStateFactory
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/ResizableListenerHandler" for ResizableListenerHandler
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" for MyCommandsFactory
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" for DisplayChangeEvent
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" for DisplayChangeEventHandler
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventListener" for DisplayChangeEventListener
import "../../../../../org/allbinary/graphics/form/FormType" for FormType
import "../../../../../org/allbinary/graphics/form/FormTypeFactory" for FormTypeFactory
import "../../../../../org/allbinary/graphics/form/ScrollSelectionForm" for ScrollSelectionForm
import "../../../../../org/allbinary/graphics/opengles/CurrentDisplayableFactory" for CurrentDisplayableFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" for OpenGLFeatureUtil
import "../../../../../org/allbinary/graphics/opengles/OpenGLThreadUtil" for OpenGLThreadUtil
import "../../../../../org/allbinary/graphics/paint/InitUpdatePaintable" for InitUpdatePaintable
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../../org/allbinary/graphics/paint/StatePaintable" for StatePaintable
import "../../../../../org/allbinary/graphics/paint/StatePaintableFactory" for StatePaintableFactory
import "../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" for BasicMotionGesturesHandler
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" for OperatingSystemFactory
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory" for InApplicationPurchaseFactory
import "../../../../../org/allbinary/logic/system/security/licensing/LockableFeature" for LockableFeature
import "../../../../../org/allbinary/logic/system/security/licensing/LockableFeatureFactory" for LockableFeatureFactory
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/media/audio/AllBinaryMediaManager" for AllBinaryMediaManager
import "../../../../../org/allbinary/media/audio/EarlySoundsFactory" for EarlySoundsFactory
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "./GameCanvasRunnableInterface" for GameCanvasRunnableInterface
import "./MenuListener" for MenuListener
import "./FormUtil" for FormUtil
import "./NoMenuInputProcessor" for NoMenuInputProcessor
import "./BasicMenuInputProcessor" for BasicMenuInputProcessor
import "./NullWaitGameRunnable" for NullWaitGameRunnable
import "./GameRunnable" for GameRunnable
import "./GameInputMappingCanvas" for GameInputMappingCanvas

