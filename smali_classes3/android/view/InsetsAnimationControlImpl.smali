.class public Landroid/view/InsetsAnimationControlImpl;
.super Ljava/lang/Object;
.source "InsetsAnimationControlImpl.java"

# interfaces
.implements Landroid/view/InternalInsetsAnimationController;
.implements Landroid/view/InsetsAnimationControlRunner;


# static fields
.field private static final blacklist OPLUS_NAV_GESTURE_BAR_HEIGHT:I = 0x36

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsAnimationCtrlImpl"


# instance fields
.field private final blacklist mAnimation:Landroid/view/WindowInsetsAnimation;

.field private final blacklist mAnimationType:I

.field private blacklist mCancelled:Z

.field private final blacklist mController:Landroid/view/InsetsAnimationControlCallbacks;

.field private blacklist mControllingTypes:I

.field private final blacklist mControls:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mCurrentAlpha:F

.field private blacklist mCurrentInsets:Landroid/graphics/Insets;

.field private blacklist mFinished:Z

.field private final blacklist mHasZeroInsetsIme:Z

.field private final blacklist mHiddenInsets:Landroid/graphics/Insets;

.field private final blacklist mInitialInsetsState:Landroid/view/InsetsState;

.field private final blacklist mLayoutInsetsDuringAnimation:I

.field private final blacklist mListener:Landroid/view/WindowInsetsAnimationControlListener;

.field private blacklist mPendingAlpha:F

.field private blacklist mPendingFraction:F

.field private blacklist mPendingInsets:Landroid/graphics/Insets;

.field private blacklist mPerceptible:Ljava/lang/Boolean;

.field private blacklist mReadyDispatched:Z

.field private final blacklist mShownInsets:Landroid/graphics/Insets;

.field private blacklist mShownOnFinish:Z

.field private final blacklist mSideControlsMap:Landroid/util/SparseSetArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTmpFrame:Landroid/graphics/Rect;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field private final blacklist mTypes:I


# direct methods
.method public constructor blacklist <init>(Landroid/util/SparseArray;Landroid/graphics/Rect;Landroid/view/InsetsState;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/InsetsAnimationControlCallbacks;JLandroid/view/animation/Interpolator;IILandroid/content/res/CompatibilityInfo$Translator;)V
    .locals 19
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "state"    # Landroid/view/InsetsState;
    .param p4, "listener"    # Landroid/view/WindowInsetsAnimationControlListener;
    .param p5, "types"    # I
    .param p6, "controller"    # Landroid/view/InsetsAnimationControlCallbacks;
    .param p7, "durationMs"    # J
    .param p9, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p10, "animationType"    # I
    .param p11, "layoutInsetsDuringAnimation"    # I
    .param p12, "translator"    # Landroid/content/res/CompatibilityInfo$Translator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/graphics/Rect;",
            "Landroid/view/InsetsState;",
            "Landroid/view/WindowInsetsAnimationControlListener;",
            "I",
            "Landroid/view/InsetsAnimationControlCallbacks;",
            "J",
            "Landroid/view/animation/Interpolator;",
            "II",
            "Landroid/content/res/CompatibilityInfo$Translator;",
            ")V"
        }
    .end annotation

    .line 129
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    .line 93
    new-instance v10, Landroid/util/SparseSetArray;

    invoke-direct {v10}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v10, v6, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    .line 100
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 117
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    .line 118
    iput v0, v6, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 130
    iput-object v7, v6, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    .line 131
    move-object/from16 v11, p4

    iput-object v11, v6, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    .line 132
    iput v9, v6, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    .line 133
    iput v9, v6, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    .line 134
    move-object/from16 v12, p6

    iput-object v12, v6, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    .line 135
    new-instance v13, Landroid/view/InsetsState;

    const/4 v14, 0x1

    move-object/from16 v15, p3

    invoke-direct {v13, v15, v14}, Landroid/view/InsetsState;-><init>(Landroid/view/InsetsState;Z)V

    iput-object v13, v6, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    .line 136
    const/16 v5, 0x13

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-eqz v8, :cond_2

    .line 137
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    move-object v3, v1

    .line 138
    .local v3, "typeSideMap":Landroid/util/SparseIntArray;
    invoke-direct {v6, v13, v8, v0}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 139
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v18, v3

    .end local v3    # "typeSideMap":Landroid/util/SparseIntArray;
    .local v18, "typeSideMap":Landroid/util/SparseIntArray;
    move-object/from16 v3, p1

    move/from16 v4, v16

    move v14, v5

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    .line 141
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    .line 143
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-nez v0, :cond_0

    invoke-virtual {v6, v14}, Landroid/view/InsetsAnimationControlImpl;->controlsInternalType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v6, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    .line 144
    if-eqz v0, :cond_1

    .line 147
    const/4 v0, 0x3

    move-object/from16 v1, v18

    .end local v18    # "typeSideMap":Landroid/util/SparseIntArray;
    .local v1, "typeSideMap":Landroid/util/SparseIntArray;
    invoke-virtual {v1, v14, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 144
    .end local v1    # "typeSideMap":Landroid/util/SparseIntArray;
    .restart local v18    # "typeSideMap":Landroid/util/SparseIntArray;
    :cond_1
    move-object/from16 v1, v18

    .line 149
    .end local v18    # "typeSideMap":Landroid/util/SparseIntArray;
    .restart local v1    # "typeSideMap":Landroid/util/SparseIntArray;
    :goto_1
    invoke-static {v1, v10, v7}, Landroid/view/InsetsAnimationControlImpl;->buildSideControlsMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    .line 150
    .end local v1    # "typeSideMap":Landroid/util/SparseIntArray;
    goto :goto_3

    .line 153
    :cond_2
    move v14, v5

    const/4 v1, 0x1

    invoke-direct {v6, v13, v7, v1}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v2

    iput-object v2, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 154
    const/4 v2, 0x0

    invoke-direct {v6, v0, v7, v2}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v3

    iput-object v3, v6, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    .line 155
    invoke-direct {v6, v0, v7, v1}, Landroid/view/InsetsAnimationControlImpl;->calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    .line 156
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    if-nez v0, :cond_3

    invoke-virtual {v6, v14}, Landroid/view/InsetsAnimationControlImpl;->controlsInternalType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v14, v1

    goto :goto_2

    :cond_3
    move v14, v2

    :goto_2
    iput-boolean v14, v6, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    .line 157
    invoke-static {v10, v7}, Landroid/view/InsetsAnimationControlImpl;->buildSideControlsMap(Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V

    .line 159
    :goto_3
    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    iput-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 161
    new-instance v4, Landroid/view/WindowInsetsAnimation;

    move-wide/from16 v13, p7

    move-object/from16 v10, p9

    invoke-direct {v4, v9, v10, v13, v14}, Landroid/view/WindowInsetsAnimation;-><init>(ILandroid/view/animation/Interpolator;J)V

    iput-object v4, v6, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/view/InsetsAnimationControlImpl;->getCurrentAlpha()F

    move-result v0

    invoke-virtual {v4, v0}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    .line 164
    move/from16 v5, p10

    iput v5, v6, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    .line 165
    move/from16 v3, p11

    iput v3, v6, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    .line 166
    move-object/from16 v2, p12

    iput-object v2, v6, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 167
    new-instance v1, Landroid/view/WindowInsetsAnimation$Bounds;

    iget-object v0, v6, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget-object v2, v6, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-direct {v1, v0, v2}, Landroid/view/WindowInsetsAnimation$Bounds;-><init>(Landroid/graphics/Insets;Landroid/graphics/Insets;)V

    move-object/from16 v0, p6

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v5, v16

    invoke-interface/range {v0 .. v5}, Landroid/view/InsetsAnimationControlCallbacks;->startAnimation(Landroid/view/InsetsAnimationControlRunner;Landroid/view/WindowInsetsAnimationControlListener;ILandroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)V

    .line 169
    return-void
.end method

.method private blacklist addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "side"    # I
    .param p2, "offset"    # I
    .param p3, "m"    # Landroid/graphics/Matrix;
    .param p4, "frame"    # Landroid/graphics/Rect;

    .line 486
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    .line 487
    int-to-float v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo$Translator;->translateLengthInAppWindowToScreen(F)F

    move-result v0

    goto :goto_0

    :cond_0
    int-to-float v0, p2

    .line 488
    .local v0, "surfaceOffset":F
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 502
    :pswitch_0
    invoke-virtual {p3, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 503
    invoke-virtual {p4, v1, p2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 498
    :pswitch_1
    invoke-virtual {p3, v0, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 499
    invoke-virtual {p4, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 500
    goto :goto_1

    .line 494
    :pswitch_2
    neg-float v3, v0

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 495
    neg-int v2, p2

    invoke-virtual {p4, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 496
    goto :goto_1

    .line 490
    :pswitch_3
    neg-float v3, v0

    invoke-virtual {p3, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 491
    neg-int v2, p2

    invoke-virtual {p4, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 492
    nop

    .line 506
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static blacklist buildSideControlsMap(Landroid/util/SparseIntArray;Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .locals 4
    .param p0, "typeSideMap"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseIntArray;",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 511
    .local p1, "sideControlsMap":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Landroid/view/InsetsSourceControl;>;"
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 512
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 513
    .local v1, "type":I
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 514
    .local v2, "side":I
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceControl;

    .line 515
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-nez v3, :cond_0

    .line 518
    goto :goto_1

    .line 520
    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 511
    .end local v1    # "type":I
    .end local v2    # "side":I
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 522
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static blacklist buildSideControlsMap(Landroid/util/SparseSetArray;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseSetArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 527
    .local p0, "sideControlsMap":Landroid/util/SparseSetArray;, "Landroid/util/SparseSetArray<Landroid/view/InsetsSourceControl;>;"
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_3

    .line 528
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 529
    .local v2, "control":Landroid/view/InsetsSourceControl;
    if-nez v2, :cond_0

    .line 531
    goto :goto_1

    .line 538
    :cond_0
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v3

    .line 539
    .local v3, "insets":Landroid/graphics/Insets;
    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    if-ne v4, v1, :cond_1

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v3, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 540
    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-static {v5, v5, v5, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v3

    .line 542
    :cond_1
    invoke-static {v3}, Landroid/view/InsetsState;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v4

    .line 544
    .local v4, "side":I
    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    invoke-virtual {v2}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    const/16 v6, 0x13

    if-ne v5, v6, :cond_2

    .line 545
    const/4 v4, 0x3

    .line 547
    :cond_2
    invoke-virtual {p0, v4, v2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    .line 527
    .end local v2    # "control":Landroid/view/InsetsSourceControl;
    .end local v3    # "insets":Landroid/graphics/Insets;
    .end local v4    # "side":I
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 549
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method private blacklist calculateInsets(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseArray;ZLandroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .locals 3
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p4, "shown"    # Z
    .param p5, "typeSideMap"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/graphics/Rect;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    .line 395
    .local p3, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 396
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 397
    .local v1, "control":Landroid/view/InsetsSourceControl;
    if-nez v1, :cond_0

    .line 399
    goto :goto_1

    .line 401
    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 395
    .end local v1    # "control":Landroid/view/InsetsSourceControl;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 403
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0, p1, p2, p5}, Landroid/view/InsetsAnimationControlImpl;->getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist calculateInsets(Landroid/view/InsetsState;Landroid/util/SparseArray;Z)Landroid/graphics/Insets;
    .locals 6
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p3, "shownOrCurrent"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/InsetsState;",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;Z)",
            "Landroid/graphics/Insets;"
        }
    .end annotation

    .line 409
    .local p2, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    .line 410
    .local v0, "insets":Landroid/graphics/Insets;
    if-nez p3, :cond_0

    .line 411
    return-object v0

    .line 413
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 414
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceControl;

    .line 415
    .local v3, "control":Landroid/view/InsetsSourceControl;
    if-nez v3, :cond_1

    .line 417
    goto :goto_1

    .line 419
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 420
    :cond_2
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 424
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v4

    if-ne v4, v2, :cond_3

    sget-object v4, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v4}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 425
    const/16 v4, 0x36

    const/4 v5, 0x0

    invoke-static {v5, v5, v5, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v0

    .line 413
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 430
    .end local v1    # "i":I
    :cond_4
    return-object v0
.end method

.method private blacklist calculatePerceptible(Landroid/graphics/Insets;F)Z
    .locals 3
    .param p1, "currentInsets"    # Landroid/graphics/Insets;
    .param p2, "currentAlpha"    # F

    .line 172
    iget v0, p1, Landroid/graphics/Insets;->left:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->left:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Insets;->top:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->top:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->top:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Insets;->right:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->right:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    mul-int/lit8 v0, v0, 0x64

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x5

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist getInsetsFromState(Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/util/SparseIntArray;)Landroid/graphics/Insets;
    .locals 11
    .param p1, "state"    # Landroid/view/InsetsState;
    .param p2, "frame"    # Landroid/graphics/Rect;
    .param p3, "typeSideMap"    # Landroid/util/SparseIntArray;

    .line 384
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v10, p3

    invoke-virtual/range {v0 .. v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;Landroid/view/InsetsState;ZZIIIIILandroid/util/SparseIntArray;)Landroid/view/WindowInsets;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 384
    return-object v0
.end method

.method private blacklist releaseLeashes()V
    .locals 4

    .line 305
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 306
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 307
    .local v1, "c":Landroid/view/InsetsSourceControl;
    if-nez v1, :cond_0

    goto :goto_1

    .line 308
    :cond_0
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Landroid/view/InsetsAnimationControlImpl$$ExternalSyntheticLambda0;-><init>(Landroid/view/InsetsAnimationControlCallbacks;)V

    invoke-virtual {v1, v3}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 305
    .end local v1    # "c":Landroid/view/InsetsSourceControl;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 310
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private static blacklist sanitize(F)F
    .locals 3
    .param p0, "alpha"    # F

    .line 444
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    cmpg-float v0, p0, v2

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private blacklist sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;
    .locals 2
    .param p1, "insets"    # Landroid/graphics/Insets;

    .line 434
    if-nez p1, :cond_0

    .line 435
    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->getCurrentInsets()Landroid/graphics/Insets;

    move-result-object p1

    .line 437
    :cond_0
    invoke-virtual {p0}, Landroid/view/InsetsAnimationControlImpl;->hasZeroInsetsIme()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    return-object p1

    .line 440
    :cond_1
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    invoke-static {p1, v0}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    invoke-static {v0, v1}, Landroid/graphics/Insets;->max(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Insets;
    .param p2, "alpha"    # F
    .param p3, "fraction"    # F
    .param p4, "allowWhenFinished"    # Z

    .line 249
    if-nez p4, :cond_1

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t change insets on an animation that is finished."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    if-nez v0, :cond_4

    .line 257
    invoke-static {p3}, Landroid/view/InsetsAnimationControlImpl;->sanitize(F)F

    move-result v0

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    .line 258
    invoke-direct {p0, p1}, Landroid/view/InsetsAnimationControlImpl;->sanitize(Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 259
    invoke-static {p2}, Landroid/view/InsetsAnimationControlImpl;->sanitize(F)F

    move-result v0

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 260
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-interface {v0, p0}, Landroid/view/InsetsAnimationControlCallbacks;->scheduleApplyChangeInsets(Landroid/view/InsetsAnimationControlRunner;)V

    .line 261
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    invoke-direct {p0, v0, v1}, Landroid/view/InsetsAnimationControlImpl;->calculatePerceptible(Landroid/graphics/Insets;F)Z

    move-result v0

    .line 262
    .local v0, "perceptible":Z
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v0, v1, :cond_3

    .line 263
    :cond_2
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-interface {v1, v2, v0}, Landroid/view/InsetsAnimationControlCallbacks;->reportPerceptible(IZ)V

    .line 264
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mPerceptible:Ljava/lang/Boolean;

    .line 266
    :cond_3
    return-void

    .line 254
    .end local v0    # "perceptible":Z
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t change insets on an animation that is cancelled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;F)V
    .locals 9
    .param p1, "side"    # I
    .param p2, "offset"    # I
    .param p3, "inset"    # I
    .param p5, "outState"    # Landroid/view/InsetsState;
    .param p6, "alpha"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/ArrayList<",
            "Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;",
            ">;",
            "Landroid/view/InsetsState;",
            "F)V"
        }
    .end annotation

    .line 449
    .local p4, "surfaceParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;>;"
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mSideControlsMap:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v0

    .line 450
    .local v0, "controls":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/view/InsetsSourceControl;>;"
    if-nez v0, :cond_0

    .line 451
    return-void

    .line 454
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_6

    .line 455
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InsetsSourceControl;

    .line 456
    .local v3, "control":Landroid/view/InsetsSourceControl;
    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mInitialInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v4

    .line 457
    .local v4, "source":Landroid/view/InsetsSource;
    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 459
    .local v5, "leash":Landroid/view/SurfaceControl;
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    invoke-virtual {v3}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 460
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 461
    iget-object v6, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v7, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v6, v7}, Landroid/view/InsetsAnimationControlImpl;->addTranslationToMatrix(IILandroid/graphics/Matrix;Landroid/graphics/Rect;)V

    .line 463
    iget-boolean v6, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    const/4 v6, 0x3

    if-ne p1, v6, :cond_2

    .line 464
    iget v6, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-nez v6, :cond_3

    :cond_1
    move v7, v2

    goto :goto_1

    .line 465
    :cond_2
    if-eqz p3, :cond_3

    move v7, v2

    :cond_3
    :goto_1
    move v6, v7

    .line 467
    .local v6, "visible":Z
    if-eqz p5, :cond_4

    .line 468
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-virtual {p5, v7}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/InsetsSource;->setVisible(Z)V

    .line 469
    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v7

    invoke-virtual {p5, v7}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object v7

    iget-object v8, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)V

    .line 473
    :cond_4
    if-eqz v5, :cond_5

    .line 474
    new-instance v7, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v7, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 475
    invoke-virtual {v7, p6}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v7

    iget-object v8, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 476
    invoke-virtual {v7, v8}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v7

    .line 477
    invoke-virtual {v7, v6}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v7

    .line 478
    invoke-virtual {v7}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v7

    .line 479
    .local v7, "params":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    invoke-virtual {p4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    .end local v3    # "control":Landroid/view/InsetsSourceControl;
    .end local v4    # "source":Landroid/view/InsetsSource;
    .end local v5    # "leash":Landroid/view/SurfaceControl;
    .end local v6    # "visible":Z
    .end local v7    # "params":Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_0

    .line 482
    .end local v1    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public blacklist applyChangeInsets(Landroid/view/InsetsState;)Z
    .locals 11
    .param p1, "outState"    # Landroid/view/InsetsState;

    .line 273
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    const/4 v1, 0x0

    const-string v2, "InsetsAnimationCtrlImpl"

    if-eqz v0, :cond_1

    .line 274
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "applyChangeInsets canceled"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_0
    return v1

    .line 277
    :cond_1
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    iget-object v3, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v0, v3}, Landroid/graphics/Insets;->subtract(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    .line 278
    .local v0, "offset":Landroid/graphics/Insets;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v3, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;>;"
    const/4 v5, 0x0

    iget v6, v0, Landroid/graphics/Insets;->left:I

    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v7, v4, Landroid/graphics/Insets;->left:I

    iget v10, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    move-object v4, p0

    move-object v8, v3

    move-object v9, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    .line 281
    const/4 v5, 0x1

    iget v6, v0, Landroid/graphics/Insets;->top:I

    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v7, v4, Landroid/graphics/Insets;->top:I

    iget v10, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    .line 283
    const/4 v5, 0x2

    iget v6, v0, Landroid/graphics/Insets;->right:I

    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v7, v4, Landroid/graphics/Insets;->right:I

    iget v10, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    .line 285
    const/4 v5, 0x3

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iget v7, v4, Landroid/graphics/Insets;->bottom:I

    iget v10, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Landroid/view/InsetsAnimationControlImpl;->updateLeashesForSide(IIILjava/util/ArrayList;Landroid/view/InsetsState;F)V

    .line 288
    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    invoke-interface {v4, v5}, Landroid/view/InsetsAnimationControlCallbacks;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    .line 289
    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    iput-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    .line 290
    iget-object v4, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    iget v5, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    invoke-virtual {v4, v5}, Landroid/view/WindowInsetsAnimation;->setFraction(F)V

    .line 291
    iget v4, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    iput v4, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    .line 292
    iget-object v5, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v5, v4}, Landroid/view/WindowInsetsAnimation;->setAlpha(F)V

    .line 293
    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v4, :cond_3

    .line 294
    sget-boolean v4, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-boolean v5, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    .line 296
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget v5, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x2

    iget-object v5, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    aput-object v5, v4, v1

    .line 294
    const-string/jumbo v1, "notifyFinished shown: %s, currentAlpha: %f, currentInsets: %s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_2
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mController:Landroid/view/InsetsAnimationControlCallbacks;

    iget-boolean v4, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    invoke-interface {v1, p0, v4}, Landroid/view/InsetsAnimationControlCallbacks;->notifyFinished(Landroid/view/InsetsAnimationControlRunner;Z)V

    .line 298
    invoke-direct {p0}, Landroid/view/InsetsAnimationControlImpl;->releaseLeashes()V

    .line 299
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "Animation finished abruptly."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_3
    iget-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return v1
.end method

.method public blacklist cancel()V
    .locals 3

    .line 335
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_0

    .line 336
    return-void

    .line 338
    :cond_0
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mLayoutInsetsDuringAnimation:I

    if-nez v0, :cond_1

    .line 339
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    :goto_0
    iput-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    .line 340
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/InsetsAnimationControlImpl;->applyChangeInsets(Landroid/view/InsetsState;)Z

    .line 342
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    .line 343
    iget-object v1, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    if-eqz v2, :cond_2

    move-object v0, p0

    :cond_2
    invoke-interface {v1, v0}, Landroid/view/WindowInsetsAnimationControlListener;->onCancelled(Landroid/view/WindowInsetsAnimationController;)V

    .line 344
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notify Control request cancelled for types: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InsetsAnimationCtrlImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_3
    invoke-direct {p0}, Landroid/view/InsetsAnimationControlImpl;->releaseLeashes()V

    .line 347
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 366
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 367
    .local v0, "token":J
    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 368
    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    const-wide v3, 0x10800000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 369
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 370
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingInsets:Landroid/graphics/Insets;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 371
    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingFraction:F

    const-wide v3, 0x10200000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 372
    iget-boolean v2, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 373
    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    const-wide v3, 0x10200000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 374
    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const-wide v3, 0x10200000008L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 375
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 376
    return-void
.end method

.method public whitelist finish(Z)V
    .locals 5
    .param p1, "shown"    # Z

    .line 314
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    const-string v1, "InsetsAnimationCtrlImpl"

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 318
    :cond_0
    iput-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mShownOnFinish:Z

    .line 319
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    .line 320
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    :goto_0
    iget v3, p0, Landroid/view/InsetsAnimationControlImpl;->mPendingAlpha:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v3, v4, v0}, Landroid/view/InsetsAnimationControlImpl;->setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V

    .line 323
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify control request finished for types: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mListener:Landroid/view/WindowInsetsAnimationControlListener;

    invoke-interface {v0, p0}, Landroid/view/WindowInsetsAnimationControlListener;->onFinished(Landroid/view/WindowInsetsAnimationController;)V

    .line 325
    return-void

    .line 315
    :cond_3
    :goto_1
    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "Animation already canceled or finished, not notifying."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_4
    return-void
.end method

.method public blacklist getAnimation()Landroid/view/WindowInsetsAnimation;
    .locals 1

    .line 361
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    return-object v0
.end method

.method public blacklist getAnimationType()I
    .locals 1

    .line 239
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimationType:I

    return v0
.end method

.method public blacklist getControllingTypes()I
    .locals 1

    .line 216
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    return v0
.end method

.method blacklist getControls()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;"
        }
    .end annotation

    .line 379
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    return-object v0
.end method

.method public whitelist getCurrentAlpha()F
    .locals 1

    .line 206
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentAlpha:F

    return v0
.end method

.method public whitelist getCurrentFraction()F
    .locals 1

    .line 330
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mAnimation:Landroid/view/WindowInsetsAnimation;

    invoke-virtual {v0}, Landroid/view/WindowInsetsAnimation;->getFraction()F

    move-result v0

    return v0
.end method

.method public whitelist getCurrentInsets()Landroid/graphics/Insets;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCurrentInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getHiddenStateInsets()Landroid/graphics/Insets;
    .locals 1

    .line 191
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHiddenInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getShownStateInsets()Landroid/graphics/Insets;
    .locals 1

    .line 196
    iget-object v0, p0, Landroid/view/InsetsAnimationControlImpl;->mShownInsets:Landroid/graphics/Insets;

    return-object v0
.end method

.method public whitelist getTypes()I
    .locals 1

    .line 211
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mTypes:I

    return v0
.end method

.method public blacklist hasZeroInsetsIme()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mHasZeroInsetsIme:Z

    return v0
.end method

.method public whitelist isCancelled()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mCancelled:Z

    return v0
.end method

.method public whitelist isFinished()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Landroid/view/InsetsAnimationControlImpl;->mFinished:Z

    return v0
.end method

.method public blacklist notifyControlRevoked(I)V
    .locals 2
    .param p1, "types"    # I

    .line 221
    iget v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/InsetsAnimationControlImpl;->mControllingTypes:I

    .line 222
    return-void
.end method

.method public whitelist setInsetsAndAlpha(Landroid/graphics/Insets;FF)V
    .locals 1
    .param p1, "insets"    # Landroid/graphics/Insets;
    .param p2, "alpha"    # F
    .param p3, "fraction"    # F

    .line 244
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/InsetsAnimationControlImpl;->setInsetsAndAlpha(Landroid/graphics/Insets;FFZ)V

    .line 245
    return-void
.end method

.method public blacklist setReadyDispatched(Z)V
    .locals 0
    .param p1, "dispatched"    # Z

    .line 186
    iput-boolean p1, p0, Landroid/view/InsetsAnimationControlImpl;->mReadyDispatched:Z

    .line 187
    return-void
.end method

.method public blacklist updateSurfacePosition(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/InsetsSourceControl;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "controls":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/InsetsSourceControl;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 227
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InsetsSourceControl;

    .line 228
    .local v1, "control":Landroid/view/InsetsSourceControl;
    iget-object v2, p0, Landroid/view/InsetsAnimationControlImpl;->mControls:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InsetsSourceControl;

    .line 229
    .local v2, "c":Landroid/view/InsetsSourceControl;
    if-nez v2, :cond_0

    .line 230
    goto :goto_1

    .line 232
    :cond_0
    invoke-virtual {v1}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v3

    .line 233
    .local v3, "position":Landroid/graphics/Point;
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/view/InsetsSourceControl;->setSurfacePosition(II)Z

    .line 226
    .end local v1    # "control":Landroid/view/InsetsSourceControl;
    .end local v2    # "c":Landroid/view/InsetsSourceControl;
    .end local v3    # "position":Landroid/graphics/Point;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 235
    .end local v0    # "i":I
    :cond_1
    return-void
.end method
