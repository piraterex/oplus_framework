.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o CHAR_NEW_LINE:C = '\n'

.field private static final greylist-max-o COLUMNS_ELLIPSIZE:I = 0x7

.field private static final greylist-max-o COLUMNS_NORMAL:I = 0x5

.field private static final greylist-max-o DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final greylist-max-o DESCENT:I = 0x2

.field private static final greylist-max-o DIR:I = 0x0

.field private static final greylist-max-o DIR_SHIFT:I = 0x1e

.field private static final greylist-max-o ELLIPSIS_COUNT:I = 0x6

.field private static final greylist ELLIPSIS_START:I = 0x5

.field private static final blacklist END_HYPHEN_MASK:I = 0x7

.field private static final greylist-max-o EXTRA:I = 0x3

.field private static final greylist-max-o EXTRA_ROUNDING:D = 0.5

.field private static final greylist-max-o HYPHEN:I = 0x4

.field private static final greylist-max-o HYPHEN_MASK:I = 0xff

.field private static final greylist-max-o START:I = 0x0

.field private static final blacklist START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final blacklist START_HYPHEN_MASK:I = 0x18

.field private static final greylist-max-o START_MASK:I = 0x1fffffff

.field private static final greylist-max-o TAB:I = 0x0

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field private static final greylist-max-o TAB_MASK:I = 0x20000000

.field static final greylist-max-o TAG:Ljava/lang/String; = "StaticLayout"

.field private static final greylist-max-o TOP:I = 0x1


# instance fields
.field private greylist-max-o mBottomPadding:I

.field private greylist mColumns:I

.field private greylist-max-o mEllipsized:Z

.field private greylist-max-o mEllipsizedWidth:I

.field private blacklist mFallbackLineSpacing:Z

.field private greylist-max-o mLeftIndents:[I

.field private greylist mLineCount:I

.field private greylist mLineDirections:[Landroid/text/Layout$Directions;

.field private greylist mLines:[I

.field private greylist-max-o mMaxLineHeight:I

.field private greylist mMaximumVisibleLineCount:I

.field private greylist-max-o mRightIndents:[I

.field public blacklist mStaticLayoutExt:Landroid/text/IStaticLayoutExt;

.field private greylist-max-o mTopPadding:I


# direct methods
.method private constructor greylist-max-o <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 10
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .line 592
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_0

    .line 593
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    .line 594
    :cond_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 595
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    goto :goto_0

    .line 596
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v3, v0

    :goto_0
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v4

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v6

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v7

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v9

    .line 592
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 74
    const-class v0, Landroid/text/IStaticLayoutExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/IStaticLayoutExt;

    iput-object v0, p0, Landroid/text/StaticLayout;->mStaticLayoutExt:Landroid/text/IStaticLayoutExt;

    .line 1496
    const/4 v1, -0x1

    iput v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1515
    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 601
    invoke-interface {v0}, Landroid/text/IStaticLayoutExt;->setBuilderToTextJustificationHooks()V

    .line 604
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 605
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 607
    .local v0, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 608
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 609
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v1

    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 610
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    iput v1, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 612
    const/4 v1, 0x7

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 613
    .end local v0    # "e":Landroid/text/Layout$Ellipsizer;
    goto :goto_1

    .line 614
    :cond_2
    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 615
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 618
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 619
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 620
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 622
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 623
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 624
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    .line 626
    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    invoke-static {p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 627
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 584
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 74
    const-class v0, Landroid/text/IStaticLayoutExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/IStaticLayoutExt;

    iput-object v0, p0, Landroid/text/StaticLayout;->mStaticLayoutExt:Landroid/text/IStaticLayoutExt;

    .line 1496
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1515
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 586
    const/4 v0, 0x7

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 587
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 588
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 589
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 498
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 500
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 515
    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 529
    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    if-nez v10, :cond_0

    .line 530
    move-object v1, v9

    goto :goto_0

    .line 531
    :cond_0
    instance-of v0, v9, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 532
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    goto :goto_0

    .line 533
    :cond_1
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v0, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    move-object v1, v0

    .line 529
    :goto_0
    move-object v0, p0

    move-object/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 74
    const-class v0, Landroid/text/IStaticLayoutExt;

    invoke-static {v0}, Lsystem/ext/loader/core/ExtLoader;->type(Ljava/lang/Class;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->base(Ljava/lang/Object;)Lsystem/ext/loader/core/ExtLoader$ExtBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lsystem/ext/loader/core/ExtLoader$ExtBuilder;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/IStaticLayoutExt;

    iput-object v0, v8, Landroid/text/StaticLayout;->mStaticLayoutExt:Landroid/text/IStaticLayoutExt;

    .line 1496
    const/4 v0, -0x1

    iput v0, v8, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1515
    const v0, 0x7fffffff

    iput v0, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 536
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 537
    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 538
    move-object/from16 v2, p7

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 539
    move/from16 v3, p8

    move/from16 v4, p9

    invoke-virtual {v0, v4, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 540
    move/from16 v5, p10

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 541
    invoke-virtual {v0, v11}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 542
    invoke-virtual {v0, v10}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 543
    invoke-virtual {v0, v12}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 557
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-eqz v10, :cond_2

    .line 558
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Landroid/text/Layout$Ellipsizer;

    .line 560
    .local v6, "e":Landroid/text/Layout$Ellipsizer;
    iput-object v8, v6, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 561
    iput v11, v6, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 562
    iput-object v10, v6, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 563
    iput v11, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 565
    const/4 v7, 0x7

    iput v7, v8, Landroid/text/StaticLayout;->mColumns:I

    .line 566
    .end local v6    # "e":Landroid/text/Layout$Ellipsizer;
    move/from16 v6, p5

    goto :goto_1

    .line 567
    :cond_2
    const/4 v6, 0x5

    iput v6, v8, Landroid/text/StaticLayout;->mColumns:I

    .line 568
    move/from16 v6, p5

    iput v6, v8, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 571
    :goto_1
    const-class v7, Landroid/text/Layout$Directions;

    const/4 v13, 0x2

    invoke-static {v7, v13}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/Layout$Directions;

    iput-object v7, v8, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 572
    iget v7, v8, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v13

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v7

    iput-object v7, v8, Landroid/text/StaticLayout;->mLines:[I

    .line 573
    iput v12, v8, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 575
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v13

    invoke-virtual {p0, v0, v7, v13}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 577
    invoke-static {v0}, Landroid/text/StaticLayout$Builder;->-$$Nest$smrecycle(Landroid/text/StaticLayout$Builder;)V

    .line 578
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 485
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 487
    return-void
.end method

.method private blacklist calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 18
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "measured"    # Landroid/text/MeasuredParagraph;
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .line 1160
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v4

    sub-float v4, p5, v4

    .line 1161
    .end local p5    # "avail":F
    .local v4, "avail":F
    cmpg-float v5, p8, v4

    const/4 v6, 0x5

    if-gtz v5, :cond_0

    if-nez p10, :cond_0

    .line 1163
    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v8, v7, v3

    add-int/2addr v8, v6

    const/4 v6, 0x0

    aput v6, v5, v8

    .line 1164
    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x6

    aput v6, v5, v7

    .line 1165
    return-void

    .line 1168
    :cond_0
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p9

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1169
    .local v5, "ellipsisWidth":F
    const/4 v8, 0x0

    .line 1170
    .local v8, "ellipsisStart":I
    const/4 v9, 0x0

    .line 1171
    .local v9, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 1174
    .local v10, "len":I
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const/4 v12, 0x0

    const-string v13, "StaticLayout"

    const/4 v14, 0x1

    if-ne v2, v11, :cond_4

    .line 1175
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v11, v14, :cond_3

    .line 1176
    const/4 v11, 0x0

    .line 1179
    .local v11, "sum":F
    move v13, v10

    .local v13, "i":I
    :goto_0
    if-lez v13, :cond_2

    .line 1180
    add-int/lit8 v15, v13, -0x1

    add-int v15, v15, p1

    sub-int v15, v15, p4

    invoke-virtual {v1, v15}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v15

    .line 1181
    .local v15, "w":F
    add-float v16, v15, v11

    add-float v16, v16, v5

    cmpl-float v16, v16, v4

    if-lez v16, :cond_1

    .line 1182
    :goto_1
    if-ge v13, v10, :cond_2

    add-int v16, v13, p1

    sub-int v14, v16, p4

    .line 1183
    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    cmpl-float v14, v14, v12

    if-nez v14, :cond_2

    .line 1184
    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    goto :goto_1

    .line 1189
    :cond_1
    add-float/2addr v11, v15

    .line 1179
    .end local v15    # "w":F
    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x1

    goto :goto_0

    .line 1192
    :cond_2
    const/4 v8, 0x0

    .line 1193
    move v9, v13

    .line 1194
    .end local v11    # "sum":F
    .end local v13    # "i":I
    goto/16 :goto_9

    .line 1195
    :cond_3
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1196
    const-string v11, "Start Ellipsis only supported with one line"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1199
    :cond_4
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_b

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_b

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v11, :cond_5

    goto/16 :goto_6

    .line 1222
    :cond_5
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v14, 0x1

    if-ne v11, v14, :cond_a

    .line 1223
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v13, 0x0

    .line 1224
    .local v13, "rsum":F
    const/4 v14, 0x0

    .local v14, "left":I
    move v15, v10

    .line 1226
    .local v15, "right":I
    sub-float v16, v4, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    .line 1227
    .local v16, "ravail":F
    nop

    :goto_2
    if-lez v15, :cond_7

    .line 1228
    add-int/lit8 v17, v15, -0x1

    add-int v17, v17, p1

    sub-int v6, v17, p4

    invoke-virtual {v1, v6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v6

    .line 1230
    .local v6, "w":F
    add-float v17, v6, v13

    cmpl-float v17, v17, v16

    if-lez v17, :cond_6

    .line 1231
    :goto_3
    if-ge v15, v10, :cond_7

    add-int v17, v15, p1

    sub-int v12, v17, p4

    .line 1232
    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    const/16 v17, 0x0

    cmpl-float v12, v12, v17

    if-nez v12, :cond_7

    .line 1234
    add-int/lit8 v15, v15, 0x1

    move/from16 v12, v17

    goto :goto_3

    .line 1238
    :cond_6
    move/from16 v17, v12

    add-float/2addr v13, v6

    .line 1227
    .end local v6    # "w":F
    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x5

    goto :goto_2

    .line 1241
    :cond_7
    sub-float v6, v4, v5

    sub-float/2addr v6, v13

    .line 1242
    .local v6, "lavail":F
    const/4 v12, 0x0

    .end local v14    # "left":I
    .local v12, "left":I
    :goto_4
    if-ge v12, v15, :cond_9

    .line 1243
    add-int v14, v12, p1

    sub-int v14, v14, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    .line 1245
    .local v14, "w":F
    add-float v17, v14, v11

    cmpl-float v17, v17, v6

    if-lez v17, :cond_8

    .line 1246
    goto :goto_5

    .line 1249
    :cond_8
    add-float/2addr v11, v14

    .line 1242
    .end local v14    # "w":F
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1252
    :cond_9
    :goto_5
    move v8, v12

    .line 1253
    sub-int v9, v15, v12

    .line 1254
    .end local v6    # "lavail":F
    .end local v11    # "lsum":F
    .end local v12    # "left":I
    .end local v13    # "rsum":F
    .end local v15    # "right":I
    .end local v16    # "ravail":F
    goto :goto_9

    .line 1255
    :cond_a
    const/4 v6, 0x5

    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1256
    const-string v6, "Middle Ellipsis only supported with one line"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1201
    :cond_b
    :goto_6
    const/4 v6, 0x0

    .line 1204
    .local v6, "sum":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7
    if-ge v11, v10, :cond_d

    .line 1205
    add-int v12, v11, p1

    sub-int v12, v12, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    .line 1207
    .local v12, "w":F
    add-float v13, v12, v6

    add-float/2addr v13, v5

    cmpl-float v13, v13, v4

    if-lez v13, :cond_c

    .line 1208
    goto :goto_8

    .line 1211
    :cond_c
    add-float/2addr v6, v12

    .line 1204
    .end local v12    # "w":F
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1214
    :cond_d
    :goto_8
    move v8, v11

    .line 1215
    sub-int v9, v10, v11

    .line 1216
    if-eqz p10, :cond_e

    if-nez v9, :cond_e

    if-lez v10, :cond_e

    .line 1217
    add-int/lit8 v8, v10, -0x1

    .line 1218
    const/4 v9, 0x1

    .line 1220
    .end local v6    # "sum":F
    .end local v11    # "i":I
    :cond_e
    nop

    .line 1260
    :cond_f
    :goto_9
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 1261
    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v11, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v12, v11, v3

    const/4 v13, 0x5

    add-int/2addr v12, v13

    aput v8, v6, v12

    .line 1262
    mul-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x6

    aput v9, v6, v11

    .line 1263
    return-void
.end method

.method private static blacklist getBaseHyphenationFrequency(I)I
    .locals 1
    .param p0, "frequency"    # I

    .line 630
    packed-switch p0, :pswitch_data_0

    .line 639
    const/4 v0, 0x0

    return v0

    .line 633
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 636
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o getTotalInsets(I)F
    .locals 3
    .param p1, "line"    # I

    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "totalIndent":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    .line 1268
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1270
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    .line 1271
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1273
    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private blacklist out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "hasTab"    # Z
    .param p15, "hyphenEdit"    # I
    .param p16, "needMultiply"    # Z
    .param p17, "measured"    # Landroid/text/MeasuredParagraph;
    .param p18, "bufEnd"    # I
    .param p19, "includePad"    # Z
    .param p20, "trackPad"    # Z
    .param p21, "addLastLineLineSpacing"    # Z
    .param p22, "chs"    # [C
    .param p23, "widthStart"    # I
    .param p24, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p25, "ellipsisWidth"    # F
    .param p26, "textWidth"    # F
    .param p27, "paint"    # Landroid/text/TextPaint;
    .param p28, "moreChars"    # Z

    .line 1001
    move-object/from16 v11, p0

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p11

    move-object/from16 v15, p13

    move/from16 v9, p18

    move/from16 v8, p23

    move-object/from16 v10, p24

    iget v7, v11, Landroid/text/StaticLayout;->mLineCount:I

    .line 1002
    .local v7, "j":I
    iget v0, v11, Landroid/text/StaticLayout;->mColumns:I

    mul-int v16, v7, v0

    .line 1003
    .local v16, "off":I
    add-int v0, v16, v0

    const/4 v6, 0x1

    add-int/lit8 v5, v0, 0x1

    .line 1004
    .local v5, "want":I
    iget-object v0, v11, Landroid/text/StaticLayout;->mLines:[I

    .line 1005
    .local v0, "lines":[I
    invoke-virtual/range {p17 .. p17}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v17

    .line 1007
    .local v17, "dir":I
    array-length v1, v0

    const/4 v4, 0x0

    if-lt v5, v1, :cond_0

    .line 1008
    invoke-static {v5}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 1009
    .local v1, "grow":[I
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    iput-object v1, v11, Landroid/text/StaticLayout;->mLines:[I

    .line 1011
    move-object v0, v1

    move-object/from16 v18, v0

    goto :goto_0

    .line 1007
    .end local v1    # "grow":[I
    :cond_0
    move-object/from16 v18, v0

    .line 1014
    .end local v0    # "lines":[I
    .local v18, "lines":[I
    :goto_0
    iget-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    if-lt v7, v0, :cond_1

    .line 1015
    const-class v0, Landroid/text/Layout$Directions;

    .line 1016
    invoke-static {v7}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v1

    .line 1015
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    .line 1017
    .local v0, "grow":[Landroid/text/Layout$Directions;
    iget-object v1, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1018
    iput-object v0, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1021
    .end local v0    # "grow":[Landroid/text/Layout$Directions;
    :cond_1
    if-eqz v14, :cond_4

    .line 1022
    move/from16 v3, p4

    iput v3, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1023
    move/from16 v2, p5

    iput v2, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1024
    move/from16 v1, p6

    iput v1, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1025
    move/from16 v0, p7

    iput v0, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1027
    const/16 v19, 0x0

    move/from16 v8, v19

    .local v8, "i":I
    :goto_1
    array-length v4, v14

    if-ge v8, v4, :cond_3

    .line 1028
    aget-object v4, v14, v8

    instance-of v4, v4, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v4, :cond_2

    .line 1029
    aget-object v4, v14, v8

    check-cast v4, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v20, p12, v8

    .line 1030
    move-object v0, v4

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/16 v19, 0x0

    move/from16 v4, v20

    move/from16 v20, v5

    .end local v5    # "want":I
    .local v20, "want":I
    move/from16 v5, p8

    move v12, v6

    move-object/from16 v6, p13

    move/from16 v21, v7

    .end local v7    # "j":I
    .local v21, "j":I
    move-object/from16 v7, p27

    invoke-interface/range {v0 .. v7}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    goto :goto_2

    .line 1032
    .end local v20    # "want":I
    .end local v21    # "j":I
    .restart local v5    # "want":I
    .restart local v7    # "j":I
    :cond_2
    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    const/16 v19, 0x0

    .end local v5    # "want":I
    .end local v7    # "j":I
    .restart local v20    # "want":I
    .restart local v21    # "j":I
    aget-object v0, v14, v8

    aget v4, p12, v8

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p8

    move-object/from16 v6, p13

    invoke-interface/range {v0 .. v6}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    .line 1027
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, p4

    move/from16 v2, p5

    move/from16 v1, p6

    move/from16 v0, p7

    move v6, v12

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v7, v21

    move/from16 v12, p2

    goto :goto_1

    .end local v20    # "want":I
    .end local v21    # "j":I
    .restart local v5    # "want":I
    .restart local v7    # "j":I
    :cond_3
    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    const/16 v19, 0x0

    .line 1036
    .end local v5    # "want":I
    .end local v7    # "j":I
    .end local v8    # "i":I
    .restart local v20    # "want":I
    .restart local v21    # "j":I
    iget v0, v15, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1037
    .end local p4    # "above":I
    .local v0, "above":I
    iget v1, v15, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1038
    .end local p5    # "below":I
    .local v1, "below":I
    iget v2, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1039
    .end local p6    # "top":I
    .local v2, "top":I
    iget v3, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v22, v0

    move/from16 v23, v1

    move/from16 v24, v2

    move/from16 v25, v3

    .end local p7    # "bottom":I
    .local v3, "bottom":I
    goto :goto_3

    .line 1021
    .end local v0    # "above":I
    .end local v1    # "below":I
    .end local v2    # "top":I
    .end local v3    # "bottom":I
    .end local v20    # "want":I
    .end local v21    # "j":I
    .restart local v5    # "want":I
    .restart local v7    # "j":I
    .restart local p4    # "above":I
    .restart local p5    # "below":I
    .restart local p6    # "top":I
    .restart local p7    # "bottom":I
    :cond_4
    move/from16 v19, v4

    move/from16 v20, v5

    move v12, v6

    move/from16 v21, v7

    .end local v5    # "want":I
    .end local v7    # "j":I
    .restart local v20    # "want":I
    .restart local v21    # "j":I
    move/from16 v22, p4

    move/from16 v23, p5

    move/from16 v24, p6

    move/from16 v25, p7

    .line 1042
    .end local p4    # "above":I
    .end local p5    # "below":I
    .end local p6    # "top":I
    .end local p7    # "bottom":I
    .local v22, "above":I
    .local v23, "below":I
    .local v24, "top":I
    .local v25, "bottom":I
    :goto_3
    if-nez v21, :cond_5

    move v6, v12

    goto :goto_4

    :cond_5
    move/from16 v6, v19

    :goto_4
    move v8, v6

    .line 1043
    .local v8, "firstLine":Z
    add-int/lit8 v7, v21, 0x1

    iget v0, v11, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v7, v0, :cond_6

    move v6, v12

    goto :goto_5

    :cond_6
    move/from16 v6, v19

    :goto_5
    move/from16 v26, v6

    .line 1045
    .local v26, "currentLineIsTheLastVisibleOne":Z
    if-eqz v10, :cond_f

    .line 1048
    if-eqz p28, :cond_7

    iget v1, v11, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v1, v12

    if-ne v1, v0, :cond_7

    move v1, v12

    goto :goto_6

    :cond_7
    move/from16 v1, v19

    :goto_6
    move-object v7, v10

    move v10, v1

    .line 1050
    .local v10, "forceEllipsis":Z
    if-ne v0, v12, :cond_8

    if-nez p28, :cond_9

    :cond_8
    if-eqz v8, :cond_a

    if-nez p28, :cond_a

    :cond_9
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_c

    :cond_a
    if-nez v8, :cond_d

    if-nez v26, :cond_b

    if-nez p28, :cond_d

    :cond_b
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v7, v0, :cond_d

    :cond_c
    move v6, v12

    goto :goto_7

    :cond_d
    move/from16 v6, v19

    :goto_7
    move/from16 v27, v6

    .line 1055
    .local v27, "doEllipsis":Z
    if-eqz v27, :cond_e

    .line 1056
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p17

    move/from16 v4, p23

    move/from16 v5, p25

    move-object/from16 v6, p24

    move/from16 v7, v21

    move/from16 v12, p23

    move v14, v8

    .end local v8    # "firstLine":Z
    .local v14, "firstLine":Z
    move/from16 v8, p26

    move v15, v9

    move-object/from16 v9, p27

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    goto :goto_8

    .line 1060
    .end local v14    # "firstLine":Z
    .restart local v8    # "firstLine":Z
    :cond_e
    move/from16 v12, p23

    move v14, v8

    move v15, v9

    .end local v8    # "firstLine":Z
    .restart local v14    # "firstLine":Z
    iget-object v0, v11, Landroid/text/StaticLayout;->mLines:[I

    iget v1, v11, Landroid/text/StaticLayout;->mColumns:I

    mul-int v7, v1, v21

    add-int/lit8 v7, v7, 0x5

    aput v19, v0, v7

    .line 1061
    mul-int v1, v1, v21

    add-int/lit8 v1, v1, 0x6

    aput v19, v0, v1

    goto :goto_8

    .line 1045
    .end local v10    # "forceEllipsis":Z
    .end local v14    # "firstLine":Z
    .end local v27    # "doEllipsis":Z
    .restart local v8    # "firstLine":Z
    :cond_f
    move/from16 v12, p23

    move v14, v8

    move v15, v9

    .line 1066
    .end local v8    # "firstLine":Z
    .restart local v14    # "firstLine":Z
    :goto_8
    iget-boolean v0, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_10

    .line 1067
    const/4 v0, 0x1

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x1

    .local v0, "lastLine":Z
    goto :goto_a

    .line 1069
    .end local v0    # "lastLine":Z
    :cond_10
    if-eq v12, v15, :cond_11

    if-lez v15, :cond_11

    add-int/lit8 v0, v15, -0x1

    .line 1070
    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_12

    const/4 v6, 0x1

    goto :goto_9

    .line 1069
    :cond_11
    move-object/from16 v1, p1

    .line 1070
    :cond_12
    move/from16 v6, v19

    :goto_9
    move v0, v6

    .line 1071
    .local v0, "lastCharIsNewLine":Z
    if-ne v13, v15, :cond_13

    if-nez v0, :cond_13

    .line 1072
    const/4 v2, 0x1

    move v0, v2

    const/4 v3, 0x1

    move/from16 v2, p2

    .local v2, "lastLine":Z
    goto :goto_a

    .line 1073
    .end local v2    # "lastLine":Z
    :cond_13
    move/from16 v2, p2

    const/4 v3, 0x1

    if-ne v2, v15, :cond_14

    if-eqz v0, :cond_14

    .line 1074
    const/4 v4, 0x1

    move v0, v4

    .local v4, "lastLine":Z
    goto :goto_a

    .line 1076
    .end local v4    # "lastLine":Z
    :cond_14
    const/4 v4, 0x0

    move v0, v4

    .line 1085
    .local v0, "lastLine":Z
    :goto_a
    iget-object v4, v11, Landroid/text/StaticLayout;->mStaticLayoutExt:Landroid/text/IStaticLayoutExt;

    invoke-interface {v4, v14, v11}, Landroid/text/IStaticLayoutExt;->lineShouldIncludeFontPad(ZLandroid/text/StaticLayout;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1087
    if-eqz p20, :cond_15

    .line 1088
    sub-int v4, v24, v22

    iput v4, v11, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1091
    :cond_15
    if-eqz p19, :cond_16

    .line 1092
    move/from16 v22, v24

    .line 1098
    :cond_16
    if-eqz v0, :cond_18

    .line 1099
    if-eqz p20, :cond_17

    .line 1100
    sub-int v4, v25, v23

    iput v4, v11, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1103
    :cond_17
    if-eqz p19, :cond_18

    .line 1104
    move/from16 v23, v25

    .line 1113
    :cond_18
    iget-object v4, v11, Landroid/text/StaticLayout;->mStaticLayoutExt:Landroid/text/IStaticLayoutExt;

    move/from16 v5, p16

    move/from16 v6, p21

    invoke-interface {v4, v5, v6, v0, v11}, Landroid/text/IStaticLayoutExt;->lineNeedMultiply(ZZZLandroid/text/StaticLayout;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1116
    sub-int v4, v23, v22

    int-to-float v4, v4

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v7, p9, v7

    mul-float/2addr v4, v7

    add-float v4, v4, p10

    float-to-double v7, v4

    .line 1117
    .local v7, "ex":D
    const-wide/16 v9, 0x0

    cmpl-double v4, v7, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    if-ltz v4, :cond_19

    .line 1118
    add-double/2addr v9, v7

    double-to-int v4, v9

    .local v4, "extra":I
    goto :goto_b

    .line 1120
    .end local v4    # "extra":I
    :cond_19
    neg-double v3, v7

    add-double/2addr v3, v9

    double-to-int v3, v3

    neg-int v4, v3

    .line 1122
    .end local v7    # "ex":D
    .restart local v4    # "extra":I
    :goto_b
    goto :goto_c

    .line 1123
    .end local v4    # "extra":I
    :cond_1a
    const/4 v4, 0x0

    .line 1126
    .restart local v4    # "extra":I
    :goto_c
    add-int/lit8 v3, v16, 0x0

    aput v2, v18, v3

    .line 1127
    add-int/lit8 v3, v16, 0x1

    aput p8, v18, v3

    .line 1128
    add-int/lit8 v3, v16, 0x2

    add-int v7, v23, v4

    aput v7, v18, v3

    .line 1129
    add-int/lit8 v3, v16, 0x3

    aput v4, v18, v3

    .line 1133
    iget-boolean v3, v11, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v3, :cond_1c

    if-eqz v26, :cond_1c

    .line 1135
    if-eqz p19, :cond_1b

    move/from16 v3, v25

    goto :goto_d

    :cond_1b
    move/from16 v3, v23

    .line 1137
    .local v3, "maxLineBelow":I
    :goto_d
    sub-int v7, v3, v22

    add-int v7, p8, v7

    iput v7, v11, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1140
    .end local v3    # "maxLineBelow":I
    :cond_1c
    sub-int v3, v23, v22

    add-int/2addr v3, v4

    add-int v3, p8, v3

    .line 1141
    .end local p8    # "v":I
    .local v3, "v":I
    iget v7, v11, Landroid/text/StaticLayout;->mColumns:I

    add-int v8, v16, v7

    add-int/lit8 v8, v8, 0x0

    aput v13, v18, v8

    .line 1142
    add-int v7, v16, v7

    const/4 v8, 0x1

    add-int/2addr v7, v8

    aput v3, v18, v7

    .line 1146
    add-int/lit8 v7, v16, 0x0

    aget v8, v18, v7

    if-eqz p14, :cond_1d

    const/high16 v9, 0x20000000

    move/from16 v19, v9

    :cond_1d
    or-int v8, v8, v19

    aput v8, v18, v7

    .line 1147
    add-int/lit8 v7, v16, 0x4

    aput p15, v18, v7

    .line 1148
    add-int/lit8 v7, v16, 0x0

    aget v8, v18, v7

    shl-int/lit8 v9, v17, 0x1e

    or-int/2addr v8, v9

    aput v8, v18, v7

    .line 1149
    iget-object v7, v11, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v8, v2, v12

    sub-int v9, v13, v12

    move-object/from16 v10, p17

    invoke-virtual {v10, v8, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v8

    aput-object v8, v7, v21

    .line 1151
    iget v7, v11, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v8, 0x1

    add-int/2addr v7, v8

    iput v7, v11, Landroid/text/StaticLayout;->mLineCount:I

    .line 1152
    return v3
.end method

.method static blacklist packHyphenEdit(II)I
    .locals 1
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 1360
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static blacklist unpackEndHyphenEdit(I)I
    .locals 1
    .param p0, "packedHyphenEdit"    # I

    .line 1368
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static blacklist unpackStartHyphenEdit(I)I
    .locals 1
    .param p0, "packedHyphenEdit"    # I

    .line 1364
    and-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method greylist-max-o generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 91
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .line 644
    move-object/from16 v15, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 645
    .local v14, "source":Ljava/lang/CharSequence;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    .line 646
    .local v13, "bufStart":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I

    move-result v12

    .line 647
    .local v12, "bufEnd":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v11

    .line 648
    .local v11, "paint":Landroid/text/TextPaint;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v52

    .line 649
    .local v52, "outerWidth":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v10

    .line 650
    .local v10, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v53

    .line 651
    .local v53, "spacingmult":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v54

    .line 652
    .local v54, "spacingadd":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    int-to-float v9, v0

    .line 653
    .local v9, "ellipsizedWidth":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v8

    .line 654
    .local v8, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v55

    .line 656
    .local v55, "addLastLineSpacing":Z
    const/16 v16, 0x0

    .line 657
    .local v16, "lineBreakCapacity":I
    const/16 v17, 0x0

    .line 658
    .local v17, "breaks":[I
    const/16 v18, 0x0

    .line 659
    .local v18, "lineWidths":[F
    const/16 v19, 0x0

    .line 660
    .local v19, "ascents":[F
    const/16 v20, 0x0

    .line 661
    .local v20, "descents":[F
    const/16 v21, 0x0

    .line 662
    .local v21, "hasTabs":[Z
    const/16 v23, 0x0

    .line 665
    .local v23, "hyphenEdits":[I
    iget-object v0, v15, Landroid/text/StaticLayout;->mStaticLayoutExt:Landroid/text/IStaticLayoutExt;

    invoke-interface {v0}, Landroid/text/IStaticLayoutExt;->setTextJustificationHooks()V

    .line 668
    const/4 v7, 0x0

    iput v7, v15, Landroid/text/StaticLayout;->mLineCount:I

    .line 669
    iput-boolean v7, v15, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 670
    iget v0, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v6, 0x1

    if-ge v0, v6, :cond_0

    move v0, v7

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, v15, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 671
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v0

    iput-boolean v0, v15, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    .line 673
    const/16 v24, 0x0

    .line 674
    .local v24, "v":I
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v53, v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v0, v54, v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v22, v7

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v22, v6

    .line 676
    .local v22, "needMultiply":Z
    :goto_2
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v5

    .line 677
    .local v5, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v25, 0x0

    .line 680
    .local v25, "chooseHtv":[I
    iget-object v0, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_4

    iget-object v1, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_3

    goto :goto_3

    .line 692
    :cond_3
    const/4 v0, 0x0

    move-object v7, v0

    .local v0, "indents":[I
    goto :goto_8

    .line 681
    .end local v0    # "indents":[I
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    move v0, v7

    goto :goto_4

    :cond_5
    array-length v0, v0

    .line 682
    .local v0, "leftLen":I
    :goto_4
    iget-object v1, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v1, :cond_6

    move v1, v7

    goto :goto_5

    :cond_6
    array-length v1, v1

    .line 683
    .local v1, "rightLen":I
    :goto_5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 684
    .local v2, "indentsLen":I
    new-array v3, v2, [I

    .line 685
    .local v3, "indents":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v0, :cond_7

    .line 686
    iget-object v6, v15, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v6, v6, v4

    aput v6, v3, v4

    .line 685
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x1

    goto :goto_6

    .line 688
    .end local v4    # "i":I
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-ge v4, v1, :cond_8

    .line 689
    aget v6, v3, v4

    iget-object v7, v15, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v7, v7, v4

    add-int/2addr v6, v7

    aput v6, v3, v4

    .line 688
    add-int/lit8 v4, v4, 0x1

    const/4 v7, 0x0

    goto :goto_7

    .line 691
    .end local v0    # "leftLen":I
    .end local v1    # "rightLen":I
    .end local v2    # "indentsLen":I
    .end local v4    # "i":I
    :cond_8
    move-object v7, v3

    .line 695
    .end local v3    # "indents":[I
    .local v7, "indents":[I
    :goto_8
    new-instance v0, Landroid/graphics/text/LineBreaker$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    .line 696
    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    .line 697
    invoke-static {v1}, Landroid/text/StaticLayout;->getBaseHyphenationFrequency(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v1

    .line 699
    invoke-virtual {v0, v1}, Landroid/graphics/text/LineBreaker$Builder;->setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    .line 700
    invoke-virtual {v0, v7}, Landroid/graphics/text/LineBreaker$Builder;->setIndents([I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v0

    .line 701
    invoke-virtual {v0}, Landroid/graphics/text/LineBreaker$Builder;->build()Landroid/graphics/text/LineBreaker;

    move-result-object v6

    .line 703
    .local v6, "lineBreaker":Landroid/graphics/text/LineBreaker;
    new-instance v0, Landroid/graphics/text/LineBreaker$ParagraphConstraints;

    invoke-direct {v0}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;-><init>()V

    move-object v4, v0

    .line 706
    .local v4, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    const/16 v28, 0x0

    .line 707
    .local v28, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    instance-of v0, v14, Landroid/text/Spanned;

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    move-object v0, v14

    check-cast v0, Landroid/text/Spanned;

    goto :goto_9

    :cond_9
    move-object v0, v3

    :goto_9
    move-object v2, v0

    .line 708
    .local v2, "spanned":Landroid/text/Spanned;
    instance-of v0, v14, Landroid/text/PrecomputedText;

    if-eqz v0, :cond_a

    .line 709
    move-object v1, v14

    check-cast v1, Landroid/text/PrecomputedText;

    .line 710
    .local v1, "precomputed":Landroid/text/PrecomputedText;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v29

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v30

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v31

    .line 711
    move-object v0, v1

    move-object/from16 v32, v1

    .end local v1    # "precomputed":Landroid/text/PrecomputedText;
    .local v32, "precomputed":Landroid/text/PrecomputedText;
    move v1, v13

    move/from16 v33, v9

    move-object v9, v2

    .end local v2    # "spanned":Landroid/text/Spanned;
    .local v9, "spanned":Landroid/text/Spanned;
    .local v33, "ellipsizedWidth":F
    move v2, v12

    move-object v3, v10

    move-object/from16 v34, v8

    move-object v8, v4

    .end local v4    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v8, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v34, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    move-object v4, v11

    move-object/from16 v56, v5

    .end local v5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v56, "fm":Landroid/graphics/Paint$FontMetricsInt;
    move/from16 v5, v29

    move-object/from16 v57, v6

    move-object/from16 v26, v8

    const/4 v8, 0x1

    .end local v6    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .end local v8    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v26, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v57, "lineBreaker":Landroid/graphics/text/LineBreaker;
    move/from16 v6, v30

    move-object/from16 v58, v7

    const/4 v8, 0x0

    .end local v7    # "indents":[I
    .local v58, "indents":[I
    move-object/from16 v7, v31

    invoke-virtual/range {v0 .. v7}, Landroid/text/PrecomputedText;->checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v0

    .line 713
    .local v0, "checkResult":I
    packed-switch v0, :pswitch_data_0

    move-object/from16 v2, v32

    .end local v32    # "precomputed":Landroid/text/PrecomputedText;
    .local v2, "precomputed":Landroid/text/PrecomputedText;
    goto :goto_a

    .line 729
    .end local v2    # "precomputed":Landroid/text/PrecomputedText;
    .restart local v32    # "precomputed":Landroid/text/PrecomputedText;
    :pswitch_0
    invoke-virtual/range {v32 .. v32}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v28

    goto :goto_a

    .line 717
    :pswitch_1
    new-instance v1, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v1, v11}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    .line 719
    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v2

    .line 720
    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    .line 721
    invoke-virtual {v1, v10}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    .line 722
    invoke-virtual {v1, v2}, Landroid/text/PrecomputedText$Params$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v1

    .line 723
    invoke-virtual {v1}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v1

    .line 724
    .local v1, "newParams":Landroid/text/PrecomputedText$Params;
    move-object/from16 v2, v32

    .end local v32    # "precomputed":Landroid/text/PrecomputedText;
    .restart local v2    # "precomputed":Landroid/text/PrecomputedText;
    invoke-static {v2, v1}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v2

    .line 725
    invoke-virtual {v2}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v28

    .line 726
    goto :goto_a

    .line 715
    .end local v1    # "newParams":Landroid/text/PrecomputedText$Params;
    .end local v2    # "precomputed":Landroid/text/PrecomputedText;
    .restart local v32    # "precomputed":Landroid/text/PrecomputedText;
    :pswitch_2
    move-object/from16 v2, v32

    .end local v32    # "precomputed":Landroid/text/PrecomputedText;
    .restart local v2    # "precomputed":Landroid/text/PrecomputedText;
    goto :goto_a

    .line 708
    .end local v0    # "checkResult":I
    .end local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v33    # "ellipsizedWidth":F
    .end local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .end local v58    # "indents":[I
    .local v2, "spanned":Landroid/text/Spanned;
    .restart local v4    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v6    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v7    # "indents":[I
    .local v8, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v9, "ellipsizedWidth":F
    :cond_a
    move-object/from16 v26, v4

    move-object/from16 v56, v5

    move-object/from16 v57, v6

    move-object/from16 v58, v7

    move-object/from16 v34, v8

    move/from16 v33, v9

    const/4 v8, 0x0

    move-object v9, v2

    .line 734
    .end local v2    # "spanned":Landroid/text/Spanned;
    .end local v4    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v5    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v6    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .end local v7    # "indents":[I
    .end local v8    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v9, "spanned":Landroid/text/Spanned;
    .restart local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v33    # "ellipsizedWidth":F
    .restart local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v58    # "indents":[I
    :goto_a
    if-nez v28, :cond_b

    .line 735
    new-instance v6, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    move-object v0, v6

    move-object v1, v11

    move-object v3, v10

    invoke-direct/range {v0 .. v5}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V

    .line 737
    .local v0, "param":Landroid/text/PrecomputedText$Params;
    invoke-static {v14, v0, v13, v12, v8}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v28

    move-object/from16 v7, v28

    goto :goto_b

    .line 734
    .end local v0    # "param":Landroid/text/PrecomputedText$Params;
    :cond_b
    move-object/from16 v7, v28

    .line 741
    .end local v28    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :goto_b
    const/4 v0, 0x0

    move v6, v0

    move/from16 v0, v16

    move-object/from16 v1, v25

    .end local v16    # "lineBreakCapacity":I
    .end local v25    # "chooseHtv":[I
    .local v0, "lineBreakCapacity":I
    .local v1, "chooseHtv":[I
    .local v6, "paraIndex":I
    :goto_c
    array-length v2, v7

    if-ge v6, v2, :cond_33

    .line 742
    if-nez v6, :cond_c

    .line 743
    move v2, v13

    goto :goto_d

    :cond_c
    add-int/lit8 v2, v6, -0x1

    aget-object v2, v7, v2

    iget v2, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    :goto_d
    move v5, v2

    .line 744
    .local v5, "paraStart":I
    aget-object v2, v7, v6

    iget v4, v2, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    .line 746
    .local v4, "paraEnd":I
    const/4 v2, 0x1

    .line 747
    .local v2, "firstWidthLineCount":I
    move/from16 v3, v52

    .line 748
    .local v3, "firstWidth":I
    move/from16 v16, v52

    .line 750
    .local v16, "restWidth":I
    const/16 v25, 0x0

    .line 751
    .local v25, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v9, :cond_14

    .line 752
    const-class v8, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v9, v5, v4, v8}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LeadingMarginSpan;

    .line 754
    .local v8, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v28, 0x0

    move/from16 v89, v28

    move-object/from16 v28, v10

    move/from16 v10, v89

    .local v10, "i":I
    .local v28, "textDir":Landroid/text/TextDirectionHeuristic;
    :goto_e
    move-object/from16 v30, v11

    .end local v11    # "paint":Landroid/text/TextPaint;
    .local v30, "paint":Landroid/text/TextPaint;
    array-length v11, v8

    if-ge v10, v11, :cond_e

    .line 755
    aget-object v11, v8, v10

    .line 756
    .local v11, "lms":Landroid/text/style/LeadingMarginSpan;
    move/from16 v31, v13

    .end local v13    # "bufStart":I
    .local v31, "bufStart":I
    aget-object v13, v8, v10

    move-object/from16 v35, v14

    const/4 v14, 0x1

    .end local v14    # "source":Ljava/lang/CharSequence;
    .local v35, "source":Ljava/lang/CharSequence;
    invoke-interface {v13, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    sub-int/2addr v3, v13

    .line 757
    aget-object v13, v8, v10

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v13

    sub-int v16, v16, v13

    .line 761
    instance-of v13, v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v13, :cond_d

    .line 762
    move-object v13, v11

    check-cast v13, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 763
    .local v13, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    nop

    .line 764
    invoke-interface {v13}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    .line 763
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 754
    .end local v11    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v13    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, v30

    move/from16 v13, v31

    move-object/from16 v14, v35

    goto :goto_e

    .end local v31    # "bufStart":I
    .end local v35    # "source":Ljava/lang/CharSequence;
    .local v13, "bufStart":I
    .restart local v14    # "source":Ljava/lang/CharSequence;
    :cond_e
    move/from16 v31, v13

    move-object/from16 v35, v14

    .line 768
    .end local v10    # "i":I
    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .restart local v31    # "bufStart":I
    .restart local v35    # "source":Ljava/lang/CharSequence;
    const-class v10, Landroid/text/style/LineHeightSpan;

    invoke-static {v9, v5, v4, v10}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/text/style/LineHeightSpan;

    .line 770
    .end local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v10, "chooseHt":[Landroid/text/style/LineHeightSpan;
    array-length v11, v10

    if-nez v11, :cond_f

    .line 771
    const/16 v25, 0x0

    move-object/from16 v36, v1

    move v14, v2

    move v13, v3

    move/from16 v11, v16

    move-object/from16 v37, v25

    .end local v10    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    goto :goto_11

    .line 773
    .end local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v10    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_f
    if-eqz v1, :cond_10

    array-length v11, v1

    array-length v13, v10

    if-ge v11, v13, :cond_11

    .line 774
    :cond_10
    array-length v11, v10

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    .line 777
    :cond_11
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f
    array-length v13, v10

    if-ge v11, v13, :cond_13

    .line 778
    aget-object v13, v10, v11

    invoke-interface {v9, v13}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 780
    .local v13, "o":I
    if-ge v13, v5, :cond_12

    .line 784
    invoke-virtual {v15, v13}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v14

    invoke-virtual {v15, v14}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v14

    aput v14, v1, v11

    goto :goto_10

    .line 788
    :cond_12
    aput v24, v1, v11

    .line 777
    .end local v13    # "o":I
    :goto_10
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_13
    move-object/from16 v36, v1

    move v14, v2

    move v13, v3

    move-object/from16 v37, v10

    move/from16 v11, v16

    goto :goto_11

    .line 751
    .end local v8    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v30    # "paint":Landroid/text/TextPaint;
    .end local v31    # "bufStart":I
    .end local v35    # "source":Ljava/lang/CharSequence;
    .local v10, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v11, "paint":Landroid/text/TextPaint;
    .local v13, "bufStart":I
    .restart local v14    # "source":Ljava/lang/CharSequence;
    .restart local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_14
    move-object/from16 v28, v10

    move-object/from16 v30, v11

    move/from16 v31, v13

    move-object/from16 v35, v14

    .end local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v11    # "paint":Landroid/text/TextPaint;
    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .restart local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v30    # "paint":Landroid/text/TextPaint;
    .restart local v31    # "bufStart":I
    .restart local v35    # "source":Ljava/lang/CharSequence;
    move-object/from16 v36, v1

    move v14, v2

    move v13, v3

    move/from16 v11, v16

    move-object/from16 v37, v25

    .line 794
    .end local v1    # "chooseHtv":[I
    .end local v2    # "firstWidthLineCount":I
    .end local v3    # "firstWidth":I
    .end local v16    # "restWidth":I
    .end local v25    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v11, "restWidth":I
    .local v13, "firstWidth":I
    .local v14, "firstWidthLineCount":I
    .local v36, "chooseHtv":[I
    .local v37, "chooseHt":[Landroid/text/style/LineHeightSpan;
    :goto_11
    const/4 v1, 0x0

    .line 795
    .local v1, "variableTabStops":[F
    if-eqz v9, :cond_16

    .line 796
    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v9, v5, v4, v2}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 798
    .local v2, "spans":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_16

    .line 799
    array-length v3, v2

    new-array v3, v3, [F

    .line 800
    .local v3, "stops":[F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_12
    array-length v10, v2

    if-ge v8, v10, :cond_15

    .line 801
    aget-object v10, v2, v8

    invoke-interface {v10}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v10

    int-to-float v10, v10

    aput v10, v3, v8

    .line 800
    add-int/lit8 v8, v8, 0x1

    goto :goto_12

    .line 803
    .end local v8    # "i":I
    :cond_15
    array-length v8, v3

    const/4 v10, 0x0

    invoke-static {v3, v10, v8}, Ljava/util/Arrays;->sort([FII)V

    .line 804
    move-object v1, v3

    move-object v10, v1

    goto :goto_13

    .line 808
    .end local v2    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v3    # "stops":[F
    :cond_16
    move-object v10, v1

    .end local v1    # "variableTabStops":[F
    .local v10, "variableTabStops":[F
    :goto_13
    aget-object v1, v7, v6

    iget-object v8, v1, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    .line 809
    .local v8, "measuredPara":Landroid/text/MeasuredParagraph;
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v38

    .line 810
    .local v38, "chs":[C
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v39

    .line 811
    .local v39, "spanEndCache":[I
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v40

    .line 813
    .local v40, "fmCache":[I
    int-to-float v1, v11

    move-object/from16 v2, v26

    .end local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v2, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    invoke-virtual {v2, v1}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setWidth(F)V

    .line 814
    int-to-float v1, v13

    invoke-virtual {v2, v1, v14}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setIndent(FI)V

    .line 815
    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {v2, v10, v1}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setTabStops([FF)V

    .line 817
    nop

    .line 818
    invoke-virtual {v8}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v1

    iget v3, v15, Landroid/text/StaticLayout;->mLineCount:I

    .line 817
    move/from16 v16, v14

    move-object/from16 v14, v57

    .end local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v14, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v16, "firstWidthLineCount":I
    invoke-virtual {v14, v1, v2, v3}, Landroid/graphics/text/LineBreaker;->computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;

    move-result-object v1

    .line 819
    .local v1, "res":Landroid/graphics/text/LineBreaker$Result;
    invoke-virtual {v1}, Landroid/graphics/text/LineBreaker$Result;->getLineCount()I

    move-result v3

    .line 820
    .local v3, "breakCount":I
    if-ge v0, v3, :cond_17

    .line 821
    move v0, v3

    .line 822
    move-object/from16 v26, v2

    .end local v2    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    new-array v2, v0, [I

    .line 823
    .end local v17    # "breaks":[I
    .local v2, "breaks":[I
    move-object/from16 v17, v2

    .end local v2    # "breaks":[I
    .restart local v17    # "breaks":[I
    new-array v2, v0, [F

    .line 824
    .end local v18    # "lineWidths":[F
    .local v2, "lineWidths":[F
    move-object/from16 v18, v2

    .end local v2    # "lineWidths":[F
    .restart local v18    # "lineWidths":[F
    new-array v2, v0, [F

    .line 825
    .end local v19    # "ascents":[F
    .local v2, "ascents":[F
    move-object/from16 v19, v2

    .end local v2    # "ascents":[F
    .restart local v19    # "ascents":[F
    new-array v2, v0, [F

    .line 826
    .end local v20    # "descents":[F
    .local v2, "descents":[F
    move-object/from16 v20, v2

    .end local v2    # "descents":[F
    .restart local v20    # "descents":[F
    new-array v2, v0, [Z

    .line 827
    .end local v21    # "hasTabs":[Z
    .local v2, "hasTabs":[Z
    move-object/from16 v21, v2

    .end local v2    # "hasTabs":[Z
    .restart local v21    # "hasTabs":[Z
    new-array v2, v0, [I

    move/from16 v41, v0

    move-object/from16 v47, v2

    move-object/from16 v42, v17

    move-object/from16 v43, v18

    move-object/from16 v44, v19

    move-object/from16 v45, v20

    move-object/from16 v46, v21

    .end local v23    # "hyphenEdits":[I
    .local v2, "hyphenEdits":[I
    goto :goto_14

    .line 820
    .end local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v2, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v23    # "hyphenEdits":[I
    :cond_17
    move-object/from16 v26, v2

    .end local v2    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    move/from16 v41, v0

    move-object/from16 v42, v17

    move-object/from16 v43, v18

    move-object/from16 v44, v19

    move-object/from16 v45, v20

    move-object/from16 v46, v21

    move-object/from16 v47, v23

    .line 830
    .end local v0    # "lineBreakCapacity":I
    .end local v17    # "breaks":[I
    .end local v18    # "lineWidths":[F
    .end local v19    # "ascents":[F
    .end local v20    # "descents":[F
    .end local v21    # "hasTabs":[Z
    .end local v23    # "hyphenEdits":[I
    .local v41, "lineBreakCapacity":I
    .local v42, "breaks":[I
    .local v43, "lineWidths":[F
    .local v44, "ascents":[F
    .local v45, "descents":[F
    .local v46, "hasTabs":[Z
    .local v47, "hyphenEdits":[I
    :goto_14
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_15
    if-ge v0, v3, :cond_18

    .line 831
    invoke-virtual {v1, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineBreakOffset(I)I

    move-result v2

    aput v2, v42, v0

    .line 832
    invoke-virtual {v1, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineWidth(I)F

    move-result v2

    aput v2, v43, v0

    .line 833
    invoke-virtual {v1, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineAscent(I)F

    move-result v2

    aput v2, v44, v0

    .line 834
    invoke-virtual {v1, v0}, Landroid/graphics/text/LineBreaker$Result;->getLineDescent(I)F

    move-result v2

    aput v2, v45, v0

    .line 835
    invoke-virtual {v1, v0}, Landroid/graphics/text/LineBreaker$Result;->hasLineTab(I)Z

    move-result v2

    aput-boolean v2, v46, v0

    .line 836
    nop

    .line 837
    invoke-virtual {v1, v0}, Landroid/graphics/text/LineBreaker$Result;->getStartLineHyphenEdit(I)I

    move-result v2

    move/from16 v25, v6

    .end local v6    # "paraIndex":I
    .local v25, "paraIndex":I
    invoke-virtual {v1, v0}, Landroid/graphics/text/LineBreaker$Result;->getEndLineHyphenEdit(I)I

    move-result v6

    invoke-static {v2, v6}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v2

    aput v2, v47, v0

    .line 830
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v25

    goto :goto_15

    .end local v25    # "paraIndex":I
    .restart local v6    # "paraIndex":I
    :cond_18
    move/from16 v25, v6

    .line 840
    .end local v0    # "i":I
    .end local v6    # "paraIndex":I
    .restart local v25    # "paraIndex":I
    iget v0, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v2, v15, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v6, v0, v2

    .line 841
    .local v6, "remainingLineCount":I
    if-eqz v34, :cond_1a

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v2, v34

    .end local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v2, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    if-eq v2, v0, :cond_19

    iget v0, v15, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v32, v1

    const/4 v1, 0x1

    .end local v1    # "res":Landroid/graphics/text/LineBreaker$Result;
    .local v32, "res":Landroid/graphics/text/LineBreaker$Result;
    if-ne v0, v1, :cond_1b

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v0, :cond_1b

    goto :goto_16

    .end local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v1    # "res":Landroid/graphics/text/LineBreaker$Result;
    :cond_19
    move-object/from16 v32, v1

    .end local v1    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    :goto_16
    const/4 v0, 0x1

    goto :goto_17

    .end local v2    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v1    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :cond_1a
    move-object/from16 v32, v1

    move-object/from16 v2, v34

    .end local v1    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v2    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    :cond_1b
    const/4 v0, 0x0

    :goto_17
    move/from16 v48, v0

    .line 845
    .local v48, "ellipsisMayBeApplied":Z
    if-lez v6, :cond_20

    if-ge v6, v3, :cond_20

    if-eqz v48, :cond_20

    .line 848
    const/4 v0, 0x0

    .line 849
    .local v0, "width":F
    const/4 v1, 0x0

    .line 850
    .local v1, "hasTab":Z
    add-int/lit8 v17, v6, -0x1

    move-object/from16 v34, v2

    move/from16 v2, v17

    .local v2, "i":I
    .restart local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    :goto_18
    if-ge v2, v3, :cond_1f

    .line 851
    move-object/from16 v49, v7

    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v49, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    add-int/lit8 v7, v3, -0x1

    if-ne v2, v7, :cond_1c

    .line 852
    aget v7, v43, v2

    add-float/2addr v0, v7

    move-object/from16 v50, v9

    goto :goto_1a

    .line 854
    :cond_1c
    if-nez v2, :cond_1d

    const/4 v7, 0x0

    goto :goto_19

    :cond_1d
    add-int/lit8 v7, v2, -0x1

    aget v7, v42, v7

    .local v7, "j":I
    :goto_19
    move-object/from16 v50, v9

    .end local v9    # "spanned":Landroid/text/Spanned;
    .local v50, "spanned":Landroid/text/Spanned;
    aget v9, v42, v2

    if-ge v7, v9, :cond_1e

    .line 855
    invoke-virtual {v8, v7}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v9

    add-float/2addr v0, v9

    .line 854
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v50

    goto :goto_19

    .line 858
    .end local v7    # "j":I
    :cond_1e
    :goto_1a
    aget-boolean v7, v46, v2

    or-int/2addr v1, v7

    .line 850
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v7, v49

    move-object/from16 v9, v50

    goto :goto_18

    .end local v49    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v50    # "spanned":Landroid/text/Spanned;
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v9    # "spanned":Landroid/text/Spanned;
    :cond_1f
    move-object/from16 v49, v7

    move-object/from16 v50, v9

    .line 861
    .end local v2    # "i":I
    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v9    # "spanned":Landroid/text/Spanned;
    .restart local v49    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v50    # "spanned":Landroid/text/Spanned;
    add-int/lit8 v2, v6, -0x1

    add-int/lit8 v7, v3, -0x1

    aget v7, v42, v7

    aput v7, v42, v2

    .line 862
    add-int/lit8 v2, v6, -0x1

    aput v0, v43, v2

    .line 863
    add-int/lit8 v2, v6, -0x1

    aput-boolean v1, v46, v2

    .line 865
    move v3, v6

    move v9, v3

    goto :goto_1b

    .line 845
    .end local v0    # "width":F
    .end local v1    # "hasTab":Z
    .end local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v49    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v50    # "spanned":Landroid/text/Spanned;
    .local v2, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v9    # "spanned":Landroid/text/Spanned;
    :cond_20
    move-object/from16 v34, v2

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    .line 870
    .end local v2    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v9    # "spanned":Landroid/text/Spanned;
    .restart local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v49    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v50    # "spanned":Landroid/text/Spanned;
    move v9, v3

    .end local v3    # "breakCount":I
    .local v9, "breakCount":I
    :goto_1b
    move v0, v5

    .line 872
    .local v0, "here":I
    const/4 v1, 0x0

    .local v1, "fmTop":I
    const/4 v2, 0x0

    .local v2, "fmBottom":I
    const/4 v3, 0x0

    .local v3, "fmAscent":I
    const/4 v7, 0x0

    .line 873
    .local v7, "fmDescent":I
    const/16 v17, 0x0

    .line 874
    .local v17, "fmCacheIndex":I
    const/16 v18, 0x0

    .line 875
    .local v18, "spanEndCacheIndex":I
    const/16 v19, 0x0

    .line 876
    .local v19, "breakIndex":I
    move/from16 v20, v5

    move-object/from16 v57, v14

    move/from16 v14, v20

    .local v14, "spanStart":I
    .restart local v57    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    :goto_1c
    if-ge v14, v4, :cond_31

    .line 878
    add-int/lit8 v51, v18, 0x1

    move/from16 v59, v13

    .end local v13    # "firstWidth":I
    .end local v18    # "spanEndCacheIndex":I
    .local v51, "spanEndCacheIndex":I
    .local v59, "firstWidth":I
    aget v13, v39, v18

    .line 881
    .local v13, "spanEnd":I
    mul-int/lit8 v18, v17, 0x4

    const/16 v23, 0x0

    add-int/lit8 v18, v18, 0x0

    move/from16 v20, v0

    .end local v0    # "here":I
    .local v20, "here":I
    aget v0, v40, v18

    move/from16 v27, v11

    move-object/from16 v11, v56

    .end local v56    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v11, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v27, "restWidth":I
    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 882
    mul-int/lit8 v0, v17, 0x4

    const/16 v18, 0x1

    add-int/lit8 v0, v0, 0x1

    aget v0, v40, v0

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 883
    mul-int/lit8 v0, v17, 0x4

    add-int/lit8 v0, v0, 0x2

    aget v0, v40, v0

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 884
    mul-int/lit8 v0, v17, 0x4

    add-int/lit8 v0, v0, 0x3

    aget v0, v40, v0

    iput v0, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 885
    add-int/lit8 v56, v17, 0x1

    .line 887
    .end local v17    # "fmCacheIndex":I
    .local v56, "fmCacheIndex":I
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v0, v1, :cond_21

    .line 888
    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 890
    :cond_21
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v0, v3, :cond_22

    .line 891
    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 893
    :cond_22
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v0, v7, :cond_23

    .line 894
    iget v7, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 896
    :cond_23
    iget v0, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v0, v2, :cond_24

    .line 897
    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v19

    goto :goto_1d

    .line 896
    :cond_24
    move/from16 v0, v19

    .line 901
    .end local v19    # "breakIndex":I
    .local v0, "breakIndex":I
    :goto_1d
    if-ge v0, v9, :cond_25

    aget v17, v42, v0

    move/from16 v21, v1

    .end local v1    # "fmTop":I
    .local v21, "fmTop":I
    add-int v1, v5, v17

    if-ge v1, v14, :cond_26

    .line 902
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v21

    goto :goto_1d

    .line 901
    .end local v21    # "fmTop":I
    .restart local v1    # "fmTop":I
    :cond_25
    move/from16 v21, v1

    .line 905
    .end local v1    # "fmTop":I
    .restart local v21    # "fmTop":I
    :cond_26
    move v1, v3

    move/from16 v60, v20

    move/from16 v61, v24

    move v3, v0

    move v0, v7

    move/from16 v7, v21

    .end local v20    # "here":I
    .end local v21    # "fmTop":I
    .end local v24    # "v":I
    .local v0, "fmDescent":I
    .local v1, "fmAscent":I
    .local v3, "breakIndex":I
    .local v7, "fmTop":I
    .local v60, "here":I
    .local v61, "v":I
    :goto_1e
    if-ge v3, v9, :cond_30

    aget v17, v42, v3

    move/from16 v19, v2

    .end local v2    # "fmBottom":I
    .local v19, "fmBottom":I
    add-int v2, v5, v17

    if-gt v2, v13, :cond_2f

    .line 906
    aget v2, v42, v3

    add-int/2addr v2, v5

    .line 908
    .local v2, "endPos":I
    if-ge v2, v12, :cond_27

    move/from16 v17, v18

    goto :goto_1f

    :cond_27
    move/from16 v17, v23

    :goto_1f
    move/from16 v62, v3

    .end local v3    # "breakIndex":I
    .local v62, "breakIndex":I
    move/from16 v3, v17

    .line 910
    .local v3, "moreChars":Z
    move/from16 v17, v2

    .end local v2    # "endPos":I
    .local v17, "endPos":I
    iget-boolean v2, v15, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    if-eqz v2, :cond_28

    .line 911
    aget v2, v44, v62

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_20

    .line 912
    :cond_28
    move v2, v1

    :goto_20
    nop

    .line 919
    .local v2, "ascent":I
    move/from16 v20, v1

    .end local v1    # "fmAscent":I
    .local v20, "fmAscent":I
    iget-boolean v1, v15, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    if-eqz v1, :cond_29

    .line 921
    aget v1, v45, v62

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_21

    .line 922
    :cond_29
    move v1, v0

    :goto_21
    nop

    .line 925
    .local v1, "descent":I
    move/from16 v21, v0

    .end local v0    # "fmDescent":I
    .local v21, "fmDescent":I
    iget-object v0, v15, Landroid/text/StaticLayout;->mStaticLayoutExt:Landroid/text/IStaticLayoutExt;

    move/from16 v63, v21

    .end local v21    # "fmDescent":I
    .local v63, "fmDescent":I
    move/from16 v29, v6

    move/from16 v65, v20

    move-object/from16 v64, v32

    move v6, v1

    .end local v1    # "descent":I
    .end local v20    # "fmAscent":I
    .end local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .local v6, "descent":I
    .local v29, "remainingLineCount":I
    .local v64, "res":Landroid/graphics/text/LineBreaker$Result;
    .local v65, "fmAscent":I
    move-object/from16 v1, p0

    move/from16 v66, v17

    move-object/from16 v17, v34

    move/from16 v34, v14

    move v14, v2

    move-object/from16 v89, v26

    move-object/from16 v26, v8

    move/from16 v8, v19

    move-object/from16 v19, v89

    .end local v2    # "ascent":I
    .local v8, "fmBottom":I
    .local v14, "ascent":I
    .local v17, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v19, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v26, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v34, "spanStart":I
    .local v66, "endPos":I
    move-object/from16 v2, p1

    move/from16 v67, v4

    .end local v4    # "paraEnd":I
    .local v67, "paraEnd":I
    move-object/from16 v4, v35

    move/from16 v68, v5

    .end local v5    # "paraStart":I
    .local v68, "paraStart":I
    move/from16 v5, v66

    invoke-interface/range {v0 .. v5}, Landroid/text/IStaticLayoutExt;->getLayoutParaSpacingAdded(Landroid/text/StaticLayout;Ljava/lang/Object;ZLjava/lang/CharSequence;I)F

    move-result v0

    .line 926
    .local v0, "builderParaSpacingAdded":F
    int-to-float v1, v8

    add-float/2addr v1, v0

    float-to-int v1, v1

    .line 927
    .end local v8    # "fmBottom":I
    .local v1, "fmBottom":I
    int-to-float v2, v6

    add-float/2addr v2, v0

    float-to-int v2, v2

    .line 933
    .end local v6    # "descent":I
    .local v2, "descent":I
    iget-boolean v4, v15, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    if-eqz v4, :cond_2c

    .line 934
    if-ge v14, v7, :cond_2a

    .line 935
    move v7, v14

    .line 937
    :cond_2a
    if-le v2, v1, :cond_2b

    .line 938
    move v1, v2

    move v4, v7

    goto :goto_22

    .line 937
    :cond_2b
    move v4, v7

    goto :goto_22

    .line 933
    :cond_2c
    move v4, v7

    .line 942
    .end local v7    # "fmTop":I
    .local v4, "fmTop":I
    :goto_22
    aget-boolean v20, v46, v62

    aget v21, v47, v62

    aget v32, v43, v62

    move/from16 v5, v25

    move/from16 v69, v29

    .end local v25    # "paraIndex":I
    .end local v29    # "remainingLineCount":I
    .local v5, "paraIndex":I
    .local v69, "remainingLineCount":I
    move-object/from16 v6, p0

    move-object/from16 v70, v49

    .end local v49    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v70, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    move-object/from16 v7, v35

    move-object/from16 v71, v17

    move/from16 v74, v18

    move-object/from16 v72, v19

    move/from16 v73, v23

    move-object/from16 v49, v26

    .end local v17    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v19    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v26    # "measuredPara":Landroid/text/MeasuredParagraph;
    .local v49, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v71, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v72, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    move/from16 v8, v60

    move/from16 v75, v33

    move-object/from16 v76, v50

    move/from16 v50, v9

    .end local v9    # "breakCount":I
    .end local v33    # "ellipsizedWidth":F
    .local v50, "breakCount":I
    .local v75, "ellipsizedWidth":F
    .local v76, "spanned":Landroid/text/Spanned;
    move/from16 v9, v66

    move/from16 v77, v0

    move-object/from16 v78, v10

    move-object/from16 v0, v28

    .end local v10    # "variableTabStops":[F
    .end local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v77, "builderParaSpacingAdded":F
    .local v78, "variableTabStops":[F
    move v10, v14

    move-object/from16 v80, v11

    move/from16 v81, v27

    move-object/from16 v79, v30

    .end local v11    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v27    # "restWidth":I
    .end local v30    # "paint":Landroid/text/TextPaint;
    .local v79, "paint":Landroid/text/TextPaint;
    .local v80, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v81, "restWidth":I
    move v11, v2

    move/from16 v82, v12

    .end local v12    # "bufEnd":I
    .local v82, "bufEnd":I
    move v12, v4

    move/from16 v83, v2

    move/from16 v84, v4

    move v4, v13

    move/from16 v2, v31

    .end local v13    # "spanEnd":I
    .end local v31    # "bufStart":I
    .local v2, "bufStart":I
    .local v4, "spanEnd":I
    .local v83, "descent":I
    .local v84, "fmTop":I
    move v13, v1

    move/from16 v85, v1

    move/from16 v87, v14

    move/from16 v86, v34

    move-object/from16 v1, v35

    move/from16 v35, v16

    .end local v14    # "ascent":I
    .end local v16    # "firstWidthLineCount":I
    .end local v34    # "spanStart":I
    .local v1, "source":Ljava/lang/CharSequence;
    .local v35, "firstWidthLineCount":I
    .local v85, "fmBottom":I
    .local v86, "spanStart":I
    .local v87, "ascent":I
    move/from16 v14, v61

    move-object/from16 v88, v0

    move-object v0, v15

    .end local v0    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v88, "textDir":Landroid/text/TextDirectionHeuristic;
    move/from16 v15, v53

    move/from16 v16, v54

    move-object/from16 v17, v37

    move-object/from16 v18, v36

    move-object/from16 v19, v80

    move-object/from16 v23, v49

    move/from16 v24, v82

    move/from16 v25, p2

    move/from16 v26, p3

    move/from16 v27, v55

    move-object/from16 v28, v38

    move/from16 v29, v68

    move-object/from16 v30, v71

    move/from16 v31, v75

    move-object/from16 v33, v79

    move/from16 v34, v3

    invoke-direct/range {v6 .. v34}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v61

    .line 950
    move/from16 v6, v66

    .end local v66    # "endPos":I
    .local v6, "endPos":I
    if-ge v6, v4, :cond_2d

    .line 952
    move-object/from16 v9, v80

    .end local v80    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    iget v7, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 953
    .end local v84    # "fmTop":I
    .restart local v7    # "fmTop":I
    iget v8, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 954
    .end local v85    # "fmBottom":I
    .restart local v8    # "fmBottom":I
    iget v10, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 955
    .end local v65    # "fmAscent":I
    .local v10, "fmAscent":I
    iget v11, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v89, v11

    move v11, v7

    move/from16 v7, v89

    move/from16 v90, v10

    move v10, v8

    move/from16 v8, v90

    .end local v63    # "fmDescent":I
    .local v11, "fmDescent":I
    goto :goto_23

    .line 957
    .end local v7    # "fmTop":I
    .end local v8    # "fmBottom":I
    .end local v9    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v10    # "fmAscent":I
    .end local v11    # "fmDescent":I
    .restart local v63    # "fmDescent":I
    .restart local v65    # "fmAscent":I
    .restart local v80    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v84    # "fmTop":I
    .restart local v85    # "fmBottom":I
    :cond_2d
    move-object/from16 v9, v80

    .end local v80    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v9    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    move/from16 v7, v73

    .end local v63    # "fmDescent":I
    .local v7, "fmDescent":I
    move/from16 v8, v73

    .end local v65    # "fmAscent":I
    .local v8, "fmAscent":I
    move/from16 v10, v73

    .end local v85    # "fmBottom":I
    .local v10, "fmBottom":I
    move/from16 v11, v73

    .line 960
    .end local v84    # "fmTop":I
    .local v11, "fmTop":I
    :goto_23
    move/from16 v60, v6

    .line 961
    add-int/lit8 v12, v62, 0x1

    .line 963
    .end local v62    # "breakIndex":I
    .local v12, "breakIndex":I
    iget v13, v0, Landroid/text/StaticLayout;->mLineCount:I

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v13, v14, :cond_2e

    iget-boolean v13, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v13, :cond_2e

    .line 964
    return-void

    .line 966
    .end local v3    # "moreChars":Z
    .end local v6    # "endPos":I
    .end local v77    # "builderParaSpacingAdded":F
    .end local v83    # "descent":I
    .end local v87    # "ascent":I
    :cond_2e
    move-object v15, v0

    move/from16 v31, v2

    move v13, v4

    move/from16 v25, v5

    move v0, v7

    move v2, v10

    move v7, v11

    move v3, v12

    move/from16 v16, v35

    move-object/from16 v32, v64

    move/from16 v4, v67

    move/from16 v5, v68

    move/from16 v6, v69

    move-object/from16 v34, v71

    move-object/from16 v26, v72

    move/from16 v23, v73

    move/from16 v18, v74

    move/from16 v33, v75

    move-object/from16 v10, v78

    move-object/from16 v30, v79

    move/from16 v27, v81

    move/from16 v12, v82

    move/from16 v14, v86

    move-object/from16 v28, v88

    move-object/from16 v35, v1

    move v1, v8

    move-object v11, v9

    move-object/from16 v8, v49

    move/from16 v9, v50

    move-object/from16 v49, v70

    move-object/from16 v50, v76

    goto/16 :goto_1e

    .line 905
    .end local v2    # "bufStart":I
    .end local v64    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v67    # "paraEnd":I
    .end local v68    # "paraStart":I
    .end local v69    # "remainingLineCount":I
    .end local v70    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v71    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v72    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v75    # "ellipsizedWidth":F
    .end local v76    # "spanned":Landroid/text/Spanned;
    .end local v78    # "variableTabStops":[F
    .end local v79    # "paint":Landroid/text/TextPaint;
    .end local v81    # "restWidth":I
    .end local v82    # "bufEnd":I
    .end local v86    # "spanStart":I
    .end local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "fmDescent":I
    .local v1, "fmAscent":I
    .local v3, "breakIndex":I
    .local v4, "paraEnd":I
    .local v5, "paraStart":I
    .local v6, "remainingLineCount":I
    .local v7, "fmTop":I
    .local v8, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v9, "breakCount":I
    .local v10, "variableTabStops":[F
    .local v11, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v12, "bufEnd":I
    .restart local v13    # "spanEnd":I
    .local v14, "spanStart":I
    .restart local v16    # "firstWidthLineCount":I
    .local v19, "fmBottom":I
    .restart local v25    # "paraIndex":I
    .local v26, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v27    # "restWidth":I
    .restart local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v30    # "paint":Landroid/text/TextPaint;
    .restart local v31    # "bufStart":I
    .restart local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v33    # "ellipsizedWidth":F
    .local v34, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v35, "source":Ljava/lang/CharSequence;
    .local v49, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v50, "spanned":Landroid/text/Spanned;
    :cond_2f
    move/from16 v63, v0

    move/from16 v65, v1

    move/from16 v62, v3

    move/from16 v67, v4

    move/from16 v68, v5

    move/from16 v69, v6

    move-object/from16 v78, v10

    move/from16 v82, v12

    move v4, v13

    move/from16 v86, v14

    move-object v0, v15

    move/from16 v74, v18

    move/from16 v73, v23

    move/from16 v5, v25

    move-object/from16 v72, v26

    move/from16 v81, v27

    move-object/from16 v88, v28

    move-object/from16 v79, v30

    move/from16 v2, v31

    move-object/from16 v64, v32

    move/from16 v75, v33

    move-object/from16 v71, v34

    move-object/from16 v1, v35

    move-object/from16 v70, v49

    move-object/from16 v76, v50

    move-object/from16 v49, v8

    move/from16 v50, v9

    move-object v9, v11

    move/from16 v35, v16

    move/from16 v8, v19

    .end local v0    # "fmDescent":I
    .end local v3    # "breakIndex":I
    .end local v6    # "remainingLineCount":I
    .end local v10    # "variableTabStops":[F
    .end local v11    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v12    # "bufEnd":I
    .end local v13    # "spanEnd":I
    .end local v14    # "spanStart":I
    .end local v16    # "firstWidthLineCount":I
    .end local v19    # "fmBottom":I
    .end local v25    # "paraIndex":I
    .end local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v27    # "restWidth":I
    .end local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v30    # "paint":Landroid/text/TextPaint;
    .end local v31    # "bufStart":I
    .end local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v33    # "ellipsizedWidth":F
    .end local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v1, "source":Ljava/lang/CharSequence;
    .restart local v2    # "bufStart":I
    .local v4, "spanEnd":I
    .local v5, "paraIndex":I
    .local v8, "fmBottom":I
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v35, "firstWidthLineCount":I
    .local v49, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v50, "breakCount":I
    .restart local v62    # "breakIndex":I
    .restart local v63    # "fmDescent":I
    .restart local v64    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v65    # "fmAscent":I
    .restart local v67    # "paraEnd":I
    .restart local v68    # "paraStart":I
    .restart local v69    # "remainingLineCount":I
    .restart local v70    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v71    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v72    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v75    # "ellipsizedWidth":F
    .restart local v76    # "spanned":Landroid/text/Spanned;
    .restart local v78    # "variableTabStops":[F
    .restart local v79    # "paint":Landroid/text/TextPaint;
    .restart local v81    # "restWidth":I
    .restart local v82    # "bufEnd":I
    .restart local v86    # "spanStart":I
    .restart local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    goto :goto_24

    .end local v62    # "breakIndex":I
    .end local v63    # "fmDescent":I
    .end local v64    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v65    # "fmAscent":I
    .end local v67    # "paraEnd":I
    .end local v68    # "paraStart":I
    .end local v69    # "remainingLineCount":I
    .end local v70    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v71    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v72    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v75    # "ellipsizedWidth":F
    .end local v76    # "spanned":Landroid/text/Spanned;
    .end local v78    # "variableTabStops":[F
    .end local v79    # "paint":Landroid/text/TextPaint;
    .end local v81    # "restWidth":I
    .end local v82    # "bufEnd":I
    .end local v86    # "spanStart":I
    .end local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v0    # "fmDescent":I
    .local v1, "fmAscent":I
    .local v2, "fmBottom":I
    .restart local v3    # "breakIndex":I
    .local v4, "paraEnd":I
    .local v5, "paraStart":I
    .restart local v6    # "remainingLineCount":I
    .local v8, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v9, "breakCount":I
    .restart local v10    # "variableTabStops":[F
    .restart local v11    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v12    # "bufEnd":I
    .restart local v13    # "spanEnd":I
    .restart local v14    # "spanStart":I
    .restart local v16    # "firstWidthLineCount":I
    .restart local v25    # "paraIndex":I
    .restart local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v27    # "restWidth":I
    .restart local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v30    # "paint":Landroid/text/TextPaint;
    .restart local v31    # "bufStart":I
    .restart local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v33    # "ellipsizedWidth":F
    .restart local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v35, "source":Ljava/lang/CharSequence;
    .local v49, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v50, "spanned":Landroid/text/Spanned;
    :cond_30
    move/from16 v63, v0

    move/from16 v65, v1

    move/from16 v62, v3

    move/from16 v67, v4

    move/from16 v68, v5

    move/from16 v69, v6

    move-object/from16 v78, v10

    move/from16 v82, v12

    move v4, v13

    move/from16 v86, v14

    move-object v0, v15

    move/from16 v74, v18

    move/from16 v73, v23

    move/from16 v5, v25

    move-object/from16 v72, v26

    move/from16 v81, v27

    move-object/from16 v88, v28

    move-object/from16 v79, v30

    move-object/from16 v64, v32

    move/from16 v75, v33

    move-object/from16 v71, v34

    move-object/from16 v1, v35

    move-object/from16 v70, v49

    move-object/from16 v76, v50

    move-object/from16 v49, v8

    move/from16 v50, v9

    move-object v9, v11

    move/from16 v35, v16

    move v8, v2

    move/from16 v2, v31

    .line 876
    .end local v0    # "fmDescent":I
    .end local v3    # "breakIndex":I
    .end local v6    # "remainingLineCount":I
    .end local v10    # "variableTabStops":[F
    .end local v11    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v12    # "bufEnd":I
    .end local v13    # "spanEnd":I
    .end local v14    # "spanStart":I
    .end local v16    # "firstWidthLineCount":I
    .end local v25    # "paraIndex":I
    .end local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v27    # "restWidth":I
    .end local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v30    # "paint":Landroid/text/TextPaint;
    .end local v31    # "bufStart":I
    .end local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v33    # "ellipsizedWidth":F
    .end local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v1, "source":Ljava/lang/CharSequence;
    .local v2, "bufStart":I
    .local v4, "spanEnd":I
    .local v5, "paraIndex":I
    .local v8, "fmBottom":I
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v35, "firstWidthLineCount":I
    .local v49, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v50, "breakCount":I
    .restart local v62    # "breakIndex":I
    .restart local v63    # "fmDescent":I
    .restart local v64    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v65    # "fmAscent":I
    .restart local v67    # "paraEnd":I
    .restart local v68    # "paraStart":I
    .restart local v69    # "remainingLineCount":I
    .restart local v70    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v71    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v72    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v75    # "ellipsizedWidth":F
    .restart local v76    # "spanned":Landroid/text/Spanned;
    .restart local v78    # "variableTabStops":[F
    .restart local v79    # "paint":Landroid/text/TextPaint;
    .restart local v81    # "restWidth":I
    .restart local v82    # "bufEnd":I
    .restart local v86    # "spanStart":I
    .restart local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    :goto_24
    move v14, v4

    move-object v15, v0

    move/from16 v31, v2

    move/from16 v25, v5

    move v2, v8

    move/from16 v16, v35

    move-object/from16 v8, v49

    move/from16 v18, v51

    move/from16 v17, v56

    move/from16 v13, v59

    move/from16 v0, v60

    move/from16 v24, v61

    move/from16 v19, v62

    move-object/from16 v32, v64

    move/from16 v3, v65

    move/from16 v4, v67

    move/from16 v5, v68

    move/from16 v6, v69

    move-object/from16 v49, v70

    move-object/from16 v34, v71

    move-object/from16 v26, v72

    move/from16 v33, v75

    move-object/from16 v10, v78

    move-object/from16 v30, v79

    move/from16 v11, v81

    move/from16 v12, v82

    move-object/from16 v28, v88

    move-object/from16 v35, v1

    move v1, v7

    move-object/from16 v56, v9

    move/from16 v9, v50

    move/from16 v7, v63

    move-object/from16 v50, v76

    .end local v86    # "spanStart":I
    .restart local v14    # "spanStart":I
    goto/16 :goto_1c

    .end local v51    # "spanEndCacheIndex":I
    .end local v59    # "firstWidth":I
    .end local v60    # "here":I
    .end local v61    # "v":I
    .end local v62    # "breakIndex":I
    .end local v63    # "fmDescent":I
    .end local v64    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v65    # "fmAscent":I
    .end local v67    # "paraEnd":I
    .end local v68    # "paraStart":I
    .end local v69    # "remainingLineCount":I
    .end local v70    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v71    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v72    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v75    # "ellipsizedWidth":F
    .end local v76    # "spanned":Landroid/text/Spanned;
    .end local v78    # "variableTabStops":[F
    .end local v79    # "paint":Landroid/text/TextPaint;
    .end local v81    # "restWidth":I
    .end local v82    # "bufEnd":I
    .end local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "here":I
    .local v1, "fmTop":I
    .local v2, "fmBottom":I
    .local v3, "fmAscent":I
    .local v4, "paraEnd":I
    .local v5, "paraStart":I
    .restart local v6    # "remainingLineCount":I
    .local v7, "fmDescent":I
    .local v8, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v9, "breakCount":I
    .restart local v10    # "variableTabStops":[F
    .local v11, "restWidth":I
    .restart local v12    # "bufEnd":I
    .local v13, "firstWidth":I
    .restart local v16    # "firstWidthLineCount":I
    .local v17, "fmCacheIndex":I
    .restart local v18    # "spanEndCacheIndex":I
    .local v19, "breakIndex":I
    .restart local v24    # "v":I
    .restart local v25    # "paraIndex":I
    .restart local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v30    # "paint":Landroid/text/TextPaint;
    .restart local v31    # "bufStart":I
    .restart local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v33    # "ellipsizedWidth":F
    .restart local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v35, "source":Ljava/lang/CharSequence;
    .local v49, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v50, "spanned":Landroid/text/Spanned;
    .local v56, "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_31
    move/from16 v20, v0

    move/from16 v67, v4

    move/from16 v68, v5

    move/from16 v69, v6

    move-object/from16 v78, v10

    move/from16 v81, v11

    move/from16 v82, v12

    move/from16 v59, v13

    move/from16 v86, v14

    move-object v0, v15

    move/from16 v5, v25

    move-object/from16 v72, v26

    move-object/from16 v88, v28

    move-object/from16 v79, v30

    move-object/from16 v64, v32

    move/from16 v75, v33

    move-object/from16 v71, v34

    move-object/from16 v70, v49

    move-object/from16 v76, v50

    const/16 v73, 0x0

    const/16 v74, 0x1

    move v4, v1

    move-object/from16 v49, v8

    move/from16 v50, v9

    move-object/from16 v1, v35

    move-object/from16 v9, v56

    move v8, v2

    move/from16 v35, v16

    move/from16 v2, v31

    .line 969
    .end local v0    # "here":I
    .end local v6    # "remainingLineCount":I
    .end local v10    # "variableTabStops":[F
    .end local v11    # "restWidth":I
    .end local v12    # "bufEnd":I
    .end local v13    # "firstWidth":I
    .end local v14    # "spanStart":I
    .end local v16    # "firstWidthLineCount":I
    .end local v25    # "paraIndex":I
    .end local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v28    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v30    # "paint":Landroid/text/TextPaint;
    .end local v31    # "bufStart":I
    .end local v32    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v33    # "ellipsizedWidth":F
    .end local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v1, "source":Ljava/lang/CharSequence;
    .local v2, "bufStart":I
    .local v4, "fmTop":I
    .local v5, "paraIndex":I
    .local v8, "fmBottom":I
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v20, "here":I
    .local v35, "firstWidthLineCount":I
    .local v49, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v50, "breakCount":I
    .restart local v59    # "firstWidth":I
    .restart local v64    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v67    # "paraEnd":I
    .restart local v68    # "paraStart":I
    .restart local v69    # "remainingLineCount":I
    .restart local v70    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v71    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v72    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v75    # "ellipsizedWidth":F
    .restart local v76    # "spanned":Landroid/text/Spanned;
    .restart local v78    # "variableTabStops":[F
    .restart local v79    # "paint":Landroid/text/TextPaint;
    .restart local v81    # "restWidth":I
    .restart local v82    # "bufEnd":I
    .restart local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    move/from16 v10, v67

    move/from16 v6, v82

    .end local v67    # "paraEnd":I
    .end local v82    # "bufEnd":I
    .local v6, "bufEnd":I
    .local v10, "paraEnd":I
    if-ne v10, v6, :cond_32

    .line 970
    move/from16 v5, v24

    move-object/from16 v3, v36

    move/from16 v16, v41

    move-object/from16 v17, v42

    move-object/from16 v18, v43

    move-object/from16 v19, v44

    move-object/from16 v20, v45

    move-object/from16 v21, v46

    move-object/from16 v4, v47

    goto/16 :goto_25

    .line 741
    .end local v3    # "fmAscent":I
    .end local v4    # "fmTop":I
    .end local v7    # "fmDescent":I
    .end local v8    # "fmBottom":I
    .end local v10    # "paraEnd":I
    .end local v17    # "fmCacheIndex":I
    .end local v18    # "spanEndCacheIndex":I
    .end local v19    # "breakIndex":I
    .end local v20    # "here":I
    .end local v35    # "firstWidthLineCount":I
    .end local v37    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v38    # "chs":[C
    .end local v39    # "spanEndCache":[I
    .end local v40    # "fmCache":[I
    .end local v48    # "ellipsisMayBeApplied":Z
    .end local v49    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v50    # "breakCount":I
    .end local v59    # "firstWidth":I
    .end local v64    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v68    # "paraStart":I
    .end local v69    # "remainingLineCount":I
    .end local v78    # "variableTabStops":[F
    .end local v81    # "restWidth":I
    :cond_32
    add-int/lit8 v3, v5, 0x1

    move-object v15, v0

    move-object v14, v1

    move v13, v2

    move v12, v6

    move-object/from16 v56, v9

    move-object/from16 v1, v36

    move/from16 v0, v41

    move-object/from16 v17, v42

    move-object/from16 v18, v43

    move-object/from16 v19, v44

    move-object/from16 v20, v45

    move-object/from16 v21, v46

    move-object/from16 v23, v47

    move-object/from16 v7, v70

    move-object/from16 v34, v71

    move-object/from16 v26, v72

    move/from16 v8, v73

    move/from16 v33, v75

    move-object/from16 v9, v76

    move-object/from16 v11, v79

    move-object/from16 v10, v88

    move v6, v3

    .end local v5    # "paraIndex":I
    .local v3, "paraIndex":I
    goto/16 :goto_c

    .end local v2    # "bufStart":I
    .end local v3    # "paraIndex":I
    .end local v36    # "chooseHtv":[I
    .end local v41    # "lineBreakCapacity":I
    .end local v42    # "breaks":[I
    .end local v43    # "lineWidths":[F
    .end local v44    # "ascents":[F
    .end local v45    # "descents":[F
    .end local v46    # "hasTabs":[Z
    .end local v47    # "hyphenEdits":[I
    .end local v70    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v71    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v72    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v75    # "ellipsizedWidth":F
    .end local v76    # "spanned":Landroid/text/Spanned;
    .end local v79    # "paint":Landroid/text/TextPaint;
    .end local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "lineBreakCapacity":I
    .local v1, "chooseHtv":[I
    .local v6, "paraIndex":I
    .local v7, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v9, "spanned":Landroid/text/Spanned;
    .local v10, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v11, "paint":Landroid/text/TextPaint;
    .restart local v12    # "bufEnd":I
    .local v13, "bufStart":I
    .local v14, "source":Ljava/lang/CharSequence;
    .local v17, "breaks":[I
    .local v18, "lineWidths":[F
    .local v19, "ascents":[F
    .local v20, "descents":[F
    .local v21, "hasTabs":[Z
    .restart local v23    # "hyphenEdits":[I
    .restart local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v33    # "ellipsizedWidth":F
    .restart local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v56    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_33
    move/from16 v16, v0

    move-object/from16 v36, v1

    move v5, v6

    move-object/from16 v70, v7

    move-object/from16 v76, v9

    move-object/from16 v88, v10

    move-object/from16 v79, v11

    move v6, v12

    move v2, v13

    move-object v1, v14

    move-object v0, v15

    move-object/from16 v72, v26

    move/from16 v75, v33

    move-object/from16 v71, v34

    move-object/from16 v9, v56

    .end local v0    # "lineBreakCapacity":I
    .end local v7    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v10    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v11    # "paint":Landroid/text/TextPaint;
    .end local v12    # "bufEnd":I
    .end local v13    # "bufStart":I
    .end local v14    # "source":Ljava/lang/CharSequence;
    .end local v26    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v33    # "ellipsizedWidth":F
    .end local v34    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .end local v56    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v1, "source":Ljava/lang/CharSequence;
    .restart local v2    # "bufStart":I
    .restart local v5    # "paraIndex":I
    .local v6, "bufEnd":I
    .local v9, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v16, "lineBreakCapacity":I
    .restart local v36    # "chooseHtv":[I
    .restart local v70    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v71    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v72    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v75    # "ellipsizedWidth":F
    .restart local v76    # "spanned":Landroid/text/Spanned;
    .restart local v79    # "paint":Landroid/text/TextPaint;
    .restart local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v4, v23

    move/from16 v5, v24

    move-object/from16 v3, v36

    .line 974
    .end local v23    # "hyphenEdits":[I
    .end local v24    # "v":I
    .end local v36    # "chooseHtv":[I
    .local v3, "chooseHtv":[I
    .local v4, "hyphenEdits":[I
    .local v5, "v":I
    :goto_25
    if-eq v6, v2, :cond_35

    add-int/lit8 v12, v6, -0x1

    invoke-interface {v1, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_34

    goto :goto_26

    :cond_34
    move-object/from16 v10, v79

    move-object/from16 v7, v88

    goto :goto_27

    :cond_35
    :goto_26
    iget v7, v0, Landroid/text/StaticLayout;->mLineCount:I

    iget v8, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v7, v8, :cond_36

    .line 976
    nop

    .line 977
    move-object/from16 v7, v88

    const/4 v8, 0x0

    .end local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v7, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static {v1, v6, v6, v7, v8}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v8

    .local v8, "measuredPara":Landroid/text/MeasuredParagraph;
    move-object/from16 v40, v8

    .line 978
    move-object/from16 v10, v79

    .end local v79    # "paint":Landroid/text/TextPaint;
    .local v10, "paint":Landroid/text/TextPaint;
    invoke-virtual {v10, v9}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 979
    iget v11, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v27, v11

    iget v11, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v28, v11

    iget v11, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v29, v11

    iget v11, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v30, v11

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v45, 0x0

    const/16 v49, 0x0

    const/16 v51, 0x0

    move-object/from16 v23, p0

    move-object/from16 v24, v1

    move/from16 v25, v6

    move/from16 v26, v6

    move/from16 v31, v5

    move/from16 v32, v53

    move/from16 v33, v54

    move-object/from16 v36, v9

    move/from16 v39, v22

    move/from16 v41, v6

    move/from16 v42, p2

    move/from16 v43, p3

    move/from16 v44, v55

    move/from16 v46, v2

    move-object/from16 v47, v71

    move/from16 v48, v75

    move-object/from16 v50, v10

    invoke-direct/range {v23 .. v51}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v5

    goto :goto_27

    .line 974
    .end local v7    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v8    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v10    # "paint":Landroid/text/TextPaint;
    .restart local v79    # "paint":Landroid/text/TextPaint;
    .restart local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    :cond_36
    move-object/from16 v10, v79

    move-object/from16 v7, v88

    .line 990
    .end local v79    # "paint":Landroid/text/TextPaint;
    .end local v88    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v7    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v10    # "paint":Landroid/text/TextPaint;
    :goto_27
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist getBottomPadding()I
    .locals 1

    .line 1354
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1429
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 1430
    const/4 v0, 0x0

    return v0

    .line 1433
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x6

    aget v0, v1, v0

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1438
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 1439
    const/4 v0, 0x0

    return v0

    .line 1442
    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x5

    aget v0, v1, v0

    return v0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    .line 1447
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 2
    .param p1, "lineNumber"    # I

    .line 1392
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getHeight(Z)I
    .locals 4
    .param p1, "cap"    # Z

    .line 1464
    const/4 v0, -0x1

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_0

    const/4 v1, 0x5

    .line 1465
    const-string v2, "StaticLayout"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1466
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " lineCount:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_0
    if-eqz p1, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_1

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_1

    .line 1472
    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    .line 1471
    :goto_0
    return v1
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 4
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .line 1400
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    .line 1401
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_0

    .line 1402
    return v1

    .line 1404
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 1406
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_3

    .line 1407
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_2

    .line 1408
    return v1

    .line 1410
    :cond_2
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    .line 1412
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_6

    .line 1413
    const/4 v0, 0x0

    .line 1414
    .local v0, "left":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_4

    .line 1415
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1417
    :cond_4
    const/4 v1, 0x0

    .line 1418
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    .line 1419
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1421
    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 1423
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled alignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .line 1336
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public whitelist getLineCount()I
    .locals 1

    .line 1303
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1321
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .line 1341
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 1344
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    .line 1342
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1316
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .line 1282
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1283
    .local v0, "high":I
    const/4 v1, -0x1

    .line 1285
    .local v1, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1286
    .local v2, "lines":[I
    :goto_0
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1287
    add-int v3, v0, v1

    shr-int/2addr v3, v4

    .line 1288
    .local v3, "guess":I
    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_0

    .line 1289
    move v0, v3

    goto :goto_0

    .line 1291
    :cond_0
    move v1, v3

    goto :goto_0

    .line 1294
    .end local v3    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 1295
    const/4 v3, 0x0

    return v3

    .line 1297
    :cond_2
    return v1
.end method

.method public whitelist getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1326
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1308
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1331
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 2
    .param p1, "lineNumber"    # I

    .line 1380
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public whitelist getTopPadding()I
    .locals 1

    .line 1349
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 1

    .line 1452
    iget-boolean v0, p0, Landroid/text/StaticLayout;->mFallbackLineSpacing:Z

    return v0
.end method
