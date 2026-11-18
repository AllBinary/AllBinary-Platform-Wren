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

class AllBinaryGameCanvas is RunnableCanvas {
    static id { 0 }
    static TYPE { 2 }
  basicColorFactory { _basicColorFactory }
  basicColorFactory=(value) { _basicColorFactory = value }
  basicSetColorUtil { _basicSetColorUtil }
  basicSetColorUtil=(value) { _basicSetColorUtil = value }
  touchFeatureFactory { _touchFeatureFactory }
  touchFeatureFactory=(value) { _touchFeatureFactory = value }
  openGLFeatureFactory { _openGLFeatureFactory }
  openGLFeatureFactory=(value) { _openGLFeatureFactory = value }
  touchButtonFactory { _touchButtonFactory }
  touchButtonFactory=(value) { _touchButtonFactory = value }
  gameAdStateFactory { _gameAdStateFactory }
  gameAdStateFactory=(value) { _gameAdStateFactory = value }
  gameStrings { _gameStrings }
  gameStrings=(value) { _gameStrings = value }
  gameInputStrings { _gameInputStrings }
  gameInputStrings=(value) { _gameInputStrings = value }
  gameStateFactory { _gameStateFactory }
  gameStateFactory=(value) { _gameStateFactory = value }
  gameTickTimeDelayHelper { _gameTickTimeDelayHelper }
  gameTickTimeDelayHelper=(value) { _gameTickTimeDelayHelper = value }
  gameTickDisplayInfoSingleton { _gameTickDisplayInfoSingleton }
  gameTickDisplayInfoSingleton=(value) { _gameTickDisplayInfoSingleton = value }
  gameRunnable { _gameRunnable }
  gameRunnable=(value) { _gameRunnable = value }
  gamePauseRunnable { _gamePauseRunnable }
  gamePauseRunnable=(value) { _gamePauseRunnable = value }
  formUtil { _formUtil }
  formUtil=(value) { _formUtil = value }
  myFormUtil { _myFormUtil }
  myFormUtil=(value) { _myFormUtil = value }
  updateMyFontProcessor { _updateMyFontProcessor }
  updateMyFontProcessor=(value) { _updateMyFontProcessor = value }
  myFontProcessor { _myFontProcessor }
  myFontProcessor=(value) { _myFontProcessor = value }
  gameSpecificPaintable { _gameSpecificPaintable }
  gameSpecificPaintable=(value) { _gameSpecificPaintable = value }
  sensorGameUpdateProcessor { _sensorGameUpdateProcessor }
  sensorGameUpdateProcessor=(value) { _sensorGameUpdateProcessor = value }
  endGameInfo { _endGameInfo }
  endGameInfo=(value) { _endGameInfo = value }
  startIntermissionInterface { _startIntermissionInterface }
  startIntermissionInterface=(value) { _startIntermissionInterface = value }
  endLevelIntermissionInterface { _endLevelIntermissionInterface }
  endLevelIntermissionInterface=(value) { _endLevelIntermissionInterface = value }
  gameLayerManager { _gameLayerManager }
  gameLayerManager=(value) { _gameLayerManager = value }
  gameState { _gameState }
  gameState=(value) { _gameState = value }
  gameOver { _gameOver }
  gameOver=(value) { _gameOver = value }
  initialized { _initialized }
  initialized=(value) { _initialized = value }
  gameStateTimeHelper { _gameStateTimeHelper }
  gameStateTimeHelper=(value) { _gameStateTimeHelper = value }
  highScoresHelper { _highScoresHelper }
  highScoresHelper=(value) { _highScoresHelper = value }
  highScoreSubmitted { _highScoreSubmitted }
  highScoreSubmitted=(value) { _highScoreSubmitted = value }
  realHighScoresPaintable { _realHighScoresPaintable }
  realHighScoresPaintable=(value) { _realHighScoresPaintable = value }
  highScoresPaintable { _highScoresPaintable }
  highScoresPaintable=(value) { _highScoresPaintable = value }
  localPlayerGameInputList { _localPlayerGameInputList }
  localPlayerGameInputList=(value) { _localPlayerGameInputList = value }
  isCheating { _isCheating }
  isCheating=(value) { _isCheating = value }
  hashtable { _hashtable }
  hashtable=(value) { _hashtable = value }
  isSingleKeyRepeatableProcessing { _isSingleKeyRepeatableProcessing }
  isSingleKeyRepeatableProcessing=(value) { _isSingleKeyRepeatableProcessing = value }
  gameInitializationInterfaceFactoryInterface { _gameInitializationInterfaceFactoryInterface }
  gameInitializationInterfaceFactoryInterface=(value) { _gameInitializationInterfaceFactoryInterface = value }
  touchButtonsPaintable { _touchButtonsPaintable }
  touchButtonsPaintable=(value) { _touchButtonsPaintable = value }
  touchPaintable { _touchPaintable }
  touchPaintable=(value) { _touchPaintable = value }
  cheatProcessor { _cheatProcessor }
  cheatProcessor=(value) { _cheatProcessor = value }
  gameInputProcessor { _gameInputProcessor }
  gameInputProcessor=(value) { _gameInputProcessor = value }
  endGameProcessor { _endGameProcessor }
  endGameProcessor=(value) { _endGameProcessor = value }
  realEndGameProcessor { _realEndGameProcessor }
  realEndGameProcessor=(value) { _realEndGameProcessor = value }
  startIntermissionProcessor { _startIntermissionProcessor }
  startIntermissionProcessor=(value) { _startIntermissionProcessor = value }
  realStartIntermissionProcessor { _realStartIntermissionProcessor }
  realStartIntermissionProcessor=(value) { _realStartIntermissionProcessor = value }
  endGamePaintable { _endGamePaintable }
  endGamePaintable=(value) { _endGamePaintable = value }
  endGameStatePaintable { _endGameStatePaintable }
  endGameStatePaintable=(value) { _endGameStatePaintable = value }
  nonBotPaintable { _nonBotPaintable }
  nonBotPaintable=(value) { _nonBotPaintable = value }
  intermissionPaintable { _intermissionPaintable }
  intermissionPaintable=(value) { _intermissionPaintable = value }
  startIntermissionPaintable { _startIntermissionPaintable }
  startIntermissionPaintable=(value) { _startIntermissionPaintable = value }
  mainStateProcessor { _mainStateProcessor }
  mainStateProcessor=(value) { _mainStateProcessor = value }
  processGameProcessor { _processGameProcessor }
  processGameProcessor=(value) { _processGameProcessor = value }
  highScoresFactoryInterface { _highScoresFactoryInterface }
  highScoresFactoryInterface=(value) { _highScoresFactoryInterface = value }
  startLevel { _startLevel }
  startLevel=(value) { _startLevel = value }
  mainMenuInputProcessor { _mainMenuInputProcessor }
  mainMenuInputProcessor=(value) { _mainMenuInputProcessor = value }
  popupMenuInputProcessor { _popupMenuInputProcessor }
  popupMenuInputProcessor=(value) { _popupMenuInputProcessor = value }
  menuInputProcessor { _menuInputProcessor }
  menuInputProcessor=(value) { _menuInputProcessor = value }
  menuForm { _menuForm }
  menuForm=(value) { _menuForm = value }
  formPaintable { _formPaintable }
  formPaintable=(value) { _formPaintable = value }
  openMenuPaintable { _openMenuPaintable }
  openMenuPaintable=(value) { _openMenuPaintable = value }
  menuPaintable { _menuPaintable }
  menuPaintable=(value) { _menuPaintable = value }
  currentTouchInputFactory { _currentTouchInputFactory }
  currentTouchInputFactory=(value) { _currentTouchInputFactory = value }
  colorFillPaintable { _colorFillPaintable }
  colorFillPaintable=(value) { _colorFillPaintable = value }
  baseGameStatistics { _baseGameStatistics }
  baseGameStatistics=(value) { _baseGameStatistics = value }
  primaryPlayerQueue { _primaryPlayerQueue }
  primaryPlayerQueue=(value) { _primaryPlayerQueue = value }
  secondaryPlayerQueue { _secondaryPlayerQueue }
  secondaryPlayerQueue=(value) { _secondaryPlayerQueue = value }
  BUILD_GAME { _BUILD_GAME }
  BUILD_GAME=(value) { _BUILD_GAME = value }
  gameTypeFactory { _gameTypeFactory }
  gameTypeFactory=(value) { _gameTypeFactory = value }
  screenCapture { _screenCapture }
  screenCapture=(value) { _screenCapture = value }
  basicMotionGesturesHandler { _basicMotionGesturesHandler }
  basicMotionGesturesHandler=(value) { _basicMotionGesturesHandler = value }
  gameKeyEventHandler { _gameKeyEventHandler }
  gameKeyEventHandler=(value) { _gameKeyEventHandler = value }
  gameBehavior { _gameBehavior }
  gameBehavior=(value) { _gameBehavior = value }
  menuBehavior { _menuBehavior }
  menuBehavior=(value) { _menuBehavior = value }
  progressPaintable { _progressPaintable }
  progressPaintable=(value) { _progressPaintable = value }
  fontHeightP { _fontHeightP }
  fontHeightP=(value) { _fontHeightP = value }
  gameCanvasStartListener { _gameCanvasStartListener }
  gameCanvasStartListener=(value) { _gameCanvasStartListener = value }
  rawGameInputProcessor { _rawGameInputProcessor }
  rawGameInputProcessor=(value) { _rawGameInputProcessor = value }
  rawInputProcessor { _rawInputProcessor }
  rawInputProcessor=(value) { _rawInputProcessor = value }
  inputProcessor { _inputProcessor }
  inputProcessor=(value) { _inputProcessor = value }
  YIELD_SLEEP { _YIELD_SLEEP }
  YIELD_SLEEP=(value) { _YIELD_SLEEP = value }

  initFields_AllBinaryGameCanvas() {
    _basicColorFactory = null
    _basicSetColorUtil = null
    _touchFeatureFactory = null
    _openGLFeatureFactory = null
    _touchButtonFactory = null
    _gameAdStateFactory = null
    _gameStrings = null
    _gameInputStrings = null
    _gameStateFactory = null
    _gameTickTimeDelayHelper = null
    _gameTickDisplayInfoSingleton = null
    _gameRunnable = null
    _gamePauseRunnable = null
    _formUtil = null
    _myFormUtil = null
    _updateMyFontProcessor = null
    _myFontProcessor = null
    _gameSpecificPaintable = null
    _sensorGameUpdateProcessor = null
    _endGameInfo = null
    _startIntermissionInterface = null
    _endLevelIntermissionInterface = null
    _gameLayerManager = null
    _gameState = null
    _gameOver = false
    _initialized = false
    _gameStateTimeHelper = null
    _highScoresHelper = null
    _highScoreSubmitted = false
    _realHighScoresPaintable = null
    _highScoresPaintable = null
    _localPlayerGameInputList = null
    _isCheating = false
    _hashtable = null
    _isSingleKeyRepeatableProcessing = false
    _gameInitializationInterfaceFactoryInterface = null
    _touchButtonsPaintable = null
    _touchPaintable = null
    _cheatProcessor = null
    _gameInputProcessor = null
    _endGameProcessor = null
    _realEndGameProcessor = null
    _startIntermissionProcessor = null
    _realStartIntermissionProcessor = null
    _endGamePaintable = null
    _endGameStatePaintable = null
    _nonBotPaintable = null
    _intermissionPaintable = null
    _startIntermissionPaintable = null
    _mainStateProcessor = null
    _processGameProcessor = null
    _highScoresFactoryInterface = null
    _startLevel = 0
    _mainMenuInputProcessor = null
    _popupMenuInputProcessor = null
    _menuInputProcessor = null
    _menuForm = null
    _formPaintable = null
    _openMenuPaintable = null
    _menuPaintable = null
    _currentTouchInputFactory = null
    _colorFillPaintable = null
    _baseGameStatistics = null
    _primaryPlayerQueue = null
    _secondaryPlayerQueue = null
    _BUILD_GAME = null
    _gameTypeFactory = null
    _screenCapture = null
    _basicMotionGesturesHandler = null
    _gameKeyEventHandler = null
    _gameBehavior = null
    _menuBehavior = null
    _progressPaintable = null
    _fontHeightP = 0
    _gameCanvasStartListener = null
    _rawGameInputProcessor = null
    _rawInputProcessor = null
    _inputProcessor = null
    _YIELD_SLEEP = 0
        _basicColorFactory = BasicColorFactory.getInstance()
        _basicSetColorUtil = BasicColorSetUtil.getInstance()
        _touchFeatureFactory = TouchFeatureFactory.getInstance()
        _openGLFeatureFactory = OpenGLFeatureFactory.getInstance()
        _touchButtonFactory = TouchButtonFactory.getInstance()
        _gameAdStateFactory = GameAdStateFactory.getInstance()
        _gameStrings = GameStrings.getInstance()
        _gameInputStrings = GameInputStrings.getInstance()
        _gameStateFactory = GameStateFactory.getInstance()
        _gameTickTimeDelayHelper = GameTickTimeDelayHelperFactory.getInstance()
        _gameTickDisplayInfoSingleton = GameTickDisplayInfoSingleton.getInstance()
        _gameRunnable = GameCanvasRunnable.new(this)
        _gamePauseRunnable = GameCanvasPauseRunnable.new(this)
        _formUtil = FormUtil.getInstance()
        _myFormUtil = MyFormUtil.getInstance()
        _updateMyFontProcessor = UpdateMyFontProcessor.new(this)
        _myFontProcessor = _updateMyFontProcessor
        _gameSpecificPaintable = NullPaintable.getInstance()
        _sensorGameUpdateProcessor = SingleSensorGameUpdateProcessor.new()
        _endGameInfo = EndGameInfo.new()
        _startIntermissionInterface = Intermission.new()
        _endLevelIntermissionInterface = Intermission.new()
        _gameLayerManager = AllBinaryGameLayerManager.getNullInstance()
        _gameState = _gameStateFactory.NO_GAME_STATE
        _gameOver = false
        _initialized = false
        _gameStateTimeHelper = TimeDelayHelper.new(0)
        
        _highScoreSubmitted = false
        _realHighScoresPaintable = HighScoresPaintable.new()
        _highScoresPaintable = NullPaintable.getInstance()
        _localPlayerGameInputList = BasicArrayListD.new()
        _isCheating = false
        _hashtable = this.stdUtil.NULL_TABLE
        _isSingleKeyRepeatableProcessing = false
        _gameInitializationInterfaceFactoryInterface = BasicBuildGameInitializerFactory.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
        _touchButtonsPaintable = NullPaintable.getInstance()
        _touchPaintable = NullPaintable.getInstance()
        _cheatProcessor = NoPlayerGameInput.getInstance()
        _gameInputProcessor = Processor.getInstance()
        _endGameProcessor = Processor.getInstance()
        _realEndGameProcessor = Processor.getInstance()
        _startIntermissionProcessor = Processor.getInstance()
        _realStartIntermissionProcessor = Processor.getInstance()
        _endGamePaintable = NullPaintable.getInstance()
        _endGameStatePaintable = NullPaintable.getInstance()
        _nonBotPaintable = NullPaintable.getInstance()
        _intermissionPaintable = NullPaintable.getInstance()
        _startIntermissionPaintable = NullInitUpdatePaintable.getInstance()
        _mainStateProcessor = Processor.getInstance()
        _processGameProcessor = Processor.getInstance()
        
        _startLevel = 0
        _mainMenuInputProcessor = NoMenuInputProcessor.getInstance()
        _popupMenuInputProcessor = NoMenuInputProcessor.getInstance()
        _menuInputProcessor = NoMenuInputProcessor.getInstance()
        _menuForm = ScrollSelectionForm.getNullScrollSelectionForm()
        _formPaintable = NullPaintable.getInstance()
        _openMenuPaintable = NullPaintable.getInstance()
        _menuPaintable = NullPaintable.getInstance()
        _currentTouchInputFactory = NoButtonsTouchInputFactory.getInstance()
        _colorFillPaintable = ColorFillPaintableFactory.getInstance().getInstance(_basicColorFactory.BLACK, true)
        _baseGameStatistics = GameStatisticsFactory.getInstance()
        _primaryPlayerQueue = PrimaryPlayerQueueFactory.getInstance()
        _secondaryPlayerQueue = SecondaryPlayerQueueFactory.getInstance()
        _BUILD_GAME = "buildGame"
        _gameTypeFactory = GameTypeFactory.getInstance()
        _screenCapture = ScreenCaptureFactory.getInstance()
        _basicMotionGesturesHandler = BasicMotionGesturesHandler.getInstance()
        _gameKeyEventHandler = GameKeyEventHandler.getInstance()
        _gameBehavior = null
        _menuBehavior = null
        _progressPaintable = ProgressCanvasFactory.getLazyInstance()
        _fontHeightP = 0
        _gameCanvasStartListener = NullDemoPaintable.NULL_DEMO_PAINTABLE
        _rawGameInputProcessor = GameCanvasInputProcessor.new(this)
        _rawInputProcessor = FormInputProcessor.new(this)
        _inputProcessor = this.getRawGameInputProcessor()
        _YIELD_SLEEP = 100
  }
    

    construct new(commandListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered) {
        super(commandListener, CanvasStrings.getInstance().EMPTY_CHILD_NAME_LIST, true)
        initFields_AllBinaryGameCanvas()
        _highScoresHelper = highScoresFactoryInterface.createHighScoresHelper()
        _gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
        this.init(gameLayerManager, buffered)
        _highScoresFactoryInterface = highScoresFactoryInterface
        if (((_gameLayerManager.getGameInfo().getGameType() == _gameTypeFactory.BOT) || (_gameLayerManager.getGameInfo().getGameType() == _gameTypeFactory.NONE))) {
            _gameBehavior = DemoGameBehavior.getInstance()
            _menuBehavior = BaseMenuBehavior.getInstance()
        } else {
            _gameBehavior = BaseGameBehavior.getInstance()
            _menuBehavior = this.getInGameMenuBehavior()
        }
        this.initPopupMenu()
        this.initMenu()
        this.initSpecialPaint()
        DisplayChangeEventHandler.getInstance().addListenerInterface(this)
    }
    

    updateMeasurement(graphics) {
        var jerror0 = Fiber.new {
            var font = graphics.getFont()
            this.logUtil.putF(StringMaker.new().append(this.commonStrings.START).append(this.canvasStrings.FD_WIDTH).appendint(JR.i32(MyFontProcessor.defaultCharWidth(font))).append(this.canvasStrings.FD_HEIGHT).appendint(JR.i32(font.getHeight())).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT)
            _fontHeightP = font.getHeight()
            _myFormUtil.updateMeasurement(graphics)
            var popupMenuRectangle = _myFormUtil.getPopupMenuRectangle()
            var basicPopupMenuPaintable = (this.getOpenMenuPaintable())
            basicPopupMenuPaintable.init(popupMenuRectangle)
            if ((this.getPopupMenuInputProcessor() != NoMenuInputProcessor.getInstance())) {
                var popupMenuInputProcessor = (this.getPopupMenuInputProcessor())
                popupMenuInputProcessor.init(popupMenuRectangle)
            }
            _myFontProcessor = MyFontProcessor.getInstance()
        }.try()
        if (jerror0 != null) {
            var e = jerror0
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        }
    }
    

    getInGameMenuBehavior() {
        return InGameMenuBehavior.getInstance()
    }
    

    setCurrentThread() {
        if (J2MEUtil.isHTML()) {
            super.setCurrentThreadFake()
        } else {
            super.setCurrentThread()
        }
    }
    

    onEvent(eventObject) {
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, this)
    }
    

    onDisplayChangeEvent(displayChangeEvent) {
        var jerror1 = Fiber.new {
            this.logUtil.putF(StringMaker.new().append(this.commonStrings.START).append(DisplayInfoSingleton.getInstance().toString()).toString(), this, this.canvasStrings.UPDATE_MEASUREMENT)
            _myFontProcessor = _updateMyFontProcessor
            _menuBehavior.onDisplayChangeEvent(this, displayChangeEvent)
        }.try()
        if (jerror1 != null) {
            var e = jerror1
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e)
        }
    }
    

    updateMenuFromEvent(displayChangeEvent) {
        var formType = FormTypeFactory.getInstance().getFormType()
        var rectangle = _formUtil.createFormRectangle()
        _menuForm.init(rectangle, formType)
        if ((_currentTouchInputFactory != NoButtonsTouchInputFactory.getInstance())) {
            _touchButtonFactory.toggle(this.isPaused(), _currentTouchInputFactory.getList())
        }
        _myFontProcessor = _updateMyFontProcessor
    }
    

    processSleep() {
        super.processSleep()
        if (AllBinaryMediaManager.update()) {
            if (!_primaryPlayerQueue.process()) {
                _secondaryPlayerQueue.process()
            }
        }
        if ((_menuInputProcessor.processInputList() != -1)) {
            this.runnableCanvasRefreshHelper.process()
        }
    }
    

    initPopupMenu() {
        if ((_popupMenuInputProcessor == NoMenuInputProcessor.getInstance())) {
            var features = Features.getInstance()
            var popupMenuRectangle = _myFormUtil.getPopupMenuRectangle()
            if (features.isFeature(_touchFeatureFactory.TOUCH_ENABLED)) {
                this.setOpenMenuPaintable(BasicPopupMenuPaintable.new(popupMenuRectangle, _gameLayerManager.getBackgroundBasicColor(), _gameLayerManager.getForegroundBasicColor()))
                this.setPopupMenuInputProcessor(PopupMenuInputProcessor.new(BasicArrayListD.new(), -1, this, popupMenuRectangle))
            }
        } else {
        }
    }
    

    initMenu() {
        var jerror2 = Fiber.new {
            _menuBehavior.initMenu(this)
        }.try()
        if (jerror2 != null) {
            var e = jerror2
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e)
        }
    }
    

    initMenu2() {
        this.closeMenu()
        var formType = FormTypeFactory.getInstance().getFormType()
        var gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance()
        var commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        var items = commandTextItemArrayFactory.getInstance(this.getCommandStack(), _gameLayerManager.getBackgroundBasicColor(), _gameLayerManager.getForegroundBasicColor())
        var rectangle = _formUtil.createFormRectangle()
        this.setMenuForm(CommandCurrentSelectionFormFactory.getInstance(StringUtil.getInstance().EMPTY_STRING, items, rectangle, formType, 25, false, _gameLayerManager.getBackgroundBasicColor(), _gameLayerManager.getForegroundBasicColor()))
        var scrollSelectionForm = this.getMenuForm()
        var features = Features.getInstance()
        if (features.isFeature(_touchFeatureFactory.TOUCH_ENABLED)) {
            _mainMenuInputProcessor = PopupCommandFormInputProcessor.new(BasicArrayListD.new(), -1, this, scrollSelectionForm, this.getPopupMenuInputProcessor())
        } else {
        }
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor())
        if ((scrollSelectionForm != ScrollSelectionFormNoneFactory.getInstance())) {
            this.setFormPaintable(FormPaintable.new(scrollSelectionForm))
        } else {
        }
        this.closeMenu()
    }
    

    updateMenu() {
        var jerror3 = Fiber.new {
            _menuBehavior.updateMenu(this)
        }.try()
        if (jerror3 != null) {
            var e = jerror3
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "initMenu", e)
        }
    }
    

    updateMenu2() {
        var scrollSelectionForm = this.getMenuForm()
        scrollSelectionForm.deleteAll()
        var gameLimitedCommandTextItemArrayFactory = GameLimitedCommandTextItemArrayFactory.getInstance()
        var commandTextItemArrayFactory = gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory()
        var items = commandTextItemArrayFactory.getInstance(this.getCommandStack(), _gameLayerManager.getBackgroundBasicColor(), _gameLayerManager.getForegroundBasicColor())
        var size = items.count
        if (true) {
            var index = 0
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index + 1)
                }
                jfirst = false
                if (!((index < size))) break
            scrollSelectionForm.append(items[index])
            }
        }
        var formType = FormTypeFactory.getInstance().getFormType()
        var rectangle = _formUtil.createFormRectangle()
        scrollSelectionForm.init(rectangle, formType)
    }
    

    pause() {
        _gameBehavior.pause(this)
        this.closeMenu()
        super.pause()
        _touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance())
        this.tsUtil.gc()
    }
    

    unPause() {
        this.logUtil.putF(this.commonStrings.START, this, _gameStrings.UNPAUSE)
        this.closeMenu()
        this.tsUtil.gc()
        super.unPause()
        _touchButtonFactory.toggle(this.isPaused(), BasicArrayListUtil.getInstance().getImmutableInstance())
        _gameBehavior.unPause(this)
    }
    

    isPausable() {
        if ((CurrentDisplayableFactory.getInstance().getUsedRunnable() == NullWaitGameRunnable.getInstance())) {
            return true
        } else {
            return false
        }
    }
    

    popupMenu() {
        _menuBehavior.popupMenu(this)
    }
    

    popupMenu2() {
        _primaryPlayerQueue.add(SelectSound.getInstance())
        this.setMenuPaintable(this.getFormPaintable())
        this.setMenuInputProcessor(_mainMenuInputProcessor)
        _basicMotionGesturesHandler.addListenerInterface(_mainMenuInputProcessor)
        _gameKeyEventHandler.addListener(_mainMenuInputProcessor)
    }
    

    toggleMenu() {
        this.logUtil.putF(this.commonStrings.START, this, _gameStrings.TOGGLE_MENU)
        if ((this.getMenuPaintable() == this.getOpenMenuPaintable())) {
            this.pause()
            this.updateMenu()
            this.popupMenu()
        } else if ((this.getMenuPaintable() == this.getFormPaintable())) {
            _primaryPlayerQueue.add(SelectSound.getInstance())
            this.unPause()
        }
    }
    

    closeMenu() {
        _menuBehavior.closeMenu(this)
    }
    

    closeMenu2() {
        this.setMenuPaintable(this.getOpenMenuPaintable())
        _basicMotionGesturesHandler.removeListener(_mainMenuInputProcessor)
        _gameKeyEventHandler.removeListener(_mainMenuInputProcessor)
        this.setMenuInputProcessor(this.getPopupMenuInputProcessor())
    }
    

    open() {
        _basicMotionGesturesHandler.addListenerInterface(_menuInputProcessor)
        _gameKeyEventHandler.addListener(_menuInputProcessor)
    }
    

    close() {
        _basicMotionGesturesHandler.removeListener(_menuInputProcessor)
        _gameKeyEventHandler.removeListener(_menuInputProcessor)
        _primaryPlayerQueue.clear()
        _secondaryPlayerQueue.clear()
    }
    

    processorInit() {
        this.setMainStateProcessor(Processor.getInstance())
        this.setProcessGameProcessorInit()
    }
    

    setProcessGameProcessorInit() {
        this.setProcessGameProcessor(GameProcessor.new(this))
    }
    

    initSpecialPaint() {
        _menuBehavior.initSpecialPaint(this)
    }
    

    init(gameLayerManager, buffered) {
        _gameStateTimeHelper.setStartTimeTNT()
        this.setHighScoreSubmitted(false)
        this.setLayerManager(gameLayerManager)
        if (!buffered) {
            var BUFF_MESSAGE = "XXX Not Buffering Causes Concurrency Issues XXX"
            this.logUtil.putF(BUFF_MESSAGE, this, this.commonStrings.CONSTRUCTOR)
        } else {
            Fiber.abort(JR.exception("Exception", "Buffering is disabled"))
        }
        this.setGameInputProcessor(Processor.getInstance())
        var features = Features.getInstance()
        if (features.isFeature(GameFeatureFactory.getInstance().CHEATING)) {
            _isCheating = true
            _cheatProcessor = CheatGameInputProcessor.new(this)
            _gameKeyEventHandler.addListener(_cheatProcessor)
        } else {
            _isCheating = false
            _cheatProcessor = NoPlayerGameInput.getInstance()
        }
        _realEndGameProcessor = EndGameProcessor.new(this)
        this.setEndGameProcessor(Processor.getInstance())
        _realStartIntermissionProcessor = StartIntermissionProcessor.new(this)
        _startIntermissionProcessor = Processor.getInstance()
        this.setEndGameStatePaintable(EndGamePaintable.new(this))
        this.setEndGamePaintable(NullPaintable.getInstance())
        this.setIntermissionPaintable(NullPaintable.getInstance())
        this.getStartIntermissionInterface().setListener(this)
    }
    

    notifyIntermission(enable) {
        if (enable) {
            _startIntermissionProcessor = _realStartIntermissionProcessor
        } else {
            _startIntermissionProcessor = Processor.getInstance()
        }
        if (enable) {
            this.setIntermissionPaintable(this.getStartIntermissionPaintable())
        } else {
            this.setIntermissionPaintable(NullPaintable.getInstance())
        }
    }
    

    mediaInit() {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)
    }
    

    initConfigurable(abeClientInformation) {
        var progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(50, "Setting Configurables")
        GameInitializationUtil.getInstance().initGame(abeClientInformation, this, _gameInitializationInterfaceFactoryInterface)
        var gameFeatureFactory = GameFeatureFactory.getInstance()
        var changedGameFeatureListener = ChangedGameFeatureListener.getInstance()
        if (changedGameFeatureListener.isChangedFeature(gameFeatureFactory.SOUND)) {
            var features = Features.getInstance()
            this.logUtil.putF(StringMaker.new().append("Sound Changing To: ").appendboolean(features.isFeature(gameFeatureFactory.SOUND)).toString(), this, "initConfigurable")
            this.mediaInit()
            changedGameFeatureListener.remove(gameFeatureFactory.SOUND)
        }
        var sensorFeatureFactory = SensorFeatureFactory.getInstance()
        if (((changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.ORIENTATION_SENSORS) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.NO_ORIENTATION)) || changedGameFeatureListener.isChangedFeature(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS))) {
            changedGameFeatureListener.remove(sensorFeatureFactory.NO_ORIENTATION)
            changedGameFeatureListener.remove(sensorFeatureFactory.ORIENTATION_SENSORS)
            changedGameFeatureListener.remove(sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)
        }
        var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        this.loadResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_GAME)
    }
    

    initApp(abeClientInformation) {
        this.initConfigurable(abeClientInformation)
        this.processorInit()
        _sensorGameUpdateProcessor.process(_gameLayerManager)
        _sensorGameUpdateProcessor.sendNotifications(_gameLayerManager)
        this.initTouch()
    }
    

    initTouch() {
        var gameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        var resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_TOUCH)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
        _touchButtonFactory.defaultList()
        this.updateTouch()
        this.postInitTouch()
    }
    

    updateCurrentTouchInputFactory(nextTouchInput) {
        if ((nextTouchInput != _currentTouchInputFactory)) {
            _currentTouchInputFactory = nextTouchInput
            PreLogUtil.put(_currentTouchInputFactory.toString(), this, _gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY)
            _touchButtonFactory.toggle(this.isPaused(), _currentTouchInputFactory.getList())
        }
    }
    

    updateTouch() {
        _gameBehavior.updateTouch(this)
    }
    

    updateTouch2() {
        var features = Features.getInstance()
        if (features.isFeature(_touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            if (((_gameLayerManager.getGameInfo().getCurrentLevel() - this.getStartLevel()) == 1)) {
                this.setTouchPaintableP(NullPaintable.getInstance())
            }
        }
    }
    

    postInitTouch() {
        this.setTouchButtonsPaintable(TouchButtonsPaintableFactory.getInstance(_gameLayerManager.getForegroundBasicColor()))
        this.updateScreenButtonPaintable()
    }
    

    initCommands(cmdListener) {
        this.removeAllCommands()
        this.addCommands()
        this.setCommandListener(cmdListener)
    }
    

    addCommands() {
        var gameCommandsFactory = GameCommandsFactory.getInstance()
        var myCommandsFactory = MyCommandsFactory.getInstance()
        if ((DebugFactory.getInstance() != NoDebug.getInstance())) {
            this.addCommand(gameCommandsFactory.START_TRACE)
        }
        this.addCommand(gameCommandsFactory.RESTART_COMMAND)
        this.addCommand(myCommandsFactory.PAUSE_COMMAND)
        this.addCommand(gameCommandsFactory.QUIT_COMMAND)
        var isOverScan = OperatingSystemFactory.getInstance().getOperatingSystemInstance().isOverScan()
        if (J2MEUtil.isHTML()) {
        } else if (SWTUtil.isSWT) {
        } else if (!isOverScan) {
            if ((TouchScreenFactory.getInstance().isTouch() && InGameFeatures.new().isAny())) {
                this.addCommand(InGameOptionsForm.DISPLAY)
            }
            this.addCommand(gameCommandsFactory.SAVE)
            this.addCommand(gameCommandsFactory.DISPLAY_LOAD_FORM)
        }
    }
    

    itemStateChanged(item) {
        var jerror4 = Fiber.new {
            var itemLabel = item.getLabel()
            this.logUtil.putF(StringMaker.new().append(this.commonLabels.ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged")
            if ((item is ChoiceGroup)) {
                var gameFeatureUtil = GameFeatureUtil.getInstance()
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup(item)
                } else {
                    gameFeatureUtil.updateMultiple(item)
                }
            }
            _sensorGameUpdateProcessor.process(_gameLayerManager)
            this.updateTouch()
            this.updateScreenButtonPaintable()
            _sensorGameUpdateProcessor.sendNotifications(_gameLayerManager)
        }.try()
        if (jerror4 != null) {
            var e = jerror4
            this.logUtil.put(this.commonStrings.EXCEPTION, this, "itemStateChanged", e)
        }
    }
    

    updateScreenButtonPaintable() {
        _gameBehavior.updateScreenButtonPaintable(this)
    }
    

    updateScreenButtonPaintable2() {
        var features = Features.getInstance()
        if (features.isFeature(_touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable())
            this.setStartLevel(_gameLayerManager.getGameInfo().getCurrentLevel())
        } else if (features.isFeature(_touchFeatureFactory.SHOW_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(this.getTouchButtonsPaintable())
        } else if (features.isFeature(_touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            this.setTouchPaintableP(NullPaintable.getInstance())
        } else {
            this.setTouchPaintableP(NullPaintable.getInstance())
        }
    }
    

    getLayerManager() {
        return _gameLayerManager
    }
    

    setLayerManager(layerManager) {
        _gameLayerManager = layerManager
    }
    

    isGameOver() {
        return _gameOver
    }
    

    setGameOver(gameOver) {
        _gameOver = gameOver
    }
    

    processGameOver() {
        PreLogUtil.put(this.commonStrings.START, this, _gameStrings.SET_GAME_OVER)
        this.setGameOver(true)
        this.removePauseCommand()
        this.setGameState(_gameStateFactory.SHOW_END_RESULT_GAME_STATE)
        this.setEndGamePaintable(this.getEndGameStatePaintable())
    }
    

    isHighScoreSubmitted() {
        return _highScoreSubmitted
    }
    

    setHighScoreSubmitted(highScoreSubmitted) {
        _highScoreSubmitted = highScoreSubmitted
        if (highScoreSubmitted) {
            _highScoresHelper.setSelectedHighScores(NullHighScoresSingletonFactory.getInstance())
        }
        this.logUtil.putF(StringMaker.new().append("isHighScoreSubmitted: ").appendboolean(highScoreSubmitted).toString(), this, "setHighScoreSubmitted")
    }
    

    getGameState() {
        return _gameState
    }
    

    setGameState(gameState) {
        this.logUtil.putF(StringMaker.new().append(_gameStrings.GAME_STATE).append(this.stringUtil.toString(gameState)).toString(), this, _gameStrings.SET_GAME_STATE)
        _gameState = gameState
        _gameStateTimeHelper.setStartTimeTNT()
        this.updateEndGameProcessor()
        this.updateGameKeyEventProcessor()
        _gameBehavior.setGameState(this)
    }
    

    updateGameState() {
        var gameAdState = _gameAdStateFactory.getCurrentInstance()
        gameAdState.processAdState(_gameState, _gameLayerManager.getGameInfo().getGameType())
        if ((_gameState != _gameStateFactory.PLAYING_GAME_STATE)) {
            gameAdState.processPageAdState()
        }
    }
    

    updateGameKeyEventProcessor() {
        if (((this.getGameState() != _gameStateFactory.PLAYING_GAME_STATE) || _isCheating)) {
        } else {
        }
    }
    

    removeAllGameKeyInputListenersOnBuild() {
        this.removeAllGameKeyInputListeners()
    }
    

    removeAllGameKeyInputListeners() {
        _gameBehavior.removeAllGameKeyInputListeners(this)
    }
    

    removeAllGameKeyInputListeners2() {
        this.logUtil.putF("Remove PlayerInput Listeners", this, "removeAllGameKeyInputListeners")
        if (true) {
            var index = JR.i32(_localPlayerGameInputList.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            var playerGameInput = _localPlayerGameInputList.get(index)
            this.removeKeyInputListener(playerGameInput)
            playerGameInput.removeNonAIInputGameKeyEvents()
            }
        }
    }
    

    removeKeyInputListener(playerGameInput) {
        _gameKeyEventHandler.removeListener(playerGameInput)
    }
    

    updateEndGameProcessor() {
        _gameBehavior.updateEndGameProcessor(this)
    }
    

    updateEndGameProcessor2() {
        if (((this.getGameState() == _gameStateFactory.SHOW_END_RESULT_GAME_STATE) || (this.getGameState() == _gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE))) {
            this.setEndGameProcessor(_realEndGameProcessor)
        } else {
            this.setEndGameProcessor(Processor.getInstance())
        }
    }
    

    buildGameInit(isPortion) {
    }
    

    cleanupGame() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.CLEANUP)
        var progressCanvas = ProgressCanvasFactory.getInstance()
        progressCanvas.addNormalPortion(10, "Cleaning Up")
        _primaryPlayerQueue.clear()
        _secondaryPlayerQueue.clear()
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
    }
    

    loadResourceLoadingLevel(resourceLoadingLevel) {
        var gameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setResourceLoadingLevel(resourceLoadingLevel)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
    }
    

    loadResources(level) {
        var gameInitializedEvent = GameInitializationUtil.getInstance().EVENT
        gameInitializedEvent.setLevel(level)
        GameInitializedEventHandler.getInstance().fireEvent(gameInitializedEvent)
    }
    

    updateColor() {
    }
    

    buildGame(portion) {
        _screenCapture.endRecording()
        _screenCapture.startRecording()
        var progressCanvas = ProgressCanvasFactory.getInstance()
        var features = Features.getInstance()
        progressCanvas.addNormalPortion(portion, "Generic Build")
        this.removeAllGameKeyInputListenersOnBuild()
        this.updateTouch()
        progressCanvas.addNormalPortion(portion, "High Scores")
        _highScoresFactoryInterface.fetchHighScores(_gameLayerManager.getGameInfo(), _highScoresHelper)
        this.setHighScoresPaintable(NullPaintable.getInstance())
        progressCanvas.addNormalPortion(portion, "Finishing.")
        this.getEndGameInfoP().update(this.getLayerManager().getGameInfo(), this)
        _isSingleKeyRepeatableProcessing = features.isFeature(InputFeatureFactory.getInstance().SINGLE_KEY_REPEAT_PRESS)
        this.setGameOver(false)
        progressCanvas.addNormalPortion(portion, "Finishing..")
        this.updateColor()
        this.getStartIntermissionPaintable().update()
        if (!this.isRunningInAnotherThread()) {
            return
        }
        progressCanvas.addNormalPortion(portion, "Finishing...")
        if ((this.isMainCanvas() || !this.isInitialized())) {
            if (features.isFeature(MainFeatureFactory.getInstance().LOAD_ONDEMAND)) {
                if ((this.getCustomCommandListener() != null)) {
                    progressCanvas.end()
                }
            } else {
                progressCanvas.end()
            }
            this.setInitialized(true)
        }
        if ((this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER)) {
            this.logUtil.putF("Show Game Paintable in DemoCanvas Thread", this, _BUILD_GAME)
            _gameCanvasStartListener.showGamePaintable()
        } else {
            this.logUtil.putF("No GameCanvasStartListener", this, _BUILD_GAME)
        }
        _colorFillPaintable.setBasicColorP(_gameLayerManager.getBackgroundBasicColor())
        _gameBehavior.buildGame(this)
    }
    

    buildGame2() {
        PreLogUtil.put(StringMaker.new().append(_gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint(_localPlayerGameInputList.size()).toString(), this, _BUILD_GAME)
        var playerGameInput = null
        if (true) {
            var index = JR.i32(_localPlayerGameInputList.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            playerGameInput = _localPlayerGameInputList.get(index)
            PreLogUtil.put(StringMaker.new().append(_gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append(playerGameInput.toString()).toString(), this, _BUILD_GAME)
            playerGameInput.removeNonAIInputGameKeyEvents()
            this.addKeyInputListener(playerGameInput)
            }
        }
    }
    

    addKeyInputListener(playerGameInput) {
        GameKeyEventHandler.getInstance().addListenerForPlayer(playerGameInput, playerGameInput.getPlayerInputId())
    }
    

    setGameCanvasStartListener(gameCanvasStartListener) {
        _gameCanvasStartListener = gameCanvasStartListener
    }
    

    loadState() {
        this.logUtil.putF(this.commonStrings.START, this, this.commonStrings.LOAD)
        var hashtable = this.getLoadStateHashtable()
        if (((hashtable != null) && (hashtable.size() > 0))) {
            var levelAsString = hashtable.get(GameInfo.LEVEL_NAME)
            var level = levelAsString.intValue()
            var gameInfo = _gameLayerManager.getGameInfo()
            gameInfo.setCurrentLevel(level)
        }
    }
    

    getLoadStateHashtable() {
        this.logUtil.putF(StringMaker.new().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString(_hashtable)).toString(), this, "getLoadStateHashtable")
        return _hashtable
    }
    

    setLoadStateHashtable(hashtable) {
        this.logUtil.putF(StringMaker.new().append(this.commonLabels.START_LABEL).append(this.stringUtil.toString(hashtable)).toString(), this, "setLoadStateHashtable")
        _hashtable = hashtable
    }
    

    getCurrentStateHashtable() {
        var hashtable = this.stdUtil.createHashtable()
        var level = _gameLayerManager.getGameInfo().getCurrentLevel()
        hashtable.put(GameInfo.LEVEL_NAME.toString(), JR.str(level))
        this.logUtil.putF(StringMaker.new().append("End: ").append(this.stringUtil.toString(hashtable)).toString(), this, "getCurrentStateHashtable")
        return hashtable
    }
    

    paintGameOver(graphics) {
        ForcedLogUtil.log(this.commonStrings.NOT_IMPLEMENTED, this)
    }
    

    draw(graphics) {
        _colorFillPaintable.paint(graphics)
        _basicSetColorUtil.setBasicColorP(graphics, _gameLayerManager.getForegroundBasicColor())
        _gameSpecificPaintable.paint(graphics)
    }
    

    clear(graphics) {
        _colorFillPaintable.paint(graphics)
    }
    

    paint(graphics) {
        _myFontProcessor.process(graphics)
        _baseGameStatistics.nextRefresh()
        this.draw(graphics)
        _menuPaintable.paint(graphics)
        _progressPaintable.paint(graphics)
    }
    

    paintThreed(graphics) {
    }
    

    processEndLevelIntermissionGameState() {
    }
    

    nonBotPaint(graphics) {
        _endGamePaintable.paint(graphics)
        _intermissionPaintable.paint(graphics)
        this.paintIntermission(graphics)
        _touchPaintable.paint(graphics)
    }
    

    paintIntermission(graphics) {
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
        _inputProcessor.keyPressedByDevice(keyCode, deviceId)
    }
    

    keyRepeatedByDevice(keyCode, deviceId) {
        if (_isSingleKeyRepeatableProcessing) {
            _inputProcessor.keyPressedByDevice(keyCode, deviceId)
        }
    }
    

    keyReleasedByDevice(keyCode, deviceId) {
        _inputProcessor.keyReleasedByDevice(this, keyCode, deviceId)
    }
    

    handleRawKey(keyCode, deviceId, repeated) {
    }
    

    endProgress(isProgress) {
        var portion = 30
        if ((isProgress && this.isMainCanvas())) {
            var myCommandsFactory = MyCommandsFactory.getInstance()
            var progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.start()
            this.getCustomCommandListener().commandAction(myCommandsFactory.SET_DISPLAYABLE, progressCanvas)
            portion = 4
        }
        return portion
    }
    

    processPlayingGame() {
        _cheatProcessor.update()
        _sensorGameUpdateProcessor.getInputSensor().update()
        _gameInputProcessor.process()
        _gameLayerManager.process()
        _startIntermissionProcessor.process()
    }
    

    threadInit() {
    }
    

    processGame() {
        super.process()
        if (AllBinaryMediaManager.update()) {
            if (!_primaryPlayerQueue.process()) {
                _secondaryPlayerQueue.process()
            }
        }
        _mainStateProcessor.process()
        _menuInputProcessor.processInputList()
        _endGameProcessor.process()
        _baseGameStatistics.nextFrame()
    }
    

    notifyDonePainting() {
        if (true) {
            this.threadObjectUtil.notifyObject(this)
        }
    }
    

    shouldWait() {
        var features = Features.getInstance()
        if (AndroidUtil.isAndroid()) {
        } else if (features.isFeature(_openGLFeatureFactory.OPENGL_2D)) {
        } else {
            if (features.isDefault(_openGLFeatureFactory.OPENGL)) {
                var openGLImageSpecificFactory = OpenGLImageSpecificFactory.getInstance()
                while (openGLImageSpecificFactory.updating) {
                    Thread.sleep(_YIELD_SLEEP)
                }
            }
        }
    }
    

    run() {
        var jerror5 = Fiber.new {
            this.logUtil.putF(this.commonStrings.START_RUNNABLE, this, this.commonStrings.RUN)
            var progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(50, "Game Thread")
            this.setCurrentThread()
            this.setRunning(true)
            if ((this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER)) {
                Thread.sleep(_YIELD_SLEEP)
            }
            this.shouldWait()
            this.threadInit()
            if ((this.getCustomCommandListener() == NullCommandListener.NULL_COMMAND_LISTENER)) {
                Thread.sleep(_YIELD_SLEEP)
            }
            this.open()
            var gameAdState = _gameAdStateFactory.getCurrentInstance()
            gameAdState.init()
            gameAdState.setGameIsReady(true)
            _gameBehavior.run(this)
            this.logUtil.putF(this.commonStrings.END_RUNNABLE, this, this.commonStrings.RUN)
        }.try()
        if (jerror5 != null) {
            var e = jerror5
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.commonStrings.RUN, e)
        }
    }
    

    run2() {
        var features = Features.getInstance()
        if ((features.isDefault(_openGLFeatureFactory.OPENGL_AS_GAME_THREAD) || J2MEUtil.isHTML())) {
            if (features.isDefault(_openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) {
                this.logUtil.putF(_openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName(), this, this.commonStrings.RUN)
            }
            if (J2MEUtil.isHTML()) {
                this.logUtil.putF(GraphicsStrings.getInstance().HTML, this, this.commonStrings.RUN)
            }
            var currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
            currentDisplayableFactory.setRunnable(_gameRunnable)
            currentDisplayableFactory.setDisplayable(this)
            OpenGLThreadUtil.getInstance().onResume()
        } else if (features.isDefault(_openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) {
            this.logUtil.putF(_openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName(), this, this.commonStrings.RUN)
            OpenGLThreadUtil.getInstance().onResume()
            while (this.isRunning()) {
                this.run3()
            }
            this.end()
        } else {
            this.logUtil.putF("this thread", this, this.commonStrings.RUN)
            while (this.isRunning()) {
                this.run3()
            }
            this.end()
        }
    }
    

    run3() {
        this.loopTimeHelper.setStartTime(_gameTickTimeDelayHelper.setStartTime())
        _gameTickDisplayInfoSingleton.update()
        this.processGame()
        this.processLoopSleep()
    }
    

    setRunning(running) {
        super.setRunning(running)
        var jerror6 = Fiber.new {
            var features = Features.getInstance()
            if (running) {
            } else {
                if ((features.isDefault(_openGLFeatureFactory.OPENGL) || SWTUtil.isSWT)) {
                    if ((_gameLayerManager.getGameInfo().getGameType() != _gameTypeFactory.BOT)) {
                        var currentDisplayableFactory = CurrentDisplayableFactory.getInstance()
                        currentDisplayableFactory.clearRunnable()
                    }
                    this.end()
                }
            }
        }.try()
        if (jerror6 != null) {
            var e = jerror6
            this.logUtil.put(this.commonStrings.EXCEPTION, this, this.SET_RUNNING, e)
        }
    }
    

    end() {
        _screenCapture.endRecording()
        _baseGameStatistics.add(StringMaker.new().append(_baseGameStatistics.toString()).append(CommonSeps.getInstance().NEW_LINE).toString())
        _baseGameStatistics.init()
        _gameKeyEventHandler.removeListener(_cheatProcessor)
        this.close()
        this.removeAllGameKeyInputListeners()
        this.endGameThread()
    }
    

    endGameThread() {
        DisplayChangeEventHandler.getInstance().removeListener(this)
        GameLevelDisplayChangeEventListenersFactory.getInstance().clear()
        var gameAdState = _gameAdStateFactory.getCurrentInstance()
        gameAdState.notPlayingAdState()
    }
    

    createHighScore(score) {
        var gameInfo = _gameLayerManager.getGameInfo()
        return HighScore.new(0, "NONE", GameInfo.new(gameInfo.getGameType(), gameInfo.getGameMode(), PlayerTypesFactory.getInstance().PLAYER_TYPE_ONE, 0, 0), score)
    }
    

    setHighScore(abeClientInformation, name, score, autoSubmit, isLast) {
        _gameBehavior.setHighScore(abeClientInformation, this, name, score, autoSubmit, isLast)
    }
    

    setHighScore2(abeClientInformation, name, score, autoSubmit, isLast) {
        var highScore = this.createHighScore(score)
        var textBox = HighScoreTextBox.new(_highScoresFactoryInterface, _highScoresHelper, abeClientInformation, _gameLayerManager.getGameInfo(), this.getCustomCommandListener(), name, highScore, _gameLayerManager.getBackgroundBasicColor(), _gameLayerManager.getForegroundBasicColor())
        if (isLast) {
            this.getCustomCommandListener().commandAction(GameCommandsFactory.getInstance().SET_MENU_DISPLAYABLE, textBox)
        }
        if (autoSubmit) {
            SecondaryThreadPool.getInstance().runTask(SaveHighScoreRunnable.new(isLast, textBox))
        }
    }
    

    getGameStateTimeHelper() {
        return _gameStateTimeHelper
    }
    

    setInitialized(initialized) {
        _initialized = initialized
    }
    

    isInitialized() {
        return _initialized
    }
    

    getSourceId() {
        return AllBinaryGameCanvas.id
    }
    

    setProgressPaintable(paintable) {
        _progressPaintable = paintable
    }
    

    getStartIntermissionInterface() {
        return _startIntermissionInterface
    }
    

    getEndLevelIntermissionInterface() {
        return _endLevelIntermissionInterface
    }
    

    setTouchPaintableP(paintable) {
        _touchPaintable = paintable
    }
    

    getTouchPaintableP() {
        return _touchPaintable
    }
    

    setEndGamePaintable(endGamePaintable) {
        _endGamePaintable = endGamePaintable
    }
    

    getEndGamePaintable() {
        return _endGamePaintable
    }
    

    setIntermissionPaintable(intermissionPaintable) {
        _intermissionPaintable = intermissionPaintable
    }
    

    getIntermissionPaintable() {
        return _intermissionPaintable
    }
    

    getEndGameInfoP() {
        return _endGameInfo
    }
    

    setHighScoresPaintable(highScoresPaintable) {
        _highScoresPaintable = highScoresPaintable
    }
    

    getHighScoresPaintable() {
        return _highScoresPaintable
    }
    

    getRealHighScoresPaintable() {
        return _realHighScoresPaintable
    }
    

    clearPlayerGameInputList() {
        var playerGameInput = null
        if (true) {
            var index = JR.i32(_localPlayerGameInputList.size() - 1)
            var jfirst = true
            while (true) {
                if (!jfirst) {
                    index = JR.i32(index - 1)
                }
                jfirst = false
                if (!((index >= 0))) break
            playerGameInput = _localPlayerGameInputList.get(index)
            _gameKeyEventHandler.removeListener(playerGameInput)
            }
        }
        _localPlayerGameInputList.clear()
    }
    

    addPlayerGameInput(playerGameInput) {
        _localPlayerGameInputList.add(playerGameInput)
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
    

    getStartLevel() {
        return _startLevel
    }
    

    setStartLevel(startLevel) {
        _startLevel = startLevel
    }
    

    setTouchButtonsPaintable(touchButtonsPaintable) {
        _touchButtonsPaintable = touchButtonsPaintable
    }
    

    getTouchButtonsPaintable() {
        return _touchButtonsPaintable
    }
    

    setGameInputProcessor(gameInputProcessor) {
        _gameInputProcessor = gameInputProcessor
    }
    

    getGameInputProcessor() {
        return _gameInputProcessor
    }
    

    setEndGameProcessor(endGameProcessor) {
        _endGameProcessor = endGameProcessor
    }
    

    getEndGameProcessor() {
        return _endGameProcessor
    }
    

    setEndGameStatePaintable(endGameStatePaintable) {
        _endGameStatePaintable = endGameStatePaintable
    }
    

    getEndGameStatePaintable() {
        return _endGameStatePaintable
    }
    

    setNonBotPaintableP(nonBotPaintable) {
        _nonBotPaintable = nonBotPaintable
    }
    

    getNonBotPaintableP() {
        return _nonBotPaintable
    }
    

    setStartIntermissionPaintable(startIntermissionPaintable) {
        _startIntermissionPaintable = startIntermissionPaintable
    }
    

    getStartIntermissionPaintable() {
        return _startIntermissionPaintable
    }
    

    setMainStateProcessor(mainStateProcessor) {
        _mainStateProcessor = mainStateProcessor
    }
    

    getMainStateProcessor() {
        return _mainStateProcessor
    }
    

    setProcessGameProcessor(processGameProcessor) {
        _processGameProcessor = processGameProcessor
    }
    

    getProcessGameProcessor() {
        return _processGameProcessor
    }
    

    setOpenMenuPaintable(openMenuPaintable) {
        _openMenuPaintable = openMenuPaintable
    }
    

    getOpenMenuPaintable() {
        return _openMenuPaintable
    }
    

    setPopupMenuInputProcessor(popupMenuInputProcessor) {
        _popupMenuInputProcessor = popupMenuInputProcessor
    }
    

    getPopupMenuInputProcessor() {
        return _popupMenuInputProcessor
    }
    

    getSensorGameUpdateProcessor() {
        return _sensorGameUpdateProcessor
    }
    

    getRawGameInputProcessor() {
        return _rawGameInputProcessor
    }
    

    getRawInputProcessor() {
        return _rawInputProcessor
    }
    

    setInputProcessor(inputProcessor) {
        _inputProcessor = inputProcessor
    }
    

    getInputProcessor() {
        return _inputProcessor
    }
    

    setMenuPaintable(menuPaintable) {
        _menuPaintable = menuPaintable
    }
    

    getMenuPaintable() {
        return _menuPaintable
    }
    

    setFormPaintable(formPaintable) {
        _formPaintable = formPaintable
    }
    

    getFormPaintable() {
        return _formPaintable
    }
    

    setGameSpecificPaintableP(gameSpecificPaintable) {
        _gameSpecificPaintable = gameSpecificPaintable
    }
    

    getGameSpecificPaintableP() {
        return _gameSpecificPaintable
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
    

    getType() {
        return AllBinaryGameCanvas.TYPE
    }
    

    getTitle() {
        return super.getTitle()
    }
    

    isPaused() {
        return super.isPaused()
    }
}

import "../../../../../javax/microedition/lcdui/ChoiceGroup" for ChoiceGroup
import "../../../../../javax/microedition/lcdui/CommandListener" for CommandListener
import "../../../../../javax/microedition/lcdui/Font" for Font
import "../../../../../javax/microedition/lcdui/Graphics" for Graphics
import "../../../../../javax/microedition/lcdui/Item" for Item
import "../../../../../javax/microedition/lcdui/NullCommandListener" for NullCommandListener
import "../../../../../org/allbinary/AndroidUtil" for AndroidUtil
import "../../../../../org/allbinary/J2MEUtil" for J2MEUtil
import "../../../../../org/allbinary/business/advertisement/GameAdStateFactory" for GameAdStateFactory
import "../../../../../org/allbinary/canvas/BaseGameStatistics" for BaseGameStatistics
import "../../../../../org/allbinary/canvas/GameStatisticsFactory" for GameStatisticsFactory
import "../../../../../org/allbinary/canvas/Processor" for Processor
import "../../../../../org/allbinary/debug/DebugFactory" for DebugFactory
import "../../../../../org/allbinary/debug/NoDebug" for NoDebug
import "../../../../../org/allbinary/game/GameAdState" for GameAdState
import "../../../../../org/allbinary/game/GameInfo" for GameInfo
import "../../../../../org/allbinary/game/GameStrings" for GameStrings
import "../../../../../org/allbinary/game/GameTypeFactory" for GameTypeFactory
import "../../../../../org/allbinary/game/Intermission" for Intermission
import "../../../../../org/allbinary/game/IntermissionCompositeInterface" for IntermissionCompositeInterface
import "../../../../../org/allbinary/game/IntermissionEnableListenerInterface" for IntermissionEnableListenerInterface
import "../../../../../org/allbinary/game/IntermissionInterface" for IntermissionInterface
import "../../../../../org/allbinary/game/PlayerTypesFactory" for PlayerTypesFactory
import "../../../../../org/allbinary/game/commands/GameCommandsFactory" for GameCommandsFactory
import "../../../../../org/allbinary/game/configuration/InGameFeatures" for InGameFeatures
import "../../../../../org/allbinary/game/configuration/InGameOptionsForm" for InGameOptionsForm
import "../../../../../org/allbinary/game/configuration/event/ChangedGameFeatureListener" for ChangedGameFeatureListener
import "../../../../../org/allbinary/game/configuration/event/GameInitializedEvent" for GameInitializedEvent
import "../../../../../org/allbinary/game/configuration/event/GameInitializedEventHandler" for GameInitializedEventHandler
import "../../../../../org/allbinary/game/configuration/feature/Features" for Features
import "../../../../../org/allbinary/game/configuration/feature/GameFeatureFactory" for GameFeatureFactory
import "../../../../../org/allbinary/game/configuration/feature/GameFeatureUtil" for GameFeatureUtil
import "../../../../../org/allbinary/game/configuration/feature/InputFeatureFactory" for InputFeatureFactory
import "../../../../../org/allbinary/game/configuration/feature/MainFeatureFactory" for MainFeatureFactory
import "../../../../../org/allbinary/game/configuration/feature/SensorFeatureFactory" for SensorFeatureFactory
import "../../../../../org/allbinary/game/configuration/feature/TouchFeatureFactory" for TouchFeatureFactory
import "../../../../../org/allbinary/game/displayable/GameLevelDisplayChangeEventListenersFactory" for GameLevelDisplayChangeEventListenersFactory
import "../../../../../org/allbinary/game/init/BasicBuildGameInitializerFactory" for BasicBuildGameInitializerFactory
import "../../../../../org/allbinary/game/init/GameInitializationUtil" for GameInitializationUtil
import "../../../../../org/allbinary/game/input/GameInputStrings" for GameInputStrings
import "../../../../../org/allbinary/game/input/InputProcessor" for InputProcessor
import "../../../../../org/allbinary/game/input/NoPlayerGameInput" for NoPlayerGameInput
import "../../../../../org/allbinary/game/input/PlayerGameInput" for PlayerGameInput
import "../../../../../org/allbinary/game/input/event/GameKeyEventHandler" for GameKeyEventHandler
import "../../../../../org/allbinary/game/layer/AllBinaryGameLayerManager" for AllBinaryGameLayerManager
import "../../../../../org/allbinary/game/layer/SWTUtil" for SWTUtil
import "../../../../../org/allbinary/game/paint/ColorFillBasePaintable" for ColorFillBasePaintable
import "../../../../../org/allbinary/game/paint/ColorFillPaintableFactory" for ColorFillPaintableFactory
import "../../../../../org/allbinary/game/resource/ResourceLoadingLevel" for ResourceLoadingLevel
import "../../../../../org/allbinary/game/resource/ResourceLoadingLevelFactory" for ResourceLoadingLevelFactory
import "../../../../../org/allbinary/game/score/HighScore" for HighScore
import "../../../../../org/allbinary/game/score/HighScoresHelperBaseInterface" for HighScoresHelperBaseInterface
import "../../../../../org/allbinary/game/score/HighScoresFactoryInterface" for HighScoresFactoryInterface
import "../../../../../org/allbinary/game/score/HighScoresPaintable" for HighScoresPaintable
import "../../../../../org/allbinary/game/score/NullHighScoresSingletonFactory" for NullHighScoresSingletonFactory
import "../../../../../org/allbinary/game/score/displayable/HighScoreTextBox" for HighScoreTextBox
import "../../../../../org/allbinary/game/state/GameState" for GameState
import "../../../../../org/allbinary/game/state/GameStateFactory" for GameStateFactory
import "../../../../../org/allbinary/graphics/GraphicsStrings" for GraphicsStrings
import "../../../../../org/allbinary/graphics/Rectangle" for Rectangle
import "../../../../../org/allbinary/graphics/ScreenCapture" for ScreenCapture
import "../../../../../org/allbinary/graphics/ScreenCaptureFactory" for ScreenCaptureFactory
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" for ProgressCanvas
import "../../../../../org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" for ProgressCanvasFactory
import "../../../../../org/allbinary/graphics/color/BasicColorFactory" for BasicColorFactory
import "../../../../../org/allbinary/graphics/color/BasicColorSetUtil" for BasicColorSetUtil
import "../../../../../org/allbinary/graphics/displayable/CanvasStrings" for CanvasStrings
import "../../../../../org/allbinary/graphics/displayable/DisplayInfoSingleton" for DisplayInfoSingleton
import "../../../../../org/allbinary/graphics/displayable/GameTickDisplayInfoSingleton" for GameTickDisplayInfoSingleton
import "../../../../../org/allbinary/graphics/displayable/command/MyCommandsFactory" for MyCommandsFactory
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEvent" for DisplayChangeEvent
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventHandler" for DisplayChangeEventHandler
import "../../../../../org/allbinary/graphics/displayable/event/DisplayChangeEventListener" for DisplayChangeEventListener
import "../../../../../org/allbinary/graphics/font/MyFontProcessor" for MyFontProcessor
import "../../../../../org/allbinary/graphics/font/UpdateMyFontInterface" for UpdateMyFontInterface
import "../../../../../org/allbinary/graphics/font/UpdateMyFontProcessor" for UpdateMyFontProcessor
import "../../../../../org/allbinary/graphics/form/CommandCurrentSelectionFormFactory" for CommandCurrentSelectionFormFactory
import "../../../../../org/allbinary/graphics/form/FormPaintable" for FormPaintable
import "../../../../../org/allbinary/graphics/form/FormType" for FormType
import "../../../../../org/allbinary/graphics/form/FormTypeFactory" for FormTypeFactory
import "../../../../../org/allbinary/graphics/form/ScrollSelectionForm" for ScrollSelectionForm
import "../../../../../org/allbinary/graphics/form/ScrollSelectionFormNoneFactory" for ScrollSelectionFormNoneFactory
import "../../../../../org/allbinary/graphics/form/item/CommandTextItemArrayFactory" for CommandTextItemArrayFactory
import "../../../../../org/allbinary/graphics/form/item/ABCustomItem" for ABCustomItem
import "../../../../../org/allbinary/graphics/opengles/CurrentDisplayableFactory" for CurrentDisplayableFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureFactory" for OpenGLFeatureFactory
import "../../../../../org/allbinary/graphics/opengles/OpenGLFeatureUtil" for OpenGLFeatureUtil
import "../../../../../org/allbinary/graphics/opengles/OpenGLThreadUtil" for OpenGLThreadUtil
import "../../../../../org/allbinary/graphics/paint/InitUpdatePaintable" for InitUpdatePaintable
import "../../../../../org/allbinary/graphics/paint/NullInitUpdatePaintable" for NullInitUpdatePaintable
import "../../../../../org/allbinary/graphics/paint/NullPaintable" for NullPaintable
import "../../../../../org/allbinary/graphics/paint/Paintable" for Paintable
import "../../../../../org/allbinary/graphics/paint/PaintableInterface" for PaintableInterface
import "../../../../../org/allbinary/image/opengles/OpenGLImageSpecificFactory" for OpenGLImageSpecificFactory
import "../../../../../org/allbinary/input/gyro/SensorGameUpdateProcessor" for SensorGameUpdateProcessor
import "../../../../../org/allbinary/input/gyro/SingleSensorGameUpdateProcessor" for SingleSensorGameUpdateProcessor
import "../../../../../org/allbinary/input/motion/button/BaseTouchInput" for BaseTouchInput
import "../../../../../org/allbinary/input/motion/button/NoButtonsTouchInputFactory" for NoButtonsTouchInputFactory
import "../../../../../org/allbinary/input/motion/button/TouchButtonFactory" for TouchButtonFactory
import "../../../../../org/allbinary/input/motion/button/TouchButtonsPaintableFactory" for TouchButtonsPaintableFactory
import "../../../../../org/allbinary/input/motion/button/TouchScreenFactory" for TouchScreenFactory
import "../../../../../org/allbinary/input/motion/gesture/observer/BasicMotionGesturesHandler" for BasicMotionGesturesHandler
import "../../../../../org/allbinary/logic/communication/log/ForcedLogUtil" for ForcedLogUtil
import "../../../../../org/allbinary/logic/communication/log/PreLogUtil" for PreLogUtil
import "../../../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../org/allbinary/logic/system/os/OperatingSystemFactory" for OperatingSystemFactory
import "../../../../../org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" for AbeClientInformationInterface
import "../../../../../org/allbinary/logic/util/event/AllBinaryEventObject" for AllBinaryEventObject
import "../../../../../org/allbinary/logic/util/event/EventStrings" for EventStrings
import "../../../../../org/allbinary/media/audio/AllBinaryMediaManager" for AllBinaryMediaManager
import "../../../../../org/allbinary/media/audio/PlayerQueue" for PlayerQueue
import "../../../../../org/allbinary/media/audio/PrimaryPlayerQueueFactory" for PrimaryPlayerQueueFactory
import "../../../../../org/allbinary/media/audio/SecondaryPlayerQueueFactory" for SecondaryPlayerQueueFactory
import "../../../../../org/allbinary/media/audio/SelectSound" for SelectSound
import "../../../../../org/allbinary/string/CommonSeps" for CommonSeps
import "../../../../../org/allbinary/thread/SecondaryThreadPool" for SecondaryThreadPool
import "../../../../../org/allbinary/time/GameTickTimeDelayHelper" for GameTickTimeDelayHelper
import "../../../../../org/allbinary/time/GameTickTimeDelayHelperFactory" for GameTickTimeDelayHelperFactory
import "../../../../../org/allbinary/time/TimeDelayHelper" for TimeDelayHelper
import "../../../../../org/allbinary/util/ABHashtable" for ABHashtable
import "../../../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "../../../../../java/lang/Integer" for Integer
import "../../../../../java/lang/Thread" for Thread
import "./AllBinaryGameCanvasInterface" for AllBinaryGameCanvasInterface
import "./GameCanvasRunnableInterface" for GameCanvasRunnableInterface
import "./MenuListener" for MenuListener
import "./PopupMenuInterface" for PopupMenuInterface
import "./GameCanvasRunnable" for GameCanvasRunnable
import "./GameCanvasPauseRunnable" for GameCanvasPauseRunnable
import "./FormUtil" for FormUtil
import "./MyFormUtil" for MyFormUtil
import "./EndGameInfo" for EndGameInfo
import "./NoMenuInputProcessor" for NoMenuInputProcessor
import "./BasicMenuInputProcessor" for BasicMenuInputProcessor
import "./DemoGameBehavior" for DemoGameBehavior
import "./BaseMenuBehavior" for BaseMenuBehavior
import "./BaseGameBehavior" for BaseGameBehavior
import "./BasicPopupMenuPaintable" for BasicPopupMenuPaintable
import "./PopupMenuInputProcessor" for PopupMenuInputProcessor
import "./InGameMenuBehavior" for InGameMenuBehavior
import "./GameLimitedCommandTextItemArrayFactory" for GameLimitedCommandTextItemArrayFactory
import "./PopupCommandFormInputProcessor" for PopupCommandFormInputProcessor
import "./NullWaitGameRunnable" for NullWaitGameRunnable
import "./GameProcessor" for GameProcessor
import "./CheatGameInputProcessor" for CheatGameInputProcessor
import "./EndGameProcessor" for EndGameProcessor
import "./StartIntermissionProcessor" for StartIntermissionProcessor
import "./EndGamePaintable" for EndGamePaintable
import "./NullDemoPaintable" for NullDemoPaintable
import "./DemoPaintableInterface" for DemoPaintableInterface
import "./GameCanvasInputProcessor" for GameCanvasInputProcessor
import "./FormInputProcessor" for FormInputProcessor
import "./SaveHighScoreRunnable" for SaveHighScoreRunnable

