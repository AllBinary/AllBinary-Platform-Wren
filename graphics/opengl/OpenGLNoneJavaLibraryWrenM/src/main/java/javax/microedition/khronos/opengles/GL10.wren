// Generated Code Do Not Modify
// package javax.microedition.khronos.opengles

import "../../../../allbinary_java" for JObject, JException, JR
import "./GL" for GL

class GL10 is JObject {
    static GL_ADD { 260 }
    static GL_ALIASED_LINE_WIDTH_RANGE { 33902 }
    static GL_ALIASED_POINT_SIZE_RANGE { 33901 }
    static GL_ALPHA { 6406 }
    static GL_ALPHA_BITS { 3413 }
    static GL_ALPHA_TEST { 3008 }
    static GL_ALWAYS { 519 }
    static GL_AMBIENT { 4608 }
    static GL_AMBIENT_AND_DIFFUSE { 5634 }
    static GL_AND { 5377 }
    static GL_AND_INVERTED { 5380 }
    static GL_AND_REVERSE { 5378 }
    static GL_BACK { 1029 }
    static GL_BLEND { 3042 }
    static GL_BLUE_BITS { 3412 }
    static GL_BYTE { 5120 }
    static GL_CCW { 2305 }
    static GL_CLAMP_TO_EDGE { 33071 }
    static GL_CLEAR { 5376 }
    static GL_COLOR_ARRAY { 32886 }
    static GL_COLOR_BUFFER_BIT { 16384 }
    static GL_COLOR_LOGIC_OP { 3058 }
    static GL_COLOR_MATERIAL { 2903 }
    static GL_COMPRESSED_TEXTURE_FORMATS { 34467 }
    static GL_CONSTANT_ATTENUATION { 4615 }
    static GL_COPY { 5379 }
    static GL_COPY_INVERTED { 5388 }
    static GL_CULL_FACE { 2884 }
    static GL_CW { 2304 }
    static GL_DECAL { 8449 }
    static GL_DECR { 7683 }
    static GL_DEPTH_BITS { 3414 }
    static GL_DEPTH_BUFFER_BIT { 256 }
    static GL_DEPTH_TEST { 2929 }
    static GL_DIFFUSE { 4609 }
    static GL_DITHER { 3024 }
    static GL_DONT_CARE { 4352 }
    static GL_DST_ALPHA { 772 }
    static GL_DST_COLOR { 774 }
    static GL_EMISSION { 5632 }
    static GL_EQUAL { 514 }
    static GL_EQUIV { 5385 }
    static GL_EXP { 2048 }
    static GL_EXP2 { 2049 }
    static GL_EXTENSIONS { 7939 }
    static GL_FALSE { 0 }
    static GL_FASTEST { 4353 }
    static GL_FIXED { 5132 }
    static GL_FLAT { 7424 }
    static GL_FLOAT { 5126 }
    static GL_FOG { 2912 }
    static GL_FOG_COLOR { 2918 }
    static GL_FOG_DENSITY { 2914 }
    static GL_FOG_END { 2916 }
    static GL_FOG_HINT { 3156 }
    static GL_FOG_MODE { 2917 }
    static GL_FOG_START { 2915 }
    static GL_FRONT { 1028 }
    static GL_FRONT_AND_BACK { 1032 }
    static GL_GEQUAL { 518 }
    static GL_GREATER { 516 }
    static GL_GREEN_BITS { 3411 }
    static GL_IMPLEMENTATION_COLOR_READ_FORMAT_OES { 35739 }
    static GL_IMPLEMENTATION_COLOR_READ_TYPE_OES { 35738 }
    static GL_INCR { 7682 }
    static GL_INVALID_ENUM { 1280 }
    static GL_INVALID_OPERATION { 1282 }
    static GL_INVALID_VALUE { 1281 }
    static GL_INVERT { 5386 }
    static GL_KEEP { 7680 }
    static GL_LEQUAL { 515 }
    static GL_LESS { 513 }
    static GL_LIGHT_MODEL_AMBIENT { 2899 }
    static GL_LIGHT_MODEL_TWO_SIDE { 2898 }
    static GL_LIGHT0 { 16384 }
    static GL_LIGHT1 { 16385 }
    static GL_LIGHT2 { 16386 }
    static GL_LIGHT3 { 16387 }
    static GL_LIGHT4 { 16388 }
    static GL_LIGHT5 { 16389 }
    static GL_LIGHT6 { 16390 }
    static GL_LIGHT7 { 16391 }
    static GL_LIGHTING { 2896 }
    static GL_LINE_LOOP { 2 }
    static GL_LINE_SMOOTH { 2848 }
    static GL_LINE_SMOOTH_HINT { 3154 }
    static GL_LINE_STRIP { 3 }
    static GL_LINEAR { 9729 }
    static GL_LINEAR_ATTENUATION { 4616 }
    static GL_LINEAR_MIPMAP_LINEAR { 9987 }
    static GL_LINEAR_MIPMAP_NEAREST { 9985 }
    static GL_LINES { 1 }
    static GL_LUMINANCE { 6409 }
    static GL_LUMINANCE_ALPHA { 6410 }
    static GL_MAX_ELEMENTS_INDICES { 33001 }
    static GL_MAX_ELEMENTS_VERTICES { 33000 }
    static GL_MAX_LIGHTS { 3377 }
    static GL_MAX_MODELVIEW_STACK_DEPTH { 3382 }
    static GL_MAX_PROJECTION_STACK_DEPTH { 3384 }
    static GL_MAX_TEXTURE_SIZE { 3379 }
    static GL_MAX_TEXTURE_STACK_DEPTH { 3385 }
    static GL_MAX_TEXTURE_UNITS { 34018 }
    static GL_MAX_VIEWPORT_DIMS { 3386 }
    static GL_MODELVIEW { 5888 }
    static GL_MODULATE { 8448 }
    static GL_MULTISAMPLE { 32925 }
    static GL_NAND { 5390 }
    static GL_NEAREST { 9728 }
    static GL_NEAREST_MIPMAP_LINEAR { 9986 }
    static GL_NEAREST_MIPMAP_NEAREST { 9984 }
    static GL_NEVER { 512 }
    static GL_NICEST { 4354 }
    static GL_NO_ERROR { 0 }
    static GL_NOOP { 5381 }
    static GL_NOR { 5384 }
    static GL_NORMAL_ARRAY { 32885 }
    static GL_NORMALIZE { 2977 }
    static GL_NOTEQUAL { 517 }
    static GL_NUM_COMPRESSED_TEXTURE_FORMATS { 34466 }
    static GL_ONE { 1 }
    static GL_ONE_MINUS_DST_ALPHA { 773 }
    static GL_ONE_MINUS_DST_COLOR { 775 }
    static GL_ONE_MINUS_SRC_ALPHA { 771 }
    static GL_ONE_MINUS_SRC_COLOR { 769 }
    static GL_OR { 5383 }
    static GL_OR_INVERTED { 5389 }
    static GL_OR_REVERSE { 5387 }
    static GL_OUT_OF_MEMORY { 1285 }
    static GL_PACK_ALIGNMENT { 3333 }
    static GL_PALETTE4_R5_G6_B5_OES { 35730 }
    static GL_PALETTE4_RGB5_A1_OES { 35732 }
    static GL_PALETTE4_RGB8_OES { 35728 }
    static GL_PALETTE4_RGBA4_OES { 35731 }
    static GL_PALETTE4_RGBA8_OES { 35729 }
    static GL_PALETTE8_R5_G6_B5_OES { 35735 }
    static GL_PALETTE8_RGB5_A1_OES { 35737 }
    static GL_PALETTE8_RGB8_OES { 35733 }
    static GL_PALETTE8_RGBA4_OES { 35736 }
    static GL_PALETTE8_RGBA8_OES { 35734 }
    static GL_PERSPECTIVE_CORRECTION_HINT { 3152 }
    static GL_POINT_SMOOTH { 2832 }
    static GL_POINT_SMOOTH_HINT { 3153 }
    static GL_POINTS { 0 }
    static GL_POINT_FADE_THRESHOLD_SIZE { 33064 }
    static GL_POINT_SIZE { 2833 }
    static GL_POLYGON_OFFSET_FILL { 32823 }
    static GL_POLYGON_SMOOTH_HINT { 3155 }
    static GL_POSITION { 4611 }
    static GL_PROJECTION { 5889 }
    static GL_QUADRATIC_ATTENUATION { 4617 }
    static GL_RED_BITS { 3410 }
    static GL_RENDERER { 7937 }
    static GL_REPEAT { 10497 }
    static GL_REPLACE { 7681 }
    static GL_RESCALE_NORMAL { 32826 }
    static GL_RGB { 6407 }
    static GL_RGBA { 6408 }
    static GL_SAMPLE_ALPHA_TO_COVERAGE { 32926 }
    static GL_SAMPLE_ALPHA_TO_ONE { 32927 }
    static GL_SAMPLE_COVERAGE { 32928 }
    static GL_SCISSOR_TEST { 3089 }
    static GL_SET { 5391 }
    static GL_SHININESS { 5633 }
    static GL_SHORT { 5122 }
    static GL_SMOOTH { 7425 }
    static GL_SMOOTH_LINE_WIDTH_RANGE { 2850 }
    static GL_SMOOTH_POINT_SIZE_RANGE { 2834 }
    static GL_SPECULAR { 4610 }
    static GL_SPOT_CUTOFF { 4614 }
    static GL_SPOT_DIRECTION { 4612 }
    static GL_SPOT_EXPONENT { 4613 }
    static GL_SRC_ALPHA { 770 }
    static GL_SRC_ALPHA_SATURATE { 776 }
    static GL_SRC_COLOR { 768 }
    static GL_STACK_OVERFLOW { 1283 }
    static GL_STACK_UNDERFLOW { 1284 }
    static GL_STENCIL_BITS { 3415 }
    static GL_STENCIL_BUFFER_BIT { 1024 }
    static GL_STENCIL_TEST { 2960 }
    static GL_SUBPIXEL_BITS { 3408 }
    static GL_TEXTURE { 5890 }
    static GL_TEXTURE_2D { 3553 }
    static GL_TEXTURE_COORD_ARRAY { 32888 }
    static GL_TEXTURE_ENV { 8960 }
    static GL_TEXTURE_ENV_COLOR { 8705 }
    static GL_TEXTURE_ENV_MODE { 8704 }
    static GL_TEXTURE_MAG_FILTER { 10240 }
    static GL_TEXTURE_MIN_FILTER { 10241 }
    static GL_TEXTURE_WRAP_S { 10242 }
    static GL_TEXTURE_WRAP_T { 10243 }
    static GL_TEXTURE0 { 33984 }
    static GL_TEXTURE1 { 33985 }
    static GL_TEXTURE2 { 33986 }
    static GL_TEXTURE3 { 33987 }
    static GL_TEXTURE4 { 33988 }
    static GL_TEXTURE5 { 33989 }
    static GL_TEXTURE6 { 33990 }
    static GL_TEXTURE7 { 33991 }
    static GL_TEXTURE8 { 33992 }
    static GL_TEXTURE9 { 33993 }
    static GL_TEXTURE10 { 33994 }
    static GL_TEXTURE11 { 33995 }
    static GL_TEXTURE12 { 33996 }
    static GL_TEXTURE13 { 33997 }
    static GL_TEXTURE14 { 33998 }
    static GL_TEXTURE15 { 33999 }
    static GL_TEXTURE16 { 34000 }
    static GL_TEXTURE17 { 34001 }
    static GL_TEXTURE18 { 34002 }
    static GL_TEXTURE19 { 34003 }
    static GL_TEXTURE20 { 34004 }
    static GL_TEXTURE21 { 34005 }
    static GL_TEXTURE22 { 34006 }
    static GL_TEXTURE23 { 34007 }
    static GL_TEXTURE24 { 34008 }
    static GL_TEXTURE25 { 34009 }
    static GL_TEXTURE26 { 34010 }
    static GL_TEXTURE27 { 34011 }
    static GL_TEXTURE28 { 34012 }
    static GL_TEXTURE29 { 34013 }
    static GL_TEXTURE30 { 34014 }
    static GL_TEXTURE31 { 34015 }
    static GL_TRIANGLE_FAN { 6 }
    static GL_TRIANGLE_STRIP { 5 }
    static GL_TRIANGLES { 4 }
    static GL_TRUE { 1 }
    static GL_UNPACK_ALIGNMENT { 3317 }
    static GL_UNSIGNED_BYTE { 5121 }
    static GL_UNSIGNED_SHORT { 5123 }
    static GL_UNSIGNED_SHORT_4_4_4_4 { 32819 }
    static GL_UNSIGNED_SHORT_5_5_5_1 { 32820 }
    static GL_UNSIGNED_SHORT_5_6_5 { 33635 }
    static GL_VENDOR { 7936 }
    static GL_VERSION { 7938 }
    static GL_VERTEX_ARRAY { 32884 }
    static GL_XOR { 5382 }
    static GL_ZERO { 0 }
    

    glActiveTexture(texture) {
        Fiber.abort(JR.exception("AbstractMethodError", "glActiveTexture"))
    }
    

    glAlphaFunc(func, ref) {
        Fiber.abort(JR.exception("AbstractMethodError", "glAlphaFunc"))
    }
    

    glBindTexture(target, texture) {
        Fiber.abort(JR.exception("AbstractMethodError", "glBindTexture"))
    }
    

    glBlendFunc(sfactor, dfactor) {
        Fiber.abort(JR.exception("AbstractMethodError", "glBlendFunc"))
    }
    

    glClear(mask) {
        Fiber.abort(JR.exception("AbstractMethodError", "glClear"))
    }
    

    glClearColor(red, green, blue, alpha) {
        Fiber.abort(JR.exception("AbstractMethodError", "glClearColor"))
    }
    

    glClearDepthf(depth) {
        Fiber.abort(JR.exception("AbstractMethodError", "glClearDepthf"))
    }
    

    glClearStencil(s) {
        Fiber.abort(JR.exception("AbstractMethodError", "glClearStencil"))
    }
    

    glClientActiveTexture(texture) {
        Fiber.abort(JR.exception("AbstractMethodError", "glClientActiveTexture"))
    }
    

    glColor4f(red, green, blue, alpha) {
        Fiber.abort(JR.exception("AbstractMethodError", "glColor4f"))
    }
    

    glColorMask(red, green, blue, alpha) {
        Fiber.abort(JR.exception("AbstractMethodError", "glColorMask"))
    }
    

    glColorPointer(size, type, stride, pointer) {
        Fiber.abort(JR.exception("AbstractMethodError", "glColorPointer"))
    }
    

    glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data) {
        Fiber.abort(JR.exception("AbstractMethodError", "glCompressedTexImage2D"))
    }
    

    glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data) {
        Fiber.abort(JR.exception("AbstractMethodError", "glCompressedTexSubImage2D"))
    }
    

    glCopyTexImage2D(target, level, internalformat, x, y, width, height, border) {
        Fiber.abort(JR.exception("AbstractMethodError", "glCopyTexImage2D"))
    }
    

    glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height) {
        Fiber.abort(JR.exception("AbstractMethodError", "glCopyTexSubImage2D"))
    }
    

    glCullFace(mode) {
        Fiber.abort(JR.exception("AbstractMethodError", "glCullFace"))
    }
    

    glDeleteTextures(n, textures, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDeleteTextures"))
    }
    

    glDeleteTextures(n, textures) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDeleteTextures"))
    }
    

    glDepthFunc(func) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDepthFunc"))
    }
    

    glDepthMask(flag) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDepthMask"))
    }
    

    glDepthRangef(zNear, zFar) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDepthRangef"))
    }
    

    glDisable(cap) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDisable"))
    }
    

    glDisableClientState(array) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDisableClientState"))
    }
    

    glDrawArrays(mode, first, count) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDrawArrays"))
    }
    

    glDrawElements(mode, count, type, indices) {
        Fiber.abort(JR.exception("AbstractMethodError", "glDrawElements"))
    }
    

    glEnable(cap) {
        Fiber.abort(JR.exception("AbstractMethodError", "glEnable"))
    }
    

    glEnableClientState(array) {
        Fiber.abort(JR.exception("AbstractMethodError", "glEnableClientState"))
    }
    

    glFinish() {
        Fiber.abort(JR.exception("AbstractMethodError", "glFinish"))
    }
    

    glFlush() {
        Fiber.abort(JR.exception("AbstractMethodError", "glFlush"))
    }
    

    glFogf(pname, param) {
        Fiber.abort(JR.exception("AbstractMethodError", "glFogf"))
    }
    

    glFogfv(pname, params, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glFogfv"))
    }
    

    glFogfv(pname, params) {
        Fiber.abort(JR.exception("AbstractMethodError", "glFogfv"))
    }
    

    glFrontFace(mode) {
        Fiber.abort(JR.exception("AbstractMethodError", "glFrontFace"))
    }
    

    glFrustumf(left, right, bottom, top, zNear, zFar) {
        Fiber.abort(JR.exception("AbstractMethodError", "glFrustumf"))
    }
    

    glGenTextures(n, textures, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glGenTextures"))
    }
    

    glGenTextures(n, textures) {
        Fiber.abort(JR.exception("AbstractMethodError", "glGenTextures"))
    }
    

    glGetError() {
        Fiber.abort(JR.exception("AbstractMethodError", "glGetError"))
    }
    

    glGetIntegerv(pname, params, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glGetIntegerv"))
    }
    

    glGetIntegerv(pname, params) {
        Fiber.abort(JR.exception("AbstractMethodError", "glGetIntegerv"))
    }
    

    glGetString(name) {
        Fiber.abort(JR.exception("AbstractMethodError", "glGetString"))
    }
    

    glHint(target, mode) {
        Fiber.abort(JR.exception("AbstractMethodError", "glHint"))
    }
    

    glLightModelf(pname, param) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLightModelf"))
    }
    

    glLightModelfv(pname, params, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLightModelfv"))
    }
    

    glLightModelfv(pname, params) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLightModelfv"))
    }
    

    glLightf(light, pname, param) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLightf"))
    }
    

    glLightfv(light, pname, params, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLightfv"))
    }
    

    glLightfv(light, pname, params) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLightfv"))
    }
    

    glLineWidth(width) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLineWidth"))
    }
    

    glLoadIdentity() {
        Fiber.abort(JR.exception("AbstractMethodError", "glLoadIdentity"))
    }
    

    glLoadMatrixf(m, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLoadMatrixf"))
    }
    

    glLoadMatrixf(m) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLoadMatrixf"))
    }
    

    glLogicOp(opcode) {
        Fiber.abort(JR.exception("AbstractMethodError", "glLogicOp"))
    }
    

    glMaterialf(face, pname, param) {
        Fiber.abort(JR.exception("AbstractMethodError", "glMaterialf"))
    }
    

    glMaterialfv(face, pname, params, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glMaterialfv"))
    }
    

    glMaterialfv(face, pname, params) {
        Fiber.abort(JR.exception("AbstractMethodError", "glMaterialfv"))
    }
    

    glMatrixMode(mode) {
        Fiber.abort(JR.exception("AbstractMethodError", "glMatrixMode"))
    }
    

    glMultMatrixf(m, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glMultMatrixf"))
    }
    

    glMultMatrixf(m) {
        Fiber.abort(JR.exception("AbstractMethodError", "glMultMatrixf"))
    }
    

    glMultiTexCoord4f(target, s, t, r, q) {
        Fiber.abort(JR.exception("AbstractMethodError", "glMultiTexCoord4f"))
    }
    

    glNormal3f(nx, ny, nz) {
        Fiber.abort(JR.exception("AbstractMethodError", "glNormal3f"))
    }
    

    glNormalPointer(type, stride, pointer) {
        Fiber.abort(JR.exception("AbstractMethodError", "glNormalPointer"))
    }
    

    glOrthof(left, right, bottom, top, zNear, zFar) {
        Fiber.abort(JR.exception("AbstractMethodError", "glOrthof"))
    }
    

    glPixelStorei(pname, param) {
        Fiber.abort(JR.exception("AbstractMethodError", "glPixelStorei"))
    }
    

    glPointSize(size) {
        Fiber.abort(JR.exception("AbstractMethodError", "glPointSize"))
    }
    

    glPolygonOffset(factor, units) {
        Fiber.abort(JR.exception("AbstractMethodError", "glPolygonOffset"))
    }
    

    glPopMatrix() {
        Fiber.abort(JR.exception("AbstractMethodError", "glPopMatrix"))
    }
    

    glPushMatrix() {
        Fiber.abort(JR.exception("AbstractMethodError", "glPushMatrix"))
    }
    

    glReadPixels(x, y, width, height, format, type, pixels) {
        Fiber.abort(JR.exception("AbstractMethodError", "glReadPixels"))
    }
    

    glRotatef(angle, x, y, z) {
        Fiber.abort(JR.exception("AbstractMethodError", "glRotatef"))
    }
    

    glRotatex(angle, x, y, z) {
        Fiber.abort(JR.exception("AbstractMethodError", "glRotatex"))
    }
    

    glSampleCoverage(value, invert) {
        Fiber.abort(JR.exception("AbstractMethodError", "glSampleCoverage"))
    }
    

    glScalef(x, y, z) {
        Fiber.abort(JR.exception("AbstractMethodError", "glScalef"))
    }
    

    glScalex(x, y, z) {
        Fiber.abort(JR.exception("AbstractMethodError", "glScalex"))
    }
    

    glScissor(x, y, width, height) {
        Fiber.abort(JR.exception("AbstractMethodError", "glScissor"))
    }
    

    glShadeModel(mode) {
        Fiber.abort(JR.exception("AbstractMethodError", "glShadeModel"))
    }
    

    glStencilFunc(func, ref, mask) {
        Fiber.abort(JR.exception("AbstractMethodError", "glStencilFunc"))
    }
    

    glStencilMask(mask) {
        Fiber.abort(JR.exception("AbstractMethodError", "glStencilMask"))
    }
    

    glStencilOp(fail, zfail, zpass) {
        Fiber.abort(JR.exception("AbstractMethodError", "glStencilOp"))
    }
    

    glTexCoordPointer(size, type, stride, pointer) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTexCoordPointer"))
    }
    

    glTexEnvf(target, pname, param) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTexEnvf"))
    }
    

    glTexEnvfv(target, pname, params, offset) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTexEnvfv"))
    }
    

    glTexEnvfv(target, pname, params) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTexEnvfv"))
    }
    

    glTexImage2D(target, level, internalformat, width, height, border, format, type, pixels) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTexImage2D"))
    }
    

    glTexParameterf(target, pname, param) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTexParameterf"))
    }
    

    glTexParameteri(target, pname, param) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTexParameteri"))
    }
    

    glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTexSubImage2D"))
    }
    

    glTranslatef(x, y, z) {
        Fiber.abort(JR.exception("AbstractMethodError", "glTranslatef"))
    }
    

    glVertexPointer(size, type, stride, pointer) {
        Fiber.abort(JR.exception("AbstractMethodError", "glVertexPointer"))
    }
    

    glViewport(x, y, width, height) {
        Fiber.abort(JR.exception("AbstractMethodError", "glViewport"))
    }
    

    glBegin(i) {
        Fiber.abort(JR.exception("AbstractMethodError", "glBegin"))
    }
    

    glEnd() {
        Fiber.abort(JR.exception("AbstractMethodError", "glEnd"))
    }
    

    glVertex3f(f, f2, f3) {
        Fiber.abort(JR.exception("AbstractMethodError", "glVertex3f"))
    }
    

    glPolygonMode(i, i1) {
        Fiber.abort(JR.exception("AbstractMethodError", "glPolygonMode"))
    }
}

import "../../../../java/nio/Buffer" for Buffer
import "../../../../java/nio/FloatBuffer" for FloatBuffer
import "../../../../java/nio/IntBuffer" for IntBuffer

