.class public Landroid/graphics/BaseRecordingCanvas;
.super Landroid/graphics/Canvas;
.source "BaseRecordingCanvas.java"


# direct methods
.method public constructor blacklist <init>(J)V
    .locals 0
    .param p1, "nativeCanvas"    # J

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/graphics/Canvas;-><init>(J)V

    .line 53
    return-void
.end method

.method private static native blacklist nDrawArc(JFFFFFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(JJFFFFFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(JJFFJIII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmap(J[IIIFFIIZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmapMatrix(JJJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawBitmapMesh(JJII[FI[IIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawCircle(JFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawColor(JII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawColor(JJJI)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawGlyphs(J[I[FIIIJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawLine(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawLines(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawNinePatch(JJJFFFFJII)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawOval(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPaint(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPath(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPoint(JFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawPoints(J[FIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRect(JFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRegion(JJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawRoundRect(JFFFFFFJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawText(JLjava/lang/String;IIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawText(J[CIIFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextOnPath(JLjava/lang/String;JFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextOnPath(J[CIIJFFIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawTextRun(J[CIIIIFFZJJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nDrawVertices(JII[FI[FI[II[SIIJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nPunchHole(JFFFFFF)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public final whitelist drawARGB(IIII)V
    .locals 1
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 82
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V

    .line 83
    return-void
.end method

.method public final whitelist drawArc(FFFFFFZLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "startAngle"    # F
    .param p6, "sweepAngle"    # F
    .param p7, "useCenter"    # Z
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 61
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move/from16 v15, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v12, p4

    invoke-interface {v3, v15, v13, v14, v12}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v2

    .line 64
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v4, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 65
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 64
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-wide/from16 v13, v16

    invoke-static/range {v4 .. v14}, Landroid/graphics/BaseRecordingCanvas;->nDrawArc(JFFFFFFZJ)V

    .line 69
    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method public final whitelist drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F
    .param p4, "useCenter"    # Z
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 76
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/BaseRecordingCanvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 78
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 17
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 92
    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-interface {v3, v4, v5}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v3

    move-object/from16 v4, p4

    invoke-interface {v2, v4, v1, v3}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v2

    .line 93
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .end local p4    # "paint":Landroid/graphics/Paint;
    .local v3, "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 98
    .end local v3    # "paint":Landroid/graphics/Paint;
    .restart local p4    # "paint":Landroid/graphics/Paint;
    :cond_0
    move-object v3, v4

    .end local p4    # "paint":Landroid/graphics/Paint;
    .restart local v3    # "paint":Landroid/graphics/Paint;
    :goto_0
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v4}, Landroid/graphics/IBaseCanvasExt;->start()V

    .line 99
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move/from16 v15, p2

    move/from16 v14, p3

    invoke-interface {v4, v1, v15, v14, v3}, Landroid/graphics/IBaseCanvasExt;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 102
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v7

    .line 103
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    goto :goto_1

    :cond_1
    const-wide/16 v9, 0x0

    :goto_1
    move-wide v11, v9

    iget v13, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    iget v4, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    iget v10, v1, Landroid/graphics/Bitmap;->mDensity:I

    .line 102
    move/from16 v9, p2

    move/from16 v16, v10

    move/from16 v10, p3

    move v14, v4

    move/from16 v15, v16

    invoke-static/range {v5 .. v15}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFJIII)V

    .line 108
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v4, v2, v3}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 113
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v4}, Landroid/graphics/IBaseCanvasExt;->end()V

    .line 115
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v1, v2, v3}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p3, p1, v1}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 124
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v1, :cond_0

    iget-object p3, v0, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 129
    :cond_0
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1}, Landroid/graphics/IBaseCanvasExt;->start()V

    .line 130
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, p1, p2, p3}, Landroid/graphics/IBaseCanvasExt;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 133
    iget-wide v2, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v6

    .line 134
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v8

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    .line 133
    :goto_0
    invoke-static/range {v2 .. v9}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmapMatrix(JJJJ)V

    .line 138
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p3}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 143
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1}, Landroid/graphics/IBaseCanvasExt;->end()V

    .line 145
    return-void
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 27
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/Rect;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_3

    .line 153
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 157
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v5, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v5, v3}, Landroid/graphics/IBaseCanvasExt;->getRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v6, p4

    invoke-interface {v4, v6, v1, v5}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v4

    .line 158
    .local v4, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v4, :cond_0

    iget-boolean v5, v4, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .end local p4    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 163
    .end local v5    # "paint":Landroid/graphics/Paint;
    .restart local p4    # "paint":Landroid/graphics/Paint;
    :cond_0
    move-object v5, v6

    .end local p4    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    :goto_0
    iget-object v6, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v6}, Landroid/graphics/IBaseCanvasExt;->start()V

    .line 164
    iget-object v6, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v6, v1, v2, v3, v5}, Landroid/graphics/IBaseCanvasExt;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 167
    if-nez v5, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_1
    move-wide/from16 v20, v6

    .line 170
    .local v20, "nativePaint":J
    if-nez v2, :cond_2

    .line 171
    const/4 v6, 0x0

    move v7, v6

    .line 172
    .local v6, "left":I
    .local v7, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 173
    .local v8, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move v15, v8

    move v14, v9

    .local v9, "bottom":I
    goto :goto_2

    .line 175
    .end local v6    # "left":I
    .end local v7    # "top":I
    .end local v8    # "right":I
    .end local v9    # "bottom":I
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->left:I

    .line 176
    .restart local v6    # "left":I
    iget v8, v2, Landroid/graphics/Rect;->right:I

    .line 177
    .restart local v8    # "right":I
    iget v7, v2, Landroid/graphics/Rect;->top:I

    .line 178
    .restart local v7    # "top":I
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    move v15, v8

    move v14, v9

    .line 181
    .end local v8    # "right":I
    .local v14, "bottom":I
    .local v15, "right":I
    :goto_2
    iget-wide v8, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

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

    iget v3, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

    move-object/from16 v25, v4

    .end local v4    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v25, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
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

    invoke-static/range {v8 .. v23}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 187
    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v4, v25

    .end local v25    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .restart local v4    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    invoke-interface {v3, v4, v5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 192
    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3}, Landroid/graphics/IBaseCanvasExt;->end()V

    .line 194
    return-void

    .line 151
    .end local v2    # "right":I
    .end local v4    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v20    # "nativePaint":J
    .end local v24    # "top":I
    .end local v26    # "bottom":I
    .local p4, "paint":Landroid/graphics/Paint;
    :cond_3
    move-object/from16 v6, p4

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public final whitelist drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 26
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "src"    # Landroid/graphics/Rect;
    .param p3, "dst"    # Landroid/graphics/RectF;
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    if-eqz v3, :cond_3

    .line 202
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 206
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v5, p4

    invoke-interface {v4, v5, v1, v3}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v4

    .line 207
    .local v4, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v4, :cond_0

    iget-boolean v6, v4, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v6, :cond_0

    iget-object v5, v4, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 212
    .end local p4    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    :cond_0
    iget-object v6, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v6}, Landroid/graphics/IBaseCanvasExt;->start()V

    .line 213
    iget-object v6, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v6, v1, v2, v3, v5}, Landroid/graphics/IBaseCanvasExt;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 216
    if-nez v5, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-wide/from16 v20, v6

    .line 219
    .local v20, "nativePaint":J
    if-nez v2, :cond_2

    .line 220
    const/4 v6, 0x0

    move v7, v6

    .line 221
    .local v6, "left":F
    .local v7, "top":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    .line 222
    .local v8, "right":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    move/from16 v24, v8

    move/from16 v25, v9

    .local v9, "bottom":F
    goto :goto_1

    .line 224
    .end local v6    # "left":F
    .end local v7    # "top":F
    .end local v8    # "right":F
    .end local v9    # "bottom":F
    :cond_2
    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    .line 225
    .restart local v6    # "left":F
    iget v7, v2, Landroid/graphics/Rect;->right:I

    int-to-float v8, v7

    .line 226
    .restart local v8    # "right":F
    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    .line 227
    .restart local v7    # "top":F
    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    move/from16 v24, v8

    move/from16 v25, v9

    .line 230
    .end local v8    # "right":F
    .local v24, "right":F
    .local v25, "bottom":F
    :goto_1
    iget-wide v8, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v10

    iget v15, v3, Landroid/graphics/RectF;->left:F

    iget v14, v3, Landroid/graphics/RectF;->top:F

    iget v13, v3, Landroid/graphics/RectF;->right:F

    iget v12, v3, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/BaseRecordingCanvas;->mScreenDensity:I

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

    invoke-static/range {v8 .. v23}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(JJFFFFFFFFJII)V

    .line 236
    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2, v4, v5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 241
    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2}, Landroid/graphics/IBaseCanvasExt;->end()V

    .line 243
    return-void

    .line 200
    .end local v4    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .end local v5    # "paint":Landroid/graphics/Paint;
    .end local v6    # "left":F
    .end local v7    # "top":F
    .end local v20    # "nativePaint":J
    .end local v24    # "right":F
    .end local v25    # "bottom":F
    .restart local p4    # "paint":Landroid/graphics/Paint;
    :cond_3
    move-object/from16 v5, p4

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
.end method

.method public final whitelist drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V
    .locals 17
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

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v13, p6

    if-ltz v13, :cond_6

    .line 254
    if-ltz p7, :cond_5

    .line 257
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v2, v13, :cond_4

    .line 260
    add-int/lit8 v2, p7, -0x1

    mul-int v2, v2, p3

    add-int v14, p2, v2

    .line 261
    .local v14, "lastScanline":I
    array-length v15, v1

    .line 262
    .local v15, "length":I
    if-ltz p2, :cond_3

    add-int v2, p2, v13

    if-gt v2, v15, :cond_3

    if-ltz v14, :cond_3

    add-int v2, v14, v13

    if-gt v2, v15, :cond_3

    .line 267
    if-eqz v13, :cond_2

    if-nez p7, :cond_0

    goto :goto_1

    .line 273
    :cond_0
    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2, v1}, Landroid/graphics/IBaseCanvasExt;->changeColors([I)[I

    move-result-object v16

    .line 277
    .end local p1    # "colors":[I
    .local v16, "colors":[I
    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 278
    if-eqz p9, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x0

    :goto_0
    move-wide v11, v3

    .line 277
    move-object/from16 v3, v16

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmap(J[IIIFFIIZJ)V

    .line 279
    return-void

    .line 268
    .end local v16    # "colors":[I
    .restart local p1    # "colors":[I
    :cond_2
    :goto_1
    return-void

    .line 264
    :cond_3
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 258
    .end local v14    # "lastScanline":I
    .end local v15    # "length":I
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "abs(stride) must be >= width"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "height must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "width must be >= 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final whitelist drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V
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

    .line 287
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

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->drawBitmap([IIIFFIIZLandroid/graphics/Paint;)V

    .line 289
    return-void
.end method

.method public final whitelist drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V
    .locals 19
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "meshWidth"    # I
    .param p3, "meshHeight"    # I
    .param p4, "verts"    # [F
    .param p5, "vertOffset"    # I
    .param p6, "colors"    # [I
    .param p7, "colorOffset"    # I
    .param p8, "paint"    # Landroid/graphics/Paint;

    .line 295
    move-object/from16 v0, p0

    move/from16 v13, p5

    move-object/from16 v14, p6

    move/from16 v15, p7

    or-int v1, p2, p3

    or-int/2addr v1, v13

    or-int/2addr v1, v15

    if-ltz v1, :cond_5

    .line 298
    if-eqz p2, :cond_4

    if-nez p3, :cond_0

    move-object/from16 v3, p8

    goto/16 :goto_2

    .line 301
    :cond_0
    add-int/lit8 v1, p2, 0x1

    add-int/lit8 v2, p3, 0x1

    mul-int v11, v1, v2

    .line 303
    .local v11, "count":I
    move-object/from16 v12, p4

    array-length v1, v12

    mul-int/lit8 v2, v11, 0x2

    invoke-static {v1, v13, v2}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 304
    if-eqz v14, :cond_1

    .line 306
    array-length v1, v14

    invoke-static {v1, v15, v11}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 311
    :cond_1
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-interface {v2, v3, v4}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v2

    move-object/from16 v10, p1

    move-object/from16 v3, p8

    invoke-interface {v1, v3, v10, v2}, Landroid/graphics/IBaseCanvasExt;->changeBitmap(Landroid/graphics/Paint;Landroid/graphics/Bitmap;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v9

    .line 312
    .local v9, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v9, :cond_2

    iget-boolean v1, v9, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v1, :cond_2

    iget-object v1, v9, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    move-object v8, v1

    .end local p8    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 315
    .end local v1    # "paint":Landroid/graphics/Paint;
    .restart local p8    # "paint":Landroid/graphics/Paint;
    :cond_2
    move-object v8, v3

    .end local p8    # "paint":Landroid/graphics/Paint;
    .local v8, "paint":Landroid/graphics/Paint;
    :goto_0
    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v3

    .line 317
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    goto :goto_1

    :cond_3
    const-wide/16 v5, 0x0

    :goto_1
    move-wide/from16 v16, v5

    .line 315
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

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseRecordingCanvas;->nDrawBitmapMesh(JJII[FI[IIJ)V

    .line 321
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v14, v13}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 323
    return-void

    .line 298
    .end local v13    # "paint":Landroid/graphics/Paint;
    .end local v14    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .end local v18    # "count":I
    .restart local p8    # "paint":Landroid/graphics/Paint;
    :cond_4
    move-object/from16 v3, p8

    .line 299
    :goto_2
    return-void

    .line 296
    :cond_5
    move-object/from16 v3, p8

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public final whitelist drawCircle(FFFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "cx"    # F
    .param p2, "cy"    # F
    .param p3, "radius"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 329
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v3, p3, v2

    mul-float/2addr v2, p3

    invoke-interface {v1, v3, v2}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 332
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawCircle(JFFFJ)V

    .line 336
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 338
    return-void
.end method

.method public final whitelist drawColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 344
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p1}, Landroid/graphics/IBaseCanvasExt;->changeColor(I)I

    move-result p1

    .line 347
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    sget-object v2, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 348
    return-void
.end method

.method public final whitelist drawColor(ILandroid/graphics/BlendMode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/BlendMode;

    .line 362
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 363
    return-void
.end method

.method public final whitelist drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 3
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 354
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p1}, Landroid/graphics/IBaseCanvasExt;->changeColor(I)I

    move-result p1

    .line 357
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v2, p2, Landroid/graphics/PorterDuff$Mode;->nativeInt:I

    invoke-static {v0, v1, p1, v2}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JII)V

    .line 358
    return-void
.end method

.method public final whitelist drawColor(JLandroid/graphics/BlendMode;)V
    .locals 8
    .param p1, "color"    # J
    .param p3, "mode"    # Landroid/graphics/BlendMode;

    .line 367
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 368
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    .line 369
    invoke-virtual {p3}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v5

    iget v7, v5, Landroid/graphics/Xfermode;->porterDuffMode:I

    .line 368
    move-wide v5, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawColor(JJJI)V

    .line 370
    return-void
.end method

.method public final whitelist drawDoubleRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 19
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRx"    # F
    .param p3, "outerRy"    # F
    .param p4, "inner"    # Landroid/graphics/RectF;
    .param p5, "innerRx"    # F
    .param p6, "innerRy"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 669
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    move-object/from16 v2, p0

    iget-wide v3, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v11, v1, Landroid/graphics/RectF;->left:F

    iget v12, v1, Landroid/graphics/RectF;->top:F

    iget v13, v1, Landroid/graphics/RectF;->right:F

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    .line 672
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    .line 669
    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v15, p5

    move/from16 v16, p6

    invoke-static/range {v3 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawDoubleRoundRect(JFFFFFFFFFFFFJ)V

    .line 673
    return-void
.end method

.method public final whitelist drawDoubleRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 17
    .param p1, "outer"    # Landroid/graphics/RectF;
    .param p2, "outerRadii"    # [F
    .param p3, "inner"    # Landroid/graphics/RectF;
    .param p4, "innerRadii"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 678
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p0

    iget-wide v3, v2, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    iget v7, v0, Landroid/graphics/RectF;->right:F

    iget v8, v0, Landroid/graphics/RectF;->bottom:F

    iget v10, v1, Landroid/graphics/RectF;->left:F

    iget v11, v1, Landroid/graphics/RectF;->top:F

    iget v12, v1, Landroid/graphics/RectF;->right:F

    iget v13, v1, Landroid/graphics/RectF;->bottom:F

    .line 681
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    .line 678
    move-object/from16 v9, p2

    move-object/from16 v14, p4

    invoke-static/range {v3 .. v16}, Landroid/graphics/BaseRecordingCanvas;->nDrawDoubleRoundRect(JFFFF[FFFFF[FJ)V

    .line 682
    return-void
.end method

.method public whitelist drawGlyphs([II[FIILandroid/graphics/fonts/Font;Landroid/graphics/Paint;)V
    .locals 16
    .param p1, "glyphIds"    # [I
    .param p2, "glyphIdOffset"    # I
    .param p3, "positions"    # [F
    .param p4, "positionOffset"    # I
    .param p5, "glyphCount"    # I
    .param p6, "font"    # Landroid/graphics/fonts/Font;
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 693
    move-object/from16 v11, p1

    move-object/from16 v12, p3

    const-string v0, "glyphIds must not be null."

    invoke-static {v11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 694
    const-string/jumbo v0, "positions must not be null."

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 695
    const-string v0, "font must not be null."

    move-object/from16 v13, p6

    invoke-static {v13, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 696
    const-string/jumbo v0, "paint must not be null."

    move-object/from16 v14, p7

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 697
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 699
    const-string v0, " of elements"

    if-ltz p2, :cond_1

    add-int v1, p2, p5

    array-length v2, v11

    if-gt v1, v2, :cond_1

    .line 703
    if-ltz p4, :cond_0

    mul-int/lit8 v1, p5, 0x2

    add-int v1, p4, v1

    array-length v2, v12

    if-gt v1, v2, :cond_0

    .line 708
    move-object/from16 v15, p0

    iget-wide v0, v15, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 709
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/fonts/Font;->getNativePtr()J

    move-result-wide v7

    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 708
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-static/range {v0 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawGlyphs(J[I[FIIIJJ)V

    .line 710
    return-void

    .line 703
    :cond_0
    move-object/from16 v15, p0

    .line 704
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

    .line 699
    :cond_1
    move-object/from16 v15, p0

    .line 700
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

.method public final whitelist drawLine(FFFFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "startX"    # F
    .param p2, "startY"    # F
    .param p3, "stopX"    # F
    .param p4, "stopY"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 377
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 380
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseRecordingCanvas;->nDrawLine(JFFFFJ)V

    .line 384
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 386
    return-void
.end method

.method public final whitelist drawLines([FIILandroid/graphics/Paint;)V
    .locals 8
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 393
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v1, v2, v3}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p4, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 396
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawLines(J[FIIJ)V

    .line 400
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 402
    return-void
.end method

.method public final whitelist drawLines([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 406
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseRecordingCanvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 407
    return-void
.end method

.method public final whitelist drawOval(FFFFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 414
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 417
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseRecordingCanvas;->nDrawOval(JFFFFJ)V

    .line 421
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 423
    return-void
.end method

.method public final whitelist drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "oval"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 427
    if-eqz p1, :cond_0

    .line 430
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->drawOval(FFFFLandroid/graphics/Paint;)V

    .line 431
    return-void

    .line 428
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public final whitelist drawPaint(Landroid/graphics/Paint;)V
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 437
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-interface {v1, v2, v3}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 440
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/BaseRecordingCanvas;->nDrawPaint(JJ)V

    .line 444
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 446
    return-void
.end method

.method public final whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 22
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/Rect;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 451
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 452
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 456
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v5, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v5, v2}, Landroid/graphics/IBaseCanvasExt;->getRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object v5

    move-object/from16 v6, p3

    invoke-interface {v4, v1, v6, v5}, Landroid/graphics/IBaseCanvasExt;->changePatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v4

    .line 457
    .local v4, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v4, :cond_0

    iget-boolean v5, v4, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .end local p3    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    goto :goto_0

    .line 460
    .end local v5    # "paint":Landroid/graphics/Paint;
    .restart local p3    # "paint":Landroid/graphics/Paint;
    :cond_0
    move-object v5, v6

    .end local p3    # "paint":Landroid/graphics/Paint;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    :goto_0
    if-nez v5, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_1
    move-wide/from16 v18, v6

    .line 461
    .local v18, "nativePaint":J
    iget-wide v8, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

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

    iget v1, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    .line 463
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v21

    .line 461
    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v1

    invoke-static/range {v8 .. v21}, Landroid/graphics/BaseRecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 467
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v4, v5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 469
    return-void
.end method

.method public final whitelist drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 22
    .param p1, "patch"    # Landroid/graphics/NinePatch;
    .param p2, "dst"    # Landroid/graphics/RectF;
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 474
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 475
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v3}, Landroid/graphics/BaseRecordingCanvas;->throwIfCannotDraw(Landroid/graphics/Bitmap;)V

    .line 479
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v5, p3

    invoke-interface {v4, v1, v5, v2}, Landroid/graphics/IBaseCanvasExt;->changePatch(Landroid/graphics/NinePatch;Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v4

    .line 480
    .local v4, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    if-eqz v4, :cond_0

    iget-boolean v6, v4, Landroid/graphics/IBaseCanvasExt$Entity;->isDarkMode:Z

    if-eqz v6, :cond_0

    iget-object v5, v4, Landroid/graphics/IBaseCanvasExt$Entity;->newPaint:Landroid/graphics/Paint;

    .line 483
    .end local p3    # "paint":Landroid/graphics/Paint;
    .local v5, "paint":Landroid/graphics/Paint;
    :cond_0
    if-nez v5, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    :goto_0
    move-wide/from16 v18, v6

    .line 484
    .local v18, "nativePaint":J
    iget-wide v8, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNativeInstance()J

    move-result-wide v10

    iget-wide v12, v1, Landroid/graphics/NinePatch;->mNativeChunk:J

    iget v14, v2, Landroid/graphics/RectF;->left:F

    iget v15, v2, Landroid/graphics/RectF;->top:F

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    iget v1, v0, Landroid/graphics/BaseRecordingCanvas;->mDensity:I

    .line 486
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/NinePatch;->getDensity()I

    move-result v21

    .line 484
    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v20, v1

    invoke-static/range {v8 .. v21}, Landroid/graphics/BaseRecordingCanvas;->nDrawNinePatch(JJJFFFFJII)V

    .line 490
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v4, v5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 492
    return-void
.end method

.method public final whitelist drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 17
    .param p1, "path"    # Landroid/graphics/Path;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 498
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BaseRecordingCanvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/BaseRecordingCanvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-interface {v4, v5, v6}, Landroid/graphics/IBaseCanvasExt;->getRectF(FF)Landroid/graphics/RectF;

    move-result-object v4

    invoke-interface {v3, v2, v4, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;Landroid/graphics/Path;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v3

    .line 501
    .local v3, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-boolean v4, v1, Landroid/graphics/Path;->isSimplePath:Z

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    if-eqz v4, :cond_0

    .line 502
    iget-wide v5, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget-object v4, v1, Landroid/graphics/Path;->rects:Landroid/graphics/Region;

    iget-wide v7, v4, Landroid/graphics/Region;->mNativeRegion:J

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    invoke-static/range {v5 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawRegion(JJJ)V

    goto :goto_0

    .line 504
    :cond_0
    iget-wide v11, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v15

    invoke-static/range {v11 .. v16}, Landroid/graphics/BaseRecordingCanvas;->nDrawPath(JJJ)V

    .line 509
    :goto_0
    iget-object v4, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v4, v3, v2}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 511
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;)V
    .locals 1
    .param p1, "picture"    # Landroid/graphics/Picture;

    .line 515
    invoke-virtual {p1}, Landroid/graphics/Picture;->endRecording()V

    .line 516
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    move-result v0

    .line 517
    .local v0, "restoreCount":I
    invoke-virtual {p1, p0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 518
    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->restoreToCount(I)V

    .line 519
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/Rect;

    .line 523
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    .line 524
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->translate(FF)V

    .line 525
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 526
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 527
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 526
    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->scale(FF)V

    .line 529
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 530
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->restore()V

    .line 531
    return-void
.end method

.method public final whitelist drawPicture(Landroid/graphics/Picture;Landroid/graphics/RectF;)V
    .locals 3
    .param p1, "picture"    # Landroid/graphics/Picture;
    .param p2, "dst"    # Landroid/graphics/RectF;

    .line 535
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->save()I

    .line 536
    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->translate(FF)V

    .line 537
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 538
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/graphics/BaseRecordingCanvas;->scale(FF)V

    .line 540
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/BaseRecordingCanvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 541
    invoke-virtual {p0}, Landroid/graphics/BaseRecordingCanvas;->restore()V

    .line 542
    return-void
.end method

.method public final whitelist drawPoint(FFLandroid/graphics/Paint;)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "paint"    # Landroid/graphics/Paint;

    .line 548
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    const/4 v1, 0x0

    invoke-interface {v0, p3, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 551
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p3}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v5

    move v3, p1

    move v4, p2

    invoke-static/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->nDrawPoint(JFFJ)V

    .line 555
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p3}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 557
    return-void
.end method

.method public final whitelist drawPoints([FIILandroid/graphics/Paint;)V
    .locals 8
    .param p1, "pts"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 564
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    const/4 v1, 0x0

    invoke-interface {v0, p4, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 567
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nDrawPoints(J[FIIJ)V

    .line 571
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 573
    return-void
.end method

.method public final whitelist drawPoints([FLandroid/graphics/Paint;)V
    .locals 2
    .param p1, "pts"    # [F
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 577
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/BaseRecordingCanvas;->drawPoints([FIILandroid/graphics/Paint;)V

    .line 578
    return-void
.end method

.method public final whitelist drawPosText(Ljava/lang/String;[FLandroid/graphics/Paint;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "pos"    # [F
    .param p3, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 599
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/BaseRecordingCanvas;->drawPosText([CII[FLandroid/graphics/Paint;)V

    .line 600
    return-void
.end method

.method public final whitelist drawPosText([CII[FLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "pos"    # [F
    .param p5, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    if-ltz p2, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    mul-int/lit8 v0, p3, 0x2

    array-length v1, p4

    if-gt v0, v1, :cond_1

    .line 589
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 590
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

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/BaseRecordingCanvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 592
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 587
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawRGB(III)V
    .locals 1
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I

    .line 641
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/BaseRecordingCanvas;->drawColor(I)V

    .line 642
    return-void
.end method

.method public final whitelist drawRect(FFFFLandroid/graphics/Paint;)V
    .locals 9
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 607
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v1

    invoke-interface {v0, p5, v1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 610
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseRecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 614
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p5}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 616
    return-void
.end method

.method public final whitelist drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 7
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 620
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

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/BaseRecordingCanvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 621
    return-void
.end method

.method public final whitelist drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    .locals 9
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 627
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p2, p1}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 630
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/RectF;->top:F

    iget v5, p1, Landroid/graphics/RectF;->right:F

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    .line 631
    invoke-virtual {p2}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v7

    .line 630
    invoke-static/range {v1 .. v8}, Landroid/graphics/BaseRecordingCanvas;->nDrawRect(JFFFFJ)V

    .line 635
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p2}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 637
    return-void
.end method

.method public final whitelist drawRoundRect(FFFFFFLandroid/graphics/Paint;)V
    .locals 18
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 649
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-interface {v3, v14, v15, v12, v13}, Landroid/graphics/IBaseCanvasExt;->getRectF(FFFF)Landroid/graphics/RectF;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/graphics/IBaseCanvasExt;->changeArea(Landroid/graphics/Paint;Landroid/graphics/RectF;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v2

    .line 652
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v4, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 653
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 652
    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, v16

    invoke-static/range {v4 .. v13}, Landroid/graphics/BaseRecordingCanvas;->nDrawRoundRect(JFFFFFFJ)V

    .line 657
    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 659
    return-void
.end method

.method public final whitelist drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
    .locals 8
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "rx"    # F
    .param p3, "ry"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 663
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    move-object v0, p0

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 664
    return-void
.end method

.method public final whitelist drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V
    .locals 26
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 737
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

    .line 743
    iget-object v0, v7, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, v13}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v12

    .line 746
    .local v12, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    instance-of v0, v8, Ljava/lang/String;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannedString;

    if-nez v0, :cond_2

    instance-of v0, v8, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 750
    :cond_0
    instance-of v0, v8, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 751
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

    .line 754
    :cond_1
    sub-int v0, v14, v15

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 755
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {v8, v15, v14, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 756
    iget-wide v1, v7, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    const/16 v19, 0x0

    sub-int v20, v14, v15

    iget v3, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 757
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v24

    .line 756
    move-wide/from16 v16, v1

    move-object/from16 v18, v0

    move/from16 v21, p4

    move/from16 v22, p5

    move/from16 v23, v3

    invoke-static/range {v16 .. v25}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 758
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    move-object v1, v12

    move-object v2, v13

    goto :goto_1

    .line 748
    .end local v0    # "buf":[C
    :cond_2
    :goto_0
    iget-wide v9, v7, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    iget v0, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 749
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v17

    .line 748
    move-object v1, v12

    .end local v12    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v1, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    move/from16 v12, p2

    move-object v2, v13

    move/from16 v13, p3

    move/from16 v14, p4

    move/from16 v15, p5

    move/from16 v16, v0

    invoke-static/range {v9 .. v18}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 763
    :goto_1
    iget-object v0, v7, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, v1, v2}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 765
    return-void

    .line 738
    .end local v1    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_3
    move-object v2, v13

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public final whitelist drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "paint"    # Landroid/graphics/Paint;

    .line 771
    iget-object v0, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, p4}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v0

    .line 774
    .local v0, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget v8, p4, Landroid/graphics/Paint;->mBidiFlags:I

    .line 775
    invoke-virtual {p4}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 774
    const/4 v4, 0x0

    move-object v3, p1

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 779
    iget-object v1, p0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v0, p4}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 781
    return-void
.end method

.method public final whitelist drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 786
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

    .line 792
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v11}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v12

    .line 795
    .local v12, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    .line 796
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 795
    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(JLjava/lang/String;IIFFIJ)V

    .line 800
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v12, v11}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 802
    return-void

    .line 787
    .end local v12    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public final whitelist drawText([CIIFFLandroid/graphics/Paint;)V
    .locals 14
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "paint"    # Landroid/graphics/Paint;

    .line 715
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

    .line 722
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v11}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v13

    .line 725
    .local v13, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    iget v8, v11, Landroid/graphics/Paint;->mBidiFlags:I

    .line 726
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v9

    .line 725
    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/BaseRecordingCanvas;->nDrawText(J[CIIFFIJ)V

    .line 730
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v13, v11}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 732
    return-void

    .line 717
    .end local v13    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public final whitelist drawTextOnPath(Ljava/lang/String;Landroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "path"    # Landroid/graphics/Path;
    .param p3, "hOffset"    # F
    .param p4, "vOffset"    # F
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 829
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 833
    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2, v1}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v2

    .line 836
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v3, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual {p2}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v1, Landroid/graphics/Paint;->mBidiFlags:I

    .line 837
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 836
    move-object v5, p1

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-static/range {v3 .. v12}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextOnPath(JLjava/lang/String;JFFIJ)V

    .line 841
    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 844
    .end local v2    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    return-void
.end method

.method public final whitelist drawTextOnPath([CIILandroid/graphics/Path;FFLandroid/graphics/Paint;)V
    .locals 16
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "path"    # Landroid/graphics/Path;
    .param p5, "hOffset"    # F
    .param p6, "vOffset"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 807
    move-object/from16 v0, p0

    move-object/from16 v13, p7

    if-ltz p2, :cond_0

    add-int v1, p2, p3

    move-object/from16 v14, p1

    array-length v2, v14

    if-gt v1, v2, :cond_1

    .line 813
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v13}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v15

    .line 816
    .local v15, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 817
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v6

    iget v10, v13, Landroid/graphics/Paint;->mBidiFlags:I

    .line 818
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    .line 816
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v1 .. v12}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextOnPath(J[CIIJFFIJ)V

    .line 822
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v15, v13}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 824
    return-void

    .line 807
    .end local v15    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    move-object/from16 v14, p1

    .line 808
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V
    .locals 17
    .param p1, "measuredText"    # Landroid/graphics/text/MeasuredText;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "x"    # F
    .param p7, "y"    # F
    .param p8, "isRtl"    # Z
    .param p9, "paint"    # Landroid/graphics/Paint;

    .line 943
    move-object/from16 v0, p0

    move-object/from16 v1, p9

    iget-object v2, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v2, v1}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v2

    .line 946
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v3, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v5

    sub-int v7, p3, p2

    sub-int v9, p5, p4

    .line 947
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v13

    .line 948
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v15

    .line 946
    move/from16 v6, p2

    move/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v3 .. v16}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 952
    iget-object v3, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v3, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 954
    return-void
.end method

.method public final whitelist drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V
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

    .line 880
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v9, p9

    if-eqz v11, :cond_7

    .line 883
    if-eqz v9, :cond_6

    .line 886
    or-int v0, v15, v14

    or-int/2addr v0, v12

    or-int/2addr v0, v13

    sub-int v1, v15, v12

    or-int/2addr v0, v1

    sub-int v1, v14, v15

    or-int/2addr v0, v1

    sub-int v1, v13, v14

    or-int/2addr v0, v1

    .line 887
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, v13

    or-int/2addr v0, v1

    if-ltz v0, :cond_5

    .line 893
    iget-object v0, v10, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v0, v9}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v8

    .line 896
    .local v8, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    instance-of v0, v11, Ljava/lang/String;

    if-nez v0, :cond_4

    instance-of v0, v11, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, v11, Landroid/text/SpannableString;

    if-eqz v0, :cond_0

    move-object/from16 v24, v8

    goto/16 :goto_0

    .line 900
    :cond_0
    instance-of v0, v11, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_1

    .line 901
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

    .line 904
    .end local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .restart local v8    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_1
    move-object/from16 v24, v8

    .end local v8    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .restart local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    instance-of v0, v11, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_3

    .line 905
    move-object v9, v11

    check-cast v9, Landroid/text/PrecomputedText;

    .line 906
    .local v9, "pt":Landroid/text/PrecomputedText;
    invoke-virtual {v9, v15}, Landroid/text/PrecomputedText;->findParaIndex(I)I

    move-result v8

    .line 907
    .local v8, "paraIndex":I
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getParagraphEnd(I)I

    move-result v0

    if-gt v14, v0, :cond_2

    .line 908
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getParagraphStart(I)I

    move-result v16

    .line 909
    .local v16, "paraStart":I
    invoke-virtual {v9, v8}, Landroid/text/PrecomputedText;->getMeasuredParagraph(I)Landroid/text/MeasuredParagraph;

    move-result-object v17

    .line 911
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

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/BaseRecordingCanvas;->drawTextRun(Landroid/graphics/text/MeasuredText;IIIIFFZLandroid/graphics/Paint;)V

    .line 917
    return-void

    .line 907
    .end local v16    # "paraStart":I
    .end local v17    # "mp":Landroid/text/MeasuredParagraph;
    .end local v18    # "paraIndex":I
    .end local v19    # "pt":Landroid/text/PrecomputedText;
    .restart local v8    # "paraIndex":I
    .restart local v9    # "pt":Landroid/text/PrecomputedText;
    :cond_2
    move/from16 v18, v8

    move-object/from16 v19, v9

    .line 920
    .end local v8    # "paraIndex":I
    .end local v9    # "pt":Landroid/text/PrecomputedText;
    :cond_3
    sub-int v0, v13, v12

    .line 921
    .local v0, "contextLen":I
    sub-int v1, v14, v15

    .line 922
    .local v1, "len":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 923
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-static {v11, v12, v13, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 924
    iget-wide v3, v10, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    sub-int v28, v15, v12

    const/16 v30, 0x0

    .line 925
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v35

    const-wide/16 v37, 0x0

    .line 924
    move-wide/from16 v25, v3

    move-object/from16 v27, v2

    move/from16 v29, v1

    move/from16 v31, v0

    move/from16 v32, p6

    move/from16 v33, p7

    move/from16 v34, p8

    invoke-static/range {v25 .. v38}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 927
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1

    .line 896
    .end local v0    # "contextLen":I
    .end local v1    # "len":I
    .end local v2    # "buf":[C
    .end local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v8, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_4
    move-object/from16 v24, v8

    .line 898
    .end local v8    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .restart local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :goto_0
    iget-wide v0, v10, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 899
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v22

    .line 898
    move-wide v12, v0

    move-object v14, v2

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p4

    move/from16 v18, p5

    move/from16 v19, p6

    move/from16 v20, p7

    move/from16 v21, p8

    invoke-static/range {v12 .. v23}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(JLjava/lang/String;IIIIFFZJ)V

    .line 932
    :goto_1
    iget-object v0, v10, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v1, p9

    move-object/from16 v2, v24

    .end local v24    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    invoke-interface {v0, v2, v1}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 934
    return-void

    .line 888
    .end local v2    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_5
    move-object v1, v9

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 884
    :cond_6
    move-object v1, v9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_7
    move-object v1, v9

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V
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

    .line 850
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p9

    if-eqz v15, :cond_2

    .line 853
    if-eqz v13, :cond_1

    .line 856
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
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    invoke-interface {v1, v13}, Landroid/graphics/IBaseCanvasExt;->changeText(Landroid/graphics/Paint;)Landroid/graphics/IBaseCanvasExt$Entity;

    move-result-object v14

    .line 867
    .local v14, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    iget-wide v1, v0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    .line 868
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v11

    const-wide/16 v16, 0x0

    .line 867
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

    invoke-static/range {v1 .. v14}, Landroid/graphics/BaseRecordingCanvas;->nDrawTextRun(J[CIIIIFFZJJ)V

    .line 872
    iget-object v1, v0, Landroid/graphics/BaseRecordingCanvas;->mBaseCanvasExt:Landroid/graphics/IBaseCanvasExt;

    move-object/from16 v2, v18

    .end local v18    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    .local v2, "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    invoke-interface {v1, v2, v15}, Landroid/graphics/IBaseCanvasExt;->resetEntity(Landroid/graphics/IBaseCanvasExt$Entity;Landroid/graphics/Paint;)V

    .line 874
    return-void

    .line 859
    .end local v2    # "entity":Landroid/graphics/IBaseCanvasExt$Entity;
    :cond_0
    move-object v15, v13

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 854
    :cond_1
    move-object v15, v13

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "paint is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    :cond_2
    move-object v15, v13

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "text is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final whitelist drawVertices(Landroid/graphics/Canvas$VertexMode;I[FI[FI[II[SIILandroid/graphics/Paint;)V
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

    .line 961
    move/from16 v15, p2

    move-object/from16 v13, p5

    move-object/from16 v14, p7

    move-object/from16 v12, p9

    move-object/from16 v11, p3

    array-length v0, v11

    move/from16 v10, p4

    invoke-static {v0, v10, v15}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    .line 962
    if-eqz v13, :cond_0

    .line 963
    array-length v0, v13

    move/from16 v9, p6

    invoke-static {v0, v9, v15}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_0

    .line 962
    :cond_0
    move/from16 v9, p6

    .line 965
    :goto_0
    if-eqz v14, :cond_1

    .line 966
    array-length v0, v14

    div-int/lit8 v1, v15, 0x2

    move/from16 v8, p8

    invoke-static {v0, v8, v1}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_1

    .line 965
    :cond_1
    move/from16 v8, p8

    .line 968
    :goto_1
    if-eqz v12, :cond_2

    .line 969
    array-length v0, v12

    move/from16 v7, p10

    move/from16 v6, p11

    invoke-static {v0, v7, v6}, Landroid/graphics/BaseRecordingCanvas;->checkRange(III)V

    goto :goto_2

    .line 968
    :cond_2
    move/from16 v7, p10

    move/from16 v6, p11

    .line 971
    :goto_2
    move-object/from16 v5, p0

    iget-wide v0, v5, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move-object/from16 v4, p1

    iget v2, v4, Landroid/graphics/Canvas$VertexMode;->nativeInt:I

    .line 973
    invoke-virtual/range {p12 .. p12}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v16

    .line 971
    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, v16

    invoke-static/range {v0 .. v14}, Landroid/graphics/BaseRecordingCanvas;->nDrawVertices(JII[FI[FI[II[SIIJ)V

    .line 974
    return-void
.end method

.method public blacklist punchHole(FFFFFF)V
    .locals 8
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "rx"    # F
    .param p6, "ry"    # F

    .line 981
    iget-wide v0, p0, Landroid/graphics/BaseRecordingCanvas;->mNativeCanvasWrapper:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Landroid/graphics/BaseRecordingCanvas;->nPunchHole(JFFFFFF)V

    .line 982
    return-void
.end method
