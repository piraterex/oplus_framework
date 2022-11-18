.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SelectionTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
    }
.end annotation


# instance fields
.field private greylist-max-o mAllowReset:Z

.field private final greylist-max-o mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

.field private greylist-max-o mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

.field private greylist-max-o mOriginalEnd:I

.field private greylist-max-o mOriginalStart:I

.field private greylist-max-o mSelectionEnd:I

.field private greylist-max-o mSelectionStart:I

.field private final greylist-max-o mTextView:Landroid/widget/TextView;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLogger(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
    .locals 0

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I
    .locals 0

    iget p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I
    .locals 0

    iget p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextView(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V
    .locals 0

    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 540
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable-IA;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    .line 543
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    .line 544
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-direct {v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 545
    return-void
.end method

.method private greylist-max-o isSelectionStarted()Z
    .locals 2

    .line 677
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-ltz v0, :cond_0

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-ltz v1, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private greylist-max-o maybeInvalidateLogger()V
    .locals 2

    .line 671
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isEditTextLogger()Z

    move-result v0

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 672
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 674
    :cond_0
    return-void
.end method

.method private greylist-max-o onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 3
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 587
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 588
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 589
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v0

    iput v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 590
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iget v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalStart:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalEnd:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 592
    :cond_2
    return-void
.end method


# virtual methods
.method public greylist-max-o onLinkSelected(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 582
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 584
    return-void
.end method

.method public greylist-max-o onOriginalSelection(Ljava/lang/CharSequence;IIZ)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "selectionStart"    # I
    .param p3, "selectionEnd"    # I
    .param p4, "isLink"    # Z

    .line 554
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    .line 556
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalStart:I

    .line 557
    iput p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    iput p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mOriginalEnd:I

    .line 558
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 559
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->maybeInvalidateLogger()V

    .line 560
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    .line 561
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassificationSession()Landroid/view/textclassifier/TextClassifier;

    move-result-object v2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    .line 562
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassificationContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v3

    .line 565
    if-eqz p4, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    move v6, v0

    .line 560
    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionStarted(Landroid/view/textclassifier/TextClassifier;Landroid/view/textclassifier/TextClassificationContext;Ljava/lang/CharSequence;II)V

    .line 566
    return-void
.end method

.method public blacklist onSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V
    .locals 7
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "action"    # I
    .param p4, "actionLabel"    # Ljava/lang/String;
    .param p5, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 627
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 629
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    .line 632
    :cond_0
    return-void
.end method

.method public greylist-max-o onSelectionDestroyed()V
    .locals 2

    .line 613
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 614
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 616
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mDelayedLogAbandon:Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->schedule(I)V

    .line 617
    return-void
.end method

.method public greylist-max-o onSelectionUpdated(IILandroid/view/textclassifier/TextClassification;)V
    .locals 2
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 600
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    iput p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 602
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 603
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 604
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 605
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    .line 607
    :cond_0
    return-void
.end method

.method public greylist-max-o onSmartSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 5
    .param p1, "result"    # Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 572
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onClassifiedSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 573
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->notifyContentCaptureTextChanged()V

    .line 574
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmStart(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v1

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmEnd(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    move-result v2

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmClassification(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    move-result-object v3

    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->-$$Nest$fgetmSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextSelection;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V

    .line 576
    return-void
.end method

.method public greylist-max-o onTextChanged(IILandroid/view/textclassifier/TextClassification;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "classification"    # Landroid/view/textclassifier/TextClassification;

    .line 663
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-ne p2, v0, :cond_0

    .line 664
    const/16 v4, 0x64

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    .line 668
    :cond_0
    return-void
.end method

.method public greylist-max-o resetSelection(ILandroid/widget/Editor;)Z
    .locals 12
    .param p1, "textIndex"    # I
    .param p2, "editor"    # Landroid/widget/Editor;

    .line 641
    invoke-virtual {p2}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 642
    .local v0, "textView":Landroid/widget/TextView;
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->isSelectionStarted()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    if-gt p1, v1, :cond_1

    .line 645
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->-$$Nest$smgetText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Spannable;

    if-eqz v1, :cond_1

    .line 646
    iput-boolean v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mAllowReset:Z

    .line 647
    invoke-virtual {p2}, Landroid/widget/Editor;->selectCurrentWord()Z

    move-result v1

    .line 648
    .local v1, "selected":Z
    if-eqz v1, :cond_0

    .line 649
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->-$$Nest$smsortSelectionIndicesFromTextView(Landroid/widget/TextView;)[I

    move-result-object v3

    .line 650
    .local v3, "sortedSelectionIndices":[I
    aget v4, v3, v2

    iput v4, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionStart:I

    .line 651
    const/4 v4, 0x1

    aget v5, v3, v4

    iput v5, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mSelectionEnd:I

    .line 652
    iget-object v6, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->mLogger:Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    aget v7, v3, v2

    aget v8, v3, v4

    const/16 v9, 0xc9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    .line 657
    .end local v3    # "sortedSelectionIndices":[I
    :cond_0
    return v1

    .line 659
    .end local v1    # "selected":Z
    :cond_1
    return v2
.end method
