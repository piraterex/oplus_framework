.class public Lcom/android/internal/policy/BackdropFrameRenderer;
.super Ljava/lang/Thread;
.source "BackdropFrameRenderer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private blacklist mBFRExt:Lcom/android/internal/policy/IBackdropFrameRendererExt;

.field private blacklist mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mDecorView:Lcom/android/internal/policy/DecorView;

.field private blacklist mFrameAndBackdropNode:Landroid/graphics/RenderNode;

.field private blacklist mFullscreen:Z

.field private blacklist mLastCaptionHeight:I

.field private blacklist mLastContentHeight:I

.field private blacklist mLastContentWidth:I

.field private blacklist mLastXOffset:I

.field private blacklist mLastYOffset:I

.field private blacklist mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private final blacklist mNewTargetRect:Landroid/graphics/Rect;

.field private blacklist mOldFullscreen:Z

.field private final blacklist mOldSystemBarInsets:Landroid/graphics/Rect;

.field private final blacklist mOldTargetRect:Landroid/graphics/Rect;

.field private blacklist mRenderer:Landroid/view/ThreadedRenderer;

.field private blacklist mReportNextDraw:Z

.field private blacklist mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private blacklist mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

.field private final blacklist mSystemBarInsets:Landroid/graphics/Rect;

.field private final blacklist mTargetRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Insets;)V
    .locals 13
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p3, "initialBounds"    # Landroid/graphics/Rect;
    .param p4, "resizingBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "captionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p7, "statusBarColor"    # I
    .param p8, "navigationBarColor"    # I
    .param p9, "fullscreen"    # Z
    .param p10, "systemBarInsets"    # Landroid/graphics/Insets;

    .line 88
    move-object v7, p0

    move/from16 v8, p9

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 47
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    .line 77
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemBarInsets:Landroid/graphics/Rect;

    .line 78
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    .line 82
    const-class v0, Lcom/android/internal/policy/IBackdropFrameRendererExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/IBackdropFrameRendererExt;

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mBFRExt:Lcom/android/internal/policy/IBackdropFrameRendererExt;

    .line 89
    const-string v0, "ResizeFrame"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->setName(Ljava/lang/String;)V

    .line 91
    move-object v12, p2

    iput-object v12, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 92
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 97
    const-string v0, "FrameAndBackdropNode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    .line 99
    iget-object v1, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/graphics/RenderNode;Z)V

    .line 102
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    iput-boolean v8, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 104
    iput-boolean v8, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 105
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 106
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->start()V

    .line 110
    return-void
.end method

.method private blacklist addSystemBarNodeIfNeeded()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    .line 149
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    const-string v1, "SystemBarBackgroundNode"

    invoke-static {v1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/graphics/RenderNode;Z)V

    .line 153
    return-void
.end method

.method private blacklist doFrameUncheckedLocked()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 250
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemBarInsets:Landroid/graphics/Rect;

    .line 252
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    .line 254
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 255
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 256
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemBarInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->redrawLocked(Landroid/graphics/Rect;Z)V

    .line 259
    :cond_1
    return-void
.end method

.method private blacklist drawColorViews(IIIIZ)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "fullscreen"    # Z

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 381
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 382
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 383
    .local v1, "topInset":I
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    .line 384
    add-int v3, p1, p3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 385
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    if-eqz p5, :cond_2

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p3, p4, v2, v3, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 393
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 394
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 396
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 397
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 398
    return-void
.end method

.method private blacklist pingRenderLocked(Z)V
    .locals 1
    .param p1, "drawImmediate"    # Z

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 419
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    .line 423
    :goto_0
    return-void
.end method

.method private blacklist redrawLocked(Landroid/graphics/Rect;Z)V
    .locals 19
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z

    .line 313
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-object v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v8

    .line 317
    .local v8, "captionHeight":I
    if-eqz v8, :cond_0

    .line 319
    iput v8, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 324
    :cond_0
    iget v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v0, :cond_1

    iget-object v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    iget v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    if-eqz v0, :cond_7

    iget v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 331
    :cond_2
    iget v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int v5, v0, v1

    .line 332
    .local v5, "left":I
    iget v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget v1, v7, Landroid/graphics/Rect;->top:I

    add-int v4, v0, v1

    .line 333
    .local v4, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 334
    .local v3, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 336
    .local v2, "height":I
    iget-object v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    add-int v1, v5, v3

    add-int v9, v4, v2

    invoke-virtual {v0, v5, v4, v1, v9}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 339
    iget-object v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v3, v2}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v1

    .line 340
    .local v1, "canvas":Landroid/graphics/RecordingCanvas;
    iget-object v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 341
    goto :goto_0

    :cond_3
    iget-object v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 343
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_4

    .line 344
    add-int v9, v5, v3

    iget v10, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v10, v4

    const/4 v11, 0x0

    invoke-virtual {v0, v11, v11, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 345
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 350
    :cond_4
    iget-object v9, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    if-eqz v9, :cond_5

    iget-object v10, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_5

    iget-object v10, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v10, :cond_5

    .line 351
    iget-object v10, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mBFRExt:Lcom/android/internal/policy/IBackdropFrameRendererExt;

    iget-object v11, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-interface {v10, v11, v9}, Lcom/android/internal/policy/IBackdropFrameRendererExt;->checkSystemBarForceDark(Lcom/android/internal/policy/DecorView;Landroid/graphics/RenderNode;)V

    .line 356
    :cond_5
    iget-object v11, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v11, :cond_6

    .line 362
    iget-object v9, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mBFRExt:Lcom/android/internal/policy/IBackdropFrameRendererExt;

    iget-object v10, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    iget v12, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    iget-object v15, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    move v13, v4

    move v14, v5

    move-object/from16 v18, v15

    move v15, v2

    move/from16 v16, v3

    move-object/from16 v17, v1

    invoke-interface/range {v9 .. v18}, Lcom/android/internal/policy/IBackdropFrameRendererExt;->drawDarkModeBackground(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;IIIIILandroid/graphics/RecordingCanvas;Landroid/graphics/RenderNode;)V

    .line 366
    :cond_6
    iget-object v9, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    invoke-virtual {v9}, Landroid/graphics/RenderNode;->endRecording()V

    .line 368
    move-object v9, v0

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v9, "drawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object v10, v1

    .end local v1    # "canvas":Landroid/graphics/RecordingCanvas;
    .local v10, "canvas":Landroid/graphics/RecordingCanvas;
    move v1, v5

    move v11, v2

    .end local v2    # "height":I
    .local v11, "height":I
    move v2, v4

    move v12, v3

    .end local v3    # "width":I
    .local v12, "width":I
    move v13, v4

    .end local v4    # "top":I
    .local v13, "top":I
    move v4, v11

    move v14, v5

    .end local v5    # "left":I
    .local v14, "left":I
    move/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/BackdropFrameRenderer;->drawColorViews(IIIIZ)V

    .line 371
    iget-object v0, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, v6, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 373
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 374
    return-void

    .line 326
    .end local v9    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v10    # "canvas":Landroid/graphics/RecordingCanvas;
    .end local v11    # "height":I
    .end local v12    # "width":I
    .end local v13    # "top":I
    .end local v14    # "left":I
    :cond_7
    :goto_1
    return-void
.end method

.method private blacklist reportDrawIfNeeded()V
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 408
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 241
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 242
    monitor-exit p0

    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    .line 245
    monitor-exit p0

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onConfigurationChange()V
    .locals 2

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    invoke-direct {p0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 184
    :cond_0
    monitor-exit p0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist onContentDrawn(IIII)Z
    .locals 7
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "xSize"    # I
    .param p4, "ySize"    # I

    .line 272
    monitor-enter p0

    .line 273
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 275
    .local v0, "firstCall":Z
    :goto_0
    iput p3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    .line 276
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    sub-int v4, p4, v3

    iput v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    .line 277
    iput p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    .line 278
    iput p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    .line 281
    iget-object v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    add-int v6, p1, p3

    add-int/2addr v3, p2

    add-int/2addr v3, v4

    invoke-virtual {v5, p1, p2, v6, v3}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    .line 289
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 290
    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    monitor-exit p0

    .line 289
    return v1

    .line 291
    .end local v0    # "firstCall":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist onRequestDraw(Z)V
    .locals 2
    .param p1, "reportNextDraw"    # Z

    .line 295
    monitor-enter p0

    .line 296
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 298
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 299
    monitor-exit p0

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "resizingBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "captionBackgroundDrawableDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "statusBarColor"    # I
    .param p6, "navigationBarColor"    # I

    .line 115
    monitor-enter p0

    .line 116
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 117
    nop

    .line 118
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 120
    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    nop

    .line 122
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 124
    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    nop

    .line 126
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 127
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 128
    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 132
    :cond_3
    if-eqz p5, :cond_4

    .line 133
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 134
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    goto :goto_3

    .line 136
    :cond_4
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 138
    :goto_3
    if-eqz p6, :cond_5

    .line 139
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 140
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    goto :goto_4

    .line 142
    :cond_5
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 144
    :goto_4
    monitor-exit p0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist releaseRenderer()V
    .locals 3

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1

    .line 195
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/graphics/RenderNode;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2, v0}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/graphics/RenderNode;)V

    .line 204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 207
    invoke-direct {p0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 209
    :cond_1
    monitor-exit p0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist test-api run()V
    .locals 1

    .line 215
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 216
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 217
    :try_start_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 218
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 221
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 222
    nop

    .line 223
    monitor-enter p0

    .line 225
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 226
    invoke-static {}, Landroid/view/Choreographer;->releaseInstance()V

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 218
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Lcom/android/internal/policy/BackdropFrameRenderer;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 221
    .restart local p0    # "this":Lcom/android/internal/policy/BackdropFrameRenderer;
    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 222
    throw v0
.end method

.method public blacklist setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "newTargetBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 171
    monitor-exit p0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 426
    monitor-enter p0

    .line 427
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 428
    monitor-exit p0

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
