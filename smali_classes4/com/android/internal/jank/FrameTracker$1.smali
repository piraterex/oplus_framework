.class Lcom/android/internal/jank/FrameTracker$1;
.super Ljava/lang/Object;
.source "FrameTracker.java"

# interfaces
.implements Landroid/view/ViewRootImpl$SurfaceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/jank/FrameTracker;-><init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/jank/FrameTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/jank/FrameTracker;

    .line 186
    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$surfaceDestroyed$0$com-android-internal-jank-FrameTracker$1()V
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmLock(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/FrameTracker;->end(I)Z

    .line 227
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V

    .line 229
    :cond_0
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist surfaceCreated(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 189
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmLock(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 190
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v1

    if-nez v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V

    .line 192
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v1}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControlWrapper(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v2}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    const-string v2, "FT#deferMonitoring"

    invoke-static {v1, v2}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$mmarkEvent(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker()V

    .line 199
    :cond_0
    monitor-exit v0

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist surfaceDestroyed()V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmSurfaceControlWrapper(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->removeJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker$1;->this$0:Lcom/android/internal/jank/FrameTracker;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker;->-$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    return-void
.end method

.method public blacklist surfaceReplaced(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 204
    return-void
.end method
