.class public Lcom/android/internal/jank/FrameTracker;
.super Landroid/view/SurfaceControl$OnJankDataListener;
.source "FrameTracker.java"

# interfaces
.implements Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;,
        Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;,
        Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;,
        Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;,
        Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;,
        Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;,
        Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;,
        Lcom/android/internal/jank/FrameTracker$JankInfo;,
        Lcom/android/internal/jank/FrameTracker$Reasons;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = false

.field private static final blacklist INVALID_ID:J = -0x1L

.field public static final blacklist NANOS_IN_MILLISECOND:I = 0xf4240

.field static final blacklist REASON_CANCEL_NORMAL:I = 0x10

.field static final blacklist REASON_CANCEL_NOT_BEGUN:I = 0x11

.field static final blacklist REASON_CANCEL_SAME_VSYNC:I = 0x12

.field static final blacklist REASON_CANCEL_TIMEOUT:I = 0x13

.field static final blacklist REASON_END_NORMAL:I = 0x0

.field static final blacklist REASON_END_SURFACE_DESTROYED:I = 0x1

.field static final blacklist REASON_END_UNKNOWN:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FrameTracker"


# instance fields
.field private blacklist mBeginVsyncId:J

.field private blacklist mCancelled:Z

.field private final blacklist mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

.field private final blacklist mDeferMonitoring:Z

.field private blacklist mEndVsyncId:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mJankInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/jank/FrameTracker$JankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mMetricsFinalized:Z

.field private final blacklist mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

.field private final blacklist mObserver:Landroid/graphics/HardwareRendererObserver;

.field private final blacklist mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

.field private final blacklist mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

.field private final blacklist mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

.field private final blacklist mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

.field private blacklist mSurfaceControl:Landroid/view/SurfaceControl;

.field private final blacklist mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

.field public final blacklist mSurfaceOnly:Z

.field private final blacklist mTraceThresholdFrameTimeMillis:I

.field private final blacklist mTraceThresholdMissedFrames:I

.field private blacklist mTracingStarted:Z

.field private final blacklist mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

.field private blacklist mWaitForFinishTimedOut:Ljava/lang/Runnable;


# direct methods
.method public static synthetic blacklist $r8$lambda$yUh_IPnq4vh9-DHGeZ74lqvEy84(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBeginVsyncId(Lcom/android/internal/jank/FrameTracker;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/jank/FrameTracker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/jank/FrameTracker;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMetricsFinalized(Lcom/android/internal/jank/FrameTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControl(Lcom/android/internal/jank/FrameTracker;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSurfaceControlWrapper(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmViewRoot(Lcom/android/internal/jank/FrameTracker;)Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSurfaceControl(Lcom/android/internal/jank/FrameTracker;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfinish(Lcom/android/internal/jank/FrameTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mmarkEvent(Lcom/android/internal/jank/FrameTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/jank/InteractionJankMonitor$Session;Landroid/os/Handler;Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;IILcom/android/internal/jank/FrameTracker$FrameTrackerListener;Lcom/android/internal/jank/InteractionJankMonitor$Configuration;)V
    .locals 12
    .param p1, "session"    # Lcom/android/internal/jank/InteractionJankMonitor$Session;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "renderer"    # Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;
    .param p4, "viewRootWrapper"    # Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;
    .param p5, "surfaceControlWrapper"    # Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;
    .param p6, "choreographer"    # Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;
    .param p7, "metrics"    # Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;
    .param p8, "statsLog"    # Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;
    .param p9, "traceThresholdMissedFrames"    # I
    .param p10, "traceThresholdFrameTimeMillis"    # I
    .param p11, "listener"    # Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;
    .param p12, "config"    # Lcom/android/internal/jank/InteractionJankMonitor$Configuration;

    .line 154
    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0}, Landroid/view/SurfaceControl$OnJankDataListener;-><init>()V

    .line 94
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    .line 102
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor;->getLock()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    .line 108
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 109
    iput-wide v2, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 111
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 113
    iput-boolean v2, v0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 155
    invoke-virtual/range {p12 .. p12}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->isSurfaceOnly()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    .line 156
    move-object v4, p1

    iput-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 157
    iput-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    .line 158
    move-object/from16 v5, p6

    iput-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    .line 159
    move-object/from16 v6, p5

    iput-object v6, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    .line 160
    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    .line 161
    invoke-virtual/range {p12 .. p12}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->shouldDeferMonitor()Z

    move-result v8

    iput-boolean v8, v0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    .line 164
    const/4 v8, 0x0

    if-eqz v3, :cond_0

    move-object v9, v8

    goto :goto_0

    :cond_0
    move-object v9, p3

    :goto_0
    iput-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    .line 165
    if-eqz v3, :cond_1

    move-object v9, v8

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    iput-object v9, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 166
    if-eqz v3, :cond_2

    move-object v10, v8

    goto :goto_2

    :cond_2
    move-object/from16 v10, p4

    :goto_2
    iput-object v10, v0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    .line 167
    if-eqz v3, :cond_3

    .line 168
    move-object v11, v8

    goto :goto_3

    .line 169
    :cond_3
    new-instance v11, Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v9}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v9

    invoke-direct {v11, p0, v9, p2, v2}, Landroid/graphics/HardwareRendererObserver;-><init>(Landroid/graphics/HardwareRendererObserver$OnFrameMetricsAvailableListener;[JLandroid/os/Handler;Z)V

    :goto_3
    iput-object v11, v0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    .line 172
    move/from16 v2, p9

    iput v2, v0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    .line 173
    move/from16 v9, p10

    iput v9, v0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    .line 174
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    .line 176
    if-eqz v3, :cond_4

    .line 177
    invoke-virtual/range {p12 .. p12}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 178
    iput-object v8, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    goto :goto_4

    .line 182
    :cond_4
    invoke-virtual {v10}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    invoke-virtual {v10}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 186
    :cond_5
    new-instance v3, Lcom/android/internal/jank/FrameTracker$1;

    invoke-direct {v3, p0}, Lcom/android/internal/jank/FrameTracker$1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    .line 235
    invoke-virtual {v10, v3}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->addSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 237
    :goto_4
    return-void
.end method

.method private blacklist beginInternal()V
    .locals 5

    .line 282
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    .line 286
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    .line 287
    const-string v1, "FT#begin"

    invoke-direct {p0, v1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Landroid/os/Trace;->beginAsyncSection(Ljava/lang/String;I)V

    .line 289
    monitor-exit v0

    .line 290
    return-void

    .line 284
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 289
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z
    .locals 1
    .param p1, "info"    # Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 471
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-eqz v0, :cond_0

    .line 472
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    goto :goto_0

    .line 473
    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 471
    :goto_0
    return v0
.end method

.method private blacklist findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;
    .locals 2
    .param p1, "frameVsyncId"    # J

    .line 397
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    return-object v0
.end method

.method private blacklist finish()V
    .locals 28

    .line 477
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 478
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 479
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    .line 482
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, "totalFramesCount":I
    const-wide/16 v3, 0x0

    .line 486
    .local v3, "maxFrameTimeNanos":J
    const/4 v5, 0x0

    .line 487
    .local v5, "missedFramesCount":I
    const/4 v6, 0x0

    .line 488
    .local v6, "missedAppFramesCount":I
    const/4 v7, 0x0

    .line 489
    .local v7, "missedSfFramesCount":I
    const/4 v8, 0x0

    .line 490
    .local v8, "maxSuccessiveMissedFramesCount":I
    const/4 v9, 0x0

    .line 492
    .local v9, "successiveMissedFramesCount":I
    const/4 v10, 0x0

    move-wide v14, v3

    move v12, v5

    move v13, v6

    move v11, v9

    move v3, v10

    move v10, v7

    .end local v5    # "missedFramesCount":I
    .end local v6    # "missedAppFramesCount":I
    .end local v7    # "missedSfFramesCount":I
    .end local v9    # "successiveMissedFramesCount":I
    .local v3, "i":I
    .local v10, "missedSfFramesCount":I
    .local v11, "successiveMissedFramesCount":I
    .local v12, "missedFramesCount":I
    .local v13, "missedAppFramesCount":I
    .local v14, "maxFrameTimeNanos":J
    :goto_0
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 493
    iget-object v4, v0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 494
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    iget-boolean v5, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v5, :cond_0

    iget-boolean v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 495
    .local v5, "isFirstDrawn":Z
    :goto_1
    if-eqz v5, :cond_1

    .line 496
    goto/16 :goto_4

    .line 498
    :cond_1
    iget-wide v6, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    move/from16 v18, v2

    .end local v2    # "totalFramesCount":I
    .local v18, "totalFramesCount":I
    iget-wide v1, v0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v1, v6, v1

    if-lez v1, :cond_2

    .line 499
    goto/16 :goto_5

    .line 501
    :cond_2
    iget-boolean v1, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    const-string v2, "FrameTracker"

    if-eqz v1, :cond_8

    .line 502
    add-int/lit8 v1, v18, 0x1

    .line 503
    .end local v18    # "totalFramesCount":I
    .local v1, "totalFramesCount":I
    const/4 v6, 0x0

    .line 504
    .local v6, "missedFrame":Z
    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_3

    .line 505
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missed App frame:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    add-int/lit8 v13, v13, 0x1

    .line 507
    const/4 v6, 0x1

    .line 509
    :cond_3
    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    const/4 v9, 0x1

    and-int/2addr v7, v9

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x4

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x20

    if-nez v7, :cond_4

    iget v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    and-int/lit8 v7, v7, 0x10

    if-eqz v7, :cond_5

    .line 514
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missed SF frame:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    add-int/lit8 v10, v10, 0x1

    .line 516
    const/4 v6, 0x1

    .line 518
    :cond_5
    if-eqz v6, :cond_6

    .line 519
    add-int/lit8 v12, v12, 0x1

    .line 520
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 522
    :cond_6
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 524
    const/4 v7, 0x0

    move v11, v7

    .line 528
    :goto_2
    iget-boolean v7, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v7, :cond_7

    iget-boolean v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-nez v7, :cond_7

    .line 529
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing HWUI jank callback for vsyncId: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v9, v5

    move/from16 v17, v6

    .end local v5    # "isFirstDrawn":Z
    .end local v6    # "missedFrame":Z
    .local v9, "isFirstDrawn":Z
    .local v17, "missedFrame":Z
    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 528
    .end local v9    # "isFirstDrawn":Z
    .end local v17    # "missedFrame":Z
    .restart local v5    # "isFirstDrawn":Z
    .restart local v6    # "missedFrame":Z
    :cond_7
    move v9, v5

    move/from16 v17, v6

    .end local v5    # "isFirstDrawn":Z
    .end local v6    # "missedFrame":Z
    .restart local v9    # "isFirstDrawn":Z
    .restart local v17    # "missedFrame":Z
    goto :goto_3

    .line 501
    .end local v1    # "totalFramesCount":I
    .end local v9    # "isFirstDrawn":Z
    .end local v17    # "missedFrame":Z
    .restart local v5    # "isFirstDrawn":Z
    .restart local v18    # "totalFramesCount":I
    :cond_8
    move v9, v5

    .end local v5    # "isFirstDrawn":Z
    .restart local v9    # "isFirstDrawn":Z
    move/from16 v1, v18

    .line 532
    .end local v18    # "totalFramesCount":I
    .restart local v1    # "totalFramesCount":I
    :goto_3
    iget-boolean v5, v0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v5, :cond_a

    iget-boolean v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    if-eqz v5, :cond_a

    .line 533
    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 534
    .end local v14    # "maxFrameTimeNanos":J
    .local v5, "maxFrameTimeNanos":J
    iget-boolean v7, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    if-nez v7, :cond_9

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Missing SF jank callback for vsyncId: "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v14, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    .end local v9    # "isFirstDrawn":Z
    :cond_9
    move v2, v1

    move-wide v14, v5

    goto :goto_4

    .end local v5    # "maxFrameTimeNanos":J
    .restart local v14    # "maxFrameTimeNanos":J
    :cond_a
    move v2, v1

    .end local v1    # "totalFramesCount":I
    .restart local v2    # "totalFramesCount":I
    :goto_4
    add-int/lit8 v3, v3, 0x1

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_b
    move/from16 v18, v2

    .line 539
    .end local v2    # "totalFramesCount":I
    .end local v3    # "i":I
    .restart local v18    # "totalFramesCount":I
    :goto_5
    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 543
    .end local v8    # "maxSuccessiveMissedFramesCount":I
    .local v1, "maxSuccessiveMissedFramesCount":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v3}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#missedFrames"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x1000

    invoke-static {v3, v4, v2, v12}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#missedAppFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v13}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 547
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#missedSfFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v10}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#totalFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v8, v18

    .end local v18    # "totalFramesCount":I
    .local v8, "totalFramesCount":I
    invoke-static {v3, v4, v2, v8}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#maxFrameTimeMillis"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v5, 0xf4240

    div-long v5, v14, v5

    long-to-int v5, v5

    invoke-static {v3, v4, v2, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 553
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v5}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "#maxSuccessiveMissedFrames"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 557
    long-to-int v2, v14

    invoke-direct {v0, v12, v2}, Lcom/android/internal/jank/FrameTracker;->shouldTriggerPerfetto(II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/jank/FrameTracker;->triggerPerfetto()V

    .line 560
    :cond_c
    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->logToStatsd()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 561
    iget-object v3, v0, Lcom/android/internal/jank/FrameTracker;->mStatsLog:Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;

    iget-object v2, v0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    .line 563
    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getStatsdInteractionType()I

    move-result v5

    int-to-long v6, v8

    move v9, v5

    int-to-long v4, v12

    move-wide/from16 v16, v4

    int-to-long v4, v10

    move-wide/from16 v18, v4

    int-to-long v4, v13

    move-wide/from16 v20, v4

    int-to-long v4, v1

    .line 561
    move-wide/from16 v22, v4

    const/16 v2, 0x131

    move v4, v2

    move v5, v9

    move v2, v8

    .end local v8    # "totalFramesCount":I
    .restart local v2    # "totalFramesCount":I
    move-wide/from16 v8, v16

    move/from16 v24, v10

    move/from16 v25, v11

    .end local v10    # "missedSfFramesCount":I
    .end local v11    # "successiveMissedFramesCount":I
    .local v24, "missedSfFramesCount":I
    .local v25, "successiveMissedFramesCount":I
    move-wide v10, v14

    move/from16 v26, v12

    move/from16 v27, v13

    .end local v12    # "missedFramesCount":I
    .end local v13    # "missedAppFramesCount":I
    .local v26, "missedFramesCount":I
    .local v27, "missedAppFramesCount":I
    move-wide/from16 v12, v18

    move-wide/from16 v18, v14

    .end local v14    # "maxFrameTimeNanos":J
    .local v18, "maxFrameTimeNanos":J
    move-wide/from16 v14, v20

    move-wide/from16 v16, v22

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/jank/FrameTracker$StatsLogWrapper;->write(IIJJJJJJ)V

    goto :goto_6

    .line 560
    .end local v2    # "totalFramesCount":I
    .end local v18    # "maxFrameTimeNanos":J
    .end local v24    # "missedSfFramesCount":I
    .end local v25    # "successiveMissedFramesCount":I
    .end local v26    # "missedFramesCount":I
    .end local v27    # "missedAppFramesCount":I
    .restart local v8    # "totalFramesCount":I
    .restart local v10    # "missedSfFramesCount":I
    .restart local v11    # "successiveMissedFramesCount":I
    .restart local v12    # "missedFramesCount":I
    .restart local v13    # "missedAppFramesCount":I
    .restart local v14    # "maxFrameTimeNanos":J
    :cond_d
    move v2, v8

    move/from16 v24, v10

    move/from16 v25, v11

    move/from16 v26, v12

    move/from16 v27, v13

    move-wide/from16 v18, v14

    .line 581
    .end local v8    # "totalFramesCount":I
    .end local v10    # "missedSfFramesCount":I
    .end local v11    # "successiveMissedFramesCount":I
    .end local v12    # "missedFramesCount":I
    .end local v13    # "missedAppFramesCount":I
    .end local v14    # "maxFrameTimeNanos":J
    .restart local v2    # "totalFramesCount":I
    .restart local v18    # "maxFrameTimeNanos":J
    .restart local v24    # "missedSfFramesCount":I
    .restart local v25    # "successiveMissedFramesCount":I
    .restart local v26    # "missedFramesCount":I
    .restart local v27    # "missedAppFramesCount":I
    :goto_6
    return-void
.end method

.method private blacklist hasReceivedCallbacksAfterEnd()Z
    .locals 9

    .line 439
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 440
    return v1

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 443
    .local v0, "last":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :goto_0
    if-nez v0, :cond_2

    .line 444
    return v1

    .line 446
    :cond_2
    iget-wide v3, v0, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 447
    return v1

    .line 449
    :cond_3
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_5

    .line 450
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/jank/FrameTracker$JankInfo;

    .line 451
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    iget-wide v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->frameVsyncId:J

    iget-wide v7, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_4

    .line 452
    invoke-direct {p0, v4}, Lcom/android/internal/jank/FrameTracker;->callbacksReceived(Lcom/android/internal/jank/FrameTracker$JankInfo;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 453
    return v2

    .line 449
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 457
    .end local v3    # "i":I
    :cond_5
    return v1
.end method

.method private blacklist isInRange(J)Z
    .locals 2
    .param p1, "vsyncId"    # J

    .line 404
    iget-wide v0, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist markEvent(Ljava/lang/String;)V
    .locals 3
    .param p1, "desc"    # Ljava/lang/String;

    .line 362
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "%s#%s"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 363
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 364
    return-void
.end method

.method private blacklist notifyCujEvent(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mListener:Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;

    if-nez v0, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/jank/FrameTracker$FrameTrackerListener;->onCujEvents(Lcom/android/internal/jank/InteractionJankMonitor$Session;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private blacklist processJankInfos()V
    .locals 1

    .line 461
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsFinalized:Z

    if-eqz v0, :cond_0

    .line 462
    return-void

    .line 464
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->hasReceivedCallbacksAfterEnd()Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    return-void

    .line 467
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    .line 468
    return-void
.end method

.method private blacklist shouldTriggerPerfetto(II)Z
    .locals 5
    .param p1, "missedFramesCount"    # I
    .param p2, "maxFrameTimeNanos"    # I

    .line 584
    iget v0, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdMissedFrames:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    if-lt p1, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 586
    .local v0, "overMissedFramesThreshold":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/internal/jank/FrameTracker;->mTraceThresholdFrameTimeMillis:I

    if-eq v4, v1, :cond_1

    const v1, 0xf4240

    mul-int/2addr v4, v1

    if-lt p2, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 588
    .local v1, "overFrameTimeThreshold":Z
    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :cond_3
    :goto_2
    return v2
.end method


# virtual methods
.method public blacklist begin()V
    .locals 6

    .line 243
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v1

    .line 248
    .local v1, "currentVsync":J
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mDeferMonitoring:Z

    if-eqz v3, :cond_0

    const-wide/16 v4, 0x1

    add-long/2addr v4, v1

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :goto_0
    iput-wide v4, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    .line 253
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    .line 254
    if-eqz v3, :cond_1

    .line 255
    const-string v3, "FT#deferMonitoring"

    invoke-direct {p0, v3}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->postTraceStartMarker()V

    goto :goto_1

    .line 262
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->beginInternal()V

    .line 264
    :goto_1
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p0, v4}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->addJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;Landroid/view/SurfaceControl;)V

    .line 266
    :cond_2
    iget-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v3, :cond_3

    .line 267
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v3, v4}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->addObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 269
    .end local v1    # "currentVsync":J
    :cond_3
    monitor-exit v0

    .line 270
    return-void

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist cancel(I)Z
    .locals 8
    .param p1, "reason"    # I

    .line 334
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    const/16 v1, 0x11

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v1, :cond_1

    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 337
    .local v1, "cancelFromEnd":Z
    :goto_1
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v4, :cond_4

    iget-wide v4, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    if-nez v1, :cond_2

    goto :goto_2

    .line 338
    :cond_2
    iput-boolean v3, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FT#cancel#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 341
    iget-boolean v2, p0, Lcom/android/internal/jank/FrameTracker;->mTracingStarted:Z

    if-eqz v2, :cond_3

    .line 342
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v2}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v4, v4

    invoke-static {v2, v4}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 346
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/jank/FrameTracker;->removeObservers()V

    .line 353
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v2, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->setReason(I)V

    .line 356
    sget-object v2, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_CANCEL:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;)V

    .line 357
    monitor-exit v0

    return v3

    .line 337
    :cond_4
    :goto_2
    monitor-exit v0

    return v2

    .line 358
    .end local v1    # "cancelFromEnd":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist end(I)Z
    .locals 7
    .param p1, "reason"    # I

    .line 296
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-nez v1, :cond_3

    iget-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-virtual {v1}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->getVsyncId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/jank/FrameTracker;->mEndVsyncId:J

    .line 302
    iget-wide v5, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    .line 303
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 304
    :cond_1
    cmp-long v1, v1, v5

    if-gtz v1, :cond_2

    .line 305
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/jank/FrameTracker;->cancel(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 311
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FT#end#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/jank/FrameTracker;->markEvent(Ljava/lang/String;)V

    .line 312
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/jank/FrameTracker;->mBeginVsyncId:J

    long-to-int v2, v2

    invoke-static {v1, v2}, Landroid/os/Trace;->endAsyncSection(Ljava/lang/String;I)V

    .line 313
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1, p1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->setReason(I)V

    .line 319
    new-instance v1, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    iput-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mWaitForFinishTimedOut:Ljava/lang/Runnable;

    .line 323
    iget-object v2, p0, Lcom/android/internal/jank/FrameTracker;->mHandler:Landroid/os/Handler;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 324
    sget-object v1, Lcom/android/internal/jank/InteractionJankMonitor;->ACTION_SESSION_END:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/jank/FrameTracker;->notifyCujEvent(Ljava/lang/String;)V

    .line 325
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 297
    :cond_3
    :goto_0
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 327
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic blacklist lambda$end$0$com-android-internal-jank-FrameTracker()V
    .locals 2

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "force finish cuj because of time out:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v1}, Lcom/android/internal/jank/InteractionJankMonitor$Session;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FrameTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->finish()V

    .line 322
    return-void
.end method

.method public blacklist onFrameMetricsAvailable(I)V
    .locals 10
    .param p1, "dropCountSinceLastInvocation"    # I

    .line 409
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 410
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 411
    monitor-exit v0

    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v1

    .line 418
    .local v1, "totalDurationNanos":J
    iget-object v3, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getMetric(I)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 419
    .local v3, "isFirstFrame":Z
    :goto_0
    iget-object v5, p0, Lcom/android/internal/jank/FrameTracker;->mMetricsWrapper:Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;

    .line 420
    invoke-virtual {v5}, Lcom/android/internal/jank/FrameTracker$FrameMetricsWrapper;->getTiming()[J

    move-result-object v5

    aget-wide v5, v5, v4

    .line 422
    .local v5, "frameVsyncId":J
    invoke-direct {p0, v5, v6}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v7

    if-nez v7, :cond_2

    .line 423
    monitor-exit v0

    return-void

    .line 425
    :cond_2
    invoke-direct {p0, v5, v6}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v7

    .line 426
    .local v7, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    if-eqz v7, :cond_3

    .line 427
    iput-boolean v4, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->hwuiCallbackFired:Z

    .line 428
    iput-wide v1, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->totalDurationNanos:J

    .line 429
    iput-boolean v3, v7, Lcom/android/internal/jank/FrameTracker$JankInfo;->isFirstFrame:Z

    goto :goto_1

    .line 431
    :cond_3
    iget-object v4, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    long-to-int v8, v5

    invoke-static {v5, v6, v1, v2, v3}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromHwuiCallback(JJZ)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 434
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V

    .line 435
    .end local v1    # "totalDurationNanos":J
    .end local v3    # "isFirstFrame":Z
    .end local v5    # "frameVsyncId":J
    .end local v7    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    monitor-exit v0

    .line 436
    return-void

    .line 435
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist onJankDataAvailable([Landroid/view/SurfaceControl$JankData;)V
    .locals 10
    .param p1, "jankData"    # [Landroid/view/SurfaceControl$JankData;

    .line 373
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/jank/FrameTracker;->mCancelled:Z

    if-eqz v1, :cond_0

    .line 375
    monitor-exit v0

    return-void

    .line 378
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 379
    .local v3, "jankStat":Landroid/view/SurfaceControl$JankData;
    iget-wide v4, v3, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->isInRange(J)Z

    move-result v4

    if-nez v4, :cond_1

    .line 380
    goto :goto_1

    .line 382
    :cond_1
    iget-wide v4, v3, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    invoke-direct {p0, v4, v5}, Lcom/android/internal/jank/FrameTracker;->findJankInfo(J)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v4

    .line 383
    .local v4, "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    if-eqz v4, :cond_2

    .line 384
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->surfaceControlCallbackFired:Z

    .line 385
    iget v5, v3, Landroid/view/SurfaceControl$JankData;->jankType:I

    iput v5, v4, Lcom/android/internal/jank/FrameTracker$JankInfo;->jankType:I

    goto :goto_1

    .line 387
    :cond_2
    iget-object v5, p0, Lcom/android/internal/jank/FrameTracker;->mJankInfos:Landroid/util/SparseArray;

    iget-wide v6, v3, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    long-to-int v6, v6

    iget-wide v7, v3, Landroid/view/SurfaceControl$JankData;->frameVsyncId:J

    iget v9, v3, Landroid/view/SurfaceControl$JankData;->jankType:I

    .line 388
    invoke-static {v7, v8, v9}, Lcom/android/internal/jank/FrameTracker$JankInfo;->createFromSurfaceControlCallback(JI)Lcom/android/internal/jank/FrameTracker$JankInfo;

    move-result-object v7

    .line 387
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    .end local v3    # "jankStat":Landroid/view/SurfaceControl$JankData;
    .end local v4    # "info":Lcom/android/internal/jank/FrameTracker$JankInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 392
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/jank/FrameTracker;->processJankInfos()V

    .line 393
    monitor-exit v0

    .line 394
    return-void

    .line 393
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist postTraceStartMarker()V
    .locals 4

    .line 277
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mChoreographer:Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;

    invoke-static {v0}, Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;->-$$Nest$fgetmChoreographer(Lcom/android/internal/jank/FrameTracker$ChoreographerWrapper;)Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/jank/FrameTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/jank/FrameTracker;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 279
    return-void
.end method

.method public blacklist removeObservers()V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceControlWrapper:Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;

    invoke-virtual {v0, p0}, Lcom/android/internal/jank/FrameTracker$SurfaceControlWrapper;->removeJankStatsListener(Landroid/view/SurfaceControl$OnJankDataListener;)V

    .line 597
    iget-boolean v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceOnly:Z

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mRendererWrapper:Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mObserver:Landroid/graphics/HardwareRendererObserver;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/FrameTracker$ThreadedRendererWrapper;->removeObserver(Landroid/graphics/HardwareRendererObserver;)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/jank/FrameTracker;->mSurfaceChangedCallback:Landroid/view/ViewRootImpl$SurfaceChangedCallback;

    if-eqz v0, :cond_0

    .line 601
    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mViewRoot:Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/FrameTracker$ViewRootWrapper;->removeSurfaceChangedCallback(Landroid/view/ViewRootImpl$SurfaceChangedCallback;)V

    .line 604
    :cond_0
    return-void
.end method

.method public blacklist triggerPerfetto()V
    .locals 2

    .line 610
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/jank/FrameTracker;->mSession:Lcom/android/internal/jank/InteractionJankMonitor$Session;

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->trigger(Lcom/android/internal/jank/InteractionJankMonitor$Session;)V

    .line 611
    return-void
.end method
