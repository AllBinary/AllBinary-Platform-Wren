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
// package org.allbinary.thread

import "../../../allbinary_java" for JObject, JException, JR

class ThreadPool is JObject {
    static ROOT_NAME { "-PooledThread-" }
    static NORMAL_PRIORITY {
    if (__NORMAL_PRIORITY_set == null) {
      __NORMAL_PRIORITY_set = true
      __NORMAL_PRIORITY = Thread.NORM_PRIORITY
    }
    return __NORMAL_PRIORITY
  }
  static NORMAL_PRIORITY=(value) {
    __NORMAL_PRIORITY_set = true
    __NORMAL_PRIORITY = value
  }
  logUtil { _logUtil }
  logUtil=(value) { _logUtil = value }
  commonStrings { _commonStrings }
  commonStrings=(value) { _commonStrings = value }
  NULL_RUNNABLE { _NULL_RUNNABLE }
  NULL_RUNNABLE=(value) { _NULL_RUNNABLE = value }
  threadPoolStrings { _threadPoolStrings }
  threadPoolStrings=(value) { _threadPoolStrings = value }
  threadObjectUtil { _threadObjectUtil }
  threadObjectUtil=(value) { _threadObjectUtil = value }
  poolName { _poolName }
  poolName=(value) { _poolName = value }
  priority { _priority }
  priority=(value) { _priority = value }
  isAlive { _isAlive }
  isAlive=(value) { _isAlive = value }
  taskQueue { _taskQueue }
  taskQueue=(value) { _taskQueue = value }
  threadID { _threadID }
  threadID=(value) { _threadID = value }
  numThreads { _numThreads }
  numThreads=(value) { _numThreads = value }
  runningTask { _runningTask }
  runningTask=(value) { _runningTask = value }

  initFields_ThreadPool() {
    _logUtil = null
    _commonStrings = null
    _NULL_RUNNABLE = null
    _threadPoolStrings = null
    _threadObjectUtil = null
    _poolName = null
    _priority = 0
    _isAlive = false
    _taskQueue = null
    _threadID = 0
    _numThreads = 0
    _runningTask = false
        _logUtil = LogUtil.getInstance()
        _commonStrings = CommonStrings.getInstance()
        _NULL_RUNNABLE = NullRunnable.getInstance()
        _threadPoolStrings = ThreadPoolStrings.getInstance()
        _threadObjectUtil = ThreadObjectUtil.getInstance()
        
        
        _isAlive = false
        _taskQueue = BasicArrayListUtil.getInstance().getImmutableInstance()
        _threadID = 0
        
        _runningTask = false
  }
    

    construct new(poolName, numThreads, priority) {
    super()
    initFields_ThreadPool()
        _poolName = poolName
        _priority = priority
        _numThreads = numThreads
    }
    

    init() {
        if (!_isAlive) {
            _isAlive = true
            _taskQueue = BasicArrayListD.new()
            var pooledThread = null
            if (true) {
                var i = 0
                var jfirst = true
                while (true) {
                    if (!jfirst) {
                        i = JR.i32(i + 1)
                    }
                    jfirst = false
                    if (!((i < _numThreads))) break
                pooledThread = PooledThread.new(this)
                pooledThread.setPriority(_priority)
                pooledThread.start()
                }
            }
        }
    }
    

    runAPriorityTask() {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    runTaskWithPriority(task) {
        if (true) {
            if (!_isAlive) {
                this.init()
            }
            if ((task != null)) {
                var size = _taskQueue.size()
                var runnable = null
                var lowerPriorityRunnable = _threadObjectUtil.NULL_PRIORITY_RUNNABLE
                if (true) {
                    var index = 0
                    var jfirst = true
                    while (true) {
                        if (!jfirst) {
                            index = JR.i32(index + 1)
                        }
                        jfirst = false
                        if (!((index < size))) break
                    runnable = _taskQueue.get(index)
                    if ((runnable.getPriority() > task.getPriority())) {
                        lowerPriorityRunnable = runnable
                        break
                    }
                    }
                }
                if ((lowerPriorityRunnable == _threadObjectUtil.NULL_PRIORITY_RUNNABLE)) {
                    _taskQueue.add(task)
                } else {
                    var index = _taskQueue.indexOf(lowerPriorityRunnable)
                    _taskQueue.addAt(index, task)
                }
                this.notify()
            }
        }
    }
    

    runTask(task) {
        if (true) {
            if (!_isAlive) {
                this.init()
            }
            if ((task != null)) {
                _taskQueue.add(task)
                this.notify()
            }
        }
    }
    

    getTask() {
        if (true) {
            while ((_taskQueue.size() == 0)) {
                if (!_isAlive) {
                    return _NULL_RUNNABLE
                }
                this.wait()
            }
            var runnable = _taskQueue.removeAt(0)
            return runnable
        }
    }
    

    clear() {
        if (true) {
            if (_isAlive) {
                _taskQueue.clear()
            }
        }
    }
    

    close() {
        if (true) {
            if (_isAlive) {
                _isAlive = false
                _taskQueue.clear()
            }
        }
    }
    

    join() {
        if (true) {
            _isAlive = false
            _taskQueue.clear()
            this.notifyAll()
        }
    }
    

    isBusy() {
        if (!_isAlive) {
            return false
        }
        if ((_taskQueue.size() > 0)) {
            return true
        }
        if (_runningTask) {
            return true
        }
        return false
    }
    

    threadStarted() {
    }
    

    threadStopped() {
        if ((_numThreads == 1)) {
            _isAlive = false
            _taskQueue.clear()
        }
    }
    

    startTask(task) {
    }
    

    completedTask(task) {
    }
    

    createName() {
        return StringMaker.new().append(_poolName).append(ThreadPool.ROOT_NAME).appendint(Fn.new {
var jold = _threadID
_threadID = JR.i32(jold + 1)
return jold
}.call()).toString()
    }
}

import "../../../org/allbinary/logic/communication/log/LogUtil" for LogUtil
import "../../../org/allbinary/logic/string/StringMaker" for StringMaker
import "../../../org/allbinary/string/CommonStrings" for CommonStrings
import "../../../org/allbinary/util/BasicArrayList" for BasicArrayList
import "../../../org/allbinary/util/BasicArrayListD" for BasicArrayListD
import "../../../org/allbinary/util/BasicArrayListUtil" for BasicArrayListUtil
import "../../../java/lang/Thread" for Thread
import "../../../java/lang/Runnable" for Runnable
import "./NullRunnable" for NullRunnable
import "./ThreadPoolStrings" for ThreadPoolStrings
import "./ThreadObjectUtil" for ThreadObjectUtil
import "./PooledThread" for PooledThread
import "./PriorityRunnable" for PriorityRunnable

