.class Landroid/widget/Gallery$FlingRunnable;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private greylist-max-o mLastFlingX:I

.field private greylist-max-o mScroller:Landroid/widget/Scroller;

.field final synthetic blacklist this$0:Landroid/widget/Gallery;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmScroller(Landroid/widget/Gallery$FlingRunnable;)Landroid/widget/Scroller;
    .locals 0

    iget-object p0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mendFling(Landroid/widget/Gallery$FlingRunnable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/widget/Gallery;)V
    .locals 1

    .line 1480
    iput-object p1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1481
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1482
    return-void
.end method

.method private greylist-max-o endFling(Z)V
    .locals 2
    .param p1, "scrollIntoSlots"    # Z

    .line 1522
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1524
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v0}, Landroid/widget/Gallery;->-$$Nest$mscrollIntoSlots(Landroid/widget/Gallery;)V

    .line 1525
    :cond_0
    return-void
.end method

.method private greylist-max-o startCommon()V
    .locals 1

    .line 1486
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1487
    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 9

    .line 1530
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v0, v0, Landroid/widget/Gallery;->mItemCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1531
    invoke-direct {p0, v1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1532
    return-void

    .line 1535
    :cond_0
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/widget/Gallery;->-$$Nest$fputmShouldStopFling(Landroid/widget/Gallery;Z)V

    .line 1537
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    .line 1538
    .local v0, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    .line 1539
    .local v2, "more":Z
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    .line 1543
    .local v3, "x":I
    iget v4, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v4, v3

    .line 1546
    .local v4, "delta":I
    if-lez v4, :cond_2

    .line 1548
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->-$$Nest$fgetmIsRtl(Landroid/widget/Gallery;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v6, Landroid/widget/Gallery;->mFirstPosition:I

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v7}, Landroid/widget/Gallery;->getChildCount()I

    move-result v7

    add-int/2addr v6, v7

    sub-int/2addr v6, v1

    goto :goto_0

    .line 1549
    :cond_1
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v6, v6, Landroid/widget/Gallery;->mFirstPosition:I

    :goto_0
    invoke-static {v5, v6}, Landroid/widget/Gallery;->-$$Nest$fputmDownTouchPosition(Landroid/widget/Gallery;I)V

    .line 1552
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/Gallery;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->access$000(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->access$100(Landroid/widget/Gallery;)I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_2

    .line 1555
    :cond_2
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5}, Landroid/widget/Gallery;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v1

    .line 1556
    .local v5, "offsetToLast":I
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v6}, Landroid/widget/Gallery;->-$$Nest$fgetmIsRtl(Landroid/widget/Gallery;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v7, v7, Landroid/widget/Gallery;->mFirstPosition:I

    goto :goto_1

    .line 1557
    :cond_3
    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    iget v7, v7, Landroid/widget/Gallery;->mFirstPosition:I

    iget-object v8, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v8}, Landroid/widget/Gallery;->getChildCount()I

    move-result v8

    add-int/2addr v7, v8

    sub-int/2addr v7, v1

    :goto_1
    invoke-static {v6, v7}, Landroid/widget/Gallery;->-$$Nest$fputmDownTouchPosition(Landroid/widget/Gallery;I)V

    .line 1560
    iget-object v6, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v6}, Landroid/widget/Gallery;->getWidth()I

    move-result v6

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v7}, Landroid/widget/Gallery;->access$200(Landroid/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v7}, Landroid/widget/Gallery;->access$300(Landroid/widget/Gallery;)I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v1

    neg-int v6, v6

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1563
    .end local v5    # "offsetToLast":I
    :goto_2
    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v5, v4}, Landroid/widget/Gallery;->trackMotionScroll(I)V

    .line 1565
    if-eqz v2, :cond_4

    iget-object v5, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v5}, Landroid/widget/Gallery;->-$$Nest$fgetmShouldStopFling(Landroid/widget/Gallery;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1566
    iput v3, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1567
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 1569
    :cond_4
    invoke-direct {p0, v1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1571
    :goto_3
    return-void
.end method

.method public greylist-max-o startUsingDistance(I)V
    .locals 7
    .param p1, "distance"    # I

    .line 1503
    if-nez p1, :cond_0

    return-void

    .line 1505
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1507
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1508
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, p1

    const/4 v5, 0x0

    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-static {v0}, Landroid/widget/Gallery;->-$$Nest$fgetmAnimationDuration(Landroid/widget/Gallery;)I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1509
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    .line 1510
    return-void
.end method

.method public greylist startUsingVelocity(I)V
    .locals 10
    .param p1, "initialVelocity"    # I

    .line 1491
    if-nez p1, :cond_0

    return-void

    .line 1493
    :cond_0
    invoke-direct {p0}, Landroid/widget/Gallery$FlingRunnable;->startCommon()V

    .line 1495
    if-gez p1, :cond_1

    const v0, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1496
    .local v0, "initialX":I
    :goto_0
    iput v0, p0, Landroid/widget/Gallery$FlingRunnable;->mLastFlingX:I

    .line 1497
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v2, v0

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1499
    iget-object v1, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v1, p0}, Landroid/widget/Gallery;->post(Ljava/lang/Runnable;)Z

    .line 1500
    return-void
.end method

.method public greylist-max-o stop(Z)V
    .locals 1
    .param p1, "scrollIntoSlots"    # Z

    .line 1513
    iget-object v0, p0, Landroid/widget/Gallery$FlingRunnable;->this$0:Landroid/widget/Gallery;

    invoke-virtual {v0, p0}, Landroid/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1514
    invoke-direct {p0, p1}, Landroid/widget/Gallery$FlingRunnable;->endFling(Z)V

    .line 1515
    return-void
.end method
