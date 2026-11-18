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
// package org.allbinary.game.midlet

import "../../../../allbinary_java" for JObject, JException, JR
import "../../../../org/allbinary/midlet/ProgressMidlet" for ProgressMidlet

class GameMidlet is ProgressMidlet {
  enumerationUtil { _enumerationUtil }
  enumerationUtil=(value) { _enumerationUtil = value }
  basicColorFactory { _basicColorFactory }
  basicColorFactory=(value) { _basicColorFactory = value }
  features { _features }
  features=(value) { _features = value }
  midletStrings { _midletStrings }
  midletStrings=(value) { _midletStrings = value }
  myCommandsFactory { _myCommandsFactory }
  myCommandsFactory=(value) { _myCommandsFactory = value }
  gameStrings { _gameStrings }
  gameStrings=(value) { _gameStrings = value }
  gameAdStateFactory { _gameAdStateFactory }
  gameAdStateFactory=(value) { _gameAdStateFactory = value }
  gameStateFactory { _gameStateFactory }
  gameStateFactory=(value) { _gameStateFactory = value }
  tsUtil { _tsUtil }
  tsUtil=(value) { _tsUtil = value }
  DISPLAYABLE { _DISPLAYABLE }
  DISPLAYABLE=(value) { _DISPLAYABLE = value }
  COMMAND_NAME { _COMMAND_NAME }
  COMMAND_NAME=(value) { _COMMAND_NAME = value }
  NO_COMMAND { _NO_COMMAND }
  NO_COMMAND=(value) { _NO_COMMAND = value }
  NO_DISPLAYABLE { _NO_DISPLAYABLE }
  NO_DISPLAYABLE=(value) { _NO_DISPLAYABLE = value }
  COMMAND_ACTION { _COMMAND_ACTION }
  COMMAND_ACTION=(value) { _COMMAND_ACTION = value }
  PAUSE_APP_BACKGROUND { _PAUSE_APP_BACKGROUND }
  PAUSE_APP_BACKGROUND=(value) { _PAUSE_APP_BACKGROUND = value }
  UN_PAUSE_APP_BACKGROUND { _UN_PAUSE_APP_BACKGROUND }
  UN_PAUSE_APP_BACKGROUND=(value) { _UN_PAUSE_APP_BACKGROUND = value }
  aboutCommandProcessor { _aboutCommandProcessor }
  aboutCommandProcessor=(value) { _aboutCommandProcessor = value }
  webCommandProcessor { _webCommandProcessor }
  webCommandProcessor=(value) { _webCommandProcessor = value }
  gameMidletStateFactory { _gameMidletStateFactory }
  gameMidletStateFactory=(value) { _gameMidletStateFactory = value }
  gameStartTimeHelper { _gameStartTimeHelper }
  gameStartTimeHelper=(value) { _gameStartTimeHelper = value }
  fullScreenUtil { _fullScreenUtil }
  fullScreenUtil=(value) { _fullScreenUtil = value }
  debugInterface { _debugInterface }
  debugInterface=(value) { _debugInterface = value }
  allbinaryGameCanvasRunnableInterface { _allbinaryGameCanvasRunnableInterface }
  allbinaryGameCanvasRunnableInterface=(value) { _allbinaryGameCanvasRunnableInterface = value }
  thread { _thread }
  thread=(value) { _thread = value }
  loadGameForm { _loadGameForm }
  loadGameForm=(value) { _loadGameForm = value }
  isFullScreen { _isFullScreen }
  isFullScreen=(value) { _isFullScreen = value }
  resized { _resized }
  resized=(value) { _resized = value }
  startedBefore { _startedBefore }
  startedBefore=(value) { _startedBefore = value }

  initFields_GameMidlet() {
    _enumerationUtil = null
    _basicColorFactory = null
    _features = null
    _midletStrings = null
    _myCommandsFactory = null
    _gameStrings = null
    _gameAdStateFactory = null
    _gameStateFactory = null
    _tsUtil = null
    _DISPLAYABLE = null
    _COMMAND_NAME = null
    _NO_COMMAND = null
    _NO_DISPLAYABLE = null
    _COMMAND_ACTION = null
    _PAUSE_APP_BACKGROUND = null
    _UN_PAUSE_APP_BACKGROUND = null
    _aboutCommandProcessor = null
    _webCommandProcessor = null
    _gameMidletStateFactory = null
    _gameStartTimeHelper = null
    _fullScreenUtil = null
    _debugInterface = null
    _allbinaryGameCanvasRunnableInterface = null
    _thread = null
    _loadGameForm = null
    _isFullScreen = false
    _resized = false
    _startedBefore = false
        _enumerationUtil = EnumerationUtil.getInstance()
        _basicColorFactory = BasicColorFactory.getInstance()
        _features = Features.getInstance()
        _midletStrings = MidletStrings.getInstance()
        _myCommandsFactory = MyCommandsFactory.getInstance()
        _gameStrings = GameStrings.getInstance()
        _gameAdStateFactory = GameAdStateFactory.getInstance()
        _gameStateFactory = GameStateFactory.getInstance()
        _tsUtil = TsUtil.getInstance()
        _DISPLAYABLE = " Displayable: "
        _COMMAND_NAME = "command Name/Label: "
        _NO_COMMAND = "No Command"
        _NO_DISPLAYABLE = "No Displayable"
        _COMMAND_ACTION = StringMaker.new().append("GameMidlet::").append(_midletStrings.COMMAND_ACTION).toString()
        _PAUSE_APP_BACKGROUND = "pauseAppBackground"
        _UN_PAUSE_APP_BACKGROUND = "unPauseAppBackground"
        _aboutCommandProcessor = AboutCommandProcessor.getInstance()
        _webCommandProcessor = WebCommandProcessor.getInstance()
        _gameMidletStateFactory = GameMidletStateFactory.getInstance()
        _gameStartTimeHelper = TimeDelayHelper.new(240)
        _fullScreenUtil = FullScreenUtil.getInstance()
        
        _allbinaryGameCanvasRunnableInterface = NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE
        _thread = NullThread.NULL_THREAD
        
        _isFullScreen = false
        _resized = false
        _startedBefore = false
  }
    

    construct new(clientInformationFactory) {
        super(clientInformationFactory)
        initFields_GameMidlet()
        SmallIntegerSingletonFactory.getInstance().initWithRange(0x291, 6)
        _loadGameForm = CommandForm.getNullCommandForm()
        var progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.init(this)
        GameFeatureEventHandler.getInstance().addListenerInterface(ChangedGameFeatureListener.getInstance())
        GamePersistanceSingleton.getInstance().clear()
        _debugInterface = DebugFactory.getInstance()
        this.init()
    }
    

    init() {
    }
    

    setDemo() {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    createGame() {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    mediaShutdown() {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    stopAll() {
    }
    

    pauseApp() {
        this.pauseAppBackground(true)
        var gameAdState = _gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().stopAll()
    }
    

    pauseAppBackground(background) {
        this.logUtil.putF(this.commonStrings.START, this, _PAUSE_APP_BACKGROUND)
        if ((_allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
            _allbinaryGameCanvasRunnableInterface.pause()
        } else {
            this.logUtil.putF("<<<<<< Null", this, _PAUSE_APP_BACKGROUND)
        }
        AllBinarySensorManager.getInstance().shutdown()
    }
    

    unPauseApp() {
        this.unPauseAppBackground(true)
        var gameAdState = _gameAdStateFactory.getCurrentInstance()
        gameAdState.getAdvertisements().startAll()
    }
    

    unPauseAppBackground(background) {
        this.logUtil.putF(this.commonStrings.START, this, _UN_PAUSE_APP_BACKGROUND)
        AllBinarySensorManager.getInstance().init()
        var gameCanvasRunnableInterface = _allbinaryGameCanvasRunnableInterface
        if ((gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
            gameCanvasRunnableInterface.unPause()
        } else {
            this.logUtil.putF("<<<<<< Null", this, _UN_PAUSE_APP_BACKGROUND)
        }
    }
    

    destroyAppInRunnable(unconditional, isProgress) {
        var progressCanvas = ProgressCanvasFactory.getInstance()
        if (isProgress) {
            progressCanvas.start()
            this.commandAction(_myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
        }
        this.destroyApp(unconditional)
        if (isProgress) {
            progressCanvas.end()
        }
    }
    

    destroyApp(unconditional) {
        var METHOD_NAME = "GameMidlet::destroyApp"
        var jerror0 = Fiber.new {
            PreLogUtil.put(GameStatisticsFactory.getInstance().toString(), this, METHOD_NAME)
            var gameAdState = _gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().stopAll()
            if (!this.isDestroyed()) {
                this.stopGameCanvasRunnableInterface()
                this.setGameCanvasRunnableInterface(NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)
                this.mediaShutdown()
            } else {
                this.logUtil.putF("Midlet Managment Error: Midlet Should Only Be Destroyed Once", this, METHOD_NAME)
            }
            super.destroyApp(true)
            PreLogUtil.put(this.commonStrings.END, this, METHOD_NAME)
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, METHOD_NAME, e)
        }
        this.logUtil.putF(this.commonStrings.END, this, METHOD_NAME)
    }
    

    startApp() {
        var jerror1 = Fiber.new {
            var gameAdState = _gameAdStateFactory.getCurrentInstance()
            gameAdState.getAdvertisements().startAll()
            var START_APP = "startApp"
            this.logUtil.putF(this.commonStrings.START, this, START_APP)
            var gameCanvasRunnableInterface = _allbinaryGameCanvasRunnableInterface
            if ((gameCanvasRunnableInterface == NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
                _gameMidletStateFactory.setCurrentGameState(_gameStateFactory.NO_GAME_STATE)
                this.setDemo()
            } else {
                this.logUtil.putF("GameCanvasRunnableInterface is available", this, START_APP)
                if ((gameCanvasRunnableInterface == this.getCurrentDisplayable())) {
                    this.unPauseAppBackground(false)
                } else {
                    this.logUtil.putF("GameCanvasRunnableInterface is not current displayable", this, START_APP)
                }
            }
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "startApp", e)
            this.destroyApp(false)
            this.notifyDestroyed()
        }
    }
    

    commandAction(command, displayable) {
        var jerror2 = Fiber.new {
            var displayableAsString = _NO_DISPLAYABLE
            if ((displayable != null)) {
                displayableAsString = displayable.toString()
            }
            var label = _NO_COMMAND
            if ((command != null)) {
                label = command.getLabel()
            }
            PreLogUtil.put(StringMaker.new().append(_COMMAND_NAME).append(label).append(_DISPLAYABLE).append(displayableAsString).toString(), this, _COMMAND_ACTION)
            var gameCommandsFactory = GameCommandsFactory.getInstance()
            var allbinaryGameCanvasRunnableInterface = _allbinaryGameCanvasRunnableInterface
            var gameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface
            if ((command == gameCommandsFactory.SHOW_GAME_CANVAS)) {
                if (((this.getDisplay().getCurrent() != gameCanvasRunnableInterface) && (allbinaryGameCanvasRunnableInterface.getType() != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE.getType()))) {
                    this.setDisplay(gameCanvasRunnableInterface)
                }
                this.unPauseAppBackground(false)
            } else if ((command == gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS)) {
                var menuListener = displayable
                menuListener.close()
                this.setDisplay(gameCanvasRunnableInterface)
                this.unPauseAppBackground(false)
            } else if ((command == gameCommandsFactory.EXIT_COMMAND)) {
                if ((GameMidletEventHandler.getInstance().getEventListenerInterfaceListP().size() == 0)) {
                    this.exitProgress(true)
                }
                GameMidletEventHandler.getInstance().fireEvent(DemoGameMidletEvent.new(this, DemoGameMidletStateFactory.getInstance().NONE))
            } else if ((command == gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND)) {
                this.exitProgress(false)
            } else if ((((command == gameCommandsFactory.START_COMMAND) || (command == gameCommandsFactory.RESTART_COMMAND)) || (command == gameCommandsFactory.CONTINUE_COMMAND))) {
                if (((_gameMidletStateFactory.getCurrentGameState() != _gameStateFactory.PLAYING_GAME_STATE) || (command == gameCommandsFactory.RESTART_COMMAND))) {
                    if (_gameStartTimeHelper.isTimeTNT()) {
                        if (((command == gameCommandsFactory.START_COMMAND) && this.isDemoLoading())) {
                            this.logUtil.putF("Trying to Start Game Before Loading Complete", this, _midletStrings.COMMAND_ACTION)
                        } else {
                            _startedBefore = true
                            this.createGame()
                            _gameMidletStateFactory.setCurrentGameState(_gameStateFactory.PLAYING_GAME_STATE)
                        }
                    } else {
                        this.logUtil.putF("Starting Game Too Often", this, _midletStrings.COMMAND_ACTION)
                    }
                } else {
                    this.logUtil.putF("Already in playing state", this, _COMMAND_ACTION)
                }
            } else if ((command == gameCommandsFactory.BUY_COMMAND)) {
                var inApplicationPurchaseFactory = InApplicationPurchaseFactory.getInstance()
                var list = LockableFeatureFactory.getInstance().getList()
                var lockableFeature = list.get(0)
                if (((list.size() > 0) && !inApplicationPurchaseFactory.isPurchased(lockableFeature))) {
                    inApplicationPurchaseFactory.purchase(lockableFeature)
                } else {
                    TextNotificationUtil.getInstance().fireSuccess("Already Purchased")
                }
            } else if ((command == gameCommandsFactory.QUIT_COMMAND)) {
                if (_gameStartTimeHelper.isTimeTNT()) {
                    if ((displayable is HighScoreTextBox)) {
                        var menuListener = displayable
                        menuListener.close()
                    }
                    this.stopGameCanvasRunnableInterface()
                    _gameMidletStateFactory.setCurrentGameState(_gameStateFactory.NO_GAME_STATE)
                    this.setDemo()
                }
            } else if ((command == _myCommandsFactory.RESUME_COMMAND)) {
                this.unPauseAppBackground(false)
            } else if ((command == _myCommandsFactory.PAUSE_COMMAND)) {
                this.pauseAppBackground(false)
            } else if ((command == _myCommandsFactory.SET_DISPLAYABLE)) {
                this.pauseAppBackground(false)
                this.setDisplay(displayable)
            } else if ((command == gameCommandsFactory.SET_MENU_DISPLAYABLE)) {
                this.pauseAppBackground(false)
                var menuListener = displayable
                menuListener.open()
                this.setDisplay(displayable)
            } else if ((command == gameCommandsFactory.START_TRACE)) {
                _debugInterface.start()
                var gameCanvas = allbinaryGameCanvasRunnableInterface
                gameCanvas.addCommand(gameCommandsFactory.STOP_TRACE)
                gameCanvas.removeCommand(gameCommandsFactory.START_TRACE)
            } else if ((command == gameCommandsFactory.STOP_TRACE)) {
                this.pauseAppBackground(false)
                _debugInterface.stop()
                this.unPauseAppBackground(false)
                var gameCanvas = allbinaryGameCanvasRunnableInterface
                gameCanvas.addCommand(gameCommandsFactory.START_TRACE)
                gameCanvas.removeCommand(gameCommandsFactory.STOP_TRACE)
            } else if ((command == gameCommandsFactory.DEFAULT_OPTIONS)) {
                var tempDisplayable = displayable
                if ((tempDisplayable is GameOptionsForm)) {
                    GameFeatureFormUtil.getInstance().setDefault(tempDisplayable)
                }
            } else if ((command == GameInputMappingInstructionsCanvas.DISPLAY)) {
                var tempDisplayable = displayable
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    var gameInputMappingCanvas = tempDisplayable
                    gameInputMappingCanvas.update()
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingInstructionsCanvas())
            } else if (HighScoreCommandsFactory.getInstance().isHighScoreCommand(command)) {
                var tempDisplayable = displayable
                if ((tempDisplayable is HighScoresCanvas)) {
                    var highScoresCanvas = tempDisplayable
                    highScoresCanvas.updateCommand(command)
                }
            } else if ((command == HighScoreCommands.getInstance().DISPLAY)) {
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.createHighScoresCanvas())
            } else if ((command == GameInputMappingInstructionsCanvas.CLOSE)) {
                var menuListener = displayable
                menuListener.close()
                this.commandAction(GameInputMappingCanvas.DISPLAY, NullCanvas.NULL_CANVAS)
            } else if ((command == GameInputMappingCanvas.DISPLAY)) {
                if (J2MEUtil.isHTML()) {
                    this.pauseAppBackground(false)
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getInputMappingCanvas())
            } else if ((command == GameInputMappingCanvas.DEFAULT)) {
                var tempDisplayable = displayable
                if ((tempDisplayable is GameInputMappingCanvas)) {
                    var gameInputMappingCanvas = tempDisplayable
                    gameInputMappingCanvas.setDefault()
                }
            } else if ((command == InGameOptionsForm.DISPLAY)) {
                this.pauseAppBackground(false)
                var progressCanvas = ProgressCanvasFactory.getInstance()
                progressCanvas.addNormalPortion(50, "In Game Options")
                var layerManager = this.createGameLayerManager()
                var inGameOptionsFormFactory = InGameOptionsFormFactory.getInstance()
                inGameOptionsFormFactory.init(this, InGameFeatures.new(), "Options In Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
                var inGameOptionsForm = inGameOptionsFormFactory.get()
                inGameOptionsForm.setItemStateListener(allbinaryGameCanvasRunnableInterface)
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm)
            } else if ((command == InGameOptionsForm.DEFAULT)) {
                var inGameOptionsForm = InGameOptionsFormFactory.getInstance().get()
                GameFeatureFormUtil.getInstance().setDefault(inGameOptionsForm)
            } else if ((command == gameCommandsFactory.DISPLAY_OPTIONS)) {
                AllBinaryMediaManager.setMuted(true)
                this.stopAll()
                var mainFeatureFactory = MainFeatureFactory.getInstance()
                _isFullScreen = _features.isFeature(mainFeatureFactory.FULL_SCREEN)
                ResizableListenerHandler.getInstance().fireEvent(true)
                this.setResized(false)
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getGameOptionsForm())
            } else if ((command == gameCommandsFactory.CLOSE_OPTIONS)) {
                ResizableListenerHandler.getInstance().fireEvent(false)
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
                var stringBuffer = StringMaker.new()
                stringBuffer.append("Close isFullScreen/change: ")
                stringBuffer.appendboolean(_isFullScreen)
                stringBuffer.appendboolean(_fullScreenUtil.isScreenChange(_isFullScreen))
                stringBuffer.append(" isResized: ")
                stringBuffer.appendboolean(this.isResized())
                PreLogUtil.put(stringBuffer.toString(), this, _COMMAND_ACTION)
                if ((this.isResized() || _fullScreenUtil.isScreenChange(_isFullScreen))) {
                    this.updateFullScreen()
                }
                AllBinaryMediaManager.setMuted(false)
            } else if ((command == gameCommandsFactory.DISPLAY_LOAD_FORM)) {
                this.pauseAppBackground(false)
                var keyValuePersistance = GamePersistanceSingleton.getInstance()
                keyValuePersistance.clear()
                keyValuePersistance.loadAll(this.abeClientInformation)
                if ((this.getLoadGameForm() == CommandForm.getNullCommandForm())) {
                    var layerManager = this.createGameLayerManager()
                    this.setLoadGameForm(LoadGameForm.new(this, "Load Game", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor()))
                } else {
                    this.getLoadGameForm().update()
                }
                this.commandAction(gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getLoadGameForm())
            } else if ((command == gameCommandsFactory.LOAD_FILE)) {
                var loadGameForm = this.getLoadGameForm()
                var index = loadGameForm.getSelectedId()
                if ((index != -1)) {
                    var keyValuePersistance = GamePersistanceSingleton.getInstance()
                    this.setStartStateHashtable(keyValuePersistance.get(index))
                    var menuListener = this.getLoadGameForm()
                    menuListener.close()
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, _COMMAND_ACTION)
                    this.commandAction(gameCommandsFactory.START_COMMAND, NullCanvas.NULL_CANVAS)
                    PreLogUtil.put(BasicMotionGesturesHandler.getInstance().toString(), this, _COMMAND_ACTION)
                }
            } else if ((command == gameCommandsFactory.DELETE_FILE)) {
                var loadGameForm = this.getLoadGameForm()
                var index = loadGameForm.getSelectedText()
                if ((index != -1)) {
                    var keyValuePersistance = GamePersistanceSingleton.getInstance()
                    keyValuePersistance.delete(this.abeClientInformation, index)
                    keyValuePersistance.clear()
                    keyValuePersistance.loadAllSize(this.abeClientInformation, 1)
                    this.getLoadGameForm().update()
                }
            } else if ((command == gameCommandsFactory.SAVE)) {
                var keyValuePersistance = GamePersistanceSingleton.getInstance()
                this.pauseAppBackground(false)
                keyValuePersistance.save(this.abeClientInformation, this.getCurrentStateHashtable())
                this.unPauseAppBackground(false)
            } else if ((command == HighScoreUtil.SUBMIT_TEXTBOX_COMMAND)) {
                this.logUtil.putF("Submitted Score", this, _COMMAND_ACTION)
                if ((displayable is HighScoreTextBox)) {
                    var highScoreTextBox = displayable
                    highScoreTextBox.submitted = true
                }
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted(true)
                this.commandAction(gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable)
            } else if ((command == gameCommandsFactory.DISPLAY_ABOUT)) {
                _aboutCommandProcessor.process(this, gameCommandsFactory.SET_MENU_DISPLAYABLE, this.getAboutCanvas())
            } else if ((command == gameCommandsFactory.OPEN_WEB_URL)) {
                _webCommandProcessor.process(this, gameCommandsFactory.OPEN_WEB_URL, NullCanvas.NULL_CANVAS)
            } else if ((command == gameCommandsFactory.TOGGLE_KEYBOARD)) {
                var virtualKeyboardEventHandler = VirtualKeyboardEventHandler.getInstance()
                virtualKeyboardEventHandler.fireEvent(virtualKeyboardEventHandler.SHOW_EVENT)
            } else if ((_tsUtil.compareTo(command.getLabel(), gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel()) == 0)) {
                var mainFeatureFactory = MainFeatureFactory.getInstance()
                var isFullScreen = _features.isFeature(mainFeatureFactory.FULL_SCREEN)
                if (isFullScreen) {
                    _features.removeDefault(mainFeatureFactory.FULL_SCREEN)
                } else {
                    _features.addDefault(mainFeatureFactory.FULL_SCREEN)
                }
                this.updateFullScreen()
            }
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            this.logUtil.put(StringMaker.new().append(this.commonStrings.EXCEPTION_LABEL).append(command.getLabel()).toString(), this, _midletStrings.COMMAND_ACTION, e)
            if ((command != GameCommandsFactory.getInstance().EXIT_COMMAND)) {
                this.exitProgress(false)
            }
        }
    }
    

    updateFullScreen() {
        var mainFeatureFactory = MainFeatureFactory.getInstance()
        var isFullScreen = _features.isFeature(mainFeatureFactory.FULL_SCREEN)
        var displayable = this.getDisplay().getCurrent()
        if ((displayable is Canvas)) {
            var canvas = displayable
            canvas.setFullScreenMode(isFullScreen)
        }
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    getInputMappingInstructionsCanvas() {
        return GameInputMappingInstructionsCanvas.new(this, this.createGameLayerManager())
    }
    

    getInputMappingCanvas() {
        return GameInputMappingCanvas.new(this.abeClientInformation, this, this.createGameLayerManager(), this.getHelpPaintable())
    }
    

    getAboutCanvas() {
        return BasicPaintablesCanvas.new(this, CanvasStrings.getInstance().ABOUT, this.createGameLayerManager(), AboutPaintableFactory.getInstance().paintableArray)
    }
    

    getHelpPaintable() {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    createHighScoresCanvas() {
        Fiber.abort(JR.exception("Exception", this.commonStrings.NOT_IMPLEMENTED))
    }
    

    startGameCanvasRunnableInterface() {
        var threadFactoryUtil = ThreadFactoryUtil.getInstance()
        _thread = threadFactoryUtil.getInstanceGameCanvasRunnable(_allbinaryGameCanvasRunnableInterface)
        this.logUtil.putF(StringMaker.new().append("Thread Priority: ").appendint(JR.i32(_thread.getPriority())).toString(), this, "startGameCanvasRunnableInterface")
        _allbinaryGameCanvasRunnableInterface.setThread(_thread)
        threadFactoryUtil.start(_thread)
    }
    

    stopGameCanvasRunnableInterface() {
        this.logUtil.putF(this.commonStrings.START, this, _gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        GameNotificationEventHandler.getInstance().removeAllListeners()
        ColorChangeEventHandler.getInstance().removeAllListeners()
        GameEventHandlerUtil.removeAllListeners()
        var gameCanvasRunnableInterface = _allbinaryGameCanvasRunnableInterface
        if ((gameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
            this.logUtil.putF(StringMaker.new().append("Set Running False: ").append(gameCanvasRunnableInterface.toString()).toString(), this, _gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
            gameCanvasRunnableInterface.setRunning(false)
        } else {
            this.logUtil.putF("StopGame - Could Not Stop", this, _gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
        }
        ThreadUtil.getInstance().join(_thread)
        var progressCanvas = ProgressCanvasFactory.getInstance()
        if (_features.isFeature(MainFeatureFactory.getInstance().LOAD_ALL)) {
            progressCanvas.addNormalPortion(50, "Stopped Game Runnable")
        } else {
            progressCanvas.addNormalPortion(50, "Stopped Main Runnable")
        }
        this.logUtil.putF(this.commonStrings.END, this, _gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE)
    }
    

    getGameCanvasRunnableInterface() {
        return _allbinaryGameCanvasRunnableInterface
    }
    

    setGameCanvasRunnableInterface(gameCanvasRunnableInterface) {
        _allbinaryGameCanvasRunnableInterface = gameCanvasRunnableInterface
    }
    

    createGameLayerManager() {
        var gameInfo = GameInfo.new(GameTypeFactory.getInstance().SINGLE_PLAYER, GameMode.SERVER, PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 1, 1)
        return AllBinaryGameLayerManager.new(_basicColorFactory.BLACK, _basicColorFactory.WHITE, gameInfo)
    }
    

    getGameOptionsForm() {
        var layerManager = this.createGameLayerManager()
        return GameOptionsFormFactory.getInstance().init(this, "Game Options", layerManager.getBackgroundBasicColor(), layerManager.getForegroundBasicColor())
    }
    

    save() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.SAVE)
        var hashtable = this.getCurrentStateHashtable()
        GamePersistanceSingleton.getInstance().save(this.abeClientInformation, hashtable)
    }
    

    getCurrentStateHashtable() {
        this.logUtil.putF(this.commonStrings.START, this, "getCurrentStateHashtable")
        var hashtable = StdUtil.getInstance().createHashtable()
        if ((_allbinaryGameCanvasRunnableInterface != NullGameCanvasRunnable.NULL_GAME_CANVAS_RUNNABLE)) {
            var currentHashtable = _allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable()
            var enumeration = currentHashtable.keys()
            var key = null
            while (_enumerationUtil.hasMoreElements(enumeration)) {
                key = _enumerationUtil.nextElement(enumeration)
                hashtable.put(key, currentHashtable.get(key))
            }
        }
        return hashtable
    }
    

    setLoadGameForm(loadGameForm) {
        _loadGameForm = loadGameForm
    }
    

    getLoadGameForm() {
        return _loadGameForm
    }
    

    setResized(resized) {
        _resized = resized
    }
    

    isResized() {
        return _resized
    }
    

    isDemoLoading() {
        if (_startedBefore) {
            return false
        }
        var displayable = this.getDisplay().getCurrent()
        if ((displayable is DemoCanvas)) {
            var demoCanvas = displayable
            if (demoCanvas.isDemoLoading()) {
                return true
            }
        }
        return false
    }
}

import "../../../../java/util/Enumeration" for Enumeration
import "../../../../javax/microedition/lcdui/Canvas" for Canvas
import "../../../../javax/microedition/lcdui/Command" for Command
import "../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../javax/microedition/lcdui/Displayable" for Displayable
import "../../../../javax/microedition/lcdui/NullCanvas" for NullCanvas
import "../../../../javax/microedition/midlet/MIDletStateChangeException" for MIDletStateChangeException
import "../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../org/allbinary/TsUtil" for TsUtil
import "../../../../org/allbinary/business/advertisement/GameAdStateFactory" for GameAdStateFactory
import "../../../../org/allbinary/canvas/FullScreenUtil" for FullScreenUtil
import "../../../../org/allbinary/canvas/GameStatisticsFactory" for GameStatisticsFactory
import "../../../../org/allbinary/debug/DebugFactory" for DebugFactory
import "../../../../org/allbinary/debug/DebugInterface" for DebugInterface
import "../../../../org/allbinary/game/GameAdState" for GameAdState
import "../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../org/allbinary/game/GameMode" for GameMode
import "../../../../org/allbinary/game/GameStrings" for GameStrings
import "../../../../org/allbinary/game/GameTypeFactory" for GameTypeFactory
import "../../../../org/allbinary/game/PlayerTypesFactory" for PlayerTypesFactory
import "../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../org/allbinary/game/configuration/GameOptionsForm" for GameOptionsForm
import "../../../../org/allbinary/game/configuration/GameOptionsFormFactory" for GameOptionsFormFactory
import "../../../../org/allbinary/game/configuration/InGameFeatures" for InGameFeatures
import "../../../../org/allbinary/game/configuration/InGameOptionsForm" for InGameOptionsForm
import "../../../../org/allbinary/game/configuration/InGameOptionsFormFactory" for InGameOptionsFormFactory
import "../../../../org/allbinary/game/configuration/LoadGameForm" for LoadGameForm
import "../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" for ChangedGameFeatureListener
import "../../../../org/allbinary/game/configuration/event/GameFeatureEventHandler" for GameFeatureEventHandler
import "../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../org/allbinary/game/configuration/feature/GameFeatureFormUtil" for GameFeatureFormUtil
import "../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory
import "../../../../org/allbinary/game/configuration/persistance/GamePersistanceSingleton" for GamePersistanceSingleton
import "../../../../org/allbinary/game/configuration/persistance/KeyValuePersistance" for KeyValuePersistance
import "../../../../org/allbinary/game/displayable/canvas/AllBinaryGameCanvas" for AllBinaryGameCanvas
import "../../../../org/allbinary/game/displayable/canvas/BasicPaintablesCanvas" for BasicPaintablesCanvas
import "../../../../org/allbinary/game/displayable/canvas/DemoCanvas" for DemoCanvas
import "../../../../org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface" for GameCanvasRunnableInterface
import "../../../../org/allbinary/game/displayable/canvas/GameEventHandlerUtil" for GameEventHandlerUtil
import "../../../../org/allbinary/game/displayable/canvas/GameInputMappingCanvas" for GameInputMappingCanvas
import "../../../../org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas" for GameInputMappingInstructionsCanvas
import "../../../../org/allbinary/game/displayable/canvas/MenuListener" for MenuListener
import "../../../../org/allbinary/game/displayable/canvas/NullGameCanvasRunnable" for NullGameCanvasRunnable
import "../../../../org/allbinary/game/input/TextNotificationUtil" for TextNotificationUtil
import "../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../org/allbinary/game/layer/hud/event/GameNotificationEventHandler" for GameNotificationEventHandler
import "../../../../org/allbinary/game/paint/help/HelpPaintable" for HelpPaintable
import "../../../../org/allbinary/game/score/HighScoreCommands" for HighScoreCommands
import "../../../../org/allbinary/game/score/HighScoreCommandsFactory" for HighScoreCommandsFactory
import "../../../../org/allbinary/game/score/displayable/HighScoreTextBox" for HighScoreTextBox
import "../../../../org/allbinary/game/score/displayable/HighScoreUtil" for HighScoreUtil
import "../../../../org/allbinary/game/score/displayable/HighScoresCanvas" for HighScoresCanvas
import "../../../../org/allbinary/game/state/GameStateFactory" for GameStateFactory
import "../../../../org/allbinary/graphics/ResizableListenerHandler" for ResizableListenerHandler
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../org/allbinary/graphics/color/ColorChangeEventHandler" for ColorChangeEventHandler
import "../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../org/allbinary/graphics/displayable/MyCanvas" for MyCanvas
import "../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" for MyCommandsFactory
import "../../../../org/allbinary/graphics/displayable/screen/AboutCommandProcessor" for AboutCommandProcessor
import "../../../../org/allbinary/graphics/displayable/screen/AboutPaintableFactory" for AboutPaintableFactory
import "../../../../org/allbinary/graphics/displayable/screen/CommandForm" for CommandForm
import "../../../../org/allbinary/graphics/displayable/screen/WebCommandProcessor" for WebCommandProcessor
import "../../../../org/allbinary/input/AllBinarySensorManager" for AllBinarySensorManager
import "../../../../org/allbinary/input/event/VirtualKeyboardEventHandler" for VirtualKeyboardEventHandler
import "../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" for BasicMotionGesturesHandler
import "../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../org/allbinary/logic/math/SmallIntegerSingletonFactory" for SmallIntegerSingletonFactory
import "../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../org/allbinary/logic/system/security/licensing/ClientInformationFactory" for ClientInformationFactory
import "../../../../org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory" for InApplicationPurchaseFactory
import "../../../../org/allbinary/logic/system/security/licensing/LockableFeature" for LockableFeature
import "../../../../org/allbinary/logic/system/security/licensing/LockableFeatureFactory" for LockableFeatureFactory
import "../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../org/allbinary/media/audio/AllBinaryMediaManager" for AllBinaryMediaManager
import "../../../../org/allbinary/midlet/MidletStrings" for MidletStrings
import "../../../../org/allbinary/thread/NullThread" for NullThread
import "../../../../org/allbinary/thread/ThreadFactoryUtil" for ThreadFactoryUtil
import "../../../../org/allbinary/thread/ThreadUtil" for ThreadUtil
import "../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../org/allbinary/util/EnumerationUtil" for EnumerationUtil
import "../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../java/lang/Thread" for Thread
import "./GameMidletStateFactory" for GameMidletStateFactory
import "./GameMidletEventHandler" for GameMidletEventHandler
import "./DemoGameMidletEvent" for DemoGameMidletEvent
import "./DemoGameMidletStateFactory" for DemoGameMidletStateFactory

