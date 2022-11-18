.class Landroid/view/SurfaceView$1;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SurfaceHolder"


# instance fields
.field final synthetic blacklist this$0:Landroid/view/SurfaceView;


# direct methods
.method constructor blacklist <init>(Landroid/view/SurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/SurfaceView;

    .line 1648
    iput-object p1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;
    .locals 7
    .param p1, "dirty"    # Landroid/graphics/Rect;
    .param p2, "hardware"    # Z

    .line 1765
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1767
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetDEBUG(Landroid/view/SurfaceView;)Z

    move-result v0

    const-string v1, "SurfaceView"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Locking canvas... stopped="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-boolean v2, v2, Landroid/view/SurfaceView;->mDrawingStopped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", surfaceControl="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    :cond_0
    const/4 v0, 0x0

    .line 1771
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-boolean v2, v2, Landroid/view/SurfaceView;->mDrawingStopped:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2

    .line 1773
    if-eqz p2, :cond_1

    .line 1774
    :try_start_0
    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1776
    :cond_1
    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v2, v2, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, p1}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1780
    :goto_0
    goto :goto_1

    .line 1778
    :catch_0
    move-exception v2

    .line 1779
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "SurfaceHolder"

    const-string v4, "Exception locking surface"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1783
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {v2}, Landroid/view/SurfaceView;->-$$Nest$fgetDEBUG(Landroid/view/SurfaceView;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Returned canvas: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_3
    if-eqz v0, :cond_4

    .line 1785
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 1786
    return-object v0

    .line 1792
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1793
    .local v1, "now":J
    iget-object v3, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-wide v3, v3, Landroid/view/SurfaceView;->mLastLockTime:J

    const-wide/16 v5, 0x64

    add-long/2addr v3, v5

    .line 1794
    .local v3, "nextTime":J
    cmp-long v5, v3, v1

    if-lez v5, :cond_5

    .line 1796
    sub-long v5, v3, v1

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1798
    goto :goto_2

    .line 1797
    :catch_1
    move-exception v5

    .line 1799
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1801
    :cond_5
    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput-wide v1, v5, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 1802
    iget-object v5, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v5, v5, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1804
    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method public whitelist addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .line 1658
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1661
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1662
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1664
    :cond_0
    monitor-exit v0

    .line 1665
    return-void

    .line 1664
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 1

    .line 1827
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .line 1832
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public whitelist isCreating()Z
    .locals 1

    .line 1653
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    return v0
.end method

.method synthetic blacklist lambda$setKeepScreenOn$0$android-view-SurfaceView$1(Z)V
    .locals 1
    .param p1, "screenOn"    # Z

    .line 1722
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceView;->setKeepScreenOn(Z)V

    return-void
.end method

.method public whitelist lockCanvas()Landroid/graphics/Canvas;
    .locals 2

    .line 1736
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView$1;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .param p1, "inOutDirty"    # Landroid/graphics/Rect;

    .line 1756
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/SurfaceView$1;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist lockHardwareCanvas()Landroid/graphics/Canvas;
    .locals 2

    .line 1761
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/view/SurfaceView$1;->internalLockCanvas(Landroid/graphics/Rect;Z)Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method public whitelist removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/SurfaceHolder$Callback;

    .line 1669
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1670
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v1, v1, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1671
    monitor-exit v0

    .line 1672
    return-void

    .line 1671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setFixedSize(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1676
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, p2, :cond_2

    .line 1677
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetDEBUG_POSITION(Landroid/view/SurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1678
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1679
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v2, v2, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v2, v2, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 1680
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1678
    const-string v1, "%d setFixedSize %dx%d -> %dx%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1683
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput p2, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 1684
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 1686
    :cond_2
    return-void
.end method

.method public whitelist setFormat(I)V
    .locals 1
    .param p1, "format"    # I

    .line 1704
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 1705
    const/4 p1, 0x4

    .line 1707
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput p1, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 1708
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 1709
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->updateSurface()V

    .line 1711
    :cond_1
    return-void
.end method

.method public whitelist setKeepScreenOn(Z)V
    .locals 2
    .param p1, "screenOn"    # Z

    .line 1722
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    new-instance v1, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/SurfaceView$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceView$1;Z)V

    invoke-static {v0, v1}, Landroid/view/SurfaceView;->-$$Nest$mrunOnUiThread(Landroid/view/SurfaceView;Ljava/lang/Runnable;)V

    .line 1723
    return-void
.end method

.method public whitelist setSizeFromLayout()V
    .locals 4

    .line 1690
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_2

    .line 1691
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetDEBUG_POSITION(Landroid/view/SurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1692
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1693
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v3, v3, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget v3, v3, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 1692
    const-string v2, "%d setSizeFromLayout was %dx%d"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "SurfaceView"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_1
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iput v1, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    iput v1, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 1696
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 1698
    :cond_2
    return-void
.end method

.method public whitelist setType(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1718
    return-void
.end method

.method public whitelist unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1816
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-$$Nest$fgetDEBUG(Landroid/view/SurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[unlockCanvasAndPost] canvas:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, p1}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1822
    iget-object v0, p0, Landroid/view/SurfaceView$1;->this$0:Landroid/view/SurfaceView;

    iget-object v0, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1823
    return-void
.end method
