.class Landroid/view/RoundScrollbarRenderer;
.super Ljava/lang/Object;
.source "RoundScrollbarRenderer.java"


# static fields
.field private static final greylist-max-o DEFAULT_THUMB_COLOR:I = -0x171513

.field private static final greylist-max-o DEFAULT_TRACK_COLOR:I = 0x4cffffff

.field private static final greylist-max-o MAX_SCROLLBAR_ANGLE_SWIPE:I = 0x10

.field private static final greylist-max-o MIN_SCROLLBAR_ANGLE_SWIPE:I = 0x6

.field private static final greylist-max-o SCROLLBAR_ANGLE_RANGE:I = 0x5a

.field private static final greylist-max-o WIDTH_PERCENTAGE:F = 0.02f


# instance fields
.field private final blacklist mMaskThickness:I

.field private final greylist-max-o mParent:Landroid/view/View;

.field private final greylist-max-o mRect:Landroid/graphics/RectF;

.field private final greylist-max-o mThumbPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mTrackPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    .line 39
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    .line 46
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 47
    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 53
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    iput-object p1, p0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/view/RoundScrollbarRenderer;->mMaskThickness:I

    .line 62
    return-void
.end method

.method private static greylist-max-o applyAlpha(IF)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "alpha"    # F

    .line 115
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 116
    .local v0, "alphaByte":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    return v1
.end method

.method private static greylist-max-o clamp(FFF)F
    .locals 1
    .param p0, "val"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .line 105
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .line 106
    return p1

    .line 107
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    .line 108
    return p2

    .line 110
    :cond_1
    return p0
.end method

.method private greylist-max-o setThumbColor(I)V
    .locals 1
    .param p1, "thumbColor"    # I

    .line 120
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 121
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    :cond_0
    return-void
.end method

.method private greylist-max-o setTrackColor(I)V
    .locals 1
    .param p1, "trackColor"    # I

    .line 126
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 127
    iget-object v0, p0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist-max-o drawRoundScrollbars(Landroid/graphics/Canvas;FLandroid/graphics/Rect;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alpha"    # F
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 65
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-nez v4, :cond_0

    .line 66
    return-void

    .line 69
    :cond_0
    iget-object v4, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v4

    int-to-float v4, v4

    .line 70
    .local v4, "maxScroll":F
    iget-object v5, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v5

    int-to-float v5, v5

    .line 71
    .local v5, "scrollExtent":F
    cmpg-float v3, v5, v3

    if-lez v3, :cond_2

    cmpg-float v3, v4, v5

    if-gtz v3, :cond_1

    goto/16 :goto_0

    .line 74
    :cond_1
    const/4 v3, 0x0

    iget-object v6, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->computeVerticalScrollOffset()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    .line 75
    .local v3, "currentScroll":F
    iget-object v6, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->computeVerticalScrollExtent()I

    move-result v6

    int-to-float v6, v6

    .line 76
    .local v6, "linearThumbLength":F
    iget-object v7, v0, Landroid/view/RoundScrollbarRenderer;->mParent:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v8

    .line 77
    .local v7, "thumbWidth":F
    iget-object v8, v0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget-object v8, v0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    const v8, -0x171513

    invoke-static {v8, v1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result v8

    invoke-direct {v0, v8}, Landroid/view/RoundScrollbarRenderer;->setThumbColor(I)V

    .line 81
    const v8, 0x4cffffff    # 1.3421772E8f

    invoke-static {v8, v1}, Landroid/view/RoundScrollbarRenderer;->applyAlpha(IF)I

    move-result v8

    invoke-direct {v0, v8}, Landroid/view/RoundScrollbarRenderer;->setTrackColor(I)V

    .line 84
    div-float v8, v6, v4

    const/high16 v9, 0x42b40000    # 90.0f

    mul-float/2addr v8, v9

    .line 85
    .local v8, "sweepAngle":F
    const/high16 v10, 0x40c00000    # 6.0f

    const/high16 v11, 0x41800000    # 16.0f

    invoke-static {v8, v10, v11}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result v8

    .line 87
    sub-float/2addr v9, v8

    mul-float/2addr v9, v3

    sub-float v10, v4, v6

    div-float/2addr v9, v10

    const/high16 v10, 0x42340000    # 45.0f

    sub-float/2addr v9, v10

    .line 89
    .local v9, "startAngle":F
    const/high16 v11, -0x3dcc0000    # -45.0f

    sub-float/2addr v10, v8

    invoke-static {v9, v11, v10}, Landroid/view/RoundScrollbarRenderer;->clamp(FFF)F

    move-result v9

    .line 93
    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v7, v10

    iget v11, v0, Landroid/view/RoundScrollbarRenderer;->mMaskThickness:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 94
    .local v10, "inset":F
    iget-object v11, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float/2addr v12, v10

    iget v13, v2, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    add-float/2addr v13, v10

    iget v14, v2, Landroid/graphics/Rect;->right:I

    int-to-float v14, v14

    sub-float/2addr v14, v10

    iget v15, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v15, v15

    sub-float/2addr v15, v10

    invoke-virtual {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;->set(FFFF)V

    .line 99
    iget-object v11, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/high16 v18, -0x3dcc0000    # -45.0f

    const/high16 v19, 0x42b40000    # 90.0f

    const/16 v20, 0x0

    iget-object v12, v0, Landroid/view/RoundScrollbarRenderer;->mTrackPaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move-object/from16 v17, v11

    move-object/from16 v21, v12

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 101
    iget-object v13, v0, Landroid/view/RoundScrollbarRenderer;->mRect:Landroid/graphics/RectF;

    const/16 v16, 0x0

    iget-object v11, v0, Landroid/view/RoundScrollbarRenderer;->mThumbPaint:Landroid/graphics/Paint;

    move-object/from16 v12, p1

    move v14, v9

    move v15, v8

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 102
    return-void

    .line 72
    .end local v3    # "currentScroll":F
    .end local v6    # "linearThumbLength":F
    .end local v7    # "thumbWidth":F
    .end local v8    # "sweepAngle":F
    .end local v9    # "startAngle":F
    .end local v10    # "inset":F
    :cond_2
    :goto_0
    return-void
.end method
