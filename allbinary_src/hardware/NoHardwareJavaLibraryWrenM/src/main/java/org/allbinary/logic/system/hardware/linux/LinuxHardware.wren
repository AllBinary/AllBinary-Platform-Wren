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
// package org.allbinary.logic.system.hardware.linux

import "../../../../../../allbinary_java" for JObject, JException, JR

class LinuxHardware is JObject {

  initFields_LinuxHardware() {
  }
    

    construct new() {
    super()
    initFields_LinuxHardware()
    }
    

    getMultimedia(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getBridge(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getCpu(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getEthernet(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getFireWire(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getHardDriveController(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getHardDrive(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getMachineAccessControlAddress(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getMonitor(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getUsb(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getVideo(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    getComponent(index) {
        Fiber.abort(JR.exception("RuntimeException", ""))
    }
    

    toString() {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    compareTo(hardwareInterface) {
        return true
    }
    

    difference(hardwareInterface) {
        return StdUtil.getInstance().NULL_TABLE
    }
    

    isNextHardware(nextLine) {
        return false
    }
}

import "../../../../../../org/allbinary/logic/StdUtil" for StdUtil
import "../../../../../../org/allbinary/logic/string/StringUtil" for StringUtil
import "../../../../../../org/allbinary/logic/system/hardware/HardwareInterface" for HardwareInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface" for BridgeInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/CpuInterface" for CpuInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface" for EthernetInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface" for FireWireInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface" for HardDriveControllerInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface" for HardDriveInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface" for HardwareComponentInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface" for MachineAccessControlAddressInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/MediaInterface" for MediaInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface" for MonitorInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/UsbInterface" for UsbInterface
import "../../../../../../org/allbinary/logic/system/hardware/components/interfaces/VideoInterface" for VideoInterface
import "../../../../../../org/allbinary/util/ABHashtable" for ABHashtable

