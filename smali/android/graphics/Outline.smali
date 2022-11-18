.class public final Landroid/graphics/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Outline$Mode;
    }
.end annotation


# static fields
.field public static final greylist-max-o MODE_EMPTY:I = 0x0

.field public static final blacklist MODE_PATH:I = 0x2

.field public static final greylist-max-o MODE_ROUND_RECT:I = 0x1

.field private static final greylist-max-o RADIUS_UNDEFINED:F = -Infinityf


# instance fields
.field public greylist-max-o mAlpha:F

.field public greylist-max-o mMode:I

.field public greylist-max-o mPath:Landroid/graphics/Path;

.field public greylist-max-o mRadius:F

.field public final greylist mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 73
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 81
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "src"    # Landroid/graphics/Outline;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 70
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    .line 73
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 87
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->set(Landroid/graphics/Outline;)V

    .line 88
    return-void
.end method


# virtual methods
.method public whitelist canClip()Z
    .locals 1

    .line 127
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getAlpha()F
    .locals 1

    .line 150
    iget v0, p0, Landroid/graphics/Outline;->mAlpha:F

    return v0
.end method

.method public whitelist getRadius()F
    .locals 1

    .line 237
    iget v0, p0, Landroid/graphics/Outline;->mRadius:F

    return v0
.end method

.method public whitelist getRect(Landroid/graphics/Rect;)Z
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 222
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 223
    const/4 v0, 0x0

    return v0

    .line 225
    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 226
    return v1
.end method

.method public whitelist isEmpty()Z
    .locals 1

    .line 114
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist offset(II)V
    .locals 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 320
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 322
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 323
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->offset(FF)V

    .line 325
    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist set(Landroid/graphics/Outline;)V
    .locals 2
    .param p1, "src"    # Landroid/graphics/Outline;

    .line 159
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 160
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 164
    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-object v1, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 166
    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 167
    iget v0, p1, Landroid/graphics/Outline;->mRadius:F

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 168
    iget v0, p1, Landroid/graphics/Outline;->mAlpha:F

    iput v0, p0, Landroid/graphics/Outline;->mAlpha:F

    .line 169
    return-void
.end method

.method public whitelist setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .line 143
    iput p1, p0, Landroid/graphics/Outline;->mAlpha:F

    .line 144
    return-void
.end method

.method public whitelist setConvexPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "convexPath"    # Landroid/graphics/Path;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 289
    invoke-virtual {p0, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 290
    return-void
.end method

.method public whitelist setEmpty()V
    .locals 1

    .line 96
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 100
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 101
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 102
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 103
    return-void
.end method

.method public whitelist setOval(IIII)V
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 244
    if-ge p1, p3, :cond_3

    if-lt p2, p4, :cond_0

    goto :goto_1

    .line 249
    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_1

    .line 251
    sub-int v0, p4, p2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 252
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 256
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    goto :goto_0

    .line 258
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 261
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 262
    iget-object v1, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    int-to-float v2, p1

    int-to-float v3, p2

    int-to-float v4, p3

    int-to-float v5, p4

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    .line 263
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 264
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 265
    return-void

    .line 245
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 246
    return-void
.end method

.method public whitelist setOval(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 271
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 272
    return-void
.end method

.method public whitelist setPath(Landroid/graphics/Path;)V
    .locals 1
    .param p1, "path"    # Landroid/graphics/Path;

    .line 298
    invoke-virtual {p1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 300
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    .line 307
    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 308
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    .line 309
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 310
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    iput v0, p0, Landroid/graphics/Outline;->mRadius:F

    .line 311
    return-void
.end method

.method public whitelist setRect(IIII)V
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 175
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 176
    return-void
.end method

.method public whitelist setRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 182
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 183
    return-void
.end method

.method public whitelist setRoundRect(IIIIF)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "radius"    # F

    .line 191
    if-ge p1, p3, :cond_2

    if-lt p2, p4, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget v0, p0, Landroid/graphics/Outline;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 200
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/Outline;->mMode:I

    .line 201
    iget-object v0, p0, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 202
    iput p5, p0, Landroid/graphics/Outline;->mRadius:F

    .line 203
    return-void

    .line 192
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Outline;->setEmpty()V

    .line 193
    return-void
.end method

.method public whitelist setRoundRect(Landroid/graphics/Rect;F)V
    .locals 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "radius"    # F

    .line 209
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 210
    return-void
.end method
