.class public abstract Landroid/graphics/BaseCanvas;
.super Ljava/lang/Object;
.source "BaseCanvas.java"


# instance fields
.field private blacklist mAllowHwFeaturesInSwMode:Z

.field public blacklist mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

.field protected greylist-max-o mDensity:I

.field protected greylist mNativeCanvasWrapper:J

.field protected greylist-max-o mScreenDensity:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    .line 69
    iput v0, p0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 70
    iput-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    .line 75
    const-class v0, Landroid/graphics/IBaseCanvasExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/IBaseCanvasExt;

    iput-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    return-void
.end method

.method protected static final greylist-max-o checkRange(III)V
    .locals 1
    .param p0, "length"    # I
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .line 91
    or-int v0, p1, p2

    if-ltz v0, :cond_0

    add-int v0, p1, p2

    if-gt v0, p0, :cond_0

    .line 94
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method private static native greylist-max-o nDrawArc(JFFFFFFZJ)V
.end method

.method private static native blacklist nDrawBitmap(JJFFFFFFFFJII)V
.end method

.method private static native blacklist nDrawBitmap(JJFFJIII)V
.end method

.method private static native greylist-max-o nDrawBitmap(J[IIIFFIIZJ)V
.end method

.method private static native blacklist nDrawBitmapMatrix(JJJJ)V
.end method

.method private static native blacklist nDrawBitmapMesh(JJII[FI[IIJ)V
.end method

.method private static native greylist-max-o nDrawCircle(JFFFJ)V
.end method

.method private static native greylist-max-o nDrawColor(JII)V
.end method

.method private static native blacklist nDrawColor(JJJI)V
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V
.end method

.method private static native blacklist nDrawGlyphs(J[I[FIIIJJ)V
.end method

.method private static native greylist-max-o nDrawLine(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawLines(J[FIIJ)V
.end method

.method private static native greylist-max-o nDrawNinePatch(JJJFFFFJII)V
.end method

.method private static native greylist-max-o nDrawOval(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawPaint(JJ)V
.end method

.method private static native greylist-max-o nDrawPath(JJJ)V
.end method

.method private static native greylist-max-o nDrawPoint(JFFJ)V
.end method

.method private static native greylist-max-o nDrawPoints(J[FIIJ)V
.end method

.method private static native greylist-max-o nDrawRect(JFFFFJ)V
.end method

.method private static native greylist-max-o nDrawRegion(JJJ)V
.end method

.method private static native greylist-max-o nDrawRoundRect(JFFFFFFJ)V
.end method

.method private static native greylist-max-o nDrawText(JLjava/lang/String;IIFFIJ)V
.end method

.method private static native greylist-max-o nDrawText(J[CIIFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextOnPath(J[CIIJFFIJ)V
.end method

.method private static native greylist-max-o nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
.end method

.method private static native greylist-max-o nDrawTextRun(J[CIIIIFFZJJ)V
.end method

.method private static native greylist-max-o nDrawVertices(JII[FI[FI[II[SIIJ)V
.end method

.method private static native blacklist nPunchHole(JFFFFFF)V
.end method

.method private blacklist throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "p"    # Landroid/graphics/Paint;

    .line 1004
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 1008
    return-void

    .line 1005
    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V
    .locals 2
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 1011
    if-nez p1, :cond_0

    .line 1012
    return-void

    .line 1014
    :cond_0
    instance-of v0, p1, Landroid/graphics/BitmapShader;

    if-eqz v0, :cond_1

    .line 1015
    move-object v0, p1

    check-cast v0, Landroid/graphics/BitmapShader;

    iget-object v0, v0, Landroid/graphics/BitmapShader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 1016
    :cond_1
    instance-of v0, p1, Landroid/graphics/RuntimeShader;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1017
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support RuntimeShader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1019
    :cond_3
    :goto_0
    instance-of v0, p1, Landroid/graphics/ComposeShader;

    if-eqz v0, :cond_4

    .line 1020
    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderA:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 1021
    move-object v0, p1

    check-cast v0, Landroid/graphics/ComposeShader;

    iget-object v0, v0, Landroid/graphics/ComposeShader;->mShaderB:Landroid/graphics/Shader;

    invoke-direct {p0, v0}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Shader;)V

    .line 1023
    :cond_4
    :goto_1
    return-void
.end method

.method private greylist-max-o throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 996
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->isHardwareAccelerated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 997
    invoke-virtual {p0}, Landroid/graphics/BaseCanvas;->onHwFeatureInSwMode()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 998
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Software rendering doesn\'t support hardware bitmaps"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public greylist-max-o drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 133
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 134
    return-void
.end method

.method public greylist-max-o drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 110
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 114
    iget-object v2, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-interface {v2, v14, v15, v12, v13}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v2

    .line 116
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 117
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 116
    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-wide/from16 v12, v16

    invoke-static/range {v3 .. v13}, Landroid/graphics/BaseCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 121
    iget-object v3, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 123
    return-void
.end method

.method public greylist-max-o drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 127
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 128
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 130
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 15
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 137
    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 138
    invoke-direct {p0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 141
    iget-object v3, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v2, v1, v4}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v3

    .line 142
    .local v3, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v4, :cond_0

    iget-object v2, v3, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 144
    .end local p4    # "paint":Landroid/graphics/Paint;
    .local v2, "paint":Landroid/graphics/Paint;
    :cond_0
    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v6

    .line 145
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    :goto_0
    move-wide v10, v8

    iget v12, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    iget v13, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iget v14, v1, Landroid/graphics/Bitmap;->mDensity:I

    .line 144
    move/from16 v8, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v14}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFJIII)V

    .line 149
    iget-object v4, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v4, v3, v2}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 151
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 154
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 158
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p3, p1, v1}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 159
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v1, :cond_0

    iget-object p3, v0, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 161
    :cond_0
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v5

    .line 162
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    goto :goto_0

    :cond_1
    const-wide/16 v7, 0x0

    .line 161
    :goto_0
    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseCanvas;->nDrawBitmapMatrix(JJJJ)V

    .line 165
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p3}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 167
    return-void
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 27
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 171
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v3, :cond_3

    .line 174
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 175
    invoke-direct {v0, v4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 179
    iget-object v5, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v5, v3}, Landroid/graphics/IBaseCanvasExt;->getRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-interface {v5, v4, v1, v6}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v5

    .line 180
    .local v5, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v5, :cond_0

    iget-boolean v6, v5, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v6, :cond_0

    iget-object v4, v5, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 182
    .end local p4    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    :cond_0
    if-nez v4, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-wide/from16 v20, v6

    .line 185
    .local v20, "nativePaint":J
    if-nez v2, :cond_2

    .line 186
    const/4 v6, 0x0

    move v7, v6

    .line 187
    .local v6, "left":I
    .local v7, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 188
    .local v8, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move v15, v8

    move v14, v9

    .local v9, "bottom":I
    goto :goto_1

    .line 190
    .end local v6    # "left":I
    .end local v7    # "top":I
    .end local v8    # "right":I
    .end local v9    # "bottom":I
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 191
    .restart local v6    # "left":I
    iget v8, v2, Landroid/graphics/Rect;->right:I

    .line 192
    .restart local v8    # "right":I
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 193
    .restart local v7    # "top":I
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    move v15, v8

    move v14, v9

    .line 196
    .end local v8    # "right":I
    .local v14, "bottom":I
    .local v15, "right":I
    :goto_1
    iget-wide v8, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v10

    int-to-float v12, v6

    int-to-float v13, v7

    int-to-float v2, v15

    move/from16 p4, v6

    .end local v6    # "left":I
    .local p4, "left":I
    int-to-float v6, v14

    move/from16 v24, v7

    .end local v7    # "top":I
    .local v24, "top":I
    iget v7, v3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    move/from16 v16, v14

    .end local v14    # "bottom":I
    .local v16, "bottom":I
    iget v14, v3, Landroid/graphics/Rect;->top:I

    int-to-float v14, v14

    move/from16 v17, v14

    iget v14, v3, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    move/from16 v18, v14

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v14

    iget v3, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    move-object/from16 v25, v4

    .end local v4    # "paint":Landroid/graphics/Paint;
    .local v25, "paint":Landroid/graphics/Paint;
    iget v4, v1, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v19, v14

    move/from16 v26, v16

    .end local v16    # "bottom":I
    .local v26, "bottom":I
    move v14, v2

    move v2, v15

    .end local v15    # "right":I
    .local v2, "right":I
    move v15, v6

    move/from16 v16, v7

    move/from16 v22, v3

    move/from16 v23, v4

    invoke-static/range {v8 .. v23}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 202
    iget-object v3, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v4, v25

    .end local v25    # "paint":Landroid/graphics/Paint;
    .restart local v4    # "paint":Landroid/graphics/Paint;
    invoke-interface {v3, v5, v4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 204
    return-void

    .line 172
    .end local v2    # "right":I
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .end local v20    # "nativePaint":J
    .end local v24    # "top":I
    .end local v26    # "bottom":I
    .local p4, "paint":Landroid/graphics/Paint;
    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public greylist-max-o drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 26
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 208
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    if-eqz v3, :cond_3

    .line 211
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 212
    invoke-direct {v0, v4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 216
    iget-object v5, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v5, v4, v1, v3}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v5

    .line 217
    .local v5, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v5, :cond_0

    iget-boolean v6, v5, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v6, :cond_0

    iget-object v4, v5, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 219
    .end local p4    # "paint":Landroid/graphics/Paint;
    .local v4, "paint":Landroid/graphics/Paint;
    :cond_0
    if-nez v4, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-wide/from16 v20, v6

    .line 222
    .local v20, "nativePaint":J
    if-nez v2, :cond_2

    .line 223
    const/4 v6, 0x0

    move v7, v6

    .line 224
    .local v6, "left":F
    .local v7, "top":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 225
    .local v8, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move/from16 v24, v8

    move/from16 v25, v9

    .local v9, "bottom":F
    goto :goto_1

    .line 227
    .end local v6    # "left":F
    .end local v7    # "top":F
    .end local v8    # "right":F
    .end local v9    # "bottom":F
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 228
    .restart local v6    # "left":F
    iget v7, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v7

    .line 229
    .restart local v8    # "right":F
    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    .line 230
    .restart local v7    # "top":F
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    move/from16 v24, v8

    move/from16 v25, v9

    .line 233
    .end local v8    # "right":F
    .local v24, "right":F
    .local v25, "bottom":F
    :goto_1
    iget-wide v8, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v10

    iget v15, v3, Landroid/graphics/RectF;->left:F

    iget v14, v3, Landroid/graphics/RectF;->top:F

    iget v13, v3, Landroid/graphics/RectF;->right:F

    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/BaseCanvas;->mScreenDensity:I

    iget v3, v1, Landroid/graphics/Bitmap;->mDensity:I

    move/from16 v19, v12

    move v12, v6

    move/from16 v18, v13

    move v13, v7

    move/from16 v17, v14

    move/from16 v14, v24

    move/from16 v16, v15

    move/from16 v15, v25

    move/from16 v22, v2

    move/from16 v23, v3

    invoke-static/range {v8 .. v23}, Landroid/graphics/BaseCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 238
    iget-object v2, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2, v5, v4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 240
    return-void

    .line 209
    .end local v4    # "paint":Landroid/graphics/Paint;
    .end local v5    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .end local v6    # "left":F
    .end local v7    # "top":F
    .end local v20    # "nativePaint":J
    .end local v24    # "right":F
    .end local v25    # "bottom":F
    .restart local p4    # "paint":Landroid/graphics/Paint;
    :cond_3
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public greylist-max-o drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 20
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v13, p6

    move-object/from16 v14, p9

    if-ltz v13, :cond_6

    .line 249
    if-ltz p7, :cond_5

    .line 252
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, v13, :cond_4

    .line 255
    add-int/lit8 v2, p7, -0x1

    mul-int v2, v2, p3

    add-int v15, p2, v2

    .line 256
    .local v15, "lastScanline":I
    array-length v11, v1

    .line 257
    .local v11, "length":I
    if-ltz p2, :cond_3

    add-int v2, p2, v13

    if-gt v2, v11, :cond_3

    if-ltz v15, :cond_3

    add-int v2, v15, v13

    if-gt v2, v11, :cond_3

    .line 261
    invoke-direct {v0, v14}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 263
    if-eqz v13, :cond_2

    if-nez p7, :cond_0

    move/from16 v19, v11

    goto :goto_1

    .line 270
    :cond_0
    iget-object v2, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2, v1}, Landroid/graphics/IBaseCanvasExt;->changeColors([I)[I

    move-result-object v16

    .line 273
    .end local p1    # "colors":[I
    .local v16, "colors":[I
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 274
    if-eqz v14, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    move-wide/from16 v17, v3

    .line 273
    move-object/from16 v3, v16

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v19, v11

    .end local v11    # "length":I
    .local v19, "length":I
    move-wide/from16 v11, v17

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 275
    return-void

    .line 263
    .end local v16    # "colors":[I
    .end local v19    # "length":I
    .restart local v11    # "length":I
    .restart local p1    # "colors":[I
    :cond_2
    move/from16 v19, v11

    .line 264
    .end local v11    # "length":I
    .restart local v19    # "length":I
    :goto_1
    return-void

    .line 257
    .end local v19    # "length":I
    .restart local v11    # "length":I
    :cond_3
    move/from16 v19, v11

    .line 259
    .end local v11    # "length":I
    .restart local v19    # "length":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 253
    .end local v15    # "lastScanline":I
    .end local v19    # "length":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public greylist-max-o drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
    .locals 12
    .param p1, "colors"    # [I
    .param p2, "offset"    # I
    .param p3, "stride"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "hasAlpha"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v11, p5

    int-to-float v6, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 283
    return-void
.end method

.method public greylist-max-o drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 19
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 288
    move-object/from16 v0, p0

    move/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    move-object/from16 v1, p8

    or-int v2, p2, p3

    or-int/2addr v2, v13

    or-int/2addr v2, v15

    if-ltz v2, :cond_5

    .line 291
    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 292
    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    goto :goto_2

    .line 295
    :cond_0
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    mul-int v11, v2, v3

    .line 297
    .local v11, "count":I
    move-object/from16 v12, p4

    array-length v2, v12

    mul-int/lit8 v3, v11, 0x2

    invoke-static {v2, v13, v3}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 298
    if-eqz v14, :cond_1

    .line 300
    array-length v2, v14

    invoke-static {v2, v15, v11}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 305
    :cond_1
    iget-object v2, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v2, v3, v4}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v3

    move-object/from16 v10, p1

    invoke-interface {v2, v1, v10, v3}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v9

    .line 306
    .local v9, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v9, :cond_2

    iget-boolean v2, v9, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v2, :cond_2

    iget-object v1, v9, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    move-object v8, v1

    .end local p8    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 309
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p8    # "paint":Landroid/graphics/Paint;
    :cond_2
    move-object v8, v1

    .end local p8    # "paint":Landroid/graphics/Paint;
    .local v8, "paint":Landroid/graphics/Paint;
    :goto_0
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    .line 311
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    :goto_1
    move-wide/from16 v16, v5

    .line 309
    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object v13, v8

    .end local v8    # "paint":Landroid/graphics/Paint;
    .local v13, "paint":Landroid/graphics/Paint;
    move/from16 v8, p5

    move-object v14, v9

    .end local v9    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v14, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v18, v11

    .end local v11    # "count":I
    .local v18, "count":I
    move-wide/from16 v11, v16

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    .line 315
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v14, v13}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 317
    return-void

    .line 293
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .end local v18    # "count":I
    .restart local p8    # "paint":Landroid/graphics/Paint;
    :cond_4
    :goto_2
    return-void

    .line 289
    :cond_5
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public greylist-max-o drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 320
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 324
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p3, v1

    mul-float/2addr v1, p3

    invoke-interface {v0, v2, v1}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 326
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->nDrawCircle(JFFFJ)V

    .line 330
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 332
    return-void
.end method

.method public greylist-max-o drawColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 337
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p1}, Landroid/graphics/IBaseCanvasExt;->changeColor(I)I

    move-result p1

    .line 339
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 340
    return-void
.end method

.method public blacklist drawColor(ILandroid/graphics/BlendMode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;

    .line 356
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 357
    return-void
.end method

.method public greylist-max-o drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 345
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p1}, Landroid/graphics/IBaseCanvasExt;->changeColor(I)I

    move-result p1

    .line 348
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseCanvas;->nDrawColor(JII)V

    .line 349
    return-void
.end method

.method public blacklist drawColor(JLandroid/graphics/BlendMode;)V
    .locals 8
    .param p1, "color"    # J
    .param p3, "mode"    # Landroid/graphics/BlendMode;

    .line 364
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 365
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    .line 366
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v5

    iget v7, v5, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 365
    move-wide v5, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->nDrawColor(JJJI)V

    .line 367
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 28
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 628
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 629
    iget v15, v1, Landroid/graphics/RectF;->left:F

    .line 630
    .local v15, "outerLeft":F
    iget v14, v1, Landroid/graphics/RectF;->top:F

    .line 631
    .local v14, "outerTop":F
    iget v13, v1, Landroid/graphics/RectF;->right:F

    .line 632
    .local v13, "outerRight":F
    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    .line 634
    .local v12, "outerBottom":F
    iget v11, v2, Landroid/graphics/RectF;->left:F

    .line 635
    .local v11, "innerLeft":F
    iget v10, v2, Landroid/graphics/RectF;->top:F

    .line 636
    .local v10, "innerTop":F
    iget v9, v2, Landroid/graphics/RectF;->right:F

    .line 637
    .local v9, "innerRight":F
    iget v8, v2, Landroid/graphics/RectF;->bottom:F

    .line 638
    .local v8, "innerBottom":F
    iget-wide v4, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 640
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v18

    .line 638
    move v6, v15

    move v7, v14

    move/from16 v20, v8

    .end local v8    # "innerBottom":F
    .local v20, "innerBottom":F
    move v8, v13

    move/from16 v21, v9

    .end local v9    # "innerRight":F
    .local v21, "innerRight":F
    move v9, v12

    move/from16 v22, v10

    .end local v10    # "innerTop":F
    .local v22, "innerTop":F
    move/from16 v10, p2

    move/from16 v23, v11

    .end local v11    # "innerLeft":F
    .local v23, "innerLeft":F
    move/from16 v11, p3

    move/from16 v24, v12

    .end local v12    # "outerBottom":F
    .local v24, "outerBottom":F
    move/from16 v12, v23

    move/from16 v25, v13

    .end local v13    # "outerRight":F
    .local v25, "outerRight":F
    move/from16 v13, v22

    move/from16 v26, v14

    .end local v14    # "outerTop":F
    .local v26, "outerTop":F
    move/from16 v14, v21

    move/from16 v27, v15

    .end local v15    # "outerLeft":F
    .local v27, "outerLeft":F
    move/from16 v15, v20

    move/from16 v16, p5

    move/from16 v17, p6

    invoke-static/range {v4 .. v19}, Landroid/graphics/BaseCanvas;->nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    .line 641
    return-void
.end method

.method public blacklist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 26
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v13, p4

    move-object/from16 v12, p5

    invoke-direct {v0, v12}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 650
    if-eqz v13, :cond_0

    if-eqz v14, :cond_0

    array-length v2, v13

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    array-length v2, v14

    if-ne v2, v3, :cond_0

    .line 655
    iget v11, v1, Landroid/graphics/RectF;->left:F

    .line 656
    .local v11, "outerLeft":F
    iget v10, v1, Landroid/graphics/RectF;->top:F

    .line 657
    .local v10, "outerTop":F
    iget v9, v1, Landroid/graphics/RectF;->right:F

    .line 658
    .local v9, "outerRight":F
    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    .line 660
    .local v8, "outerBottom":F
    iget v7, v15, Landroid/graphics/RectF;->left:F

    .line 661
    .local v7, "innerLeft":F
    iget v6, v15, Landroid/graphics/RectF;->top:F

    .line 662
    .local v6, "innerTop":F
    iget v5, v15, Landroid/graphics/RectF;->right:F

    .line 663
    .local v5, "innerRight":F
    iget v4, v15, Landroid/graphics/RectF;->bottom:F

    .line 664
    .local v4, "innerBottom":F
    iget-wide v2, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 666
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 664
    move/from16 v18, v4

    .end local v4    # "innerBottom":F
    .local v18, "innerBottom":F
    move v4, v11

    move/from16 v19, v5

    .end local v5    # "innerRight":F
    .local v19, "innerRight":F
    move v5, v10

    move/from16 v20, v6

    .end local v6    # "innerTop":F
    .local v20, "innerTop":F
    move v6, v9

    move/from16 v21, v7

    .end local v7    # "innerLeft":F
    .local v21, "innerLeft":F
    move v7, v8

    move/from16 v22, v8

    .end local v8    # "outerBottom":F
    .local v22, "outerBottom":F
    move-object/from16 v8, p2

    move/from16 v23, v9

    .end local v9    # "outerRight":F
    .local v23, "outerRight":F
    move/from16 v9, v21

    move/from16 v24, v10

    .end local v10    # "outerTop":F
    .local v24, "outerTop":F
    move/from16 v10, v20

    move/from16 v25, v11

    .end local v11    # "outerLeft":F
    .local v25, "outerLeft":F
    move/from16 v11, v19

    move/from16 v12, v18

    move-object/from16 v13, p4

    move-wide/from16 v14, v16

    invoke-static/range {v2 .. v15}, Landroid/graphics/BaseCanvas;->nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    .line 667
    return-void

    .line 652
    .end local v18    # "innerBottom":F
    .end local v19    # "innerRight":F
    .end local v20    # "innerTop":F
    .end local v21    # "innerLeft":F
    .end local v22    # "outerBottom":F
    .end local v23    # "outerRight":F
    .end local v24    # "outerTop":F
    .end local v25    # "outerLeft":F
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Both inner and outer radii arrays must contain exactly 8 values"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "glyphIds"    # [I
    .param p2, "glyphIdOffset"    # I
    .param p3, "positions"    # [F
    .param p4, "positionOffset"    # I
    .param p5, "glyphCount"    # I
    .param p6, "font"    # Landroid/graphics/fonts/Font;
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 702
    move-object/from16 v11, p1

    move-object/from16 v12, p3

    const-string v0, "glyphIds must not be null."

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 703
    const-string/jumbo v0, "positions must not be null."

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 704
    const-string v0, "font must not be null."

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 705
    const-string/jumbo v0, "paint must not be null."

    move-object/from16 v14, p7

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 706
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 708
    const-string v0, " of elements"

    if-ltz p2, :cond_1

    add-int v1, p2, p5

    array-length v2, v11

    if-gt v1, v2, :cond_1

    .line 712
    if-ltz p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int v1, p4, v1

    array-length v2, v12

    if-gt v1, v2, :cond_0

    .line 717
    move-object/from16 v15, p0

    iget-wide v0, v15, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 718
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v7

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 717
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseCanvas;->nDrawGlyphs(J[I[FIIIJJ)V

    .line 719
    return-void

    .line 712
    :cond_0
    move-object/from16 v15, p0

    .line 713
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "positions must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, p5, 0x2

    add-int v3, p4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :cond_1
    move-object/from16 v15, p0

    .line 709
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "glyphIds must have at least "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int v3, p2, p5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 371
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 375
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 377
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseCanvas;->nDrawLine(JFFFFJ)V

    .line 381
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 383
    return-void
.end method

.method public greylist-max-o drawLines([FIILandroid/graphics/Paint;)V
    .locals 8
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 387
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 391
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    const/4 v1, 0x0

    invoke-interface {v0, p4, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 393
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->nDrawLines(J[FIIJ)V

    .line 397
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 399
    return-void
.end method

.method public greylist-max-o drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 402
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 403
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 404
    return-void
.end method

.method public greylist-max-o drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 407
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 411
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 413
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseCanvas;->nDrawOval(JFFFFJ)V

    .line 417
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 419
    return-void
.end method

.method public greylist-max-o drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 422
    if-eqz p1, :cond_0

    .line 425
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 426
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 427
    return-void

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawPaint(Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 430
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 433
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0}, Landroid/graphics/IBaseCanvasExt;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2}, Landroid/graphics/IBaseCanvasExt;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 435
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BaseCanvas;->nDrawPaint(JJ)V

    .line 439
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 441
    return-void
.end method

.method public greylist-max-o drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 22
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 444
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 445
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v4}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 446
    invoke-direct {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 450
    iget-object v5, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v5, v2}, Landroid/graphics/IBaseCanvasExt;->getRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v6

    invoke-interface {v5, v1, v3, v6}, Landroid/graphics/IBaseCanvasExt;->changePatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v5

    .line 451
    .local v5, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v5, :cond_0

    iget-boolean v6, v5, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v6, :cond_0

    iget-object v3, v5, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 453
    .end local p3    # "paint":Landroid/graphics/Paint;
    .local v3, "paint":Landroid/graphics/Paint;
    :cond_0
    if-nez v3, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-wide/from16 v18, v6

    .line 454
    .local v18, "nativePaint":J
    iget-wide v8, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v10

    iget-wide v12, v1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v14, v6

    iget v6, v2, Landroid/graphics/Rect;->top:I

    int-to-float v15, v6

    iget v6, v2, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    iget v1, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v21

    .line 454
    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v1

    invoke-static/range {v8 .. v21}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 460
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v5, v3}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 462
    return-void
.end method

.method public greylist-max-o drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 22
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 466
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Landroid/graphics/BaseCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 470
    iget-object v4, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v5, p3

    invoke-interface {v4, v1, v5, v2}, Landroid/graphics/IBaseCanvasExt;->changePatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v4

    .line 471
    .local v4, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v4, :cond_0

    iget-boolean v6, v4, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v6, :cond_0

    iget-object v5, v4, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 473
    .end local p3    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    :cond_0
    invoke-direct {v0, v5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 474
    if-nez v5, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-wide/from16 v18, v6

    .line 475
    .local v18, "nativePaint":J
    iget-wide v8, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v10

    iget-wide v12, v1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v14, v2, Landroid/graphics/RectF;->left:F

    iget v15, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/BaseCanvas;->mDensity:I

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v21

    .line 475
    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v1

    invoke-static/range {v8 .. v21}, Landroid/graphics/BaseCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 481
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v4, v5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 483
    return-void
.end method

.method public greylist-max-o drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 17
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 490
    iget-object v3, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3}, Landroid/graphics/IBaseCanvasExt;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v5}, Landroid/graphics/IBaseCanvasExt;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v2, v4, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v3

    .line 492
    .local v3, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-boolean v4, v1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v4, :cond_0

    .line 493
    iget-wide v5, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget-object v4, v1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v7, v4, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Landroid/graphics/BaseCanvas;->nDrawRegion(JJJ)V

    goto :goto_0

    .line 495
    :cond_0
    iget-wide v11, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    invoke-static/range {v11 .. v16}, Landroid/graphics/BaseCanvas;->nDrawPath(JJJ)V

    .line 500
    :goto_0
    iget-object v4, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v4, v3, v2}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 502
    return-void
.end method

.method public greylist-max-o drawPoint(FFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 505
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 509
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 511
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->nDrawPoint(JFFJ)V

    .line 515
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p3}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 517
    return-void
.end method

.method public greylist-max-o drawPoints([FIILandroid/graphics/Paint;)V
    .locals 8
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 521
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 525
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    const/4 v1, 0x0

    invoke-interface {v0, p4, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 527
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->nDrawPoints(J[FIIJ)V

    .line 531
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 533
    return-void
.end method

.method public greylist-max-o drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 536
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 537
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 538
    return-void
.end method

.method public greylist-max-o drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 556
    invoke-direct {p0, p3}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 558
    return-void
.end method

.method public greylist-max-o drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 544
    if-ltz p2, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 547
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 548
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 549
    add-int v3, p2, v0

    const/4 v4, 0x1

    mul-int/lit8 v1, v0, 0x2

    aget v5, p4, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v6, p4, v1

    move-object v1, p0

    move-object v2, p1

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 548
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 545
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 597
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseCanvas;->drawColor(I)V

    .line 598
    return-void
.end method

.method public greylist-max-o drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 561
    invoke-direct {p0, p5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 565
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 567
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    .line 571
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 573
    return-void
.end method

.method public greylist-max-o drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 576
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 577
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    move-object v1, p0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 578
    return-void
.end method

.method public greylist-max-o drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 581
    invoke-direct {p0, p2}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 585
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p2, p1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 587
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 588
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    .line 587
    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseCanvas;->nDrawRect(JFFFFJ)V

    .line 592
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p2}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 594
    return-void
.end method

.method public greylist-max-o drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 602
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 606
    iget-object v2, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p4

    invoke-interface {v2, v13, v14, v15, v11}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v2

    .line 608
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 609
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 608
    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-wide/from16 v11, v16

    invoke-static/range {v3 .. v12}, Landroid/graphics/BaseCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 613
    iget-object v3, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 615
    return-void
.end method

.method public greylist-max-o drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 618
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 619
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 620
    return-void
.end method

.method public greylist-max-o drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 26
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 744
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move-object/from16 v13, p6

    or-int v0, v15, v14

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v14

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 747
    invoke-direct {v7, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 751
    iget-object v0, v7, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, v13}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v12

    .line 753
    .local v12, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    instance-of v0, v8, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannedString;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 757
    :cond_0
    instance-of v0, v8, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 758
    move-object v0, v8

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->drawText(Landroid/graphics/BaseCanvas;IIFFLandroid/graphics/Paint;)V

    move-object v1, v12

    move-object v2, v13

    goto :goto_1

    .line 761
    :cond_1
    sub-int v0, v14, v15

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 762
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {v8, v15, v14, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 763
    iget-wide v1, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    const/16 v19, 0x0

    sub-int v20, v14, v15

    iget v3, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 764
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v24

    .line 763
    move-wide/from16 v16, v1

    move-object/from16 v18, v0

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, v3

    invoke-static/range {v16 .. v25}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    .line 765
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    move-object v1, v12

    move-object v2, v13

    goto :goto_1

    .line 755
    .end local v0    # "buf":[C
    :cond_2
    :goto_0
    iget-wide v9, v7, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v0, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 756
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    .line 755
    move-object v1, v12

    .end local v12    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v1, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    move/from16 v12, p2

    move-object v2, v13

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, v0

    invoke-static/range {v9 .. v18}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 770
    :goto_1
    iget-object v0, v7, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, v1, v2}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 772
    return-void

    .line 745
    .end local v1    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_3
    move-object v2, v13

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 775
    invoke-direct {p0, p4}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 778
    iget-object v0, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p4}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 780
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v8, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 781
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 780
    const/4 v4, 0x0

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 785
    iget-object v1, p0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 787
    return-void
.end method

.method public greylist-max-o drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 791
    move-object v0, p0

    move-object/from16 v11, p6

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 794
    invoke-direct {p0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 798
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v11}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v12

    .line 800
    .local v12, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    .line 801
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 800
    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 805
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v12, v11}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 807
    return-void

    .line 792
    .end local v12    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 723
    move-object v0, p0

    move-object/from16 v11, p6

    or-int v1, p2, p3

    add-int v2, p2, p3

    or-int/2addr v1, v2

    move-object v12, p1

    array-length v2, v12

    sub-int v2, v2, p2

    sub-int v2, v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 727
    invoke-direct {p0, v11}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 731
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v11}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v13

    .line 733
    .local v13, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    .line 734
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 733
    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseCanvas;->nDrawText(J[CIIFFIJ)V

    .line 738
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v13, v11}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 740
    return-void

    .line 725
    .end local v13    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public greylist-max-o drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 832
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 833
    invoke-direct {p0, v1}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 837
    iget-object v2, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2, v1}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v2

    .line 839
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v3, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 840
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 839
    move-object v5, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v3 .. v12}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    .line 844
    iget-object v3, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 847
    .end local v2    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    return-void
.end method

.method public greylist-max-o drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 811
    move-object/from16 v0, p0

    move-object/from16 v13, p7

    if-ltz p2, :cond_0

    add-int v1, p2, p3

    move-object/from16 v14, p1

    array-length v2, v14

    if-gt v1, v2, :cond_1

    .line 814
    invoke-direct {v0, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 818
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v13}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v15

    .line 820
    .local v15, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 821
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 822
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 820
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    .line 826
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v15, v13}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 828
    return-void

    .line 811
    .end local v15    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    move-object/from16 v14, p1

    .line 812
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public blacklist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 15
    .param p1, "measuredText"    # Landroid/graphics/text/MeasuredText;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 941
    move-object v0, p0

    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v3

    sub-int v5, p3, p2

    sub-int v7, p5, p4

    .line 942
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 943
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v13

    .line 941
    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 944
    return-void
.end method

.method public greylist-max-o drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
    .locals 39
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 882
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v9, p9

    if-eqz v11, :cond_7

    .line 885
    if-eqz v9, :cond_6

    .line 888
    or-int v0, v15, v14

    or-int/2addr v0, v12

    or-int/2addr v0, v13

    sub-int v1, v15, v12

    or-int/2addr v0, v1

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    sub-int v1, v13, v14

    or-int/2addr v0, v1

    .line 889
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v13

    or-int/2addr v0, v1

    if-ltz v0, :cond_5

    .line 893
    invoke-direct {v10, v9}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 897
    iget-object v0, v10, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, v9}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v8

    .line 899
    .local v8, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    instance-of v0, v11, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, v11, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, v11, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    move-object/from16 v24, v8

    goto/16 :goto_0

    .line 903
    :cond_0
    instance-of v0, v11, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 904
    move-object v0, v11

    check-cast v0, Landroid/text/GraphicsOperations;

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v24, v8

    .end local v8    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v24, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Landroid/text/GraphicsOperations;->drawTextRun(Landroid/graphics/BaseCanvas;IIIIFFZLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 907
    .end local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .restart local v8    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_1
    move-object/from16 v24, v8

    .end local v8    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .restart local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    instance-of v0, v11, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_3

    .line 908
    move-object v9, v11

    check-cast v9, Landroid/text/PrecomputedText;

    .line 909
    .local v9, "pt":Landroid/text/PrecomputedText;
    invoke-virtual {v9, v15}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v8

    .line 910
    .local v8, "paraIndex":I
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v0

    if-gt v14, v0, :cond_2

    .line 911
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v16

    .line 912
    .local v16, "paraStart":I
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v17

    .line 914
    .local v17, "mp":Landroid/text/MeasuredParagraph;
    invoke-virtual/range {v17 .. v17}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v1

    sub-int v2, v15, v16

    sub-int v3, v14, v16

    sub-int v4, v12, v16

    sub-int v5, v13, v16

    move-object/from16 v0, p0

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v18, v8

    .end local v8    # "paraIndex":I
    .local v18, "paraIndex":I
    move/from16 v8, p8

    move-object/from16 v19, v9

    .end local v9    # "pt":Landroid/text/PrecomputedText;
    .local v19, "pt":Landroid/text/PrecomputedText;
    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 920
    return-void

    .line 910
    .end local v16    # "paraStart":I
    .end local v17    # "mp":Landroid/text/MeasuredParagraph;
    .end local v18    # "paraIndex":I
    .end local v19    # "pt":Landroid/text/PrecomputedText;
    .restart local v8    # "paraIndex":I
    .restart local v9    # "pt":Landroid/text/PrecomputedText;
    :cond_2
    move/from16 v18, v8

    move-object/from16 v19, v9

    .line 923
    .end local v8    # "paraIndex":I
    .end local v9    # "pt":Landroid/text/PrecomputedText;
    :cond_3
    sub-int v0, v13, v12

    .line 924
    .local v0, "contextLen":I
    sub-int v1, v14, v15

    .line 925
    .local v1, "len":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 926
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-static {v11, v12, v13, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 927
    iget-wide v3, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    sub-int v28, v15, v12

    const/16 v30, 0x0

    .line 928
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    .line 927
    move-wide/from16 v25, v3

    move-object/from16 v27, v2

    move/from16 v29, v1

    move/from16 v31, v0

    move/from16 v32, p6

    move/from16 v33, p7

    move/from16 v34, p8

    invoke-static/range {v25 .. v38}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 930
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 899
    .end local v0    # "contextLen":I
    .end local v1    # "len":I
    .end local v2    # "buf":[C
    .end local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v8, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_4
    move-object/from16 v24, v8

    .line 901
    .end local v8    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .restart local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :goto_0
    iget-wide v0, v10, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 902
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v22

    .line 901
    move-wide v12, v0

    move-object v14, v2

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    invoke-static/range {v12 .. v23}, Landroid/graphics/BaseCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 934
    :goto_1
    iget-object v0, v10, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v1, p9

    move-object/from16 v2, v24

    .end local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    invoke-interface {v0, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 936
    return-void

    .line 890
    .end local v2    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_5
    move-object v1, v9

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 886
    :cond_6
    move-object v1, v9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_7
    move-object v1, v9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
    .locals 19
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 852
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p9

    if-eqz v15, :cond_2

    .line 855
    if-eqz v13, :cond_1

    .line 858
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    array-length v2, v15

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 864
    invoke-direct {v0, v13}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 868
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v13}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v14

    .line 870
    .local v14, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    .line 871
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    .line 870
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object v15, v13

    move-object/from16 v18, v14

    .end local v14    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v18, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    move-wide/from16 v13, v16

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 875
    iget-object v1, v0, Landroid/graphics/BaseCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v2, v18

    .end local v18    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    invoke-interface {v1, v2, v15}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 877
    return-void

    .line 861
    .end local v2    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    move-object v15, v13

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 856
    :cond_1
    move-object v15, v13

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 853
    :cond_2
    move-object v15, v13

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
    .locals 18
    .param p1, "mode"    # Landroid/graphics/Canvas$VertexMode;
    .param p2, "vertexCount"    # I
    .param p3, "verts"    # [F
    .param p4, "vertOffset"    # I
    .param p5, "texs"    # [F
    .param p6, "texOffset"    # I
    .param p7, "colors"    # [I
    .param p8, "colorOffset"    # I
    .param p9, "indices"    # [S
    .param p10, "indexOffset"    # I
    .param p11, "indexCount"    # I
    .param p12, "paint"    # Landroid/graphics/Paint;

    .line 950
    move-object/from16 v0, p0

    move/from16 v14, p2

    move-object/from16 v15, p5

    move-object/from16 v13, p7

    move-object/from16 v12, p9

    move-object/from16 v11, p3

    array-length v1, v11

    move/from16 v10, p4

    invoke-static {v1, v10, v14}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    .line 951
    if-eqz v15, :cond_0

    .line 952
    array-length v1, v15

    move/from16 v9, p6

    invoke-static {v1, v9, v14}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_0

    .line 951
    :cond_0
    move/from16 v9, p6

    .line 954
    :goto_0
    if-eqz v13, :cond_1

    .line 955
    array-length v1, v13

    div-int/lit8 v2, v14, 0x2

    move/from16 v8, p8

    invoke-static {v1, v8, v2}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_1

    .line 954
    :cond_1
    move/from16 v8, p8

    .line 957
    :goto_1
    if-eqz v12, :cond_2

    .line 958
    array-length v1, v12

    move/from16 v7, p10

    move/from16 v6, p11

    invoke-static {v1, v7, v6}, Landroid/graphics/BaseCanvas;->checkRange(III)V

    goto :goto_2

    .line 957
    :cond_2
    move/from16 v7, p10

    move/from16 v6, p11

    .line 960
    :goto_2
    move-object/from16 v5, p12

    invoke-direct {v0, v5}, Landroid/graphics/BaseCanvas;->throwIfHasHwFeaturesInSwMode(Landroid/graphics/Paint;)V

    .line 961
    iget-wide v1, v0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v4, p1

    iget v3, v4, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 963
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 961
    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move-wide/from16 v14, v16

    invoke-static/range {v1 .. v15}, Landroid/graphics/BaseCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 964
    return-void
.end method

.method public greylist-max-o isHardwareAccelerated()Z
    .locals 1

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isHwFeaturesInSwModeEnabled()Z
    .locals 1

    .line 984
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    return v0
.end method

.method protected blacklist onHwFeatureInSwMode()Z
    .locals 1

    .line 992
    iget-boolean v0, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist punchHole(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F

    .line 970
    iget-wide v0, p0, Landroid/graphics/BaseCanvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseCanvas;->nPunchHole(JFFFFFF)V

    .line 971
    return-void
.end method

.method public blacklist setHwFeaturesInSwModeEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 977
    iput-boolean p1, p0, Landroid/graphics/BaseCanvas;->mAllowHwFeaturesInSwMode:Z

    .line 978
    return-void
.end method

.method protected greylist-max-o throwIfCannotDraw(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 79
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_1

    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a non-premultiplied bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/BaseCanvas;->throwIfHwBitmapInSwMode(Landroid/graphics/Bitmap;)V

    .line 88
    return-void

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canvas: trying to use a recycled bitmap "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
