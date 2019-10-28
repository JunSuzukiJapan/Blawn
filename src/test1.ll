; ModuleID = 'Blawn'
source_filename = "Blawn"

%struct.String = type { i8*, i64 }
%__mbstate_t = type { i32, i32 }
%Person = type { %struct.String* }
%GLFWvidmode = type { i32, i32, i32, i32, i32, i32 }
%GLFWgammaramp = type { i16*, i16*, i16*, i32 }
%GLFWimage = type { i32, i32, i8* }
%_IO_FILE = type { i8 }
%_G_fpos_t = type { i64, %__mbstate_t }
%__locale_struct = type { i832, i16*, i32*, i32*, i832 }

@0 = private unnamed_addr constant [5 x i8] c"John\00", align 1
@1 = private unnamed_addr constant [12 x i8] c"Hello! I'm \00", align 1
@2 = private unnamed_addr constant [12 x i8] c"renamed Bob\00", align 1

declare i64* @malloc(i64)

declare void @free(i64*)

declare %struct.String* @string_constructor(i8*, i64)

declare void @append_string(%struct.String*, %struct.String*)

declare void @print(%struct.String*)

declare i8* @to_char_ptr(%struct.String*)

declare %struct.String* @int_to_str(i64)

declare %struct.String* @float_to_str(double)

define i8 @i64_to_i8(i64) {
i64_to_i8:
  %1 = trunc i64 %0 to i8
  ret i8 %1
}

define i32 @i64_to_i32(i64) {
i64_to_i32:
  %1 = trunc i64 %0 to i32
  ret i32 %1
}

define i8 @i32_to_i8(i32) {
i32_to_i8:
  %1 = trunc i32 %0 to i8
  ret i8 %1
}

define i32 @i8_to_i32(i8) {
i8_to_i32:
  %1 = zext i8 %0 to i32
  ret i32 %1
}

define i64 @i32_to_i64(i32) {
i32_to_i64:
  %1 = zext i32 %0 to i64
  ret i64 %1
}

define i64 @i8_to_i64(i8) {
i8_to_i64:
  %1 = zext i8 %0 to i64
  ret i64 %1
}

declare void @blawn_memcpy(i8*, i64, i64, i8*)

declare i8* @blawn_realloc(i8*, i64, i64)

declare i8* @blawn_index(i8*, i64, i64, i64)

declare i8* @blawn_set_element(i8*, i64, i64, i8*, i64)

define i8 @main() {
entry:
  %"@width" = alloca i32
  store i32 0, i32* %"@width"
  %0 = load i32, i32* %"@width"
  %"@height" = alloca i32
  store i32 0, i32* %"@height"
  %1 = load i32, i32* %"@height"
  %"@redBits" = alloca i32
  store i32 0, i32* %"@redBits"
  %2 = load i32, i32* %"@redBits"
  %"@greenBits" = alloca i32
  store i32 0, i32* %"@greenBits"
  %3 = load i32, i32* %"@greenBits"
  %"@blueBits" = alloca i32
  store i32 0, i32* %"@blueBits"
  %4 = load i32, i32* %"@blueBits"
  %"@refreshRate" = alloca i32
  store i32 0, i32* %"@refreshRate"
  %5 = load i32, i32* %"@refreshRate"
  %"@red" = alloca i16*
  store i16* null, i16** %"@red"
  %6 = load i16*, i16** %"@red"
  %"@green" = alloca i16*
  store i16* null, i16** %"@green"
  %7 = load i16*, i16** %"@green"
  %"@blue" = alloca i16*
  store i16* null, i16** %"@blue"
  %8 = load i16*, i16** %"@blue"
  %"@size" = alloca i32
  store i32 0, i32* %"@size"
  %9 = load i32, i32* %"@size"
  %"@width1" = alloca i32
  store i32 0, i32* %"@width1"
  %10 = load i32, i32* %"@width1"
  %"@height2" = alloca i32
  store i32 0, i32* %"@height2"
  %11 = load i32, i32* %"@height2"
  %"@pixels" = alloca i8*
  store i8* null, i8** %"@pixels"
  %12 = load i8*, i8** %"@pixels"
  %"@__NOT_SUPPORTED__2" = alloca i8
  store i8 0, i8* %"@__NOT_SUPPORTED__2"
  %13 = load i8, i8* %"@__NOT_SUPPORTED__2"
  %"@__pos" = alloca i64
  store i64 0, i64* %"@__pos"
  %14 = load i64, i64* %"@__pos"
  %"@__count" = alloca i32
  store i32 0, i32* %"@__count"
  %15 = load i32, i32* %"@__count"
  %"@__NOT_SUPPORTED__3" = alloca i32
  store i32 0, i32* %"@__NOT_SUPPORTED__3"
  %16 = load i32, i32* %"@__NOT_SUPPORTED__3"
  %17 = alloca %__mbstate_t
  %18 = load %__mbstate_t, %__mbstate_t* %17
  %"@__state" = alloca %__mbstate_t
  store %__mbstate_t %18, %__mbstate_t* %"@__state"
  %19 = load %__mbstate_t, %__mbstate_t* %"@__state"
  %"@__NOT_SUPPORTED__5" = alloca i832
  store i832 0, i832* %"@__NOT_SUPPORTED__5"
  %20 = load i832, i832* %"@__NOT_SUPPORTED__5"
  %"@__ctype_b" = alloca i16*
  store i16* null, i16** %"@__ctype_b"
  %21 = load i16*, i16** %"@__ctype_b"
  %"@__ctype_tolower" = alloca i32*
  store i32* null, i32** %"@__ctype_tolower"
  %22 = load i32*, i32** %"@__ctype_tolower"
  %"@__ctype_toupper" = alloca i32*
  store i32* null, i32** %"@__ctype_toupper"
  %23 = load i32*, i32** %"@__ctype_toupper"
  %"@__NOT_SUPPORTED__6" = alloca i832
  store i832 0, i832* %"@__NOT_SUPPORTED__6"
  %24 = load i832, i832* %"@__NOT_SUPPORTED__6"
  %25 = call %struct.String* @string_constructor(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @0, i32 0, i32 0), i64 4)
  %26 = call %Person* @Person.92(%struct.String* %25)
  %john = alloca %Person*
  store %Person* %26, %Person** %john
  %27 = load %Person*, %Person** %john
  %28 = load %Person*, %Person** %john
  %29 = load %Person*, %Person** %john
  call void @hello.93(%Person* %29)
  %30 = load %Person*, %Person** %john
  call void @rename.96(%Person* %30)
  %31 = load %Person*, %Person** %john
  %32 = load %Person*, %Person** %john
  call void @hello.93(%Person* %32)
  %33 = bitcast %Person* %26 to i64*
  call void @free(i64* %33)
  ret i8 0
}

declare void @__fsid_t()

declare void @GLFWvidmode()

declare void @GLFWgammaramp()

declare void @GLFWimage()

declare void @_IO_FILE()

declare void @__mbstate_t()

declare void @_G_fpos_t()

declare void @_G_fpos64_t()

declare void @_IO_marker()

declare void @__locale_struct()

declare void @glAccum(i32, double)

declare void @glAlphaFunc(i32, double)

declare i8 @glAreTexturesResident(i32, i32*, i8*)

declare void @glArrayElement(i32)

declare void @glBegin(i32)

declare void @glBindTexture(i32, i32)

declare void @glBitmap(i32, i32, double, double, double, double, i8*)

declare void @glBlendFunc(i32, i32)

declare void @glCallList(i32)

declare void @glCallLists(i32, i32, i64*)

declare void @glClear(i32)

declare void @glClearAccum(double, double, double, double)

declare void @glClearColor(double, double, double, double)

declare void @glClearDepth(double)

declare void @glClearIndex(double)

declare void @glClearStencil(i32)

declare void @glClipPlane(i32, float*)

declare void @glColor3b(i8, i8, i8)

declare void @glColor3bv(i8*)

declare void @glColor3d(double, double, double)

declare void @glColor3dv(float*)

declare void @glColor3f(double, double, double)

declare void @glColor3fv(float*)

declare void @glColor3i(i32, i32, i32)

declare void @glColor3iv(i32*)

declare void @glColor3s(i16, i16, i16)

declare void @glColor3sv(i16*)

declare void @glColor3ub(i8, i8, i8)

declare void @glColor3ubv(i8*)

declare void @glColor3ui(i32, i32, i32)

declare void @glColor3uiv(i32*)

declare void @glColor3us(i16, i16, i16)

declare void @glColor3usv(i16*)

declare void @glColor4b(i8, i8, i8, i8)

declare void @glColor4bv(i8*)

declare void @glColor4d(double, double, double, double)

declare void @glColor4dv(float*)

declare void @glColor4f(double, double, double, double)

declare void @glColor4fv(float*)

declare void @glColor4i(i32, i32, i32, i32)

declare void @glColor4iv(i32*)

declare void @glColor4s(i16, i16, i16, i16)

declare void @glColor4sv(i16*)

declare void @glColor4ub(i8, i8, i8, i8)

declare void @glColor4ubv(i8*)

declare void @glColor4ui(i32, i32, i32, i32)

declare void @glColor4uiv(i32*)

declare void @glColor4us(i16, i16, i16, i16)

declare void @glColor4usv(i16*)

declare void @glColorMask(i8, i8, i8, i8)

declare void @glColorMaterial(i32, i32)

declare void @glColorPointer(i32, i32, i32, i64*)

declare void @glCopyPixels(i32, i32, i32, i32, i32)

declare void @glCopyTexImage1D(i32, i32, i32, i32, i32, i32, i32)

declare void @glCopyTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32)

declare void @glCopyTexSubImage1D(i32, i32, i32, i32, i32, i32)

declare void @glCopyTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32)

declare void @glCullFace(i32)

declare void @glDeleteLists(i32, i32)

declare void @glDeleteTextures(i32, i32*)

declare void @glDepthFunc(i32)

declare void @glDepthMask(i8)

declare void @glDepthRange(double, double)

declare void @glDisable(i32)

declare void @glDisableClientState(i32)

declare void @glDrawArrays(i32, i32, i32)

declare void @glDrawBuffer(i32)

declare void @glDrawElements(i32, i32, i32, i64*)

declare void @glDrawPixels(i32, i32, i32, i32, i64*)

declare void @glEdgeFlag(i8)

declare void @glEdgeFlagPointer(i32, i64*)

declare void @glEdgeFlagv(i8*)

declare void @glEnable(i32)

declare void @glEnableClientState(i32)

declare void @glEnd()

declare void @glEndList()

declare void @glEvalCoord1d(double)

declare void @glEvalCoord1dv(float*)

declare void @glEvalCoord1f(double)

declare void @glEvalCoord1fv(float*)

declare void @glEvalCoord2d(double, double)

declare void @glEvalCoord2dv(float*)

declare void @glEvalCoord2f(double, double)

declare void @glEvalCoord2fv(float*)

declare void @glEvalMesh1(i32, i32, i32)

declare void @glEvalMesh2(i32, i32, i32, i32, i32)

declare void @glEvalPoint1(i32)

declare void @glEvalPoint2(i32, i32)

declare void @glFeedbackBuffer(i32, i32, float*)

declare void @glFinish()

declare void @glFlush()

declare void @glFogf(i32, double)

declare void @glFogfv(i32, float*)

declare void @glFogi(i32, i32)

declare void @glFogiv(i32, i32*)

declare void @glFrontFace(i32)

declare void @glFrustum(double, double, double, double, double, double)

declare i32 @glGenLists(i32)

declare void @glGenTextures(i32, i32*)

declare void @glGetBooleanv(i32, i8*)

declare void @glGetClipPlane(i32, float*)

declare void @glGetDoublev(i32, float*)

declare i32 @glGetError()

declare void @glGetFloatv(i32, float*)

declare void @glGetIntegerv(i32, i32*)

declare void @glGetLightfv(i32, i32, float*)

declare void @glGetLightiv(i32, i32, i32*)

declare void @glGetMapdv(i32, i32, float*)

declare void @glGetMapfv(i32, i32, float*)

declare void @glGetMapiv(i32, i32, i32*)

declare void @glGetMaterialfv(i32, i32, float*)

declare void @glGetMaterialiv(i32, i32, i32*)

declare void @glGetPixelMapfv(i32, float*)

declare void @glGetPixelMapuiv(i32, i32*)

declare void @glGetPixelMapusv(i32, i16*)

declare void @glGetPointerv(i32, i64**)

declare void @glGetPolygonStipple(i8*)

declare i8* @glGetString(i32)

declare void @glGetTexEnvfv(i32, i32, float*)

declare void @glGetTexEnviv(i32, i32, i32*)

declare void @glGetTexGendv(i32, i32, float*)

declare void @glGetTexGenfv(i32, i32, float*)

declare void @glGetTexGeniv(i32, i32, i32*)

declare void @glGetTexImage(i32, i32, i32, i32, i64*)

declare void @glGetTexLevelParameterfv(i32, i32, i32, float*)

declare void @glGetTexLevelParameteriv(i32, i32, i32, i32*)

declare void @glGetTexParameterfv(i32, i32, float*)

declare void @glGetTexParameteriv(i32, i32, i32*)

declare void @glHint(i32, i32)

declare void @glIndexMask(i32)

declare void @glIndexPointer(i32, i32, i64*)

declare void @glIndexd(double)

declare void @glIndexdv(float*)

declare void @glIndexf(double)

declare void @glIndexfv(float*)

declare void @glIndexi(i32)

declare void @glIndexiv(i32*)

declare void @glIndexs(i16)

declare void @glIndexsv(i16*)

declare void @glIndexub(i8)

declare void @glIndexubv(i8*)

declare void @glInitNames()

declare void @glInterleavedArrays(i32, i32, i64*)

declare i8 @glIsEnabled(i32)

declare i8 @glIsList(i32)

declare i8 @glIsTexture(i32)

declare void @glLightModelf(i32, double)

declare void @glLightModelfv(i32, float*)

declare void @glLightModeli(i32, i32)

declare void @glLightModeliv(i32, i32*)

declare void @glLightf(i32, i32, double)

declare void @glLightfv(i32, i32, float*)

declare void @glLighti(i32, i32, i32)

declare void @glLightiv(i32, i32, i32*)

declare void @glLineStipple(i32, i16)

declare void @glLineWidth(double)

declare void @glListBase(i32)

declare void @glLoadIdentity()

declare void @glLoadMatrixd(float*)

declare void @glLoadMatrixf(float*)

declare void @glLoadName(i32)

declare void @glLogicOp(i32)

declare void @glMap1d(i32, double, double, i32, i32, float*)

declare void @glMap1f(i32, double, double, i32, i32, float*)

declare void @glMap2d(i32, double, double, i32, i32, double, double, i32, i32, float*)

declare void @glMap2f(i32, double, double, i32, i32, double, double, i32, i32, float*)

declare void @glMapGrid1d(i32, double, double)

declare void @glMapGrid1f(i32, double, double)

declare void @glMapGrid2d(i32, double, double, i32, double, double)

declare void @glMapGrid2f(i32, double, double, i32, double, double)

declare void @glMaterialf(i32, i32, double)

declare void @glMaterialfv(i32, i32, float*)

declare void @glMateriali(i32, i32, i32)

declare void @glMaterialiv(i32, i32, i32*)

declare void @glMatrixMode(i32)

declare void @glMultMatrixd(float*)

declare void @glMultMatrixf(float*)

declare void @glNewList(i32, i32)

declare void @glNormal3b(i8, i8, i8)

declare void @glNormal3bv(i8*)

declare void @glNormal3d(double, double, double)

declare void @glNormal3dv(float*)

declare void @glNormal3f(double, double, double)

declare void @glNormal3fv(float*)

declare void @glNormal3i(i32, i32, i32)

declare void @glNormal3iv(i32*)

declare void @glNormal3s(i16, i16, i16)

declare void @glNormal3sv(i16*)

declare void @glNormalPointer(i32, i32, i64*)

declare void @glOrtho(double, double, double, double, double, double)

declare void @glPassThrough(double)

declare void @glPixelMapfv(i32, i32, float*)

declare void @glPixelMapuiv(i32, i32, i32*)

declare void @glPixelMapusv(i32, i32, i16*)

declare void @glPixelStoref(i32, double)

declare void @glPixelStorei(i32, i32)

declare void @glPixelTransferf(i32, double)

declare void @glPixelTransferi(i32, i32)

declare void @glPixelZoom(double, double)

declare void @glPointSize(double)

declare void @glPolygonMode(i32, i32)

declare void @glPolygonOffset(double, double)

declare void @glPolygonStipple(i8*)

declare void @glPopAttrib()

declare void @glPopClientAttrib()

declare void @glPopMatrix()

declare void @glPopName()

declare void @glPrioritizeTextures(i32, i32*, float*)

declare void @glPushAttrib(i32)

declare void @glPushClientAttrib(i32)

declare void @glPushMatrix()

declare void @glPushName(i32)

declare void @glRasterPos2d(double, double)

declare void @glRasterPos2dv(float*)

declare void @glRasterPos2f(double, double)

declare void @glRasterPos2fv(float*)

declare void @glRasterPos2i(i32, i32)

declare void @glRasterPos2iv(i32*)

declare void @glRasterPos2s(i16, i16)

declare void @glRasterPos2sv(i16*)

declare void @glRasterPos3d(double, double, double)

declare void @glRasterPos3dv(float*)

declare void @glRasterPos3f(double, double, double)

declare void @glRasterPos3fv(float*)

declare void @glRasterPos3i(i32, i32, i32)

declare void @glRasterPos3iv(i32*)

declare void @glRasterPos3s(i16, i16, i16)

declare void @glRasterPos3sv(i16*)

declare void @glRasterPos4d(double, double, double, double)

declare void @glRasterPos4dv(float*)

declare void @glRasterPos4f(double, double, double, double)

declare void @glRasterPos4fv(float*)

declare void @glRasterPos4i(i32, i32, i32, i32)

declare void @glRasterPos4iv(i32*)

declare void @glRasterPos4s(i16, i16, i16, i16)

declare void @glRasterPos4sv(i16*)

declare void @glReadBuffer(i32)

declare void @glReadPixels(i32, i32, i32, i32, i32, i32, i64*)

declare void @glRectd(double, double, double, double)

declare void @glRectdv(float*, float*)

declare void @glRectf(double, double, double, double)

declare void @glRectfv(float*, float*)

declare void @glRecti(i32, i32, i32, i32)

declare void @glRectiv(i32*, i32*)

declare void @glRects(i16, i16, i16, i16)

declare void @glRectsv(i16*, i16*)

declare i32 @glRenderMode(i32)

declare void @glRotated(double, double, double, double)

declare void @glRotatef(double, double, double, double)

declare void @glScaled(double, double, double)

declare void @glScalef(double, double, double)

declare void @glScissor(i32, i32, i32, i32)

declare void @glSelectBuffer(i32, i32*)

declare void @glShadeModel(i32)

declare void @glStencilFunc(i32, i32, i32)

declare void @glStencilMask(i32)

declare void @glStencilOp(i32, i32, i32)

declare void @glTexCoord1d(double)

declare void @glTexCoord1dv(float*)

declare void @glTexCoord1f(double)

declare void @glTexCoord1fv(float*)

declare void @glTexCoord1i(i32)

declare void @glTexCoord1iv(i32*)

declare void @glTexCoord1s(i16)

declare void @glTexCoord1sv(i16*)

declare void @glTexCoord2d(double, double)

declare void @glTexCoord2dv(float*)

declare void @glTexCoord2f(double, double)

declare void @glTexCoord2fv(float*)

declare void @glTexCoord2i(i32, i32)

declare void @glTexCoord2iv(i32*)

declare void @glTexCoord2s(i16, i16)

declare void @glTexCoord2sv(i16*)

declare void @glTexCoord3d(double, double, double)

declare void @glTexCoord3dv(float*)

declare void @glTexCoord3f(double, double, double)

declare void @glTexCoord3fv(float*)

declare void @glTexCoord3i(i32, i32, i32)

declare void @glTexCoord3iv(i32*)

declare void @glTexCoord3s(i16, i16, i16)

declare void @glTexCoord3sv(i16*)

declare void @glTexCoord4d(double, double, double, double)

declare void @glTexCoord4dv(float*)

declare void @glTexCoord4f(double, double, double, double)

declare void @glTexCoord4fv(float*)

declare void @glTexCoord4i(i32, i32, i32, i32)

declare void @glTexCoord4iv(i32*)

declare void @glTexCoord4s(i16, i16, i16, i16)

declare void @glTexCoord4sv(i16*)

declare void @glTexCoordPointer(i32, i32, i32, i64*)

declare void @glTexEnvf(i32, i32, double)

declare void @glTexEnvfv(i32, i32, float*)

declare void @glTexEnvi(i32, i32, i32)

declare void @glTexEnviv(i32, i32, i32*)

declare void @glTexGend(i32, i32, double)

declare void @glTexGendv(i32, i32, float*)

declare void @glTexGenf(i32, i32, double)

declare void @glTexGenfv(i32, i32, float*)

declare void @glTexGeni(i32, i32, i32)

declare void @glTexGeniv(i32, i32, i32*)

declare void @glTexImage1D(i32, i32, i32, i32, i32, i32, i32, i64*)

declare void @glTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i64*)

declare void @glTexParameterf(i32, i32, double)

declare void @glTexParameterfv(i32, i32, float*)

declare void @glTexParameteri(i32, i32, i32)

declare void @glTexParameteriv(i32, i32, i32*)

declare void @glTexSubImage1D(i32, i32, i32, i32, i32, i32, i64*)

declare void @glTexSubImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i64*)

declare void @glTranslated(double, double, double)

declare void @glTranslatef(double, double, double)

declare void @glVertex2d(double, double)

declare void @glVertex2dv(float*)

declare void @glVertex2f(double, double)

declare void @glVertex2fv(float*)

declare void @glVertex2i(i32, i32)

declare void @glVertex2iv(i32*)

declare void @glVertex2s(i16, i16)

declare void @glVertex2sv(i16*)

declare void @glVertex3d(double, double, double)

declare void @glVertex3dv(float*)

declare void @glVertex3f(double, double, double)

declare void @glVertex3fv(float*)

declare void @glVertex3i(i32, i32, i32)

declare void @glVertex3iv(i32*)

declare void @glVertex3s(i16, i16, i16)

declare void @glVertex3sv(i16*)

declare void @glVertex4d(double, double, double, double)

declare void @glVertex4dv(float*)

declare void @glVertex4f(double, double, double, double)

declare void @glVertex4fv(float*)

declare void @glVertex4i(i32, i32, i32, i32)

declare void @glVertex4iv(i32*)

declare void @glVertex4s(i16, i16, i16, i16)

declare void @glVertex4sv(i16*)

declare void @glVertexPointer(i32, i32, i32, i64*)

declare void @glViewport(i32, i32, i32, i32)

declare void @gluBeginCurve(i8**)

declare void @gluBeginPolygon(i8**)

declare void @gluBeginSurface(i8**)

declare void @gluBeginTrim(i8**)

declare i32 @gluBuild1DMipmapLevels(i32, i32, i32, i32, i32, i32, i32, i32, i64*)

declare i32 @gluBuild1DMipmaps(i32, i32, i32, i32, i32, i64*)

declare i32 @gluBuild2DMipmapLevels(i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*)

declare i32 @gluBuild2DMipmaps(i32, i32, i32, i32, i32, i32, i64*)

declare i32 @gluBuild3DMipmapLevels(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64*)

declare i32 @gluBuild3DMipmaps(i32, i32, i32, i32, i32, i32, i32, i64*)

declare i8 @gluCheckExtension(i8*, i8*)

declare void @gluCylinder(i8**, double, double, double, i32, i32)

declare void @gluDeleteNurbsRenderer(i8**)

declare void @gluDeleteQuadric(i8**)

declare void @gluDeleteTess(i8**)

declare void @gluDisk(i8**, double, double, i32, i32)

declare void @gluEndCurve(i8**)

declare void @gluEndPolygon(i8**)

declare void @gluEndSurface(i8**)

declare void @gluEndTrim(i8**)

declare i8* @gluErrorString(i32)

declare void @gluGetNurbsProperty(i8**, i32, float*)

declare i8* @gluGetString(i32)

declare void @gluGetTessProperty(i8**, i32, float*)

declare void @gluLoadSamplingMatrices(i8**, float*, float*, i32*)

declare void @gluLookAt(double, double, double, double, double, double, double, double, double)

declare i8** @gluNewNurbsRenderer()

declare i8** @gluNewQuadric()

declare i8** @gluNewTess()

declare void @gluNextContour(i8**, i32)

declare void @gluNurbsCallback(i8**, i32, i8*)

declare void @gluNurbsCallbackData(i8**, i64*)

declare void @gluNurbsCallbackDataEXT(i8**, i64*)

declare void @gluNurbsCurve(i8**, i32, float*, i32, float*, i32, i32)

declare void @gluNurbsProperty(i8**, i32, double)

declare void @gluNurbsSurface(i8**, i32, float*, i32, float*, i32, i32, float*, i32, i32, i32)

declare void @gluOrtho2D(double, double, double, double)

declare void @gluPartialDisk(i8**, double, double, i32, i32, double, double)

declare void @gluPerspective(double, double, double, double)

declare void @gluPickMatrix(double, double, double, double, i32*)

declare i32 @gluProject(double, double, double, float*, float*, i32*, float*, float*, float*)

declare void @gluPwlCurve(i8**, i32, float*, i32, i32)

declare void @gluQuadricCallback(i8**, i32, i8*)

declare void @gluQuadricDrawStyle(i8**, i32)

declare void @gluQuadricNormals(i8**, i32)

declare void @gluQuadricOrientation(i8**, i32)

declare void @gluQuadricTexture(i8**, i8)

declare i32 @gluScaleImage(i32, i32, i32, i32, i64*, i32, i32, i32, i64*)

declare void @gluSphere(i8**, double, i32, i32)

declare void @gluTessBeginContour(i8**)

declare void @gluTessBeginPolygon(i8**, i64*)

declare void @gluTessCallback(i8**, i32, i8*)

declare void @gluTessEndContour(i8**)

declare void @gluTessEndPolygon(i8**)

declare void @gluTessNormal(i8**, double, double, double)

declare void @gluTessProperty(i8**, i32, double)

declare void @gluTessVertex(i8**, float*, i64*)

declare i32 @gluUnProject(double, double, double, float*, float*, i32*, float*, float*, float*)

declare i32 @gluUnProject4(double, double, double, double, float*, float*, i32*, double, double, float*, float*, float*, float*)

declare i32 @glewInit()

declare i8 @glewIsSupported(i8*)

declare i8 @glewGetExtension(i8*)

declare i8* @glewGetErrorString(i32)

declare i8* @glewGetString(i32)

declare i32 @glfwInit()

declare void @glfwTerminate()

declare void @glfwGetVersion(i32*, i32*, i32*)

declare i8* @glfwGetVersionString()

declare i8* @glfwSetErrorCallback(i8*)

declare i8*** @glfwGetMonitors(i32*)

declare i8** @glfwGetPrimaryMonitor()

declare void @glfwGetMonitorPos(i8**, i32*, i32*)

declare void @glfwGetMonitorPhysicalSize(i8**, i32*, i32*)

declare i8* @glfwGetMonitorName(i8**)

declare i8* @glfwSetMonitorCallback(i8*)

define %GLFWvidmode* @GLFWvidmode.1() {
entry:
  %0 = call i64* @malloc(i64 24)
  %1 = bitcast i64* %0 to %GLFWvidmode*
  ret %GLFWvidmode* %1
}

declare %GLFWvidmode* @glfwGetVideoModes(i8**, i32*)

define %GLFWvidmode* @GLFWvidmode.2() {
entry:
  %0 = call i64* @malloc(i64 24)
  %1 = bitcast i64* %0 to %GLFWvidmode*
  ret %GLFWvidmode* %1
}

declare %GLFWvidmode* @glfwGetVideoMode(i8**)

declare void @glfwSetGamma(i8**, double)

define %GLFWgammaramp* @GLFWgammaramp.3() {
entry:
  %0 = call i64* @malloc(i64 32)
  %1 = bitcast i64* %0 to %GLFWgammaramp*
  ret %GLFWgammaramp* %1
}

declare %GLFWgammaramp* @glfwGetGammaRamp(i8**)

define %GLFWgammaramp* @GLFWgammaramp.4() {
entry:
  %0 = call i64* @malloc(i64 32)
  %1 = bitcast i64* %0 to %GLFWgammaramp*
  ret %GLFWgammaramp* %1
}

declare void @glfwSetGammaRamp(i8**, %GLFWgammaramp*)

declare void @glfwDefaultWindowHints()

declare void @glfwWindowHint(i32, i32)

declare i8** @glfwCreateWindow(i32, i32, i8*, i8**, i8**)

declare void @glfwDestroyWindow(i8**)

declare i32 @glfwWindowShouldClose(i8**)

declare void @glfwSetWindowShouldClose(i8**, i32)

declare void @glfwSetWindowTitle(i8**, i8*)

define %GLFWimage* @GLFWimage.5() {
entry:
  %0 = call i64* @malloc(i64 16)
  %1 = bitcast i64* %0 to %GLFWimage*
  ret %GLFWimage* %1
}

declare void @glfwSetWindowIcon(i8**, i32, %GLFWimage*)

declare void @glfwGetWindowPos(i8**, i32*, i32*)

declare void @glfwSetWindowPos(i8**, i32, i32)

declare void @glfwGetWindowSize(i8**, i32*, i32*)

declare void @glfwSetWindowSizeLimits(i8**, i32, i32, i32, i32)

declare void @glfwSetWindowAspectRatio(i8**, i32, i32)

declare void @glfwSetWindowSize(i8**, i32, i32)

declare void @glfwGetFramebufferSize(i8**, i32*, i32*)

declare void @glfwGetWindowFrameSize(i8**, i32*, i32*, i32*, i32*)

declare void @glfwIconifyWindow(i8**)

declare void @glfwRestoreWindow(i8**)

declare void @glfwMaximizeWindow(i8**)

declare void @glfwShowWindow(i8**)

declare void @glfwHideWindow(i8**)

declare void @glfwFocusWindow(i8**)

declare i8** @glfwGetWindowMonitor(i8**)

declare void @glfwSetWindowMonitor(i8**, i8**, i32, i32, i32, i32, i32)

declare i32 @glfwGetWindowAttrib(i8**, i32)

declare void @glfwSetWindowUserPointer(i8**, i64*)

declare i64* @glfwGetWindowUserPointer(i8**)

declare i8* @glfwSetWindowPosCallback(i8**, i8*)

declare i8* @glfwSetWindowSizeCallback(i8**, i8*)

declare i8* @glfwSetWindowCloseCallback(i8**, i8*)

declare i8* @glfwSetWindowRefreshCallback(i8**, i8*)

declare i8* @glfwSetWindowFocusCallback(i8**, i8*)

declare i8* @glfwSetWindowIconifyCallback(i8**, i8*)

declare i8* @glfwSetFramebufferSizeCallback(i8**, i8*)

declare void @glfwPollEvents()

declare void @glfwWaitEvents()

declare void @glfwWaitEventsTimeout(double)

declare void @glfwPostEmptyEvent()

declare i32 @glfwGetInputMode(i8**, i32)

declare void @glfwSetInputMode(i8**, i32, i32)

declare i8* @glfwGetKeyName(i32, i32)

declare i32 @glfwGetKey(i8**, i32)

declare i32 @glfwGetMouseButton(i8**, i32)

declare void @glfwGetCursorPos(i8**, float*, float*)

declare void @glfwSetCursorPos(i8**, double, double)

define %GLFWimage* @GLFWimage.6() {
entry:
  %0 = call i64* @malloc(i64 16)
  %1 = bitcast i64* %0 to %GLFWimage*
  ret %GLFWimage* %1
}

declare i8** @glfwCreateCursor(%GLFWimage*, i32, i32)

declare i8** @glfwCreateStandardCursor(i32)

declare void @glfwDestroyCursor(i8**)

declare void @glfwSetCursor(i8**, i8**)

declare i8* @glfwSetKeyCallback(i8**, i8*)

declare i8* @glfwSetCharCallback(i8**, i8*)

declare i8* @glfwSetCharModsCallback(i8**, i8*)

declare i8* @glfwSetMouseButtonCallback(i8**, i8*)

declare i8* @glfwSetCursorPosCallback(i8**, i8*)

declare i8* @glfwSetCursorEnterCallback(i8**, i8*)

declare i8* @glfwSetScrollCallback(i8**, i8*)

declare i8* @glfwSetDropCallback(i8**, i8*)

declare i32 @glfwJoystickPresent(i32)

declare float* @glfwGetJoystickAxes(i32, i32*)

declare i8* @glfwGetJoystickButtons(i32, i32*)

declare i8* @glfwGetJoystickName(i32)

declare i8* @glfwSetJoystickCallback(i8*)

declare void @glfwSetClipboardString(i8**, i8*)

declare i8* @glfwGetClipboardString(i8**)

declare double @glfwGetTime()

declare void @glfwSetTime(double)

declare i64 @glfwGetTimerValue()

declare i64 @glfwGetTimerFrequency()

declare void @glfwMakeContextCurrent(i8**)

declare i8** @glfwGetCurrentContext()

declare void @glfwSwapBuffers(i8**)

declare void @glfwSwapInterval(i32)

declare i32 @glfwExtensionSupported(i8*)

declare i8* @glfwGetProcAddress(i8*)

declare i32 @glfwVulkanSupported()

declare i8** @glfwGetRequiredInstanceExtensions(i32*)

define %_IO_FILE* @_IO_FILE.7() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @__underflow(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.8() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @__uflow(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.9() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @__overflow(%_IO_FILE*, i32)

define %_IO_FILE* @_IO_FILE.10() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_getc(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.11() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_putc(i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.12() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_feof(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.13() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_ferror(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.14() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_peekc_locked(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.15() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @_IO_flockfile(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.16() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @_IO_funlockfile(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.17() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_ftrylockfile(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.18() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_vfscanf(%_IO_FILE*, i8*, i32, i32*)

define %_IO_FILE* @_IO_FILE.19() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_vfprintf(%_IO_FILE*, i8*, i32)

define %_IO_FILE* @_IO_FILE.20() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i64 @_IO_padn(%_IO_FILE*, i32, i64)

define %_IO_FILE* @_IO_FILE.21() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @_IO_sgetn(%_IO_FILE*, i64*, i32)

define %_IO_FILE* @_IO_FILE.22() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i64 @_IO_seekoff(%_IO_FILE*, i64, i32, i32)

define %_IO_FILE* @_IO_FILE.23() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i64 @_IO_seekpos(%_IO_FILE*, i64, i32)

define %_IO_FILE* @_IO_FILE.24() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @_IO_free_backup_area(%_IO_FILE*)

declare i32 @remove(i8*)

declare i32 @rename(i8*, i8*)

declare i32 @renameat(i32, i8*, i32, i8*)

define %_IO_FILE* @_IO_FILE.25() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare %_IO_FILE* @tmpfile()

declare i8* @tmpnam(i8*)

declare i8* @tmpnam_r(i8*)

declare i8* @tempnam(i8*, i8*)

define %_IO_FILE* @_IO_FILE.26() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fclose(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.27() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fflush(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.28() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fflush_unlocked(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.29() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare %_IO_FILE* @fopen(i8*, i8*)

define %_IO_FILE* @_IO_FILE.30() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

define %_IO_FILE* @_IO_FILE.31() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare %_IO_FILE* @freopen(i8*, i8*, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.32() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare %_IO_FILE* @fdopen(i32, i8*)

define %_IO_FILE* @_IO_FILE.33() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare %_IO_FILE* @fmemopen(i64*, i32, i8*)

define %_IO_FILE* @_IO_FILE.34() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare %_IO_FILE* @open_memstream(i8**, i32*)

define %_IO_FILE* @_IO_FILE.35() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @setbuf(%_IO_FILE*, i8*)

define %_IO_FILE* @_IO_FILE.36() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @setvbuf(%_IO_FILE*, i8*, i32, i32)

define %_IO_FILE* @_IO_FILE.37() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @setbuffer(%_IO_FILE*, i8*, i32)

define %_IO_FILE* @_IO_FILE.38() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @setlinebuf(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.39() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fprintf(%_IO_FILE*, i8*)

declare i32 @printf(i8*)

declare i32 @sprintf(i8*, i8*)

define %_IO_FILE* @_IO_FILE.40() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @vfprintf(%_IO_FILE*, i8*, i32)

declare i32 @vprintf(i8*, i32)

declare i32 @vsprintf(i8*, i8*, i32)

declare i32 @snprintf(i8*, i32, i8*)

declare i32 @vsnprintf(i8*, i32, i8*, i32)

declare i32 @vdprintf(i32, i8*, i32)

declare i32 @dprintf(i32, i8*)

define %_IO_FILE* @_IO_FILE.41() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fscanf(%_IO_FILE*, i8*)

declare i32 @scanf(i8*)

declare i32 @sscanf(i8*, i8*)

define %_IO_FILE* @_IO_FILE.42() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @vfscanf(%_IO_FILE*, i8*, i32)

declare i32 @vscanf(i8*, i32)

declare i32 @vsscanf(i8*, i8*, i32)

define %_IO_FILE* @_IO_FILE.43() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fgetc(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.44() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @getc(%_IO_FILE*)

declare i32 @getchar()

define %_IO_FILE* @_IO_FILE.45() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @getc_unlocked(%_IO_FILE*)

declare i32 @getchar_unlocked()

define %_IO_FILE* @_IO_FILE.46() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fgetc_unlocked(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.47() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fputc(i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.48() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @putc(i32, %_IO_FILE*)

declare i32 @putchar(i32)

define %_IO_FILE* @_IO_FILE.49() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fputc_unlocked(i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.50() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @putc_unlocked(i32, %_IO_FILE*)

declare i32 @putchar_unlocked(i32)

define %_IO_FILE* @_IO_FILE.51() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @getw(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.52() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @putw(i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.53() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i8* @fgets(i8*, i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.54() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i64 @__getdelim(i8**, i32*, i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.55() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i64 @getdelim(i8**, i32*, i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.56() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i64 @getline(i8**, i32*, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.57() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fputs(i8*, %_IO_FILE*)

declare i32 @puts(i8*)

define %_IO_FILE* @_IO_FILE.58() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @ungetc(i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.59() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fread(i64*, i32, i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.60() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fwrite(i64*, i32, i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.61() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fread_unlocked(i64*, i32, i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.62() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fwrite_unlocked(i64*, i32, i32, %_IO_FILE*)

define %_IO_FILE* @_IO_FILE.63() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fseek(%_IO_FILE*, i64, i32)

define %_IO_FILE* @_IO_FILE.64() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i64 @ftell(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.65() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @rewind(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.66() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fseeko(%_IO_FILE*, i64, i32)

define %_IO_FILE* @_IO_FILE.67() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i64 @ftello(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.68() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

define %__mbstate_t* @__mbstate_t.69() {
entry:
  %0 = call i64* @malloc(i64 8)
  %1 = bitcast i64* %0 to %__mbstate_t*
  ret %__mbstate_t* %1
}

define %_G_fpos_t* @_G_fpos_t.70() {
entry:
  %0 = call i64* @malloc(i64 16)
  %1 = bitcast i64* %0 to %_G_fpos_t*
  ret %_G_fpos_t* %1
}

declare i32 @fgetpos(%_IO_FILE*, %_G_fpos_t*)

define %_IO_FILE* @_IO_FILE.71() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

define %_G_fpos_t* @_G_fpos_t.72() {
entry:
  %0 = call i64* @malloc(i64 16)
  %1 = bitcast i64* %0 to %_G_fpos_t*
  ret %_G_fpos_t* %1
}

declare i32 @fsetpos(%_IO_FILE*, %_G_fpos_t*)

define %_IO_FILE* @_IO_FILE.73() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @clearerr(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.74() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @feof(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.75() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @ferror(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.76() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @clearerr_unlocked(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.77() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @feof_unlocked(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.78() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @ferror_unlocked(%_IO_FILE*)

declare void @perror(i8*)

define %_IO_FILE* @_IO_FILE.79() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fileno(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.80() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @fileno_unlocked(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.81() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare %_IO_FILE* @popen(i8*, i8*)

define %_IO_FILE* @_IO_FILE.82() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @pclose(%_IO_FILE*)

declare i8* @ctermid(i8*)

define %_IO_FILE* @_IO_FILE.83() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @flockfile(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.84() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare i32 @ftrylockfile(%_IO_FILE*)

define %_IO_FILE* @_IO_FILE.85() {
entry:
  %0 = call i64* @malloc(i64 1)
  %1 = bitcast i64* %0 to %_IO_FILE*
  ret %_IO_FILE* %1
}

declare void @funlockfile(%_IO_FILE*)

declare i64* @memcpy(i64*, i64*, i32)

declare i64* @memmove(i64*, i64*, i32)

declare i64* @memccpy(i64*, i64*, i32, i32)

declare i64* @memset(i64*, i32, i32)

declare i32 @memcmp(i64*, i64*, i32)

declare i64* @memchr(i64*, i32, i32)

declare i8* @strcpy(i8*, i8*)

declare i8* @strncpy(i8*, i8*, i32)

declare i8* @strcat(i8*, i8*)

declare i8* @strncat(i8*, i8*, i32)

declare i32 @strcmp(i8*, i8*)

declare i32 @strncmp(i8*, i8*, i32)

declare i32 @strcoll(i8*, i8*)

declare i32 @strxfrm(i8*, i8*, i32)

define %__locale_struct* @__locale_struct.86() {
entry:
  %0 = call i64* @malloc(i64 232)
  %1 = bitcast i64* %0 to %__locale_struct*
  ret %__locale_struct* %1
}

declare i32 @strcoll_l(i8*, i8*, %__locale_struct*)

define %__locale_struct* @__locale_struct.87() {
entry:
  %0 = call i64* @malloc(i64 232)
  %1 = bitcast i64* %0 to %__locale_struct*
  ret %__locale_struct* %1
}

declare i32 @strxfrm_l(i8*, i8*, i32, %__locale_struct*)

declare i8* @strdup(i8*)

declare i8* @strndup(i8*, i32)

declare i8* @strchr(i8*, i32)

declare i8* @strrchr(i8*, i32)

declare i32 @strcspn(i8*, i8*)

declare i32 @strspn(i8*, i8*)

declare i8* @strpbrk(i8*, i8*)

declare i8* @strstr(i8*, i8*)

declare i8* @strtok(i8*, i8*)

declare i8* @__strtok_r(i8*, i8*, i8**)

declare i8* @strtok_r(i8*, i8*, i8**)

declare i32 @strlen(i8*)

declare i32 @strnlen(i8*, i32)

declare i8* @strerror(i32)

declare i32 @strerror_r(i32, i8*, i32)

define %__locale_struct* @__locale_struct.88() {
entry:
  %0 = call i64* @malloc(i64 232)
  %1 = bitcast i64* %0 to %__locale_struct*
  ret %__locale_struct* %1
}

declare i8* @strerror_l(i32, %__locale_struct*)

declare i32 @bcmp(i64*, i64*, i32)

declare void @bcopy(i64*, i64*, i32)

declare void @bzero(i64*, i32)

declare i8* @index(i8*, i32)

declare i8* @rindex(i8*, i32)

declare i32 @ffs(i32)

declare i32 @ffsl(i64)

declare i32 @ffsll(i64)

declare i32 @strcasecmp(i8*, i8*)

declare i32 @strncasecmp(i8*, i8*, i32)

define %__locale_struct* @__locale_struct.89() {
entry:
  %0 = call i64* @malloc(i64 232)
  %1 = bitcast i64* %0 to %__locale_struct*
  ret %__locale_struct* %1
}

declare i32 @strcasecmp_l(i8*, i8*, %__locale_struct*)

define %__locale_struct* @__locale_struct.90() {
entry:
  %0 = call i64* @malloc(i64 232)
  %1 = bitcast i64* %0 to %__locale_struct*
  ret %__locale_struct* %1
}

declare i32 @strncasecmp_l(i8*, i8*, i32, %__locale_struct*)

declare void @explicit_bzero(i64*, i32)

declare i8* @strsep(i8**, i8*)

declare i8* @strsignal(i32)

declare i8* @__stpcpy(i8*, i8*)

declare i8* @stpcpy(i8*, i8*)

declare i8* @__stpncpy(i8*, i8*, i32)

declare i8* @stpncpy(i8*, i8*, i32)

declare i32 @__fpclassify(double)

declare i32 @__signbit(double)

declare i32 @__isinf(double)

declare i32 @__finite(double)

declare i32 @__isnan(double)

declare i32 @__iseqsig(double, double)

declare i32 @__issignaling(double)

declare double @acos(double)

declare double @__acos(double)

declare double @asin(double)

declare double @__asin(double)

declare double @atan(double)

declare double @__atan(double)

declare double @atan2(double, double)

declare double @__atan2(double, double)

declare double @cos(double)

declare double @__cos(double)

declare double @sin(double)

declare double @__sin(double)

declare double @tan(double)

declare double @__tan(double)

declare double @cosh(double)

declare double @__cosh(double)

declare double @sinh(double)

declare double @__sinh(double)

declare double @tanh(double)

declare double @__tanh(double)

declare double @acosh(double)

declare double @__acosh(double)

declare double @asinh(double)

declare double @__asinh(double)

declare double @atanh(double)

declare double @__atanh(double)

declare double @exp(double)

declare double @__exp(double)

declare double @frexp(double, i32*)

declare double @__frexp(double, i32*)

declare double @ldexp(double, i32)

declare double @__ldexp(double, i32)

declare double @log(double)

declare double @__log(double)

declare double @log10(double)

declare double @__log10(double)

declare double @modf(double, float*)

declare double @__modf(double, float*)

declare double @expm1(double)

declare double @__expm1(double)

declare double @log1p(double)

declare double @__log1p(double)

declare double @logb(double)

declare double @__logb(double)

declare double @exp2(double)

declare double @__exp2(double)

declare double @log2(double)

declare double @__log2(double)

declare double @pow(double, double)

declare double @__pow(double, double)

declare double @sqrt(double)

declare double @__sqrt(double)

declare double @hypot(double, double)

declare double @__hypot(double, double)

declare double @cbrt(double)

declare double @__cbrt(double)

declare double @ceil(double)

declare double @__ceil(double)

declare double @fabs(double)

declare double @__fabs(double)

declare double @floor(double)

declare double @__floor(double)

declare double @fmod(double, double)

declare double @__fmod(double, double)

declare i32 @isinf(double)

declare i32 @finite(double)

declare double @drem(double, double)

declare double @__drem(double, double)

declare double @significand(double)

declare double @__significand(double)

declare double @copysign(double, double)

declare double @__copysign(double, double)

declare double @nan(i8*)

declare double @__nan(i8*)

declare i32 @isnan(double)

declare double @j0(double)

declare double @__j0(double)

declare double @j1(double)

declare double @__j1(double)

declare double @jn(i32, double)

declare double @__jn(i32, double)

declare double @y0(double)

declare double @__y0(double)

declare double @y1(double)

declare double @__y1(double)

declare double @yn(i32, double)

declare double @__yn(i32, double)

declare double @erf(double)

declare double @__erf(double)

declare double @erfc(double)

declare double @__erfc(double)

declare double @lgamma(double)

declare double @__lgamma(double)

declare double @tgamma(double)

declare double @__tgamma(double)

declare double @gamma(double)

declare double @__gamma(double)

declare double @lgamma_r(double, i32*)

declare double @__lgamma_r(double, i32*)

declare double @rint(double)

declare double @__rint(double)

declare double @nextafter(double, double)

declare double @__nextafter(double, double)

declare double @nexttoward(double, double)

declare double @__nexttoward(double, double)

declare double @remainder(double, double)

declare double @__remainder(double, double)

declare double @scalbn(double, i32)

declare double @__scalbn(double, i32)

declare i32 @ilogb(double)

declare i32 @__ilogb(double)

declare double @scalbln(double, i64)

declare double @__scalbln(double, i64)

declare double @nearbyint(double)

declare double @__nearbyint(double)

declare double @round(double)

declare double @__round(double)

declare double @trunc(double)

declare double @__trunc(double)

declare double @remquo(double, double, i32*)

declare double @__remquo(double, double, i32*)

declare i64 @lrint(double)

declare i64 @__lrint(double)

declare i64 @llrint(double)

declare i64 @__llrint(double)

declare i64 @lround(double)

declare i64 @__lround(double)

declare i64 @llround(double)

declare i64 @__llround(double)

declare double @fdim(double, double)

declare double @__fdim(double, double)

declare double @fmax(double, double)

declare double @__fmax(double, double)

declare double @fmin(double, double)

declare double @__fmin(double, double)

declare double @fma(double, double, double)

declare double @__fma(double, double, double)

declare double @scalb(double, double)

declare double @__scalb(double, double)

declare i32 @__fpclassifyf(double)

declare i32 @__signbitf(double)

declare i32 @__isinff(double)

declare i32 @__finitef(double)

declare i32 @__isnanf(double)

declare i32 @__iseqsigf(double, double)

declare i32 @__issignalingf(double)

declare double @acosf(double)

declare double @__acosf(double)

declare double @asinf(double)

declare double @__asinf(double)

declare double @atanf(double)

declare double @__atanf(double)

declare double @atan2f(double, double)

declare double @__atan2f(double, double)

declare double @cosf(double)

declare double @__cosf(double)

declare double @sinf(double)

declare double @__sinf(double)

declare double @tanf(double)

declare double @__tanf(double)

declare double @coshf(double)

declare double @__coshf(double)

declare double @sinhf(double)

declare double @__sinhf(double)

declare double @tanhf(double)

declare double @__tanhf(double)

declare double @acoshf(double)

declare double @__acoshf(double)

declare double @asinhf(double)

declare double @__asinhf(double)

declare double @atanhf(double)

declare double @__atanhf(double)

declare double @expf(double)

declare double @__expf(double)

declare double @frexpf(double, i32*)

declare double @__frexpf(double, i32*)

declare double @ldexpf(double, i32)

declare double @__ldexpf(double, i32)

declare double @logf(double)

declare double @__logf(double)

declare double @log10f(double)

declare double @__log10f(double)

declare double @modff(double, float*)

declare double @__modff(double, float*)

declare double @expm1f(double)

declare double @__expm1f(double)

declare double @log1pf(double)

declare double @__log1pf(double)

declare double @logbf(double)

declare double @__logbf(double)

declare double @exp2f(double)

declare double @__exp2f(double)

declare double @log2f(double)

declare double @__log2f(double)

declare double @powf(double, double)

declare double @__powf(double, double)

declare double @sqrtf(double)

declare double @__sqrtf(double)

declare double @hypotf(double, double)

declare double @__hypotf(double, double)

declare double @cbrtf(double)

declare double @__cbrtf(double)

declare double @ceilf(double)

declare double @__ceilf(double)

declare double @fabsf(double)

declare double @__fabsf(double)

declare double @floorf(double)

declare double @__floorf(double)

declare double @fmodf(double, double)

declare double @__fmodf(double, double)

declare i32 @isinff(double)

declare i32 @finitef(double)

declare double @dremf(double, double)

declare double @__dremf(double, double)

declare double @significandf(double)

declare double @__significandf(double)

declare double @copysignf(double, double)

declare double @__copysignf(double, double)

declare double @nanf(i8*)

declare double @__nanf(i8*)

declare i32 @isnanf(double)

declare double @j0f(double)

declare double @__j0f(double)

declare double @j1f(double)

declare double @__j1f(double)

declare double @jnf(i32, double)

declare double @__jnf(i32, double)

declare double @y0f(double)

declare double @__y0f(double)

declare double @y1f(double)

declare double @__y1f(double)

declare double @ynf(i32, double)

declare double @__ynf(i32, double)

declare double @erff(double)

declare double @__erff(double)

declare double @erfcf(double)

declare double @__erfcf(double)

declare double @lgammaf(double)

declare double @__lgammaf(double)

declare double @tgammaf(double)

declare double @__tgammaf(double)

declare double @gammaf(double)

declare double @__gammaf(double)

declare double @lgammaf_r(double, i32*)

declare double @__lgammaf_r(double, i32*)

declare double @rintf(double)

declare double @__rintf(double)

declare double @nextafterf(double, double)

declare double @__nextafterf(double, double)

declare double @nexttowardf(double, double)

declare double @__nexttowardf(double, double)

declare double @remainderf(double, double)

declare double @__remainderf(double, double)

declare double @scalbnf(double, i32)

declare double @__scalbnf(double, i32)

declare i32 @ilogbf(double)

declare i32 @__ilogbf(double)

declare double @scalblnf(double, i64)

declare double @__scalblnf(double, i64)

declare double @nearbyintf(double)

declare double @__nearbyintf(double)

declare double @roundf(double)

declare double @__roundf(double)

declare double @truncf(double)

declare double @__truncf(double)

declare double @remquof(double, double, i32*)

declare double @__remquof(double, double, i32*)

declare i64 @lrintf(double)

declare i64 @__lrintf(double)

declare i64 @llrintf(double)

declare i64 @__llrintf(double)

declare i64 @lroundf(double)

declare i64 @__lroundf(double)

declare i64 @llroundf(double)

declare i64 @__llroundf(double)

declare double @fdimf(double, double)

declare double @__fdimf(double, double)

declare double @fmaxf(double, double)

declare double @__fmaxf(double, double)

declare double @fminf(double, double)

declare double @__fminf(double, double)

declare double @fmaf(double, double, double)

declare double @__fmaf(double, double, double)

declare double @scalbf(double, double)

declare double @__scalbf(double, double)

declare i32 @__fpclassifyl(double)

declare i32 @__signbitl(double)

declare i32 @__isinfl(double)

declare i32 @__finitel(double)

declare i32 @__isnanl(double)

declare i32 @__iseqsigl(double, double)

declare i32 @__issignalingl(double)

declare double @acosl(double)

declare double @__acosl(double)

declare double @asinl(double)

declare double @__asinl(double)

declare double @atanl(double)

declare double @__atanl(double)

declare double @atan2l(double, double)

declare double @__atan2l(double, double)

declare double @cosl(double)

declare double @__cosl(double)

declare double @sinl(double)

declare double @__sinl(double)

declare double @tanl(double)

declare double @__tanl(double)

declare double @coshl(double)

declare double @__coshl(double)

declare double @sinhl(double)

declare double @__sinhl(double)

declare double @tanhl(double)

declare double @__tanhl(double)

declare double @acoshl(double)

declare double @__acoshl(double)

declare double @asinhl(double)

declare double @__asinhl(double)

declare double @atanhl(double)

declare double @__atanhl(double)

declare double @expl(double)

declare double @__expl(double)

declare double @frexpl(double, i32*)

declare double @__frexpl(double, i32*)

declare double @ldexpl(double, i32)

declare double @__ldexpl(double, i32)

declare double @logl(double)

declare double @__logl(double)

declare double @log10l(double)

declare double @__log10l(double)

declare double @modfl(double, float*)

declare double @__modfl(double, float*)

declare double @expm1l(double)

declare double @__expm1l(double)

declare double @log1pl(double)

declare double @__log1pl(double)

declare double @logbl(double)

declare double @__logbl(double)

declare double @exp2l(double)

declare double @__exp2l(double)

declare double @log2l(double)

declare double @__log2l(double)

declare double @powl(double, double)

declare double @__powl(double, double)

declare double @sqrtl(double)

declare double @__sqrtl(double)

declare double @hypotl(double, double)

declare double @__hypotl(double, double)

declare double @cbrtl(double)

declare double @__cbrtl(double)

declare double @ceill(double)

declare double @__ceill(double)

declare double @fabsl(double)

declare double @__fabsl(double)

declare double @floorl(double)

declare double @__floorl(double)

declare double @fmodl(double, double)

declare double @__fmodl(double, double)

declare i32 @isinfl(double)

declare i32 @finitel(double)

declare double @dreml(double, double)

declare double @__dreml(double, double)

declare double @significandl(double)

declare double @__significandl(double)

declare double @copysignl(double, double)

declare double @__copysignl(double, double)

declare double @nanl(i8*)

declare double @__nanl(i8*)

declare i32 @isnanl(double)

declare double @j0l(double)

declare double @__j0l(double)

declare double @j1l(double)

declare double @__j1l(double)

declare double @jnl(i32, double)

declare double @__jnl(i32, double)

declare double @y0l(double)

declare double @__y0l(double)

declare double @y1l(double)

declare double @__y1l(double)

declare double @ynl(i32, double)

declare double @__ynl(i32, double)

declare double @erfl(double)

declare double @__erfl(double)

declare double @erfcl(double)

declare double @__erfcl(double)

declare double @lgammal(double)

declare double @__lgammal(double)

declare double @tgammal(double)

declare double @__tgammal(double)

declare double @gammal(double)

declare double @__gammal(double)

declare double @lgammal_r(double, i32*)

declare double @__lgammal_r(double, i32*)

declare double @rintl(double)

declare double @__rintl(double)

declare double @nextafterl(double, double)

declare double @__nextafterl(double, double)

declare double @nexttowardl(double, double)

declare double @__nexttowardl(double, double)

declare double @remainderl(double, double)

declare double @__remainderl(double, double)

declare double @scalbnl(double, i32)

declare double @__scalbnl(double, i32)

declare i32 @ilogbl(double)

declare i32 @__ilogbl(double)

declare double @scalblnl(double, i64)

declare double @__scalblnl(double, i64)

declare double @nearbyintl(double)

declare double @__nearbyintl(double)

declare double @roundl(double)

declare double @__roundl(double)

declare double @truncl(double)

declare double @__truncl(double)

declare double @remquol(double, double, i32*)

declare double @__remquol(double, double, i32*)

declare i64 @lrintl(double)

declare i64 @__lrintl(double)

declare i64 @llrintl(double)

declare i64 @__llrintl(double)

declare i64 @lroundl(double)

declare i64 @__lroundl(double)

declare i64 @llroundl(double)

declare i64 @__llroundl(double)

declare double @fdiml(double, double)

declare double @__fdiml(double, double)

declare double @fmaxl(double, double)

declare double @__fmaxl(double, double)

declare double @fminl(double, double)

declare double @__fminl(double, double)

declare double @fmal(double, double, double)

declare double @__fmal(double, double, double)

declare double @scalbl(double, double)

declare double @__scalbl(double, double)

declare void @read_shader(i32, i8*)

declare i32 @make_shader(i8*, i8*)

declare i8** @create_window(i8*)

declare i32 @draw(i8**)

declare void @List()

declare void @Person()

define %Person* @Person.92(%struct.String* %name) {
entry:
  %0 = alloca %struct.String*
  store %struct.String* %name, %struct.String** %0
  %1 = load %struct.String*, %struct.String** %0
  %"@name" = alloca %struct.String*
  store %struct.String* %1, %struct.String** %"@name"
  %2 = load %struct.String*, %struct.String** %"@name"
  %3 = call i64* @malloc(i64 8)
  %4 = bitcast i64* %3 to %Person*
  %5 = getelementptr inbounds %Person, %Person* %4, i32 0, i32 0
  store %struct.String* %2, %struct.String** %5
  ret %Person* %4
}

define void @"destructor<Person>"(%Person*) {
entry:
  %1 = bitcast %Person* %0 to i64*
  call void @free(i64* %1)
  ret void
}

define void @hello.93(%Person* %self) {
entry:
  %0 = alloca %Person*
  store %Person* %self, %Person** %0
  %1 = call %struct.String* @string_constructor(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @1, i32 0, i32 0), i64 11)
  %text = alloca %struct.String*
  store %struct.String* %1, %struct.String** %text
  %2 = load %struct.String*, %struct.String** %text
  %3 = load %struct.String*, %struct.String** %text
  %4 = load %struct.String*, %struct.String** %text
  %5 = load %Person*, %Person** %0
  %6 = getelementptr inbounds %Person, %Person* %5, i32 0, i32 0
  %7 = load %struct.String*, %struct.String** %6
  call void @append_string(%struct.String* %4, %struct.String* %7)
  %8 = load %struct.String*, %struct.String** %text
  call void @print(%struct.String* %8)
  ret void
}

declare void @rename.94()

define void @rename.96(%Person* %person) {
entry:
  %0 = alloca %Person*
  store %Person* %person, %Person** %0
  %1 = call %struct.String* @string_constructor(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @2, i32 0, i32 0), i64 11)
  %2 = call %Person* @Person.92(%struct.String* %1)
  %new = alloca %Person*
  store %Person* %2, %Person** %new
  %3 = load %Person*, %Person** %new
  %4 = load %Person*, %Person** %0
  %5 = getelementptr inbounds %Person, %Person* %4, i32 0, i32 0
  %6 = load %struct.String*, %struct.String** %5
  %7 = load %Person*, %Person** %new
  %8 = getelementptr inbounds %Person, %Person* %7, i32 0, i32 0
  %9 = load %struct.String*, %struct.String** %8
  %10 = load %struct.String, %struct.String* %9
  %11 = load %Person*, %Person** %0
  %12 = getelementptr inbounds %Person, %Person* %11, i32 0, i32 0
  %13 = load %struct.String*, %struct.String** %12
  %14 = load %Person*, %Person** %0
  %15 = getelementptr inbounds %Person, %Person* %14, i32 0, i32 0
  %16 = load %struct.String*, %struct.String** %15
  %17 = getelementptr inbounds %struct.String, %struct.String* %16, i32 0, i32 1
  %18 = load i64, i64* %17
  %19 = load %Person*, %Person** %0
  %20 = getelementptr inbounds %Person, %Person* %19, i32 0, i32 0
  %21 = load %struct.String*, %struct.String** %20
  %22 = getelementptr inbounds %struct.String, %struct.String* %21, i32 0, i32 1
  %23 = load i64, i64* %22
  %24 = load %Person*, %Person** %new
  %25 = getelementptr inbounds %Person, %Person* %24, i32 0, i32 0
  %26 = load %struct.String*, %struct.String** %25
  %27 = getelementptr inbounds %struct.String, %struct.String* %26, i32 0, i32 1
  %28 = load i64, i64* %27
  %29 = load %Person*, %Person** %0
  %30 = getelementptr inbounds %Person, %Person* %29, i32 0, i32 0
  %31 = load %struct.String*, %struct.String** %30
  %32 = getelementptr inbounds %struct.String, %struct.String* %31, i32 0, i32 0
  %33 = load i8*, i8** %32
  %34 = load %Person*, %Person** %0
  %35 = getelementptr inbounds %Person, %Person* %34, i32 0, i32 0
  %36 = load %struct.String*, %struct.String** %35
  %37 = getelementptr inbounds %struct.String, %struct.String* %36, i32 0, i32 0
  %38 = load i8*, i8** %37
  %39 = load %Person*, %Person** %0
  %40 = getelementptr inbounds %Person, %Person* %39, i32 0, i32 0
  %41 = load %struct.String*, %struct.String** %40
  %42 = getelementptr inbounds %struct.String, %struct.String* %41, i32 0, i32 0
  %43 = load i8*, i8** %42
  %44 = load %Person*, %Person** %new
  %45 = getelementptr inbounds %Person, %Person* %44, i32 0, i32 0
  %46 = load %struct.String*, %struct.String** %45
  %47 = getelementptr inbounds %struct.String, %struct.String* %46, i32 0, i32 0
  %48 = load i8*, i8** %47
  store i64 %28, i64* %22
  store i8* %48, i8** %42
  %49 = bitcast %Person* %2 to i64*
  call void @free(i64* %49)
  ret void
}
