.class public Landroid/util/RotationUtils;
.super Ljava/lang/Object;
.source "RotationUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist deltaRotation(II)I
    .locals 1
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .line 139
    sub-int v0, p1, p0

    .line 140
    .local v0, "delta":I
    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 141
    :cond_0
    return v0
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;III)V
    .locals 3
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentWidth"    # I
    .param p2, "parentHeight"    # I
    .param p3, "rotation"    # I

    .line 99
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 100
    .local v0, "origLeft":I
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 101
    .local v1, "origTop":I
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 117
    :pswitch_0
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 118
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 119
    iget v2, p0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 120
    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 111
    :pswitch_1
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 112
    sub-int v2, p1, v0

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 113
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 114
    sub-int v2, p2, v1

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 115
    return-void

    .line 105
    :pswitch_2
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/graphics/Rect;->left:I

    .line 106
    iget v2, p0, Landroid/graphics/Rect;->right:I

    sub-int v2, p1, v2

    iput v2, p0, Landroid/graphics/Rect;->top:I

    .line 107
    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/graphics/Rect;->right:I

    .line 108
    sub-int v2, p1, v0

    iput v2, p0, Landroid/graphics/Rect;->bottom:I

    .line 109
    return-void

    .line 103
    :pswitch_3
    return-void

    .line 122
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "rotation"    # I

    .line 133
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p0, v0, v1, p2}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    .line 134
    return-void
.end method

.method public static blacklist rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 1
    .param p0, "inOutBounds"    # Landroid/graphics/Rect;
    .param p1, "parentBounds"    # Landroid/graphics/Rect;
    .param p2, "oldRotation"    # I
    .param p3, "newRotation"    # I

    .line 87
    invoke-static {p2, p3}, Landroid/util/RotationUtils;->deltaRotation(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 88
    return-void
.end method

.method public static blacklist rotateInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .locals 4
    .param p0, "insets"    # Landroid/graphics/Insets;
    .param p1, "rotation"    # I

    .line 43
    if-eqz p0, :cond_1

    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    if-ne p0, v0, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :pswitch_0
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    iget v1, p0, Landroid/graphics/Insets;->left:I

    iget v2, p0, Landroid/graphics/Insets;->top:I

    iget v3, p0, Landroid/graphics/Insets;->right:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 71
    .local v0, "rotated":Landroid/graphics/Insets;
    goto :goto_0

    .line 59
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_1
    iget v0, p0, Landroid/graphics/Insets;->right:I

    iget v1, p0, Landroid/graphics/Insets;->bottom:I

    iget v2, p0, Landroid/graphics/Insets;->left:I

    iget v3, p0, Landroid/graphics/Insets;->top:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 64
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    goto :goto_0

    .line 52
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_2
    iget v0, p0, Landroid/graphics/Insets;->top:I

    iget v1, p0, Landroid/graphics/Insets;->right:I

    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    iget v3, p0, Landroid/graphics/Insets;->left:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 57
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    goto :goto_0

    .line 49
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :pswitch_3
    move-object v0, p0

    .line 50
    .restart local v0    # "rotated":Landroid/graphics/Insets;
    nop

    .line 75
    :goto_0
    return-object v0

    .line 44
    .end local v0    # "rotated":Landroid/graphics/Insets;
    :cond_1
    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist rotatePoint(Landroid/graphics/Point;III)V
    .locals 2
    .param p0, "inOutPoint"    # Landroid/graphics/Point;
    .param p1, "rotation"    # I
    .param p2, "parentW"    # I
    .param p3, "parentH"    # I

    .line 177
    iget v0, p0, Landroid/graphics/Point;->x:I

    .line 178
    .local v0, "origX":I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 190
    :pswitch_0
    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 191
    iput v0, p0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 186
    :pswitch_1
    iget v1, p0, Landroid/graphics/Point;->x:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 187
    iget v1, p0, Landroid/graphics/Point;->y:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 188
    return-void

    .line 182
    :pswitch_2
    iget v1, p0, Landroid/graphics/Point;->y:I

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 183
    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 184
    return-void

    .line 180
    :pswitch_3
    return-void

    .line 193
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist rotateSurface(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V
    .locals 12
    .param p0, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p1, "sc"    # Landroid/view/SurfaceControl;
    .param p2, "rotation"    # I

    .line 154
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 165
    :pswitch_0
    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    .line 162
    :pswitch_1
    const/high16 v8, -0x40800000    # -1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 163
    goto :goto_0

    .line 159
    :pswitch_2
    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 160
    goto :goto_0

    .line 156
    :pswitch_3
    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v6 .. v11}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    .line 157
    nop

    .line 168
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V
    .locals 3
    .param p0, "rotation"    # I
    .param p1, "physicalWidth"    # I
    .param p2, "physicalHeight"    # I
    .param p3, "out"    # Landroid/graphics/Matrix;

    .line 204
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown rotation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_0
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 218
    int-to-float v1, p2

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 219
    goto :goto_0

    .line 213
    :pswitch_1
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 214
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 215
    goto :goto_0

    .line 209
    :pswitch_2
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 210
    int-to-float v1, p1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 211
    goto :goto_0

    .line 206
    :pswitch_3
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    .line 207
    nop

    .line 223
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
