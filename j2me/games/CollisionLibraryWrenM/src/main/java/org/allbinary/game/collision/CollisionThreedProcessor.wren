// Generated Code Do Not Modify
// package org.allbinary.game.collision

import "../../../../allbinary_java" for JObject, JException, JR
import "./CollisionProcessor" for CollisionProcessor

class CollisionThreedProcessor is CollisionProcessor {

  initFields_CollisionThreedProcessor() {
  }

  construct new() {
    super()
    initFields_CollisionThreedProcessor()
  }
    

    isCollision(myLayer, myLayer2) {
        if (((((((myLayer2.getXP() >= myLayer.getX2()) || (myLayer2.getYP() >= myLayer.getY2())) || (myLayer2.getX2() <= myLayer.getXP())) || (myLayer2.getY2() <= myLayer.getYP())) || (myLayer2.getZP() < myLayer.getZ2())) || (myLayer2.getZ2() > myLayer.getZP()))) {
            return false
        } else {
            return true
        }
    }
}

import "../../../../org/allbinary/layer/AllBinaryLayer" for AllBinaryLayer

