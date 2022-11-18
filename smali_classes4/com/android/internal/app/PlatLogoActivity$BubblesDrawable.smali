.class Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/PlatLogoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BubblesDrawable"
.end annotation


# static fields
.field private static final blacklist MAX_BUBBS:I = 0x7d0


# instance fields
.field public blacklist avoid:F

.field private final blacklist mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

.field private final blacklist mColorIds:[I

.field private blacklist mColors:[I

.field private blacklist mEmojiSet:I

.field private blacklist mNumBubbs:I

.field private final blacklist mPaint:Landroid/graphics/Paint;

.field public blacklist minR:F

.field public blacklist padding:F

.field final synthetic blacklist this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/app/PlatLogoActivity;

    .line 364
    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 341
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColorIds:[I

    .line 351
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColors:[I

    .line 353
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mEmojiSet:I

    .line 355
    const/16 v0, 0x7d0

    new-array v0, v0, [Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    .line 358
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    .line 360
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->avoid:F

    .line 361
    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->padding:F

    .line 362
    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->minR:F

    .line 365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColorIds:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColors:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Lcom/android/internal/app/PlatLogoActivity;->getColor(I)I

    move-result v1

    aput v1, v2, v0

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 369
    new-instance v2, Lcom/android/internal/app/PlatLogoActivity$Bubble;

    invoke-direct {v2}, Lcom/android/internal/app/PlatLogoActivity$Bubble;-><init>()V

    aput-object v2, v1, v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 371
    .end local v0    # "j":I
    :cond_1
    return-void

    :array_0
    .array-data 4
        0x1060057
        0x1060058
        0x1060059
        0x106004a
        0x106004b
        0x106004c
    .end array-data
.end method

.method private blacklist randomize()V
    .locals 17

    .line 416
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 417
    .local v1, "w":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 418
    .local v2, "h":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    .line 419
    .local v3, "maxR":F
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    .line 420
    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->avoid:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    const/4 v6, 0x1

    if-lez v5, :cond_0

    .line 421
    iget-object v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v5, v5, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v8, v1, v7

    iput v8, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    .line 422
    iget-object v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v8, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v5, v5, v8

    div-float v7, v2, v7

    iput v7, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    .line 423
    iget-object v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v5, v5, v7

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->avoid:F

    iput v7, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    .line 424
    iget-object v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v5, v5, v7

    iput v4, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->color:I

    .line 425
    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    .line 427
    :cond_0
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    const/16 v7, 0x7d0

    if-ge v5, v7, :cond_5

    .line 432
    const/4 v7, 0x5

    .line 433
    .local v7, "tries":I
    :goto_1
    add-int/lit8 v8, v7, -0x1

    .end local v7    # "tries":I
    .local v8, "tries":I
    if-lez v7, :cond_4

    .line 434
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v7, v9

    mul-float/2addr v7, v1

    .line 435
    .local v7, "x":F
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    double-to-float v9, v9

    mul-float/2addr v9, v2

    .line 436
    .local v9, "y":F
    sub-float v10, v1, v7

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    sub-float v11, v2, v9

    invoke-static {v9, v11}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 439
    .local v10, "r":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    iget v12, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    if-ge v11, v12, :cond_2

    .line 440
    float-to-double v12, v10

    iget-object v14, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v14, v14, v11

    iget v14, v14, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    sub-float v14, v7, v14

    float-to-double v14, v14

    iget-object v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v11

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    sub-float v4, v9, v4

    move/from16 v16, v7

    .end local v7    # "x":F
    .local v16, "x":F
    float-to-double v6, v4

    .line 441
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    iget-object v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v11

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    float-to-double v14, v4

    sub-double/2addr v6, v14

    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->padding:F

    float-to-double v14, v4

    sub-double/2addr v6, v14

    .line 440
    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-float v10, v6

    .line 443
    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->minR:F

    cmpg-float v4, v10, v4

    if-gez v4, :cond_1

    goto :goto_3

    .line 439
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v16

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_2

    .end local v16    # "x":F
    .restart local v7    # "x":F
    :cond_2
    move/from16 v16, v7

    .line 446
    .end local v7    # "x":F
    .end local v11    # "i":I
    .restart local v16    # "x":F
    :goto_3
    iget v4, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->minR:F

    cmpl-float v4, v10, v4

    if-ltz v4, :cond_3

    .line 448
    invoke-static {v3, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 450
    .end local v10    # "r":F
    .local v4, "r":F
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v7, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v6, v6, v7

    move/from16 v7, v16

    .end local v16    # "x":F
    .restart local v7    # "x":F
    iput v7, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    .line 451
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v6, v6, v10

    iput v9, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    .line 452
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v6, v6, v10

    iput v4, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    .line 453
    iget-object v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    iget v10, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    aget-object v6, v6, v10

    iget-object v10, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColors:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    iget-object v13, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mColors:[I

    array-length v13, v13

    int-to-double v13, v13

    mul-double/2addr v11, v13

    double-to-int v11, v11

    aget v10, v10, v11

    iput v10, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->color:I

    .line 454
    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    const/4 v10, 0x1

    add-int/2addr v6, v10

    iput v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    .line 455
    goto :goto_4

    .line 446
    .end local v4    # "r":F
    .end local v7    # "x":F
    .restart local v10    # "r":F
    .restart local v16    # "x":F
    :cond_3
    move/from16 v7, v16

    .line 457
    .end local v9    # "y":F
    .end local v10    # "r":F
    .end local v16    # "x":F
    move v7, v8

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_1

    .line 427
    .end local v8    # "tries":I
    :cond_4
    :goto_4
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 459
    .end local v5    # "j":I
    :cond_5
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    .line 460
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/high16 v5, 0x42c80000    # 100.0f

    iget v6, v0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    const/high16 v5, 0x44fa0000    # 2000.0f

    div-float/2addr v6, v5

    float-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 459
    const-string/jumbo v5, "successfully placed %d bubbles (%d%%)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "PlatLogoActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    return-void
.end method


# virtual methods
.method public blacklist chooseEmojiSet()V
    .locals 7

    .line 395
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-static {}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$sfgetEMOJI_SETS()[[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mEmojiSet:I

    .line 396
    invoke-static {}, Lcom/android/internal/app/PlatLogoActivity;->-$$Nest$sfgetEMOJI_SETS()[[Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mEmojiSet:I

    aget-object v0, v0, v1

    .line 397
    .local v0, "emojiSet":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 398
    aget-object v2, v2, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    array-length v5, v0

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v3, v3

    aget-object v3, v0, v3

    iput-object v3, v2, Lcom/android/internal/app/PlatLogoActivity$Bubble;->text:Ljava/lang/String;

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v1    # "j":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->invalidateSelf()V

    .line 401
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getLevel()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getLevel()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x461c4000    # 10000.0f

    div-float/2addr v0, v1

    .line 377
    .local v0, "f":F
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v1, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 379
    const/4 v1, 0x0

    .line 380
    .local v1, "drawn":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    iget v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mNumBubbs:I

    if-ge v2, v3, :cond_4

    .line 381
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->color:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    goto :goto_2

    .line 382
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->text:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 383
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    const/high16 v5, 0x3fe00000    # 1.75f

    mul-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 384
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget-object v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v6, v6, v2

    iget v6, v6, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    mul-float/2addr v6, v0

    const v7, 0x3f19999a    # 0.6f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 387
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->color:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v3, v3, v2

    iget v3, v3, Lcom/android/internal/app/PlatLogoActivity$Bubble;->x:F

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v4, v4, v2

    iget v4, v4, Lcom/android/internal/app/PlatLogoActivity$Bubble;->y:F

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mBubbs:[Lcom/android/internal/app/PlatLogoActivity$Bubble;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/android/internal/app/PlatLogoActivity$Bubble;->r:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 390
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 380
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    .end local v2    # "j":I
    :cond_4
    return-void
.end method

.method public whitelist getOpacity()I
    .locals 1

    .line 471
    const/4 v0, -0x3

    return v0
.end method

.method protected whitelist onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 411
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 412
    invoke-direct {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->randomize()V

    .line 413
    return-void
.end method

.method protected whitelist onLevelChange(I)Z
    .locals 1
    .param p1, "level"    # I

    .line 405
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->invalidateSelf()V

    .line 406
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 476
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->getLevel()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity$BubblesDrawable;->chooseEmojiSet()V

    .line 478
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .line 464
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .line 467
    return-void
.end method
