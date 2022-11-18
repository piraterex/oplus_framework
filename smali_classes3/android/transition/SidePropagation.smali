.class public Landroid/transition/SidePropagation;
.super Landroid/transition/VisibilityPropagation;
.source "SidePropagation.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "SlidePropagation"


# instance fields
.field private greylist-max-o mPropagationSpeed:F

.field private greylist-max-o mSide:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/transition/VisibilityPropagation;-><init>()V

    .line 35
    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    .line 36
    const/16 v0, 0x50

    iput v0, p0, Landroid/transition/SidePropagation;->mSide:I

    return-void
.end method

.method private greylist-max-o distance(Landroid/view/View;IIIIIIII)I
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/View;
    .param p2, "viewX"    # I
    .param p3, "viewY"    # I
    .param p4, "epicenterX"    # I
    .param p5, "epicenterY"    # I
    .param p6, "left"    # I
    .param p7, "top"    # I
    .param p8, "right"    # I
    .param p9, "bottom"    # I

    .line 124
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    const/4 v1, 0x5

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x800003

    if-ne v0, v5, :cond_2

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_0

    move v3, v4

    :cond_0
    move v0, v3

    .line 126
    .local v0, "isRtl":Z
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v0, v1

    .line 127
    .local v0, "side":I
    goto :goto_1

    .end local v0    # "side":I
    :cond_2
    const v5, 0x800005

    if-ne v0, v5, :cond_5

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v4, :cond_3

    move v3, v4

    :cond_3
    move v0, v3

    .line 129
    .local v0, "isRtl":Z
    if-eqz v0, :cond_4

    move v1, v2

    :cond_4
    move v0, v1

    .line 130
    .local v0, "side":I
    goto :goto_1

    .line 131
    .end local v0    # "side":I
    :cond_5
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    .line 133
    .restart local v0    # "side":I
    :goto_1
    const/4 v1, 0x0

    .line 134
    .local v1, "distance":I
    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 145
    :sswitch_0
    sub-int v2, p3, p7

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    goto :goto_2

    .line 139
    :sswitch_1
    sub-int v2, p9, p3

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 140
    goto :goto_2

    .line 142
    :sswitch_2
    sub-int v2, p2, p6

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 143
    goto :goto_2

    .line 136
    :sswitch_3
    sub-int v2, p8, p2

    sub-int v3, p5, p3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int v1, v2, v3

    .line 137
    nop

    .line 148
    :goto_2
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x5 -> :sswitch_2
        0x30 -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private greylist-max-o getMaxDistance(Landroid/view/ViewGroup;)I
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 152
    iget v0, p0, Landroid/transition/SidePropagation;->mSide:I

    sparse-switch v0, :sswitch_data_0

    .line 159
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    return v0

    .line 157
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x800003 -> :sswitch_0
        0x800005 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J
    .locals 26
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "transition"    # Landroid/transition/Transition;
    .param p3, "startValues"    # Landroid/transition/TransitionValues;
    .param p4, "endValues"    # Landroid/transition/TransitionValues;

    .line 75
    move-object/from16 v10, p0

    move-object/from16 v11, p3

    const-wide/16 v12, 0x0

    if-nez v11, :cond_0

    if-nez p4, :cond_0

    .line 76
    return-wide v12

    .line 78
    :cond_0
    const/4 v0, 0x1

    .line 79
    .local v0, "directionMultiplier":I
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v14

    .line 81
    .local v14, "epicenter":Landroid/graphics/Rect;
    if-eqz p4, :cond_2

    invoke-virtual {v10, v11}, Landroid/transition/SidePropagation;->getViewVisibility(Landroid/transition/TransitionValues;)I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 85
    :cond_1
    move-object/from16 v1, p4

    move v15, v0

    move-object v9, v1

    .local v1, "positionValues":Landroid/transition/TransitionValues;
    goto :goto_1

    .line 82
    .end local v1    # "positionValues":Landroid/transition/TransitionValues;
    :cond_2
    :goto_0
    move-object/from16 v1, p3

    .line 83
    .restart local v1    # "positionValues":Landroid/transition/TransitionValues;
    const/4 v0, -0x1

    move v15, v0

    move-object v9, v1

    .line 88
    .end local v0    # "directionMultiplier":I
    .end local v1    # "positionValues":Landroid/transition/TransitionValues;
    .local v9, "positionValues":Landroid/transition/TransitionValues;
    .local v15, "directionMultiplier":I
    :goto_1
    invoke-virtual {v10, v9}, Landroid/transition/SidePropagation;->getViewX(Landroid/transition/TransitionValues;)I

    move-result v16

    .line 89
    .local v16, "viewCenterX":I
    invoke-virtual {v10, v9}, Landroid/transition/SidePropagation;->getViewY(Landroid/transition/TransitionValues;)I

    move-result v17

    .line 91
    .local v17, "viewCenterY":I
    const/4 v0, 0x2

    new-array v8, v0, [I

    .line 92
    .local v8, "loc":[I
    move-object/from16 v7, p1

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 93
    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v18, v1, v2

    .line 94
    .local v18, "left":I
    const/4 v1, 0x1

    aget v1, v8, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int v19, v1, v2

    .line 95
    .local v19, "top":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    add-int v20, v18, v1

    .line 96
    .local v20, "right":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int v21, v19, v1

    .line 100
    .local v21, "bottom":I
    if-eqz v14, :cond_3

    .line 101
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 102
    .local v0, "epicenterX":I
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    move/from16 v22, v0

    move/from16 v23, v1

    .local v1, "epicenterY":I
    goto :goto_2

    .line 104
    .end local v0    # "epicenterX":I
    .end local v1    # "epicenterY":I
    :cond_3
    add-int v1, v18, v20

    div-int/2addr v1, v0

    .line 105
    .local v1, "epicenterX":I
    add-int v2, v19, v21

    div-int/lit8 v0, v2, 0x2

    move/from16 v23, v0

    move/from16 v22, v1

    .line 108
    .end local v1    # "epicenterX":I
    .local v22, "epicenterX":I
    .local v23, "epicenterY":I
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v24, v8

    .end local v8    # "loc":[I
    .local v24, "loc":[I
    move/from16 v8, v20

    move-object/from16 v25, v9

    .end local v9    # "positionValues":Landroid/transition/TransitionValues;
    .local v25, "positionValues":Landroid/transition/TransitionValues;
    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Landroid/transition/SidePropagation;->distance(Landroid/view/View;IIIIIIII)I

    move-result v0

    int-to-float v0, v0

    .line 110
    .local v0, "distance":F
    invoke-direct/range {p0 .. p1}, Landroid/transition/SidePropagation;->getMaxDistance(Landroid/view/ViewGroup;)I

    move-result v1

    int-to-float v1, v1

    .line 111
    .local v1, "maxDistance":F
    div-float v2, v0, v1

    .line 113
    .local v2, "distanceFraction":F
    invoke-virtual/range {p2 .. p2}, Landroid/transition/Transition;->getDuration()J

    move-result-wide v3

    .line 114
    .local v3, "duration":J
    cmp-long v5, v3, v12

    if-gez v5, :cond_4

    .line 115
    const-wide/16 v3, 0x12c

    .line 118
    :cond_4
    int-to-long v5, v15

    mul-long/2addr v5, v3

    long-to-float v5, v5

    iget v6, v10, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    div-float/2addr v5, v6

    mul-float/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v5, v5

    return-wide v5
.end method

.method public whitelist setPropagationSpeed(F)V
    .locals 2
    .param p1, "propagationSpeed"    # F

    .line 66
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 69
    iput p1, p0, Landroid/transition/SidePropagation;->mPropagationSpeed:F

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "propagationSpeed may not be 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSide(I)V
    .locals 0
    .param p1, "side"    # I

    .line 50
    iput p1, p0, Landroid/transition/SidePropagation;->mSide:I

    .line 51
    return-void
.end method
