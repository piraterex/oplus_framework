.class public final Landroid/widget/SelectionActionModeHelper;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionResult;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;,
        Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;,
        Landroid/widget/SelectionActionModeHelper$SelectionTracker;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SelectActionModeHelper"


# instance fields
.field private final greylist-max-o mEditor:Landroid/widget/Editor;

.field private final greylist-max-o mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

.field private final greylist-max-o mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

.field private greylist-max-o mTextClassification:Landroid/view/textclassifier/TextClassification;

.field private greylist-max-o mTextClassificationAsyncTask:Landroid/os/AsyncTask;

.field private final greylist-max-o mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

.field private final greylist-max-o mTextView:Landroid/widget/TextView;


# direct methods
.method public static synthetic blacklist $r8$lambda$QGsfAHeEQDAX4_2YJl5mx3lfEac(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Yc5lPImurhE66R1VTF4iBgAXyjw(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mMDhXh3JQs_q5UuyTdq2CLenZJk(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionModeWithSmartSelectAnimation(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vLYpP9ImRKI2GwrDIuuV9RLn8Xk(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startLinkActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smgetText(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsortSelectionIndices(II)[I
    .locals 0

    invoke-static {p0, p1}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndices(II)[I

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smsortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I
    .locals 0

    invoke-static {p0}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object p0

    return-object p0
.end method

.method constructor greylist-max-o <init>(Landroid/widget/Editor;)V
    .locals 9
    .param p1, "editor"    # Landroid/widget/Editor;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Editor;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 91
    invoke-virtual {v0}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 92
    new-instance v8, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 93
    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 94
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;)V

    .line 95
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 96
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    iput-object v8, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 97
    new-instance v1, Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-direct {v1, v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 99
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->getTextClassificationSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Landroid/widget/SmartSelectSprite;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 101
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mHighlightColor:I

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda8;

    invoke-direct {v4, v0}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda8;-><init>(Landroid/widget/TextView;)V

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/SmartSelectSprite;-><init>(Landroid/content/Context;ILjava/lang/Runnable;)V

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    goto :goto_0

    .line 103
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    .line 105
    :goto_0
    return-void
.end method

.method private greylist-max-o cancelAsyncTask()V
    .locals 3

    .line 258
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 259
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 260
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 262
    :cond_0
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 263
    return-void
.end method

.method private greylist-max-o cancelSmartSelectAnimation()V
    .locals 1

    .line 520
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/widget/SmartSelectSprite;->cancelAnimation()V

    .line 523
    :cond_0
    return-void
.end method

.method private greylist-max-o convertSelectionToRectangles(Landroid/text/Layout;II)Ljava/util/List;
    .locals 4
    .param p1, "layout"    # Landroid/text/Layout;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/Layout;",
            "II)",
            "Ljava/util/List<",
            "Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;",
            ">;"
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;>;"
    new-instance v1, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda5;-><init>(Ljava/util/List;)V

    .line 379
    .local v1, "consumer":Landroid/text/Layout$SelectionRectangleConsumer;
    if-eqz p1, :cond_0

    .line 380
    invoke-virtual {p1, p2, p3, v1}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 384
    :cond_0
    new-instance v2, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda6;-><init>()V

    sget-object v3, Landroid/widget/SmartSelectSprite;->RECTANGLE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 388
    return-object v0
.end method

.method private static greylist-max-o getActionType(I)I
    .locals 1
    .param p0, "menuItemId"    # I

    .line 1251
    sparse-switch p0, :sswitch_data_0

    .line 1266
    const/16 v0, 0x6c

    return v0

    .line 1264
    :sswitch_0
    const/16 v0, 0x69

    return v0

    .line 1262
    :sswitch_1
    const/16 v0, 0x68

    return v0

    .line 1260
    :sswitch_2
    const/16 v0, 0x66

    return v0

    .line 1257
    :sswitch_3
    const/16 v0, 0x65

    return v0

    .line 1255
    :sswitch_4
    const/16 v0, 0x67

    return v0

    .line 1253
    :sswitch_5
    const/16 v0, 0xc8

    return v0

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_5
        0x1020020 -> :sswitch_4
        0x1020021 -> :sswitch_3
        0x1020022 -> :sswitch_2
        0x1020031 -> :sswitch_2
        0x1020035 -> :sswitch_1
        0x1020041 -> :sswitch_0
    .end sparse-switch
.end method

.method private static greylist-max-o getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 1273
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1274
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1275
    return-object v0

    .line 1277
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method private greylist-max-o getTextClassificationSettings()Landroid/view/textclassifier/TextClassificationConstants;
    .locals 1

    .line 254
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/textclassifier/TextClassificationManager;->getSettings(Landroid/content/Context;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 7
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 489
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelSmartSelectAnimation()V

    .line 490
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmClassification(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 491
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    move-result-object v1

    .line 492
    .local v1, "actionMode":Landroid/view/ActionMode;
    if-eqz v1, :cond_1

    .line 493
    invoke-virtual {v1}, Landroid/view/ActionMode;->invalidate()V

    .line 495
    :cond_1
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object v2

    .line 496
    .local v2, "sortedSelectionIndices":[I
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x1

    aget v5, v2, v5

    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionUpdated(IILandroid/view/textclassifier/TextClassification;)V

    .line 498
    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 499
    return-void
.end method

.method static synthetic blacklist lambda$convertSelectionToRectangles$1(ILandroid/graphics/RectF;)Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;
    .locals 1
    .param p0, "textSelectionLayout"    # I
    .param p1, "r"    # Landroid/graphics/RectF;

    .line 373
    new-instance v0, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;

    invoke-direct {v0, p1, p0}, Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;-><init>(Landroid/graphics/RectF;I)V

    return-object v0
.end method

.method static synthetic blacklist lambda$convertSelectionToRectangles$2(Ljava/util/List;FFFFI)V
    .locals 3
    .param p0, "result"    # Ljava/util/List;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "textSelectionLayout"    # I

    .line 369
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda7;

    invoke-direct {v2, p5}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-static {p0, v0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->mergeRectangleIntoList(Ljava/util/List;Landroid/graphics/RectF;Ljava/util/function/Function;Ljava/util/function/Function;)V

    return-void
.end method

.method public static greylist-max-o mergeRectangleIntoList(Ljava/util/List;Landroid/graphics/RectF;Ljava/util/function/Function;Ljava/util/function/Function;)V
    .locals 8
    .param p1, "candidate"    # Landroid/graphics/RectF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Landroid/graphics/RectF;",
            "Ljava/util/function/Function<",
            "TT;",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/function/Function<",
            "Landroid/graphics/RectF;",
            "TT;>;)V"
        }
    .end annotation

    .line 414
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "extractor":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Landroid/graphics/RectF;>;"
    .local p3, "packer":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/graphics/RectF;TT;>;"
    invoke-virtual {p1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    return-void

    .line 418
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 419
    .local v0, "elementCount":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v0, :cond_8

    .line 420
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 421
    .local v2, "existingRectangle":Landroid/graphics/RectF;
    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 422
    return-void

    .line 424
    :cond_1
    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 425
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 426
    goto :goto_4

    .line 429
    :cond_2
    iget v3, p1, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    iget v3, p1, Landroid/graphics/RectF;->right:F

    iget v6, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v5

    .line 431
    .local v3, "rectanglesContinueEachOther":Z
    :goto_2
    iget v6, p1, Landroid/graphics/RectF;->top:F

    iget v7, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    iget v6, p1, Landroid/graphics/RectF;->bottom:F

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_6

    .line 433
    invoke-static {p1, v2}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v4, v5

    goto :goto_3

    :cond_6
    nop

    .line 436
    .local v4, "canMerge":Z
    :goto_3
    if-eqz v4, :cond_7

    .line 437
    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 438
    invoke-virtual {v2}, Landroid/graphics/RectF;->setEmpty()V

    .line 419
    .end local v2    # "existingRectangle":Landroid/graphics/RectF;
    .end local v3    # "rectanglesContinueEachOther":Z
    .end local v4    # "canMerge":Z
    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v1    # "index":I
    :cond_8
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "index":I
    :goto_5
    if-ltz v1, :cond_a

    .line 443
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    .line 444
    .local v2, "rectangle":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 445
    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 442
    .end local v2    # "rectangle":Landroid/graphics/RectF;
    :cond_9
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 449
    .end local v1    # "index":I
    :cond_a
    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    return-void
.end method

.method public static greylist-max-o movePointInsideNearestRectangle(Landroid/graphics/PointF;Ljava/util/List;Ljava/util/function/Function;)Landroid/graphics/PointF;
    .locals 17
    .param p0, "point"    # Landroid/graphics/PointF;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/graphics/PointF;",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Landroid/graphics/RectF;",
            ">;)",
            "Landroid/graphics/PointF;"
        }
    .end annotation

    .line 457
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "extractor":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Landroid/graphics/RectF;>;"
    move-object/from16 v0, p0

    const/high16 v1, -0x40800000    # -1.0f

    .line 458
    .local v1, "bestX":F
    const/high16 v2, -0x40800000    # -1.0f

    .line 459
    .local v2, "bestY":F
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 461
    .local v3, "bestDistance":D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    .line 462
    .local v5, "elementCount":I
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_0
    if-ge v6, v5, :cond_3

    .line 463
    move-object/from16 v7, p1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p2

    invoke-interface {v9, v8}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/RectF;

    .line 464
    .local v8, "rectangle":Landroid/graphics/RectF;
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 467
    .local v10, "candidateY":F
    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/RectF;->right:F

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    .line 468
    iget v11, v8, Landroid/graphics/RectF;->right:F

    .local v11, "candidateX":F
    goto :goto_1

    .line 469
    .end local v11    # "candidateX":F
    :cond_0
    iget v11, v0, Landroid/graphics/PointF;->x:F

    iget v12, v8, Landroid/graphics/RectF;->left:F

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    .line 470
    iget v11, v8, Landroid/graphics/RectF;->left:F

    .restart local v11    # "candidateX":F
    goto :goto_1

    .line 472
    .end local v11    # "candidateX":F
    :cond_1
    iget v11, v0, Landroid/graphics/PointF;->x:F

    .line 475
    .restart local v11    # "candidateX":F
    :goto_1
    iget v12, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v11

    float-to-double v12, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    iget v14, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v10

    float-to-double v14, v14

    .line 476
    move-object/from16 v16, v8

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    .end local v8    # "rectangle":Landroid/graphics/RectF;
    .local v16, "rectangle":Landroid/graphics/RectF;
    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v12, v7

    .line 478
    .local v12, "candidateDistance":D
    cmpg-double v7, v12, v3

    if-gez v7, :cond_2

    .line 479
    move v1, v11

    .line 480
    move v2, v10

    .line 481
    move-wide v3, v12

    .line 462
    .end local v10    # "candidateY":F
    .end local v11    # "candidateX":F
    .end local v12    # "candidateDistance":D
    .end local v16    # "rectangle":Landroid/graphics/RectF;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v9, p2

    .line 485
    .end local v6    # "index":I
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v6
.end method

.method private greylist-max-o resetTextClassificationHelper()V
    .locals 1

    .line 516
    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper(II)V

    .line 517
    return-void
.end method

.method private greylist-max-o resetTextClassificationHelper(II)V
    .locals 7
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .line 502
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 504
    :cond_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object v0

    .line 505
    .local v0, "sortedSelectionIndices":[I
    const/4 v1, 0x0

    aget p1, v0, v1

    .line 506
    const/4 v1, 0x1

    aget p2, v0, v1

    .line 508
    .end local v0    # "sortedSelectionIndices":[I
    :cond_1
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 509
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda3;-><init>(Landroid/widget/TextView;)V

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 510
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 512
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v6

    .line 508
    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Ljava/util/function/Supplier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    .line 513
    return-void
.end method

.method private greylist-max-o skipTextClassification()Z
    .locals 5

    .line 267
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->usesNoOpTextClassifier()Z

    move-result v0

    .line 269
    .local v0, "noOpTextClassifier":Z
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 271
    .local v1, "noSelection":Z
    :goto_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 272
    invoke-virtual {v2}, Landroid/widget/TextView;->getInputType()I

    move-result v2

    invoke-static {v2}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v3

    .line 273
    .local v2, "password":Z
    :goto_2
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :cond_4
    :goto_3
    return v3
.end method

.method private static blacklist sortSelectionIndices(II)[I
    .locals 3
    .param p0, "selectionStart"    # I
    .param p1, "selectionEnd"    # I

    .line 113
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge p0, p1, :cond_0

    .line 114
    new-array v2, v2, [I

    aput p0, v2, v1

    aput p1, v2, v0

    return-object v2

    .line 116
    :cond_0
    new-array v2, v2, [I

    aput p1, v2, v1

    aput p0, v2, v0

    return-object v2
.end method

.method private static blacklist sortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I
    .locals 3
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 127
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 128
    .local v0, "selectionStart":I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 130
    .local v1, "selectionEnd":I
    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndices(II)[I

    move-result-object v2

    return-object v2
.end method

.method private greylist-max-o startActionMode(ILandroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 5
    .param p1, "actionMode"    # I
    .param p2, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 286
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 287
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-eqz p2, :cond_2

    instance-of v2, v0, Landroid/text/Spannable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 288
    invoke-virtual {v2}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 290
    :cond_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->getTextClassificationSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassificationConstants;->isModelDarkLaunchEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    move-object v2, v0

    check-cast v2, Landroid/text/Spannable;

    invoke-static {p2}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v3

    invoke-static {p2}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 292
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 294
    :cond_1
    invoke-static {p2}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmClassification(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    goto :goto_0

    .line 295
    :cond_2
    if-eqz p2, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 296
    invoke-static {p2}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmClassification(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    goto :goto_0

    .line 298
    :cond_3
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 300
    :goto_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2, p1}, Landroid/widget/Editor;->startActionModeInternal(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 301
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    .line 302
    .local v2, "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 303
    invoke-virtual {v3}, Landroid/widget/TextView;->isTextSelectable()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 304
    :cond_4
    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 306
    :cond_5
    if-eqz p2, :cond_6

    .line 307
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 312
    :pswitch_1
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v3, p2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onLinkSelected(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 313
    goto :goto_1

    .line 309
    :pswitch_2
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v3, p2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSmartSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 319
    .end local v2    # "controller":Landroid/widget/Editor$SelectionModifierCursorController;
    :cond_6
    :goto_1
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Editor;->setRestartActionModeOnNextRefresh(Z)V

    .line 320
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 321
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o startLinkActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 1
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 277
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(ILandroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 278
    return-void
.end method

.method private greylist-max-o startSelectionActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 1
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 281
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(ILandroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 282
    return-void
.end method

.method private greylist-max-o startSelectionActionModeWithSmartSelectAnimation(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 8
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 325
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 327
    .local v0, "layout":Landroid/text/Layout;
    new-instance v1, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda9;-><init>(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 338
    .local v1, "onAnimationEndCallback":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object v2

    .line 339
    .local v2, "sortedSelectionIndices":[I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    aget v5, v2, v4

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v6

    if-ne v5, v6, :cond_0

    aget v5, v2, v3

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v6

    if-eq v5, v6, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    move v3, v4

    .line 342
    .local v3, "didSelectionChange":Z
    :goto_0
    if-nez v3, :cond_2

    .line 343
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 344
    return-void

    .line 347
    :cond_2
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v4

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v5

    .line 348
    invoke-direct {p0, v0, v4, v5}, Landroid/widget/SelectionActionModeHelper;->convertSelectionToRectangles(Landroid/text/Layout;II)Ljava/util/List;

    move-result-object v4

    .line 350
    .local v4, "selectionRectangles":Ljava/util/List;, "Ljava/util/List<Landroid/widget/SmartSelectSprite$RectangleWithTextSelectionLayout;>;"
    new-instance v5, Landroid/graphics/PointF;

    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 351
    invoke-virtual {v6}, Landroid/widget/Editor;->getLastUpPositionX()F

    move-result v6

    iget-object v7, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 352
    invoke-virtual {v7}, Landroid/widget/Editor;->getLastUpPositionY()F

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 354
    .local v5, "touchPoint":Landroid/graphics/PointF;
    new-instance v6, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda6;

    invoke-direct {v6}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 355
    invoke-static {v5, v4, v6}, Landroid/widget/SelectionActionModeHelper;->movePointInsideNearestRectangle(Landroid/graphics/PointF;Ljava/util/List;Ljava/util/function/Function;)Landroid/graphics/PointF;

    move-result-object v6

    .line 358
    .local v6, "animationStartPoint":Landroid/graphics/PointF;
    iget-object v7, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    invoke-virtual {v7, v6, v4, v1}, Landroid/widget/SmartSelectSprite;->startAnimation(Landroid/graphics/PointF;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method


# virtual methods
.method public greylist-max-o getTextClassification()Landroid/view/textclassifier/TextClassification;
    .locals 1

    .line 234
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public greylist-max-o invalidateActionModeAsync()V
    .locals 7

    .line 188
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 189
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    .line 193
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 195
    invoke-virtual {v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()I

    move-result v3

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 196
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    new-instance v5, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5, p0}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda1;-><init>(Landroid/widget/SelectionActionModeHelper;)V

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 198
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;

    invoke-direct {v6, v1}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 201
    :goto_0
    return-void
.end method

.method public greylist-max-o isDrawingHighlight()Z
    .locals 1

    .line 250
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SmartSelectSprite;->isAnimationActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic blacklist lambda$startSelectionActionModeWithSmartSelectAnimation$0$android-widget-SelectionActionModeHelper(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 329
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 331
    move-object v0, p1

    .local v0, "startSelectionResult":Landroid/widget/SelectionActionModeHelper$SelectionResult;
    goto :goto_0

    .line 333
    .end local v0    # "startSelectionResult":Landroid/widget/SelectionActionModeHelper$SelectionResult;
    :cond_0
    const/4 v0, 0x0

    .line 335
    .restart local v0    # "startSelectionResult":Landroid/widget/SelectionActionModeHelper$SelectionResult;
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 336
    return-void
.end method

.method public greylist-max-o onDestroyActionMode()V
    .locals 1

    .line 238
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelSmartSelectAnimation()V

    .line 239
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionDestroyed()V

    .line 240
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 241
    return-void
.end method

.method public greylist-max-o onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 244
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper;->isDrawingHighlight()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0, p1}, Landroid/widget/SmartSelectSprite;->draw(Landroid/graphics/Canvas;)V

    .line 247
    :cond_0
    return-void
.end method

.method public blacklist onSelectionAction(ILjava/lang/String;)V
    .locals 7
    .param p1, "menuItemId"    # I
    .param p2, "actionLabel"    # Ljava/lang/String;

    .line 205
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object v0

    .line 206
    .local v0, "sortedSelectionIndices":[I
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    .line 208
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper;->getActionType(I)I

    move-result v4

    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 206
    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    .line 209
    return-void
.end method

.method public greylist-max-o onSelectionDrag()V
    .locals 7

    .line 212
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object v0

    .line 213
    .local v0, "sortedSelectionIndices":[I
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    const/16 v4, 0x6a

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    .line 216
    return-void
.end method

.method public greylist-max-o onTextChanged(II)V
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 219
    invoke-static {p1, p2}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndices(II)[I

    move-result-object v0

    .line 220
    .local v0, "sortedSelectionIndices":[I
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onTextChanged(IILandroid/view/textclassifier/TextClassification;)V

    .line 222
    return-void
.end method

.method public greylist-max-o resetSelection(I)Z
    .locals 2
    .param p1, "textIndex"    # I

    .line 225
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelection(ILandroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 227
    const/4 v0, 0x1

    return v0

    .line 229
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o startLinkActionModeAsync(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 169
    invoke-static {p1, p2}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndices(II)[I

    move-result-object v0

    .line 170
    .local v0, "indexResult":[I
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-virtual {v1, v2, v4, v6, v5}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onOriginalSelection(Ljava/lang/CharSequence;IIZ)V

    .line 172
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 173
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SelectionActionModeHelper;->startLinkActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    goto :goto_0

    .line 176
    :cond_0
    aget v1, v0, v3

    aget v2, v0, v5

    invoke-direct {p0, v1, v2}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper(II)V

    .line 177
    new-instance v1, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 179
    invoke-virtual {v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()I

    move-result v6

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 180
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v7, v2}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    new-instance v8, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda4;-><init>(Landroid/widget/SelectionActionModeHelper;)V

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 182
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    new-array v2, v3, [Ljava/lang/Void;

    .line 183
    invoke-virtual {v1, v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 185
    :goto_0
    return-void
.end method

.method public greylist-max-o startSelectionActionModeAsync(Z)V
    .locals 10
    .param p1, "adjustSelection"    # Z

    .line 138
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->getTextClassificationSettings()Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationConstants;->isSmartSelectionEnabled()Z

    move-result v0

    and-int/2addr p1, v0

    .line 139
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->sortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object v0

    .line 141
    .local v0, "sortedSelectionIndices":[I
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 142
    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v5, v0, v5

    .line 141
    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onOriginalSelection(Ljava/lang/CharSequence;IIZ)V

    .line 146
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 147
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/SelectionActionModeHelper;->startSelectionActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    goto :goto_2

    .line 150
    :cond_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    .line 151
    new-instance v1, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 153
    invoke-virtual {v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()I

    move-result v6

    .line 154
    if-eqz p1, :cond_1

    .line 155
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda10;

    invoke-direct {v4, v2}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda10;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    move-object v7, v4

    goto :goto_0

    .line 156
    :cond_1
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda0;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    move-object v7, v4

    .line 157
    :goto_0
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mSmartSelectSprite:Landroid/widget/SmartSelectSprite;

    if-eqz v2, :cond_2

    .line 158
    new-instance v2, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda11;-><init>(Landroid/widget/SelectionActionModeHelper;)V

    move-object v8, v2

    goto :goto_1

    .line 159
    :cond_2
    new-instance v2, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda12;-><init>(Landroid/widget/SelectionActionModeHelper;)V

    move-object v8, v2

    :goto_1
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 160
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;

    invoke-direct {v9, v2}, Landroid/widget/SelectionActionModeHelper$$ExternalSyntheticLambda2;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;)V

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;ILjava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/Supplier;)V

    new-array v2, v3, [Ljava/lang/Void;

    .line 161
    invoke-virtual {v1, v2}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 163
    :goto_2
    return-void
.end method
