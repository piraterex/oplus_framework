.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# static fields
.field private static final greylist-max-o OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private greylist-max-o mCachedPaint:Landroid/text/TextPaint;

.field private greylist-max-o mCopiedBuffer:[C

.field private greylist-max-o mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private greylist-max-o mLtrWithoutBidi:Z

.field private blacklist mMeasuredText:Landroid/graphics/text/MeasuredText;

.field private greylist-max-o mParaDir:I

.field private greylist-max-o mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mTextLength:I

.field private greylist-max-o mTextStart:I

.field private greylist-max-o mWholeWidth:F

.field private greylist-max-o mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    .line 65
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    .line 115
    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 119
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    .line 123
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    .line 129
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    .line 63
    return-void
.end method

.method private blacklist applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V
    .locals 13
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p3, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .param p6, "builder"    # Landroid/graphics/text/MeasuredText$Builder;

    .line 588
    move-object v6, p0

    move-object/from16 v7, p3

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v8, p1

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 590
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/TextPaint;->baselineShift:I

    .line 592
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v9, v1

    .line 594
    .local v9, "needFontMetrics":Z
    if-eqz v9, :cond_1

    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v0, :cond_1

    .line 595
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    .line 598
    :cond_1
    const/4 v0, 0x0

    .line 599
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    if-eqz v7, :cond_4

    .line 600
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v7

    if-ge v1, v2, :cond_3

    .line 601
    aget-object v2, v7, v1

    .line 602
    .local v2, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_2

    .line 604
    move-object v0, v2

    check-cast v0, Landroid/text/style/ReplacementSpan;

    goto :goto_1

    .line 607
    :cond_2
    iget-object v3, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 600
    .end local v2    # "span":Landroid/text/style/MetricAffectingSpan;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v10, v0

    goto :goto_2

    .line 599
    .end local v1    # "i":I
    :cond_4
    move-object v10, v0

    .line 612
    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v10, "replacement":Landroid/text/style/ReplacementSpan;
    :goto_2
    iget v0, v6, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v11, p4, v0

    .line 613
    .local v11, "startInCopiedBuffer":I
    sub-int v12, p5, v0

    .line 615
    .local v12, "endInCopiedBuffer":I
    if-eqz p6, :cond_5

    .line 616
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 619
    :cond_5
    if-eqz v10, :cond_6

    .line 620
    iget-object v4, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object v1, v10

    move v2, v11

    move v3, v12

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;)V

    goto :goto_3

    .line 623
    :cond_6
    iget-object v3, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move v1, v11

    move v2, v12

    move-object v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/text/MeasuredParagraph;->applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;)V

    .line 627
    :goto_3
    if-eqz v9, :cond_8

    .line 628
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    if-gez v0, :cond_7

    .line 629
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 630
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_4

    .line 632
    :cond_7
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 633
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, v6, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 636
    :goto_4
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 637
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 638
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 639
    iget-object v0, v6, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v6, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 641
    :cond_8
    return-void
.end method

.method private blacklist applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;)V
    .locals 6
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "builder"    # Landroid/graphics/text/MeasuredText$Builder;

    .line 526
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    .line 528
    .local v0, "width":F
    if-nez p5, :cond_1

    .line 530
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1, p2, v0}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    .line 531
    add-int/lit8 v1, p2, 0x1

    if-le p3, v1, :cond_0

    .line 532
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 534
    :cond_0
    iget v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr v1, v0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_0

    .line 536
    :cond_1
    sub-int v1, p3, p2

    invoke-virtual {p5, p4, v1, v0}, Landroid/graphics/text/MeasuredText$Builder;->appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;

    .line 538
    :goto_0
    return-void
.end method

.method private blacklist applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;)V
    .locals 21
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "config"    # Landroid/graphics/text/LineBreakConfig;
    .param p5, "builder"    # Landroid/graphics/text/MeasuredText$Builder;

    .line 546
    move-object/from16 v0, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    iget-boolean v1, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    .line 548
    if-nez v14, :cond_0

    .line 549
    iget v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v4, v11, v10

    sub-int v6, v11, v10

    const/4 v7, 0x0

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 551
    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v8

    .line 549
    move-object/from16 v1, p3

    move/from16 v3, p1

    move/from16 v5, p1

    move/from16 v9, p1

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float/2addr v15, v1

    iput v15, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto/16 :goto_4

    .line 553
    :cond_0
    sub-int v1, v11, v10

    invoke-virtual {v14, v12, v13, v1, v15}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    goto/16 :goto_4

    .line 557
    :cond_1
    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v10}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    .line 560
    .local v1, "level":B
    move/from16 v2, p1

    .local v2, "levelStart":I
    add-int/lit8 v3, v10, 0x1

    move v9, v1

    move/from16 v16, v2

    move v8, v3

    .line 561
    .end local v1    # "level":B
    .end local v2    # "levelStart":I
    .local v8, "levelEnd":I
    .local v9, "level":B
    .local v16, "levelStart":I
    :goto_0
    if-eq v8, v11, :cond_3

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1, v8}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v1

    if-eq v1, v9, :cond_2

    goto :goto_1

    :cond_2
    move v15, v8

    goto :goto_5

    .line 562
    :cond_3
    :goto_1
    and-int/lit8 v1, v9, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v15

    :goto_2
    move v7, v1

    .line 563
    .local v7, "isRtl":Z
    if-nez v14, :cond_5

    .line 564
    sub-int v17, v8, v16

    .line 565
    .local v17, "levelLength":I
    iget v6, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v2, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v1, v0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 567
    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v18

    .line 565
    move-object/from16 v1, p3

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v16

    move/from16 v19, v6

    move/from16 v6, v17

    move/from16 v20, v7

    .end local v7    # "isRtl":Z
    .local v20, "isRtl":Z
    move v15, v8

    .end local v8    # "levelEnd":I
    .local v15, "levelEnd":I
    move-object/from16 v8, v18

    move/from16 v18, v9

    .end local v9    # "level":B
    .local v18, "level":B
    move/from16 v9, v16

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v1

    add-float v6, v19, v1

    iput v6, v0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 568
    .end local v17    # "levelLength":I
    move/from16 v1, v20

    goto :goto_3

    .line 569
    .end local v15    # "levelEnd":I
    .end local v18    # "level":B
    .end local v20    # "isRtl":Z
    .restart local v7    # "isRtl":Z
    .restart local v8    # "levelEnd":I
    .restart local v9    # "level":B
    :cond_5
    move/from16 v20, v7

    move v15, v8

    move/from16 v18, v9

    .end local v7    # "isRtl":Z
    .end local v8    # "levelEnd":I
    .end local v9    # "level":B
    .restart local v15    # "levelEnd":I
    .restart local v18    # "level":B
    .restart local v20    # "isRtl":Z
    sub-int v8, v15, v16

    move/from16 v1, v20

    .end local v20    # "isRtl":Z
    .local v1, "isRtl":Z
    invoke-virtual {v14, v12, v13, v8, v1}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    .line 571
    :goto_3
    if-ne v15, v11, :cond_6

    .line 572
    nop

    .line 579
    .end local v1    # "isRtl":Z
    .end local v15    # "levelEnd":I
    .end local v16    # "levelStart":I
    .end local v18    # "level":B
    :goto_4
    return-void

    .line 574
    .restart local v1    # "isRtl":Z
    .restart local v15    # "levelEnd":I
    .restart local v16    # "levelStart":I
    .restart local v18    # "level":B
    :cond_6
    move v2, v15

    .line 575
    .end local v16    # "levelStart":I
    .restart local v2    # "levelStart":I
    iget-object v3, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v3

    move/from16 v16, v2

    move v9, v3

    .line 560
    .end local v1    # "isRtl":Z
    .end local v2    # "levelStart":I
    .end local v18    # "level":B
    .restart local v9    # "level":B
    .restart local v16    # "levelStart":I
    :goto_5
    add-int/lit8 v8, v15, 0x1

    const/4 v15, 0x0

    .end local v15    # "levelEnd":I
    .restart local v8    # "levelEnd":I
    goto :goto_0
.end method

.method public static greylist-max-o buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 1
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 327
    if-nez p4, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    .line 328
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 329
    return-object v0
.end method

.method public static greylist-max-o buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 16
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 353
    move/from16 v7, p3

    if-nez p5, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p5

    :goto_0
    move-object v15, v0

    .line 354
    .local v15, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    invoke-direct {v15, v14, v13, v7, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 356
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget v1, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 357
    iget v0, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_1

    .line 358
    return-object v15

    .line 361
    :cond_1
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_2

    .line 363
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    goto :goto_2

    .line 369
    :cond_2
    move/from16 v0, p2

    .local v0, "spanStart":I
    :goto_1
    if-ge v0, v7, :cond_3

    .line 370
    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v7, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 371
    .local v1, "spanEnd":I
    iget-object v2, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 373
    .local v2, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v3, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 374
    const/4 v10, 0x0

    const/4 v3, 0x0

    move-object v8, v15

    move-object/from16 v9, p0

    move-object v11, v2

    move v12, v0

    move v13, v1

    move-object v14, v3

    invoke-direct/range {v8 .. v14}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    .line 369
    .end local v2    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move v0, v1

    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    goto :goto_1

    .line 379
    .end local v0    # "spanStart":I
    .end local v1    # "spanEnd":I
    :cond_3
    :goto_2
    return-object v15
.end method

.method public static blacklist buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 17
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "hyphenationMode"    # I
    .param p7, "computeLayout"    # Z
    .param p8, "hint"    # Landroid/text/MeasuredParagraph;
    .param p9, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 412
    move/from16 v7, p4

    move-object/from16 v8, p8

    if-nez p9, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p9

    :goto_0
    move-object v15, v0

    .line 413
    .local v15, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    invoke-direct {v15, v14, v13, v7, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 415
    if-nez v8, :cond_1

    .line 416
    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>([C)V

    .line 417
    move/from16 v11, p6

    invoke-virtual {v0, v11}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    .line 418
    move/from16 v10, p7

    invoke-virtual {v0, v10}, Landroid/graphics/text/MeasuredText$Builder;->setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move-object/from16 v16, v0

    .local v0, "builder":Landroid/graphics/text/MeasuredText$Builder;
    goto :goto_1

    .line 420
    .end local v0    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    :cond_1
    move/from16 v11, p6

    move/from16 v10, p7

    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v8, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>(Landroid/graphics/text/MeasuredText;)V

    move-object/from16 v16, v0

    .line 422
    .local v16, "builder":Landroid/graphics/text/MeasuredText$Builder;
    :goto_1
    iget v0, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_2

    .line 425
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v15, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    move-object v3, v15

    goto/16 :goto_4

    .line 427
    :cond_2
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_3

    .line 429
    const/4 v3, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    .line 431
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0, v7}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    move-object v3, v15

    goto :goto_3

    .line 436
    :cond_3
    move/from16 v0, p3

    .local v0, "spanStart":I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 437
    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v7, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 439
    .local v1, "spanEnd":I
    iget-object v2, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 441
    .local v2, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v3, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v2, v3, v4}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    .line 444
    move-object v9, v15

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object v12, v2

    move v13, v0

    move v14, v1

    move-object v3, v15

    .end local v15    # "mt":Landroid/text/MeasuredParagraph;
    .local v3, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v15, v16

    invoke-direct/range {v9 .. v15}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/text/MeasuredText$Builder;)V

    .line 446
    iget-object v4, v3, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v4, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 436
    .end local v2    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move v0, v1

    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    move/from16 v11, p6

    move/from16 v10, p7

    move-object v15, v3

    goto :goto_2

    .end local v1    # "spanEnd":I
    .end local v3    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v15    # "mt":Landroid/text/MeasuredParagraph;
    :cond_4
    move-object v3, v15

    .line 449
    .end local v0    # "spanStart":I
    .end local v15    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v3    # "mt":Landroid/text/MeasuredParagraph;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v3, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 452
    :goto_4
    return-object v3
.end method

.method private static greylist-max-o obtain()Landroid/text/MeasuredParagraph;
    .locals 2

    .line 68
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    .line 69
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/text/MeasuredParagraph;

    invoke-direct {v1}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_0
    return-object v1
.end method

.method private greylist-max-o reset()V
    .locals 2

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 148
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 149
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 150
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 151
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 152
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 153
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 154
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 155
    return-void
.end method

.method private greylist-max-o resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 467
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 468
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 469
    iput p2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    .line 470
    sub-int v0, p3, p2

    iput v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 472
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v1, :cond_1

    array-length v1, v1

    if-eq v1, v0, :cond_2

    .line 473
    :cond_1
    new-array v0, v0, [C

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 475
    :cond_2
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 478
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-eqz v0, :cond_5

    .line 479
    const-class v2, Landroid/text/style/ReplacementSpan;

    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ReplacementSpan;

    .line 481
    .local v0, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 482
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v4, v0, v2

    invoke-interface {v3, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    sub-int/2addr v3, p2

    .line 483
    .local v3, "startInPara":I
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v5, v0, v2

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v4, p2

    .line 485
    .local v4, "endInPara":I
    if-gez v3, :cond_3

    const/4 v3, 0x0

    .line 486
    :cond_3
    iget v5, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v4, v5, :cond_4

    iget v4, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 487
    :cond_4
    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const v6, 0xfffc

    invoke-static {v5, v3, v4, v6}, Ljava/util/Arrays;->fill([CIIC)V

    .line 481
    .end local v3    # "startInPara":I
    .end local v4    # "endInPara":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 491
    .end local v0    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v2    # "i":I
    :cond_5
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    if-eq p4, v0, :cond_6

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq p4, v0, :cond_6

    sget-object v0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_7

    :cond_6
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 494
    invoke-static {v0, v1, v3}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 495
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 496
    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    .line 497
    iput-boolean v2, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    goto :goto_3

    .line 500
    :cond_7
    sget-object v0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_8

    .line 501
    const/4 v0, 0x1

    .local v0, "bidiRequest":I
    goto :goto_2

    .line 502
    .end local v0    # "bidiRequest":I
    :cond_8
    sget-object v0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_9

    .line 503
    const/4 v0, -0x1

    .restart local v0    # "bidiRequest":I
    goto :goto_2

    .line 504
    .end local v0    # "bidiRequest":I
    :cond_9
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_a

    .line 505
    const/4 v0, 0x2

    .restart local v0    # "bidiRequest":I
    goto :goto_2

    .line 506
    .end local v0    # "bidiRequest":I
    :cond_a
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne p4, v0, :cond_b

    .line 507
    const/4 v0, -0x2

    .restart local v0    # "bidiRequest":I
    goto :goto_2

    .line 509
    .end local v0    # "bidiRequest":I
    :cond_b
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {p4, v0, v1, v3}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v0

    .line 510
    .local v0, "isRtl":Z
    if-eqz v0, :cond_c

    const/4 v2, -0x1

    :cond_c
    move v0, v2

    .line 512
    .local v0, "bidiRequest":I
    :goto_2
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v2, v3}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    .line 513
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v3

    invoke-static {v0, v2, v3}, Landroid/text/AndroidBidi;->bidi(I[C[B)I

    move-result v2

    iput v2, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    .line 514
    iput-boolean v1, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 516
    .end local v0    # "bidiRequest":I
    :goto_3
    return-void
.end method


# virtual methods
.method greylist-max-o breakText(IZF)I
    .locals 6
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .line 652
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 653
    .local v0, "w":[F
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 654
    const/4 v3, 0x0

    .line 655
    .local v3, "i":I
    :goto_0
    if-ge v3, p1, :cond_1

    .line 656
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 657
    cmpg-float v4, p3, v2

    if-gez v4, :cond_0

    goto :goto_1

    .line 658
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 660
    :cond_1
    :goto_1
    if-lez v3, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, -0x1

    aget-char v2, v2, v4

    if-ne v2, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 661
    :cond_2
    return v3

    .line 663
    .end local v3    # "i":I
    :cond_3
    add-int/lit8 v3, p1, -0x1

    .line 664
    .restart local v3    # "i":I
    :goto_2
    if-ltz v3, :cond_5

    .line 665
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 666
    cmpg-float v4, p3, v2

    if-gez v4, :cond_4

    goto :goto_3

    .line 667
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 669
    :cond_5
    :goto_3
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-eq v4, v1, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_7

    .line 670
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 672
    :cond_7
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public greylist-max-o getBounds(IILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 286
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getBounds(IILandroid/graphics/Rect;)V

    .line 287
    return-void
.end method

.method public blacklist getCharWidthAt(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 305
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1}, Landroid/graphics/text/MeasuredText;->getCharWidthAt(I)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getChars()[C
    .locals 1

    .line 172
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public greylist-max-o getDirections(II)Landroid/text/Layout$Directions;
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 191
    iget-boolean v0, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_0

    .line 192
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 195
    :cond_0
    sub-int v0, p2, p1

    .line 196
    .local v0, "length":I
    iget v1, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v2

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v5, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public blacklist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 296
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 297
    return-void
.end method

.method public blacklist getMeasuredText()Landroid/graphics/text/MeasuredText;
    .locals 1

    .line 251
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object v0
.end method

.method public greylist-max-o getMemoryUsage()I
    .locals 1

    .line 695
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getParagraphDir()I
    .locals 1

    .line 181
    iget v0, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    return v0
.end method

.method public greylist-max-o getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    .line 229
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public greylist-max-o getTextLength()I
    .locals 1

    .line 163
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public greylist-max-o getWholeWidth()F
    .locals 1

    .line 207
    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public greylist-max-o getWidth(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 264
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 267
    .local v0, "widths":[F
    const/4 v1, 0x0

    .line 268
    .local v1, "r":F
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 269
    aget v3, v0, v2

    add-float/2addr v1, v3

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 271
    .end local v2    # "i":I
    :cond_0
    return v1

    .line 274
    .end local v0    # "widths":[F
    .end local v1    # "r":F
    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/graphics/text/MeasuredText;->getWidth(II)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .locals 1

    .line 217
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method greylist-max-o measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 683
    const/4 v0, 0x0

    .line 684
    .local v0, "width":F
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    .line 685
    .local v1, "w":[F
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 686
    aget v3, v1, v2

    add-float/2addr v0, v3

    .line 685
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 688
    .end local v2    # "i":I
    :cond_0
    return v0
.end method

.method public greylist-max-o recycle()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    .line 79
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public greylist-max-o release()V
    .locals 1

    .line 136
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 137
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    .line 138
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    .line 139
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 140
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 141
    return-void
.end method
