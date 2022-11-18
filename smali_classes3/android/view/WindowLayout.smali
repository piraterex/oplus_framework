.class public Landroid/view/WindowLayout;
.super Ljava/lang/Object;
.source "WindowLayout.java"


# static fields
.field private static final blacklist DEBUG:Z = false

.field static final blacklist MAX_X:I = 0x186a0

.field static final blacklist MAX_Y:I = 0x186a0

.field static final blacklist MIN_X:I = -0x186a0

.field static final blacklist MIN_Y:I = -0x186a0

.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist UNSPECIFIED_LENGTH:I = -0x1


# instance fields
.field public blacklist mExt:Landroid/view/IWindowLayoutExt;

.field private final blacklist mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field private final blacklist mTempRect:Landroid/graphics/Rect;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 56
    const-class v0, Landroid/view/WindowLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/WindowLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    .line 72
    const-class v0, Landroid/view/IWindowLayoutExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/IWindowLayoutExt;

    iput-object v0, p0, Landroid/view/WindowLayout;->mExt:Landroid/view/IWindowLayoutExt;

    return-void
.end method

.method public static blacklist computeSurfaceSize(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;IILandroid/graphics/Rect;ZLandroid/graphics/Point;)V
    .locals 5
    .param p0, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p1, "maxBounds"    # Landroid/graphics/Rect;
    .param p2, "requestedWidth"    # I
    .param p3, "requestedHeight"    # I
    .param p4, "winFrame"    # Landroid/graphics/Rect;
    .param p5, "dragResizing"    # Z
    .param p6, "outSurfaceSize"    # Landroid/graphics/Point;

    .line 337
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    .line 339
    move v0, p2

    .line 340
    .local v0, "width":I
    move v1, p3

    .local v1, "height":I
    goto :goto_0

    .line 345
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    if-eqz p5, :cond_1

    .line 348
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 349
    .restart local v0    # "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0

    .line 351
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 352
    .restart local v0    # "width":I
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 358
    .restart local v1    # "height":I
    :goto_0
    const/4 v2, 0x1

    if-ge v0, v2, :cond_2

    .line 359
    const/4 v0, 0x1

    .line 361
    :cond_2
    if-ge v1, v2, :cond_3

    .line 362
    const/4 v1, 0x1

    .line 366
    :cond_3
    iget-object v2, p0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 367
    .local v2, "surfaceInsets":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 368
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 370
    invoke-virtual {p6, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 371
    return-void
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIILandroid/view/InsetsVisibilities;Landroid/graphics/Rect;FLandroid/window/ClientWindowFrames;)V
    .locals 43
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "state"    # Landroid/view/InsetsState;
    .param p3, "displayCutoutSafe"    # Landroid/graphics/Rect;
    .param p4, "windowBounds"    # Landroid/graphics/Rect;
    .param p5, "windowingMode"    # I
    .param p6, "requestedWidth"    # I
    .param p7, "requestedHeight"    # I
    .param p8, "requestedVisibilities"    # Landroid/view/InsetsVisibilities;
    .param p9, "attachedWindowFrame"    # Landroid/graphics/Rect;
    .param p10, "compatScale"    # F
    .param p11, "outFrames"    # Landroid/window/ClientWindowFrames;

    .line 79
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p11

    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 80
    .local v12, "type":I
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 81
    .local v13, "fl":I
    iget v14, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 82
    .local v14, "pfl":I
    and-int/lit16 v1, v13, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v16, v1

    .line 83
    .local v16, "layoutInScreen":Z
    iget-object v5, v11, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    .line 84
    .local v5, "outDisplayFrame":Landroid/graphics/Rect;
    iget-object v4, v11, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    .line 85
    .local v4, "outParentFrame":Landroid/graphics/Rect;
    iget-object v3, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    .line 88
    .local v3, "outFrame":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result v1

    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result v2

    .line 88
    invoke-virtual {v8, v10, v1, v2}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    .line 90
    .local v2, "insets":Landroid/graphics/Insets;
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result v24

    .line 91
    .local v24, "sides":I
    and-int/lit8 v1, v24, 0x1

    if-eqz v1, :cond_1

    iget v1, v2, Landroid/graphics/Insets;->left:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move/from16 v25, v1

    .line 92
    .local v25, "left":I
    and-int/lit8 v1, v24, 0x2

    if-eqz v1, :cond_2

    iget v1, v2, Landroid/graphics/Insets;->top:I

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    move/from16 v26, v1

    .line 93
    .local v26, "top":I
    and-int/lit8 v1, v24, 0x4

    if-eqz v1, :cond_3

    iget v1, v2, Landroid/graphics/Insets;->right:I

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    move/from16 v27, v1

    .line 94
    .local v27, "right":I
    and-int/lit8 v1, v24, 0x8

    if-eqz v1, :cond_4

    iget v1, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    move/from16 v28, v1

    .line 95
    .local v28, "bottom":I
    iget v1, v10, Landroid/graphics/Rect;->left:I

    add-int v1, v1, v25

    iget v6, v10, Landroid/graphics/Rect;->top:I

    add-int v6, v6, v26

    iget v15, v10, Landroid/graphics/Rect;->right:I

    sub-int v15, v15, v27

    move-object/from16 v19, v2

    .end local v2    # "insets":Landroid/graphics/Insets;
    .local v19, "insets":Landroid/graphics/Insets;
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v2, v28

    invoke-virtual {v5, v1, v6, v15, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 98
    if-nez p9, :cond_6

    .line 99
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 100
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, v14

    if-eqz v1, :cond_8

    .line 101
    const/16 v1, 0x13

    invoke-virtual {v8, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v1

    .line 102
    .local v1, "source":Landroid/view/InsetsSource;
    if-eqz v1, :cond_5

    .line 103
    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 106
    .end local v1    # "source":Landroid/view/InsetsSource;
    :cond_5
    goto :goto_6

    .line 108
    :cond_6
    if-nez v16, :cond_7

    move-object/from16 v1, p9

    goto :goto_5

    :cond_7
    move-object v1, v5

    :goto_5
    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    :cond_8
    :goto_6
    iget v15, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 113
    .local v15, "cutoutMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v29

    .line 114
    .local v29, "cutout":Landroid/view/DisplayCutout;
    iget-object v6, v0, Landroid/view/WindowLayout;->mTempDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    .line 115
    .local v6, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    invoke-virtual {v6, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 116
    const/4 v1, 0x0

    iput-boolean v1, v11, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    .line 123
    const/4 v1, 0x3

    const/high16 v20, 0x10000

    if-eq v15, v1, :cond_1a

    invoke-virtual/range {v29 .. v29}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Landroid/view/WindowLayout;->mExt:Landroid/view/IWindowLayoutExt;

    .line 124
    invoke-interface {v1, v15}, Landroid/view/IWindowLayoutExt;->isCutoutModeShow(I)Z

    move-result v1

    if-nez v1, :cond_19

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 129
    .local v1, "displayFrame":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v18

    .line 130
    .local v18, "statusBarSource":Landroid/view/InsetsSource;
    if-eqz v18, :cond_9

    iget v2, v9, Landroid/graphics/Rect;->top:I

    move-object/from16 v22, v3

    .end local v3    # "outFrame":Landroid/graphics/Rect;
    .local v22, "outFrame":Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_a

    .line 134
    nop

    .line 135
    invoke-virtual/range {v18 .. v18}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v6, Landroid/graphics/Rect;->top:I

    goto :goto_7

    .line 130
    .end local v22    # "outFrame":Landroid/graphics/Rect;
    .restart local v3    # "outFrame":Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v22, v3

    .line 137
    .end local v3    # "outFrame":Landroid/graphics/Rect;
    .restart local v22    # "outFrame":Landroid/graphics/Rect;
    :cond_a
    :goto_7
    const/4 v3, 0x1

    if-ne v15, v3, :cond_c

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v3, v2, :cond_b

    .line 139
    const/high16 v2, -0x80000000

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 140
    const v3, 0x7fffffff

    iput v3, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    .line 142
    :cond_b
    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 143
    iput v3, v6, Landroid/graphics/Rect;->right:I

    .line 146
    :cond_c
    :goto_8
    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int v2, v2, v20

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_9

    :cond_d
    const/4 v2, 0x0

    .line 147
    .local v2, "layoutInsetDecor":Z
    :goto_9
    if-eqz v16, :cond_13

    if-eqz v2, :cond_13

    if-eqz v15, :cond_f

    const/4 v3, 0x1

    if-ne v15, v3, :cond_e

    goto :goto_a

    :cond_e
    move-object/from16 v10, p8

    move/from16 v31, v2

    goto :goto_d

    .line 150
    :cond_f
    :goto_a
    nop

    .line 151
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    .line 150
    move-object/from16 v10, p8

    invoke-virtual {v8, v1, v3, v10}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;ILandroid/view/InsetsVisibilities;)Landroid/graphics/Insets;

    move-result-object v3

    .line 152
    .local v3, "systemBarsInsets":Landroid/graphics/Insets;
    move/from16 v31, v2

    .end local v2    # "layoutInsetDecor":Z
    .local v31, "layoutInsetDecor":Z
    iget v2, v3, Landroid/graphics/Insets;->left:I

    if-lez v2, :cond_10

    .line 153
    const/high16 v2, -0x80000000

    iput v2, v6, Landroid/graphics/Rect;->left:I

    goto :goto_b

    .line 152
    :cond_10
    const/high16 v2, -0x80000000

    .line 155
    :goto_b
    iget v2, v3, Landroid/graphics/Insets;->top:I

    if-lez v2, :cond_11

    .line 156
    const/high16 v2, -0x80000000

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 158
    :cond_11
    iget v2, v3, Landroid/graphics/Insets;->right:I

    if-lez v2, :cond_12

    .line 159
    const v2, 0x7fffffff

    iput v2, v6, Landroid/graphics/Rect;->right:I

    goto :goto_c

    .line 158
    :cond_12
    const v2, 0x7fffffff

    .line 161
    :goto_c
    iget v2, v3, Landroid/graphics/Insets;->bottom:I

    if-lez v2, :cond_14

    .line 162
    const v2, 0x7fffffff

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    goto :goto_d

    .line 147
    .end local v3    # "systemBarsInsets":Landroid/graphics/Insets;
    .end local v31    # "layoutInsetDecor":Z
    .restart local v2    # "layoutInsetDecor":Z
    :cond_13
    move-object/from16 v10, p8

    move/from16 v31, v2

    .line 165
    .end local v2    # "layoutInsetDecor":Z
    .restart local v31    # "layoutInsetDecor":Z
    :cond_14
    :goto_d
    const/16 v2, 0x7db

    if-ne v12, v2, :cond_15

    .line 166
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v3

    .line 167
    .local v3, "navSource":Landroid/view/InsetsSource;
    if-eqz v3, :cond_15

    invoke-virtual {v3, v1, v2}, Landroid/view/InsetsSource;->calculateInsets(Landroid/graphics/Rect;Z)Landroid/graphics/Insets;

    move-result-object v8

    iget v2, v8, Landroid/graphics/Insets;->bottom:I

    if-lez v2, :cond_15

    .line 169
    const v2, 0x7fffffff

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 174
    .end local v3    # "navSource":Landroid/view/InsetsSource;
    :cond_15
    iget-object v2, v0, Landroid/view/WindowLayout;->mExt:Landroid/view/IWindowLayoutExt;

    invoke-interface {v2, v7, v1, v6}, Landroid/view/IWindowLayoutExt;->adjustDisplayCutoutSafeExceptMaybeBars(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 176
    if-eqz p9, :cond_16

    if-nez v16, :cond_16

    const/4 v2, 0x1

    goto :goto_e

    :cond_16
    const/4 v2, 0x0

    .line 180
    .local v2, "attachedInParent":Z
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v3

    if-nez v3, :cond_17

    if-eqz v16, :cond_17

    const/4 v3, 0x1

    if-eq v12, v3, :cond_17

    const/4 v3, 0x1

    goto :goto_f

    :cond_17
    const/4 v3, 0x0

    .line 188
    .local v3, "floatingInScreenWindow":Z
    :goto_f
    if-nez v2, :cond_18

    if-nez v3, :cond_18

    .line 189
    iget-object v8, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 191
    iget-object v8, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/16 v17, 0x1

    xor-int/lit8 v8, v8, 0x1

    iput-boolean v8, v11, Landroid/window/ClientWindowFrames;->isParentFrameClippedByDisplayCutout:Z

    goto :goto_10

    .line 188
    :cond_18
    const/16 v17, 0x1

    .line 193
    :goto_10
    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_11

    .line 124
    .end local v1    # "displayFrame":Landroid/graphics/Rect;
    .end local v2    # "attachedInParent":Z
    .end local v18    # "statusBarSource":Landroid/view/InsetsSource;
    .end local v22    # "outFrame":Landroid/graphics/Rect;
    .end local v31    # "layoutInsetDecor":Z
    .local v3, "outFrame":Landroid/graphics/Rect;
    :cond_19
    move-object/from16 v10, p8

    move-object/from16 v22, v3

    const/16 v17, 0x1

    .end local v3    # "outFrame":Landroid/graphics/Rect;
    .restart local v22    # "outFrame":Landroid/graphics/Rect;
    goto :goto_11

    .line 123
    .end local v22    # "outFrame":Landroid/graphics/Rect;
    .restart local v3    # "outFrame":Landroid/graphics/Rect;
    :cond_1a
    move-object/from16 v10, p8

    move-object/from16 v22, v3

    const/16 v17, 0x1

    .line 196
    .end local v3    # "outFrame":Landroid/graphics/Rect;
    .restart local v22    # "outFrame":Landroid/graphics/Rect;
    :goto_11
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_1b

    move/from16 v2, v17

    goto :goto_12

    :cond_1b
    const/4 v2, 0x0

    :goto_12
    move v8, v2

    .line 197
    .local v8, "noLimits":Z
    invoke-static/range {p5 .. p5}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v30

    .line 201
    .local v30, "inMultiWindowMode":Z
    if-eqz v8, :cond_1c

    const/16 v1, 0x7da

    if-eq v12, v1, :cond_1c

    if-nez v30, :cond_1c

    .line 202
    const v1, -0x186a0

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 203
    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 204
    const v1, 0x186a0

    iput v1, v5, Landroid/graphics/Rect;->right:I

    .line 205
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 210
    :cond_1c
    iget-object v1, v0, Landroid/view/WindowLayout;->mExt:Landroid/view/IWindowLayoutExt;

    move-object/from16 v31, v19

    const/16 v18, 0x0

    .end local v19    # "insets":Landroid/graphics/Insets;
    .local v31, "insets":Landroid/graphics/Insets;
    move-object/from16 v2, p1

    move-object/from16 v32, v22

    .end local v22    # "outFrame":Landroid/graphics/Rect;
    .local v32, "outFrame":Landroid/graphics/Rect;
    move-object/from16 v3, p4

    move-object/from16 v33, v4

    .end local v4    # "outParentFrame":Landroid/graphics/Rect;
    .local v33, "outParentFrame":Landroid/graphics/Rect;
    move/from16 v4, p5

    move-object/from16 v34, v5

    .end local v5    # "outDisplayFrame":Landroid/graphics/Rect;
    .local v34, "outDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v35, v6

    move/from16 v10, v17

    .end local v6    # "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    .local v35, "displayCutoutSafeExceptMaybeBars":Landroid/graphics/Rect;
    move-object/from16 v6, v33

    invoke-interface/range {v1 .. v6}, Landroid/view/IWindowLayoutExt;->adjustWindowFrame(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 213
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p10, v1

    if-eqz v1, :cond_1d

    move v6, v10

    goto :goto_13

    :cond_1d
    move/from16 v6, v18

    :goto_13
    move v1, v6

    .line 214
    .local v1, "hasCompatScale":Z
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 215
    .local v2, "pw":I
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 216
    .local v3, "ph":I
    iget v4, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_1e

    move v6, v10

    goto :goto_14

    :cond_1e
    move/from16 v6, v18

    :goto_14
    move v4, v6

    .line 218
    .local v4, "extendedByCutout":Z
    move/from16 v5, p6

    .line 219
    .local v5, "rw":I
    move/from16 v6, p7

    .line 228
    .local v6, "rh":I
    const/4 v10, -0x1

    if-eq v5, v10, :cond_1f

    if-eqz v4, :cond_21

    .line 229
    :cond_1f
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ltz v10, :cond_20

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_15

    :cond_20
    move v10, v2

    :goto_15
    move v5, v10

    .line 231
    :cond_21
    const/4 v10, -0x1

    if-eq v6, v10, :cond_22

    if-eqz v4, :cond_24

    .line 232
    :cond_22
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ltz v10, :cond_23

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_16

    :cond_23
    move v10, v3

    :goto_16
    move v6, v10

    .line 235
    :cond_24
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v10, v10, 0x4000

    const/high16 v21, 0x3f000000    # 0.5f

    if-eqz v10, :cond_29

    .line 236
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v10, :cond_25

    .line 237
    move v10, v2

    .local v10, "w":I
    goto :goto_17

    .line 238
    .end local v10    # "w":I
    :cond_25
    if-eqz v1, :cond_26

    .line 239
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v10, v10

    mul-float v10, v10, p10

    add-float v10, v10, v21

    float-to-int v10, v10

    .restart local v10    # "w":I
    goto :goto_17

    .line 241
    .end local v10    # "w":I
    :cond_26
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 243
    .restart local v10    # "w":I
    :goto_17
    move/from16 v19, v10

    .end local v10    # "w":I
    .local v19, "w":I
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v10, :cond_27

    .line 244
    move v10, v3

    move/from16 v36, v5

    move v5, v10

    move/from16 v10, v19

    .local v10, "h":I
    goto :goto_19

    .line 245
    .end local v10    # "h":I
    :cond_27
    if-eqz v1, :cond_28

    .line 246
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v10, v10

    mul-float v10, v10, p10

    add-float v10, v10, v21

    float-to-int v10, v10

    move/from16 v36, v5

    move v5, v10

    move/from16 v10, v19

    .restart local v10    # "h":I
    goto :goto_19

    .line 248
    .end local v10    # "h":I
    :cond_28
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v36, v5

    move v5, v10

    move/from16 v10, v19

    .restart local v10    # "h":I
    goto :goto_19

    .line 251
    .end local v10    # "h":I
    .end local v19    # "w":I
    :cond_29
    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2a

    .line 252
    move v10, v2

    .local v10, "w":I
    goto :goto_18

    .line 253
    .end local v10    # "w":I
    :cond_2a
    if-eqz v1, :cond_2b

    .line 254
    int-to-float v10, v5

    mul-float v10, v10, p10

    add-float v10, v10, v21

    float-to-int v10, v10

    .restart local v10    # "w":I
    goto :goto_18

    .line 256
    .end local v10    # "w":I
    :cond_2b
    move v10, v5

    .line 258
    .restart local v10    # "w":I
    :goto_18
    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v36, v5

    const/4 v5, -0x1

    .end local v5    # "rw":I
    .local v36, "rw":I
    if-ne v11, v5, :cond_2c

    .line 259
    move v5, v3

    .local v5, "h":I
    goto :goto_19

    .line 260
    .end local v5    # "h":I
    :cond_2c
    if-eqz v1, :cond_2d

    .line 261
    int-to-float v5, v6

    mul-float v5, v5, p10

    add-float v5, v5, v21

    float-to-int v5, v5

    .restart local v5    # "h":I
    goto :goto_19

    .line 263
    .end local v5    # "h":I
    :cond_2d
    move v5, v6

    .line 267
    .restart local v5    # "h":I
    :goto_19
    if-eqz v1, :cond_2e

    .line 268
    iget v11, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v11

    mul-float v11, v11, p10

    .line 269
    .local v11, "x":F
    move/from16 v37, v1

    .end local v1    # "hasCompatScale":Z
    .local v37, "hasCompatScale":Z
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    mul-float v1, v1, p10

    .local v1, "y":F
    goto :goto_1a

    .line 271
    .end local v11    # "x":F
    .end local v37    # "hasCompatScale":Z
    .local v1, "hasCompatScale":Z
    :cond_2e
    move/from16 v37, v1

    .end local v1    # "hasCompatScale":Z
    .restart local v37    # "hasCompatScale":Z
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v11, v1

    .line 272
    .restart local v11    # "x":F
    iget v1, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    .line 275
    .local v1, "y":F
    :goto_1a
    if-eqz v30, :cond_2f

    move/from16 v38, v6

    .end local v6    # "rh":I
    .local v38, "rh":I
    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int v6, v6, v20

    if-nez v6, :cond_30

    .line 279
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 280
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1b

    .line 275
    .end local v38    # "rh":I
    .restart local v6    # "rh":I
    :cond_2f
    move/from16 v38, v6

    .line 290
    .end local v6    # "rh":I
    .restart local v38    # "rh":I
    :cond_30
    :goto_1b
    if-eqz v30, :cond_32

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v39, v12

    const/4 v12, 0x1

    .end local v12    # "type":I
    .local v39, "type":I
    if-eq v6, v12, :cond_31

    if-nez v8, :cond_31

    goto :goto_1c

    :cond_31
    move/from16 v12, v18

    goto :goto_1c

    .end local v39    # "type":I
    .restart local v12    # "type":I
    :cond_32
    move/from16 v39, v12

    const/4 v12, 0x1

    .end local v12    # "type":I
    .restart local v39    # "type":I
    :goto_1c
    move v6, v12

    .line 294
    .local v6, "fitToDisplay":Z
    iget v12, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v40, v8

    .end local v8    # "noLimits":Z
    .local v40, "noLimits":Z
    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v41, v13

    .end local v13    # "fl":I
    .local v41, "fl":I
    int-to-float v13, v2

    mul-float/2addr v8, v13

    add-float/2addr v8, v11

    float-to-int v8, v8

    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v42, v2

    .end local v2    # "pw":I
    .local v42, "pw":I
    int-to-float v2, v3

    mul-float/2addr v13, v2

    add-float/2addr v13, v1

    float-to-int v2, v13

    move/from16 v17, v12

    move/from16 v18, v10

    move/from16 v19, v5

    move-object/from16 v20, v33

    move/from16 v21, v8

    move/from16 v22, v2

    move-object/from16 v23, v32

    invoke-static/range {v17 .. v23}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 299
    if-eqz v6, :cond_33

    .line 300
    iget v2, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v12, v32

    move-object/from16 v8, v34

    .end local v32    # "outFrame":Landroid/graphics/Rect;
    .end local v34    # "outDisplayFrame":Landroid/graphics/Rect;
    .local v8, "outDisplayFrame":Landroid/graphics/Rect;
    .local v12, "outFrame":Landroid/graphics/Rect;
    invoke-static {v2, v8, v12}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_1d

    .line 299
    .end local v8    # "outDisplayFrame":Landroid/graphics/Rect;
    .end local v12    # "outFrame":Landroid/graphics/Rect;
    .restart local v32    # "outFrame":Landroid/graphics/Rect;
    .restart local v34    # "outDisplayFrame":Landroid/graphics/Rect;
    :cond_33
    move-object/from16 v12, v32

    move-object/from16 v8, v34

    .line 303
    .end local v32    # "outFrame":Landroid/graphics/Rect;
    .end local v34    # "outDisplayFrame":Landroid/graphics/Rect;
    .restart local v8    # "outDisplayFrame":Landroid/graphics/Rect;
    .restart local v12    # "outFrame":Landroid/graphics/Rect;
    :goto_1d
    if-eqz v4, :cond_34

    invoke-virtual {v9, v12}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 304
    iget-object v2, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 307
    const/high16 v2, 0x11000000

    .line 308
    .local v2, "clipFlags":I
    iget v13, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v17, -0x11000001

    and-int v13, v13, v17

    move/from16 v17, v1

    .end local v1    # "y":F
    .local v17, "y":F
    iget-object v1, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v13, v9, v1}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 311
    iget-object v1, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 312
    iget-object v1, v0, Landroid/view/WindowLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1e

    .line 303
    .end local v2    # "clipFlags":I
    .end local v17    # "y":F
    .restart local v1    # "y":F
    :cond_34
    move/from16 v17, v1

    .line 330
    .end local v1    # "y":F
    .restart local v17    # "y":F
    :cond_35
    :goto_1e
    return-void
.end method
