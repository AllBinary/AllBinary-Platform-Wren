/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.device

import "../../../allbinary_java" for JObject, JException, JR

class NullGL10 is JObject {
    static NULL_GL10 {
    if (__NULL_GL10_set == null) {
      __NULL_GL10_set = true
      __NULL_GL10 = NullGL10.new()
    }
    return __NULL_GL10
  }
  static NULL_GL10=(value) {
    __NULL_GL10_set = true
    __NULL_GL10 = value
  }

  initFields_NullGL10() {
  }

  construct new() {
    super()
    initFields_NullGL10()
  }
    

    glActiveTexture(texture) {
        return
    }
    

    glAlphaFunc(func, ref) {
        return
    }
    

    glBindTexture(target, texture) {
        return
    }
    

    glBlendFunc(sfactor, dfactor) {
        return
    }
    

    glClear(mask) {
        return
    }
    

    glClearColor(red, green, blue, alpha) {
        return
    }
    

    glClearDepthf(depth) {
        return
    }
    

    glClearStencil(s) {
        return
    }
    

    glClientActiveTexture(texture) {
        return
    }
    

    glColor4f(red, green, blue, alpha) {
        return
    }
    

    glColorMask(red, green, blue, alpha) {
        return
    }
    

    glColorPointer(size, type, stride, pointer) {
        return
    }
    

    glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data) {
        return
    }
    

    glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data) {
        return
    }
    

    glCopyTexImage2D(target, level, internalformat, x, y, width, height, border) {
        return
    }
    

    glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height) {
        return
    }
    

    glCullFace(mode) {
        return
    }
    

    glDeleteTextures(n, textures, offset) {
        return
    }
    

    glDeleteTextures(n, textures) {
        return
    }
    

    glDepthFunc(func) {
        return
    }
    

    glDepthMask(flag) {
        return
    }
    

    glDepthRangef(zNear, zFar) {
        return
    }
    

    glDisable(cap) {
        return
    }
    

    glDisableClientState(array) {
        return
    }
    

    glDrawArrays(mode, first, count) {
        return
    }
    

    glDrawElements(mode, count, type, indices) {
        return
    }
    

    glEnable(cap) {
        return
    }
    

    glEnableClientState(array) {
        return
    }
    

    glFinish() {
        return
    }
    

    glFlush() {
        return
    }
    

    glFogf(pname, param) {
        return
    }
    

    glFogfv(pname, params, offset) {
        return
    }
    

    glFogfv(pname, params) {
        return
    }
    

    glFrontFace(mode) {
        return
    }
    

    glFrustumf(left, right, bottom, top, zNear, zFar) {
        return
    }
    

    glGenTextures(n, textures, offset) {
        return
    }
    

    glGenTextures(n, textures) {
        return
    }
    

    glGetError() {
        return 0
    }
    

    glGetIntegerv(pname, params, offset) {
        return
    }
    

    glGetIntegerv(pname, params) {
        return
    }
    

    glGetString(name) {
        return StringUtil.getInstance().EMPTY_STRING
    }
    

    glHint(target, mode) {
        return
    }
    

    glLightModelf(pname, param) {
        return
    }
    

    glLightModelfv(pname, params, offset) {
        return
    }
    

    glLightModelfv(pname, params) {
        return
    }
    

    glLightf(light, pname, param) {
        return
    }
    

    glLightfv(light, pname, params, offset) {
        return
    }
    

    glLightfv(light, pname, params) {
        return
    }
    

    glLineWidth(width) {
        return
    }
    

    glLoadIdentity() {
        return
    }
    

    glLoadMatrixf(m, offset) {
        return
    }
    

    glLoadMatrixf(m) {
        return
    }
    

    glLogicOp(opcode) {
        return
    }
    

    glMaterialf(face, pname, param) {
        return
    }
    

    glMaterialfv(face, pname, params, offset) {
        return
    }
    

    glMaterialfv(face, pname, params) {
        return
    }
    

    glMatrixMode(mode) {
        return
    }
    

    glMultMatrixf(m, offset) {
        return
    }
    

    glMultMatrixf(m) {
        return
    }
    

    glMultiTexCoord4f(target, s, t, r, q) {
        return
    }
    

    glNormal3f(nx, ny, nz) {
        return
    }
    

    glNormalPointer(type, stride, pointer) {
        return
    }
    

    glOrthof(left, right, bottom, top, zNear, zFar) {
        return
    }
    

    glPixelStorei(pname, param) {
        return
    }
    

    glPointSize(size) {
        return
    }
    

    glPolygonOffset(factor, units) {
        return
    }
    

    glPopMatrix() {
        return
    }
    

    glPushMatrix() {
        return
    }
    

    glReadPixels(x, y, width, height, format, type, pixels) {
        return
    }
    

    glRotatef(angle, x, y, z) {
        return
    }
    

    glRotatex(angle, x, y, z) {
        return
    }
    

    glSampleCoverage(value, invert) {
        return
    }
    

    glScalef(x, y, z) {
        return
    }
    

    glScalex(x, y, z) {
        return
    }
    

    glScissor(x, y, width, height) {
        return
    }
    

    glShadeModel(mode) {
        return
    }
    

    glStencilFunc(func, ref, mask) {
        return
    }
    

    glStencilMask(mask) {
        return
    }
    

    glStencilOp(fail, zfail, zpass) {
        return
    }
    

    glTexCoordPointer(size, type, stride, pointer) {
        return
    }
    

    glTexEnvf(target, pname, param) {
        return
    }
    

    glTexEnvfv(target, pname, params, offset) {
        return
    }
    

    glTexEnvfv(target, pname, params) {
        return
    }
    

    glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels) {
        return
    }
    

    glTexParameterf(target, pname, param) {
        return
    }
    

    glTexParameteri(target, pname, param) {
        return
    }
    

    glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels) {
        return
    }
    

    glTranslatef(x, y, z) {
        return
    }
    

    glVertexPointer(size, type, stride, pointer) {
        return
    }
    

    glViewport(x, y, width, height) {
        return
    }
    

    glBegin(i) {
        return
    }
    

    glEnd() {
        return
    }
    

    glVertex3f(f, f2, f3) {
        return
    }
    

    glPolygonMode(i, i1) {
        return
    }
}

import "../../../javax/microedition/khronos/opengles/GL10" for GL10
import "../../../java/nio/Buffer" for Buffer
import "../../../java/nio/FloatBuffer" for FloatBuffer
import "../../../java/nio/IntBuffer" for IntBuffer
import "../../../org/allbinary/logic/string/StringUtil" for StringUtil

