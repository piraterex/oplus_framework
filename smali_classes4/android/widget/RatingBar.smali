.class public Landroid/widget/RatingBar;
.super Landroid/widget/AbsSeekBar;
.source "RatingBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RatingBar$OnRatingBarChangeListener;
    }
.end annotation


# instance fields
.field private greylist-max-o mNumStars:I

.field private greylist mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

.field private greylist-max-o mProgressOnStartTracking:I


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 128
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 129
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 124
    const v0, 0x101007c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 89
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 80
    const/4 v0, 0x5

    iput v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 94
    sget-object v0, Lcom/android/internal/R$styleable;->RatingBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v3, Lcom/android/internal/R$styleable;->RatingBar:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/RatingBar;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 98
    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 99
    .local v1, "numStars":I
    iget-boolean v2, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setIsIndicator(Z)V

    .line 100
    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 101
    .local v3, "rating":F
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    .line 102
    .local v2, "stepSize":F
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 104
    if-lez v1, :cond_0

    iget v4, p0, Landroid/widget/RatingBar;->mNumStars:I

    if-eq v1, v4, :cond_0

    .line 105
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setNumStars(I)V

    .line 108
    :cond_0
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-ltz v5, :cond_1

    .line 109
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setStepSize(F)V

    goto :goto_0

    .line 111
    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {p0, v5}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 114
    :goto_0
    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    .line 115
    invoke-virtual {p0, v3}, Landroid/widget/RatingBar;->setRating(F)V

    .line 120
    :cond_2
    const v4, 0x3f19999a    # 0.6f

    iput v4, p0, Landroid/widget/RatingBar;->mTouchProgressOffset:F

    .line 121
    return-void
.end method

.method private greylist-max-o getProgressPerStar()F
    .locals 2

    .line 252
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-lez v0, :cond_0

    .line 253
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0

    .line 255
    :cond_0
    return v1
.end method

.method private greylist-max-o updateSecondaryProgress(I)V
    .locals 6
    .param p1, "progress"    # I

    .line 286
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    .line 287
    .local v0, "ratio":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 288
    int-to-float v1, p1

    div-float/2addr v1, v0

    .line 289
    .local v1, "progressInStars":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    float-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    .line 290
    .local v2, "secondaryProgress":I
    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setSecondaryProgress(I)V

    .line 292
    .end local v1    # "progressInStars":F
    .end local v2    # "secondaryProgress":I
    :cond_0
    return-void
.end method


# virtual methods
.method greylist-max-o canUserSetProgress()Z
    .locals 1

    .line 361
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->isIndicator()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method greylist-max-o dispatchRatingChange(Z)V
    .locals 2
    .param p1, "fromUser"    # Z

    .line 328
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    invoke-interface {v0, p0, v1, p1}, Landroid/widget/RatingBar$OnRatingBarChangeListener;->onRatingChanged(Landroid/widget/RatingBar;FZ)V

    .line 332
    :cond_0
    return-void
.end method

.method public whitelist getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 346
    const-class v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .line 262
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    return-object v0
.end method

.method public whitelist getNumStars()I
    .locals 1

    .line 199
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    return v0
.end method

.method public whitelist getOnRatingBarChangeListener()Landroid/widget/RatingBar$OnRatingBarChangeListener;
    .locals 1

    .line 145
    iget-object v0, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    return-object v0
.end method

.method public whitelist getRating()F
    .locals 2

    .line 218
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v1

    div-float/2addr v0, v1

    return v0
.end method

.method public whitelist getStepSize()F
    .locals 2

    .line 245
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getNumStars()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public whitelist isIndicator()Z
    .locals 1

    .line 172
    iget-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public greylist-max-o onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 352
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 354
    invoke-virtual {p0}, Landroid/widget/RatingBar;->canUserSetProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 357
    :cond_0
    return-void
.end method

.method greylist-max-o onKeyChange()V
    .locals 1

    .line 323
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    .line 324
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 325
    return-void
.end method

.method protected declared-synchronized whitelist onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    monitor-enter p0

    .line 296
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSeekBar;->onMeasure(II)V

    .line 298
    iget v0, p0, Landroid/widget/RatingBar;->mSampleWidth:I

    if-lez v0, :cond_0

    .line 299
    iget v0, p0, Landroid/widget/RatingBar;->mSampleWidth:I

    iget v1, p0, Landroid/widget/RatingBar;->mNumStars:I

    mul-int/2addr v0, v1

    .line 300
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/RatingBar;->resolveSizeAndState(III)I

    move-result v1

    .line 301
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMeasuredHeight()I

    move-result v2

    .line 300
    invoke-virtual {p0, v1, v2}, Landroid/widget/RatingBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    .end local v0    # "width":I
    .end local p0    # "this":Landroid/widget/RatingBar;
    :cond_0
    monitor-exit p0

    return-void

    .line 295
    .end local p1    # "widthMeasureSpec":I
    .end local p2    # "heightMeasureSpec":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method greylist-max-o onProgressRefresh(FZI)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z
    .param p3, "progress"    # I

    .line 267
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsSeekBar;->onProgressRefresh(FZI)V

    .line 270
    invoke-direct {p0, p3}, Landroid/widget/RatingBar;->updateSecondaryProgress(I)V

    .line 272
    if-nez p2, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 276
    :cond_0
    return-void
.end method

.method greylist-max-o onStartTrackingTouch()V
    .locals 1

    .line 307
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iput v0, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    .line 309
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 310
    return-void
.end method

.method greylist-max-o onStopTrackingTouch()V
    .locals 2

    .line 314
    invoke-super {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 316
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/widget/RatingBar;->mProgressOnStartTracking:I

    if-eq v0, v1, :cond_0

    .line 317
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->dispatchRatingChange(Z)V

    .line 319
    :cond_0
    return-void
.end method

.method public whitelist setIsIndicator(Z)V
    .locals 1
    .param p1, "isIndicator"    # Z

    .line 157
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/RatingBar;->mIsUserSeekable:Z

    .line 158
    if-eqz p1, :cond_0

    .line 159
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setFocusable(I)V

    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setFocusable(I)V

    .line 163
    :goto_0
    return-void
.end method

.method public declared-synchronized whitelist setMax(I)V
    .locals 0
    .param p1, "max"    # I

    monitor-enter p0

    .line 337
    if-gtz p1, :cond_0

    .line 338
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/AbsSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 336
    .end local p0    # "this":Landroid/widget/RatingBar;
    .end local p1    # "max":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public whitelist setNumStars(I)V
    .locals 0
    .param p1, "numStars"    # I

    .line 183
    if-gtz p1, :cond_0

    .line 184
    return-void

    .line 187
    :cond_0
    iput p1, p0, Landroid/widget/RatingBar;->mNumStars:I

    .line 190
    invoke-virtual {p0}, Landroid/widget/RatingBar;->requestLayout()V

    .line 191
    return-void
.end method

.method public whitelist setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 137
    iput-object p1, p0, Landroid/widget/RatingBar;->mOnRatingBarChangeListener:Landroid/widget/RatingBar$OnRatingBarChangeListener;

    .line 138
    return-void
.end method

.method public whitelist setRating(F)V
    .locals 1
    .param p1, "rating"    # F

    .line 208
    invoke-direct {p0}, Landroid/widget/RatingBar;->getProgressPerStar()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 209
    return-void
.end method

.method public whitelist setStepSize(F)V
    .locals 3
    .param p1, "stepSize"    # F

    .line 228
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 229
    return-void

    .line 232
    :cond_0
    iget v0, p0, Landroid/widget/RatingBar;->mNumStars:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    .line 233
    .local v0, "newMax":F
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    invoke-virtual {p0}, Landroid/widget/RatingBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 234
    .local v1, "newProgress":I
    float-to-int v2, v0

    invoke-virtual {p0, v2}, Landroid/widget/RatingBar;->setMax(I)V

    .line 235
    invoke-virtual {p0, v1}, Landroid/widget/RatingBar;->setProgress(I)V

    .line 236
    return-void
.end method
