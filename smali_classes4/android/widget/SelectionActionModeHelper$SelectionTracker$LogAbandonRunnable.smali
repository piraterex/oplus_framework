.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
.super Ljava/lang/Object;
.source "SelectionActionModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LogAbandonRunnable"
.end annotation


# instance fields
.field private greylist-max-o mIsPending:Z

.field final synthetic blacklist this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;


# direct methods
.method private constructor blacklist <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V
    .locals 0

    .line 681
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V

    return-void
.end method


# virtual methods
.method greylist-max-o flush()V
    .locals 1

    .line 696
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmTextView(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 697
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->run()V

    .line 698
    return-void
.end method

.method public whitelist test-api run()V
    .locals 7

    .line 702
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmLogger(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    move-result v3

    const/16 v4, 0x6b

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILjava/lang/String;Landroid/view/textclassifier/TextClassification;)V

    .line 707
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fputmSelectionEnd(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V

    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fputmSelectionStart(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)V

    .line 708
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmLogger(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->endTextClassificationSession()V

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 711
    :cond_0
    return-void
.end method

.method greylist-max-o schedule(I)V
    .locals 3
    .param p1, "delayMillis"    # I

    .line 686
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    if-eqz v0, :cond_0

    .line 687
    const-string v0, "SelectActionModeHelper"

    const-string v1, "Force flushing abandon due to new scheduling request"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    .line 690
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 691
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->-$$Nest$fgetmTextView(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 692
    return-void
.end method
