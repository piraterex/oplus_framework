.class public Landroid/widget/ScrollBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ScrollBarDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# instance fields
.field private greylist-max-o mAlpha:I

.field private greylist-max-o mAlwaysDrawHorizontalTrack:Z

.field private greylist-max-o mAlwaysDrawVerticalTrack:Z

.field private greylist-max-o mBoundsChanged:Z

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mExtent:I

.field private greylist-max-o mHasSetAlpha:Z

.field private greylist-max-o mHasSetColorFilter:Z

.field private greylist-max-o mHorizontalThumb:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mHorizontalTrack:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mMutated:Z

.field private greylist-max-o mOffset:I

.field private greylist-max-o mRange:I

.field private greylist-max-o mRangeChanged:Z

.field public blacklist mScrollBarDrawableExt:Landroid/widget/IScrollBarDrawableExt;

.field private greylist-max-o mVertical:Z

.field private greylist-max-p mVerticalThumb:Landroid/graphics/drawable/Drawable;

.field private greylist-max-o mVerticalTrack:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 61
    const/16 v0, 0xff

    iput v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 78
    const-class v0, Landroid/widget/IScrollBarDrawableExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/IScrollBarDrawableExt;

    iput-object v0, p0, Landroid/widget/ScrollBarDrawable;->mScrollBarDrawableExt:Landroid/widget/IScrollBarDrawableExt;

    .line 80
    return-void
.end method

.method private greylist-max-o drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .param p5, "vertical"    # Z

    .line 237
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 238
    .local v0, "changed":Z
    :goto_1
    if-eqz p5, :cond_3

    .line 239
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 240
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 241
    .local v1, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 242
    iget v2, p2, Landroid/graphics/Rect;->left:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, p2, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, p3

    add-int/2addr v5, p4

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 246
    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 247
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 249
    :cond_3
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 250
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 251
    .restart local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 252
    iget v2, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p3

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p3

    add-int/2addr v4, p4

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 256
    :cond_4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 259
    .end local v1    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_5
    :goto_2
    return-void
.end method

.method private greylist-max-o drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "vertical"    # Z

    .line 222
    if-eqz p3, :cond_0

    .line 223
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .local v0, "track":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 225
    .end local v0    # "track":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 228
    .restart local v0    # "track":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_2

    .line 229
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    if-eqz v1, :cond_1

    .line 230
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 232
    :cond_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 234
    :cond_2
    return-void
.end method

.method private greylist-max-o propagateCurrentState(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 337
    if-eqz p1, :cond_2

    .line 338
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->getState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 343
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 345
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    if-eqz v0, :cond_1

    .line 346
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 349
    :cond_1
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 353
    :cond_2
    return-void
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 144
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v8, v6, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 145
    .local v8, "vertical":Z
    iget v9, v6, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 146
    .local v9, "extent":I
    iget v10, v6, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 148
    .local v10, "range":I
    const/4 v0, 0x1

    .line 149
    .local v0, "drawTrack":Z
    const/4 v1, 0x1

    .line 150
    .local v1, "drawThumb":Z
    if-lez v9, :cond_1

    if-gt v10, v9, :cond_0

    goto :goto_0

    :cond_0
    move v11, v0

    move v12, v1

    goto :goto_2

    .line 151
    :cond_1
    :goto_0
    if-eqz v8, :cond_2

    iget-boolean v2, v6, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    goto :goto_1

    :cond_2
    iget-boolean v2, v6, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    :goto_1
    move v0, v2

    .line 152
    const/4 v1, 0x0

    move v11, v0

    move v12, v1

    .line 155
    .end local v0    # "drawTrack":Z
    .end local v1    # "drawThumb":Z
    .local v11, "drawTrack":Z
    .local v12, "drawThumb":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ScrollBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v13

    .line 156
    .local v13, "r":Landroid/graphics/Rect;
    iget v0, v13, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, v13, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget v3, v13, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Canvas;->quickReject(FFFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    return-void

    .line 161
    :cond_3
    iget-object v0, v6, Landroid/widget/ScrollBarDrawable;->mScrollBarDrawableExt:Landroid/widget/IScrollBarDrawableExt;

    invoke-interface {v0, v13}, Landroid/widget/IScrollBarDrawableExt;->getDrawRect(Landroid/graphics/Rect;)V

    .line 164
    if-eqz v11, :cond_4

    .line 165
    invoke-direct {v6, v7, v13, v8}, Landroid/widget/ScrollBarDrawable;->drawTrack(Landroid/graphics/Canvas;Landroid/graphics/Rect;Z)V

    .line 168
    :cond_4
    if-eqz v12, :cond_7

    .line 169
    if-eqz v8, :cond_5

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_3
    move v14, v0

    .line 170
    .local v14, "scrollBarLength":I
    if-eqz v8, :cond_6

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_4

    :cond_6
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_4
    move v15, v0

    .line 177
    .local v15, "thickness":I
    iget-object v0, v6, Landroid/widget/ScrollBarDrawable;->mScrollBarDrawableExt:Landroid/widget/IScrollBarDrawableExt;

    invoke-interface {v0, v14, v15, v9, v10}, Landroid/widget/IScrollBarDrawableExt;->getThumbLength(IIII)I

    move-result v5

    .line 179
    .local v5, "thumbLength":I
    iget v0, v6, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 180
    invoke-static {v14, v5, v9, v10, v0}, Lcom/android/internal/widget/ScrollBarUtils;->getThumbOffset(IIIII)I

    move-result v16

    .line 183
    .local v16, "thumbOffset":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v13

    move/from16 v3, v16

    move v4, v5

    move/from16 v17, v5

    .end local v5    # "thumbLength":I
    .local v17, "thumbLength":I
    move v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/ScrollBarDrawable;->drawThumb(Landroid/graphics/Canvas;Landroid/graphics/Rect;IIZ)V

    .line 185
    .end local v14    # "scrollBarLength":I
    .end local v15    # "thickness":I
    .end local v16    # "thumbOffset":I
    .end local v17    # "thumbLength":I
    :cond_7
    return-void
.end method

.method public whitelist getAlpha()I
    .locals 1

    .line 406
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    return v0
.end method

.method public greylist-max-o getAlwaysDrawHorizontalTrack()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    return v0
.end method

.method public greylist-max-o getAlwaysDrawVerticalTrack()Z
    .locals 1

    .line 113
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 430
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public blacklist getHorizontalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 299
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getHorizontalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 292
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 435
    const/4 v0, -0x3

    return v0
.end method

.method public greylist-max-o getSize(Z)I
    .locals 2
    .param p1, "vertical"    # Z

    .line 356
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 357
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0

    .line 358
    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 357
    :cond_1
    :goto_0
    return v0

    .line 360
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_1

    .line 361
    :cond_3
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 360
    :cond_4
    :goto_1
    return v0
.end method

.method public blacklist getVerticalThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 285
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getVerticalTrackDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 278
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public whitelist invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 440
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->invalidateSelf()V

    .line 441
    return-void
.end method

.method public whitelist isStateful()Z
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 198
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_4

    .line 199
    :cond_3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 195
    :goto_0
    return v0
.end method

.method public bridge synthetic whitelist mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 43
    invoke-virtual {p0}, Landroid/widget/ScrollBarDrawable;->mutate()Landroid/widget/ScrollBarDrawable;

    move-result-object v0

    return-object v0
.end method

.method public blacklist mutate()Landroid/widget/ScrollBarDrawable;
    .locals 1

    .line 367
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    if-nez v0, :cond_4

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 368
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 369
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 371
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 374
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 375
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 377
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 378
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 380
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mMutated:Z

    .line 382
    :cond_4
    return-object p0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 189
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 191
    return-void
.end method

.method protected whitelist onStateChange([I)Z
    .locals 2
    .param p1, "state"    # [I

    .line 204
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v0

    .line 205
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 208
    :cond_0
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 209
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 211
    :cond_1
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 212
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 214
    :cond_2
    iget-object v1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 215
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 217
    :cond_3
    return v0
.end method

.method public whitelist scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 445
    invoke-virtual {p0, p2, p3, p4}, Landroid/widget/ScrollBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 446
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 387
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mAlpha:I

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetAlpha:Z

    .line 390
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 393
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 394
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 396
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 397
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 399
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 400
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 402
    :cond_3
    return-void
.end method

.method public greylist-max-o setAlwaysDrawHorizontalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    .line 91
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawHorizontalTrack:Z

    .line 92
    return-void
.end method

.method public greylist-max-o setAlwaysDrawVerticalTrack(Z)V
    .locals 0
    .param p1, "alwaysDrawTrack"    # Z

    .line 103
    iput-boolean p1, p0, Landroid/widget/ScrollBarDrawable;->mAlwaysDrawVerticalTrack:Z

    .line 104
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 411
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mHasSetColorFilter:Z

    .line 414
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 417
    :cond_0
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 418
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 420
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 421
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 423
    :cond_2
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 424
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 426
    :cond_3
    return-void
.end method

.method public greylist-max-p setHorizontalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 319
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 323
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 324
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalThumb:Landroid/graphics/drawable/Drawable;

    .line 325
    return-void
.end method

.method public greylist-max-o setHorizontalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 328
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 329
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 332
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 333
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mHorizontalTrack:Landroid/graphics/drawable/Drawable;

    .line 334
    return-void
.end method

.method public greylist-max-o setParameters(IIIZ)V
    .locals 2
    .param p1, "range"    # I
    .param p2, "offset"    # I
    .param p3, "extent"    # I
    .param p4, "vertical"    # Z

    .line 127
    iget-boolean v0, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    const/4 v1, 0x1

    if-eq v0, p4, :cond_0

    .line 128
    iput-boolean p4, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    .line 130
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mBoundsChanged:Z

    .line 133
    :cond_0
    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    if-eq v0, p3, :cond_2

    .line 134
    :cond_1
    iput p1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    .line 135
    iput p2, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    .line 136
    iput p3, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    .line 138
    iput-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mRangeChanged:Z

    .line 140
    :cond_2
    return-void
.end method

.method public greylist-max-p setVerticalThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .line 266
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 267
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalThumb:Landroid/graphics/drawable/Drawable;

    .line 272
    return-void
.end method

.method public greylist-max-o setVerticalTrackDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "track"    # Landroid/graphics/drawable/Drawable;

    .line 306
    iget-object v0, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ScrollBarDrawable;->propagateCurrentState(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iput-object p1, p0, Landroid/widget/ScrollBarDrawable;->mVerticalTrack:Landroid/graphics/drawable/Drawable;

    .line 312
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScrollBarDrawable: range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/widget/ScrollBarDrawable;->mExtent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 456
    iget-boolean v1, p0, Landroid/widget/ScrollBarDrawable;->mVertical:Z

    if-eqz v1, :cond_0

    const-string v1, " V"

    goto :goto_0

    :cond_0
    const-string v1, " H"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 455
    return-object v0
.end method

.method public whitelist unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 450
    invoke-virtual {p0, p2}, Landroid/widget/ScrollBarDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 451
    return-void
.end method
