.class public Lcom/android/internal/view/TooltipPopup;
.super Ljava/lang/Object;
.source "TooltipPopup.java"


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "TooltipPopup"


# instance fields
.field private final greylist-max-o mContentView:Landroid/view/View;

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private final greylist-max-o mMessageView:Landroid/widget/TextView;

.field private final greylist-max-o mTmpAnchorPos:[I

.field private final greylist-max-o mTmpAppPos:[I

.field private final greylist-max-o mTmpDisplayFrame:Landroid/graphics/Rect;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 39
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    .line 40
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    .line 41
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    .line 44
    iput-object p1, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090143

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    .line 48
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    .line 51
    nop

    .line 52
    const v1, 0x104091d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 54
    const/16 v1, 0x3ed

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 55
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 58
    const v1, 0x103030a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 59
    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    return-void
.end method

.method private greylist-max-o computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V
    .locals 15
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "outParams"    # Landroid/view/WindowManager$LayoutParams;

    .line 96
    move-object v0, p0

    move-object/from16 v1, p5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 98
    iget-object v2, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10502d4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 102
    .local v2, "tooltipPreciseAnchorThreshold":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lt v3, v2, :cond_0

    .line 104
    move/from16 v3, p2

    .local v3, "offsetX":I
    goto :goto_0

    .line 107
    .end local v3    # "offsetX":I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 112
    .restart local v3    # "offsetX":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-lt v4, v2, :cond_1

    .line 114
    iget-object v4, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 116
    .local v4, "offsetExtra":I
    add-int v5, p3, v4

    .line 117
    .local v5, "offsetBelow":I
    sub-int v4, p3, v4

    .line 118
    .local v4, "offsetAbove":I
    goto :goto_1

    .line 120
    .end local v4    # "offsetAbove":I
    .end local v5    # "offsetBelow":I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 121
    .restart local v5    # "offsetBelow":I
    const/4 v4, 0x0

    .line 124
    .restart local v4    # "offsetAbove":I
    :goto_1
    const/16 v6, 0x31

    iput v6, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 126
    iget-object v6, v0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 127
    if-eqz p4, :cond_2

    const v7, 0x10502d7

    goto :goto_2

    .line 128
    :cond_2
    const v7, 0x10502d6

    .line 126
    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v6

    .line 131
    .local v6, "tooltipOffset":I
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v7

    .line 132
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v8

    .line 131
    invoke-virtual {v7, v8}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v7

    .line 133
    .local v7, "appView":Landroid/view/View;
    if-nez v7, :cond_3

    .line 134
    const-string v8, "TooltipPopup"

    const-string v9, "Cannot find app view"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 137
    :cond_3
    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 138
    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    invoke-virtual {v7, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 140
    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    move-object/from16 v9, p1

    invoke-virtual {v9, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 141
    iget-object v8, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    const/4 v10, 0x0

    aget v11, v8, v10

    iget-object v12, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAppPos:[I

    aget v13, v12, v10

    sub-int/2addr v11, v13

    aput v11, v8, v10

    .line 142
    const/4 v13, 0x1

    aget v14, v8, v13

    aget v12, v12, v13

    sub-int/2addr v14, v12

    aput v14, v8, v13

    .line 145
    add-int/2addr v11, v3

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v11, v8

    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 147
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 148
    .local v8, "spec":I
    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v10, v8, v8}, Landroid/view/View;->measure(II)V

    .line 149
    iget-object v10, v0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 151
    .local v10, "tooltipHeight":I
    iget-object v11, v0, Lcom/android/internal/view/TooltipPopup;->mTmpAnchorPos:[I

    aget v11, v11, v13

    add-int v12, v11, v4

    sub-int/2addr v12, v6

    sub-int/2addr v12, v10

    .line 152
    .local v12, "yAbove":I
    add-int/2addr v11, v5

    add-int/2addr v11, v6

    .line 153
    .local v11, "yBelow":I
    if-eqz p4, :cond_5

    .line 154
    if-ltz v12, :cond_4

    .line 155
    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 157
    :cond_4
    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 163
    :cond_5
    add-int v13, v11, v10

    iget-object v14, v0, Lcom/android/internal/view/TooltipPopup;->mTmpDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    if-gt v13, v14, :cond_6

    .line 164
    iput v11, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 166
    :cond_6
    iput v12, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 169
    :goto_3
    return-void
.end method


# virtual methods
.method public greylist-max-o getContentView()Landroid/view/View;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public greylist-max-o hide()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 83
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 84
    return-void
.end method

.method public greylist-max-o isShowing()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o show(Landroid/view/View;IIZLjava/lang/CharSequence;)V
    .locals 7
    .param p1, "anchorView"    # Landroid/view/View;
    .param p2, "anchorX"    # I
    .param p3, "anchorY"    # I
    .param p4, "fromTouch"    # Z
    .param p5, "tooltipText"    # Ljava/lang/CharSequence;

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/internal/view/TooltipPopup;->hide()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/view/TooltipPopup;->computePosition(Landroid/view/View;IIZLandroid/view/WindowManager$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/android/internal/view/TooltipPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 74
    .local v0, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/internal/view/TooltipPopup;->mContentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/view/TooltipPopup;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method
