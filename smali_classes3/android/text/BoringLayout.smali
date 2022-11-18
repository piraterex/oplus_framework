.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field greylist-max-o mBottom:I

.field private greylist-max-o mBottomPadding:I

.field greylist-max-o mDesc:I

.field private greylist-max-o mDirect:Ljava/lang/String;

.field private greylist-max-o mEllipsizedCount:I

.field private greylist-max-o mEllipsizedStart:I

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mMax:F

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mTopPadding:I

.field private blacklist mUseFallbackLineSpacing:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z

    .line 253
    move-object v8, p0

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 255
    move v9, p3

    iput v9, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 256
    const/4 v0, 0x0

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 257
    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 258
    iput-boolean v0, v8, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 260
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 261
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .line 284
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    .line 286
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I
    .param p11, "useFallbackLineSpacing"    # Z

    .line 321
    move-object v8, p0

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 325
    if-eqz v9, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v0, :cond_0

    goto :goto_0

    .line 331
    :cond_0
    int-to-float v2, v10

    const/4 v4, 0x1

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p9

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 334
    iput v10, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 335
    const/4 v0, 0x0

    move/from16 v11, p3

    move v12, v0

    .local v0, "trust":Z
    goto :goto_1

    .line 326
    .end local v0    # "trust":Z
    :cond_1
    :goto_0
    move/from16 v11, p3

    iput v11, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 327
    const/4 v0, 0x0

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 328
    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 329
    const/4 v0, 0x1

    move v12, v0

    .line 338
    .local v12, "trust":Z
    :goto_1
    move/from16 v13, p11

    iput-boolean v13, v8, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 339
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    move v6, v12

    move/from16 v7, p11

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 340
    return-void
.end method

.method private static greylist-max-o hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z
    .locals 8
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "textLength"    # I

    .line 419
    const/16 v0, 0x1f4

    .line 420
    .local v0, "MAX_BUF_LEN":I
    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 422
    .local v1, "buffer":[C
    const/4 v2, 0x0

    .local v2, "start":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, p1, :cond_3

    .line 423
    add-int/lit16 v4, v2, 0x1f4

    :try_start_0
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 427
    .local v4, "end":I
    invoke-static {p0, v2, v4, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 429
    sub-int v3, v4, v2

    .line 430
    .local v3, "len":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 431
    aget-char v6, v1, v5

    .line 432
    .local v6, "c":C
    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    const/16 v7, 0x9

    if-eq v6, v7, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_2

    .line 430
    .end local v6    # "c":C
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 433
    .restart local v6    # "c":C
    :cond_1
    :goto_2
    nop

    .line 439
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 433
    const/4 v7, 0x1

    return v7

    .line 422
    .end local v3    # "len":I
    .end local v4    # "end":I
    .end local v5    # "i":I
    .end local v6    # "c":C
    :cond_2
    add-int/lit16 v2, v2, 0x1f4

    goto :goto_0

    .line 439
    .end local v2    # "start":I
    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 440
    throw v2

    .line 437
    :cond_3
    nop

    .line 439
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    .line 437
    return v3
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 396
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 411
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static greylist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 452
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 16
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "useFallbackLineSpacing"    # Z
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;

    .line 473
    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 474
    .local v14, "textLength":I
    invoke-static {v12, v14}, Landroid/text/BoringLayout;->hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 475
    return-object v1

    .line 477
    :cond_0
    const/4 v0, 0x0

    if-eqz v13, :cond_1

    invoke-interface {v13, v12, v0, v14}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    return-object v1

    .line 480
    :cond_1
    instance-of v2, v12, Landroid/text/Spanned;

    if-eqz v2, :cond_2

    .line 481
    move-object v2, v12

    check-cast v2, Landroid/text/Spanned;

    .line 482
    .local v2, "sp":Landroid/text/Spanned;
    const-class v3, Landroid/text/style/ParagraphStyle;

    invoke-interface {v2, v0, v14, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 483
    .local v0, "styles":[Ljava/lang/Object;
    array-length v3, v0

    if-lez v3, :cond_2

    .line 484
    return-object v1

    .line 488
    .end local v0    # "styles":[Ljava/lang/Object;
    .end local v2    # "sp":Landroid/text/Spanned;
    :cond_2
    move-object/from16 v0, p4

    .line 489
    .local v0, "fm":Landroid/text/BoringLayout$Metrics;
    if-nez v0, :cond_3

    .line 490
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    move-object v0, v1

    move-object v15, v0

    goto :goto_0

    .line 492
    :cond_3
    invoke-static {v0}, Landroid/text/BoringLayout$Metrics;->-$$Nest$mreset(Landroid/text/BoringLayout$Metrics;)V

    move-object v15, v0

    .line 495
    .end local v0    # "fm":Landroid/text/BoringLayout$Metrics;
    .local v15, "fm":Landroid/text/BoringLayout$Metrics;
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    .line 496
    .local v11, "line":Landroid/text/TextLine;
    const/4 v3, 0x0

    const/4 v5, 0x1

    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v4, v14

    move-object v12, v11

    .end local v11    # "line":Landroid/text/TextLine;
    .local v12, "line":Landroid/text/TextLine;
    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 501
    invoke-virtual {v12, v15}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v15, Landroid/text/BoringLayout$Metrics;->width:I

    .line 502
    invoke-static {v12}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 504
    return-object v15
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingMult"    # F
    .param p5, "spacingAdd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includePad"    # Z

    .line 60
    new-instance v9, Landroid/text/BoringLayout;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v9
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 12
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "spacingmult"    # F
    .param p5, "spacingadd"    # F
    .param p6, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p7, "includePad"    # Z
    .param p8, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p9, "ellipsizedWidth"    # I

    .line 86
    new-instance v11, Landroid/text/BoringLayout;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v11
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .locals 13
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "outerWidth"    # I
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "includePad"    # Z
    .param p6, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "ellipsizedWidth"    # I
    .param p8, "useFallbackLineSpacing"    # Z

    .line 121
    new-instance v12, Landroid/text/BoringLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    return-object v12
.end method


# virtual methods
.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightpaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffset"    # I

    .line 597
    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 598
    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 600
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 602
    :goto_0
    return-void
.end method

.method public whitelist ellipsized(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 608
    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 609
    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 610
    return-void
.end method

.method public whitelist getBottomPadding()I
    .locals 1

    .line 570
    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 1
    .param p1, "line"    # I

    .line 575
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 1
    .param p1, "line"    # I

    .line 580
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    .line 585
    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 509
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .locals 1
    .param p1, "line"    # I

    .line 545
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineCount()I
    .locals 1

    .line 514
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .locals 1
    .param p1, "line"    # I

    .line 527
    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .line 560
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public whitelist getLineMax(I)F
    .locals 1
    .param p1, "line"    # I

    .line 550
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public whitelist getLineStart(I)I
    .locals 1
    .param p1, "line"    # I

    .line 532
    if-nez p1, :cond_0

    .line 533
    const/4 v0, 0x0

    return v0

    .line 535
    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    .line 519
    if-nez p1, :cond_0

    .line 520
    const/4 v0, 0x0

    return v0

    .line 522
    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .locals 1
    .param p1, "line"    # I

    .line 555
    if-nez p1, :cond_0

    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 1
    .param p1, "line"    # I

    .line 540
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getTopPadding()I
    .locals 1

    .line 565
    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method blacklist init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V
    .locals 20
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "align"    # Landroid/text/Layout$Alignment;
    .param p4, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p5, "includePad"    # Z
    .param p6, "trustWidth"    # Z
    .param p7, "useFallbackLineSpacing"    # Z

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v14, p1

    instance-of v2, v14, Ljava/lang/String;

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v13, p3

    if-ne v13, v2, :cond_1

    .line 348
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    .line 347
    :cond_0
    move-object/from16 v13, p3

    .line 350
    :cond_1
    iput-object v15, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    .line 353
    :goto_0
    move-object/from16 v12, p2

    iput-object v12, v0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    .line 355
    if-eqz p5, :cond_2

    .line 356
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int/2addr v2, v3

    .line 357
    .local v2, "spacing":I
    iget v3, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iput v3, v0, Landroid/text/BoringLayout;->mDesc:I

    move v11, v2

    goto :goto_1

    .line 359
    .end local v2    # "spacing":I
    :cond_2
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v3

    .line 360
    .restart local v2    # "spacing":I
    iget v3, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iput v3, v0, Landroid/text/BoringLayout;->mDesc:I

    move v11, v2

    .line 363
    .end local v2    # "spacing":I
    .local v11, "spacing":I
    :goto_1
    iput v11, v0, Landroid/text/BoringLayout;->mBottom:I

    .line 365
    if-eqz p6, :cond_3

    .line 366
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v2, v2

    iput v2, v0, Landroid/text/BoringLayout;->mMax:F

    move/from16 v16, v11

    goto :goto_2

    .line 373
    :cond_3
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    .line 374
    .local v10, "line":Landroid/text/TextLine;
    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x1

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v9, 0x0

    const/16 v16, 0x0

    iget v4, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v2, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    add-int v17, v4, v2

    move-object v2, v10

    move-object/from16 v3, p2

    move/from16 v18, v4

    move-object/from16 v4, p1

    move-object/from16 v19, v10

    .end local v10    # "line":Landroid/text/TextLine;
    .local v19, "line":Landroid/text/TextLine;
    move-object/from16 v10, v16

    move/from16 v16, v11

    .end local v11    # "spacing":I
    .local v16, "spacing":I
    move/from16 v11, v18

    move/from16 v12, v17

    move/from16 v13, p7

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 377
    move-object/from16 v2, v19

    .end local v19    # "line":Landroid/text/TextLine;
    .local v2, "line":Landroid/text/TextLine;
    invoke-virtual {v2, v15}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-float v3, v3

    iput v3, v0, Landroid/text/BoringLayout;->mMax:F

    .line 378
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 381
    .end local v2    # "line":Landroid/text/TextLine;
    :goto_2
    if-eqz p5, :cond_4

    .line 382
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->top:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mTopPadding:I

    .line 383
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mBottomPadding:I

    .line 385
    :cond_4
    return-void
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    return v0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerwidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z

    .line 144
    move-object v8, p0

    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 146
    move v9, p3

    iput v9, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 147
    const/4 v0, 0x0

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 148
    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 149
    iput-boolean v0, v8, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 151
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 152
    return-object v8
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F
    .param p7, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p8, "includePad"    # Z
    .param p9, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p10, "ellipsizedWidth"    # I

    .line 235
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;

    move-result-object v0

    return-object v0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "outerWidth"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "metrics"    # Landroid/text/BoringLayout$Metrics;
    .param p6, "includePad"    # Z
    .param p7, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p8, "ellipsizedWidth"    # I
    .param p9, "useFallbackLineSpacing"    # Z

    .line 189
    move-object v8, p0

    move-object/from16 v9, p7

    move/from16 v10, p8

    if-eqz v9, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    int-to-float v2, v10

    const/4 v4, 0x1

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p7

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 200
    iput v10, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 201
    const/4 v0, 0x0

    move/from16 v11, p3

    move v12, v0

    .local v0, "trust":Z
    goto :goto_1

    .line 190
    .end local v0    # "trust":Z
    :cond_1
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 192
    move/from16 v11, p3

    iput v11, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    .line 193
    const/4 v0, 0x0

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedStart:I

    .line 194
    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedCount:I

    .line 195
    const/4 v0, 0x1

    move v12, v0

    .line 204
    .local v12, "trust":Z
    :goto_1
    move/from16 v13, p9

    iput-boolean v13, v8, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    .line 206
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move v6, v12

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    .line 208
    return-object v8
.end method
