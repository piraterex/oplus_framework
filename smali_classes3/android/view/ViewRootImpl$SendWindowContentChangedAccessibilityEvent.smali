.class Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendWindowContentChangedAccessibilityEvent"
.end annotation


# instance fields
.field private greylist-max-o mChangeTypes:I

.field public greylist-max-o mLastEventTimeMillis:J

.field public greylist-max-o mOrigin:[Ljava/lang/StackTraceElement;

.field public greylist-max-o mSource:Landroid/view/View;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .line 10948
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10949
    const/4 p1, 0x0

    iput p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o removeCallbacksAndRun()V
    .locals 1

    .line 11031
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 11032
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->run()V

    .line 11033
    return-void
.end method

.method public whitelist test-api run()V
    .locals 3

    .line 10964
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 10965
    .local v0, "source":Landroid/view/View;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 10966
    if-nez v0, :cond_0

    .line 10967
    const-string v1, "ViewRootImpl"

    const-string v2, "Accessibility content change has no source"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10968
    return-void

    .line 10971
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    .line 10973
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 10974
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 10975
    iget v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    .line 10977
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 10978
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    goto :goto_0

    .line 10979
    :cond_1
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    .line 10982
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->resetSubtreeAccessibilityStateChanged()V

    .line 10983
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 10985
    return-void
.end method

.method public greylist-max-o runOrPost(Landroid/view/View;I)V
    .locals 7
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .line 10988
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 10989
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    .line 10992
    .local v0, "e":Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    const-string v1, "ViewRootImpl"

    const-string v2, "Accessibility content change on non-UI thread. Future Android versions will throw an exception."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 10996
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10997
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 11001
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->run()V

    .line 11004
    .end local v0    # "e":Landroid/view/ViewRootImpl$CalledFromWrongThreadException;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 11007
    iget-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mgetCommonPredecessor(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 11008
    .local v0, "predecessor":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 11009
    invoke-virtual {v0}, Landroid/view/View;->getSelfOrParentImportantForA11y()Landroid/view/View;

    move-result-object v0

    .line 11011
    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 11012
    iget v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    or-int/2addr v1, p2

    iput v1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 11013
    return-void

    .line 11015
    .end local v0    # "predecessor":Landroid/view/View;
    :cond_3
    iput-object p1, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    .line 11016
    iput p2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mChangeTypes:I

    .line 11020
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mLastEventTimeMillis:J

    sub-long/2addr v0, v2

    .line 11022
    .local v0, "timeSinceLastMillis":J
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v2

    .line 11023
    .local v2, "minEventIntevalMillis":J
    cmp-long v4, v0, v2

    if-ltz v4, :cond_4

    .line 11024
    invoke-virtual {p0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    goto :goto_1

    .line 11026
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sub-long v5, v2, v0

    invoke-virtual {v4, p0, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11028
    :goto_1
    return-void
.end method
