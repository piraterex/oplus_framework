.class public Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
.super Landroid/hardware/camera2/CameraOfflineSession;
.source "CameraOfflineSessionImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    }
.end annotation


# static fields
.field private static final blacklist NANO_PER_SECOND:J = 0x3b9aca00L

.field private static final blacklist REQUEST_ID_NONE:I = -0x1

.field private static final blacklist TAG:Ljava/lang/String; = "CameraOfflineSessionImpl"


# instance fields
.field private final blacklist DEBUG:Z

.field private final blacklist mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

.field private final blacklist mCameraId:Ljava/lang/String;

.field private blacklist mCaptureCallbackMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private final blacklist mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mConfiguredOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

.field final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

.field private final blacklist mOfflineExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOfflineOutputs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOfflineRequestLastFrameNumbersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

.field private final blacklist mTotalPartialCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraId(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureCallbackMap(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCharacteristics(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguredOutputs(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFrameNumberTracker(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/impl/FrameNumberTracker;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineCallback(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineExecutor(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOfflineOutputs(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRemoteSession(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Landroid/hardware/camera2/ICameraOfflineSession;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTotalPartialCount(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckAndFireSequenceComplete(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->checkAndFireSequenceComplete()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misClosed(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)Z
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->isClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveCompletedCallbackHolderLocked(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->removeCompletedCallbackHolderLocked(JJJ)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;Landroid/util/SparseArray;Ljava/util/AbstractMap$SimpleEntry;Landroid/util/SparseArray;Landroid/hardware/camera2/impl/FrameNumberTracker;Landroid/util/SparseArray;Ljava/util/List;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "characteristics"    # Landroid/hardware/camera2/CameraCharacteristics;
    .param p3, "offlineExecutor"    # Ljava/util/concurrent/Executor;
    .param p4, "offlineCallback"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .param p8, "frameNumberTracker"    # Landroid/hardware/camera2/impl/FrameNumberTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Ljava/util/AbstractMap$SimpleEntry<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/InputConfiguration;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/impl/FrameNumberTracker;",
            "Landroid/util/SparseArray<",
            "Landroid/hardware/camera2/impl/CaptureCallbackHolder;",
            ">;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p5, "offlineOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local p6, "offlineInput":Ljava/util/AbstractMap$SimpleEntry;, "Ljava/util/AbstractMap$SimpleEntry<Ljava/lang/Integer;Landroid/hardware/camera2/params/InputConfiguration;>;"
    .local p7, "configuredOutputs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .local p9, "callbackMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/hardware/camera2/impl/CaptureCallbackHolder;>;"
    .local p10, "frameNumberList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/CameraOfflineSession;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->DEBUG:Z

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    .line 64
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 65
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    invoke-direct {v0, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 90
    new-instance v0, Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 103
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 107
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    .line 110
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 111
    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 112
    .local v0, "partialCount":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 114
    const/4 v1, 0x1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mTotalPartialCount:I

    .line 119
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    invoke-interface {v1, p10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 120
    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    .line 121
    iput-object p9, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    .line 122
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mConfiguredOutputs:Landroid/util/SparseArray;

    .line 123
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineOutputs:Landroid/util/SparseArray;

    .line 124
    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineInput:Ljava/util/AbstractMap$SimpleEntry;

    .line 125
    const-string/jumbo v1, "offline executor must not be null"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    .line 126
    const-string/jumbo v1, "offline callback must not be null"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineCallback:Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;

    .line 128
    return-void

    .line 104
    .end local v0    # "partialCount":Ljava/lang/Integer;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null argument given"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkAndFireSequenceComplete()V
    .locals 24

    .line 553
    move-object/from16 v1, p0

    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedFrameNumber()J

    move-result-wide v2

    .line 554
    .local v2, "completedFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedReprocessFrameNumber()J

    move-result-wide v4

    .line 555
    .local v4, "completedReprocessFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mFrameNumberTracker:Landroid/hardware/camera2/impl/FrameNumberTracker;

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/FrameNumberTracker;->getCompletedZslStillFrameNumber()J

    move-result-wide v6

    .line 556
    .local v6, "completedZslStillFrameNumber":J
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 557
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 558
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 559
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 560
    .local v9, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    const/4 v10, 0x0

    .line 561
    .local v10, "sequenceCompleted":Z
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v11

    .line 565
    .local v11, "requestId":I
    iget-object v12, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 566
    :try_start_0
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 567
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 568
    :try_start_1
    iget-object v13, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 589
    .end local v0    # "index":I
    :catchall_0
    move-exception v0

    move-wide/from16 v22, v2

    goto/16 :goto_5

    .line 568
    .restart local v0    # "index":I
    :cond_0
    const/4 v13, 0x0

    .line 569
    .local v13, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_1
    if-eqz v13, :cond_2

    .line 570
    nop

    .line 571
    :try_start_2
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v14

    .line 572
    .local v14, "lastRegularFrameNumber":J
    nop

    .line 573
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v16

    .line 574
    .local v16, "lastReprocessFrameNumber":J
    nop

    .line 575
    invoke-virtual {v9}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v18

    .line 576
    .local v18, "lastZslStillFrameNumber":J
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/hardware/camera2/impl/CaptureCallback;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v20

    .line 577
    .local v20, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {v13}, Landroid/hardware/camera2/impl/CaptureCallbackHolder;->getCallback()Landroid/hardware/camera2/impl/CaptureCallback;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/impl/CaptureCallback;->getSessionCallback()Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 579
    .local v21, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    cmp-long v22, v14, v2

    if-gtz v22, :cond_1

    cmp-long v22, v16, v4

    if-gtz v22, :cond_1

    cmp-long v22, v18, v6

    if-gtz v22, :cond_1

    .line 582
    const/4 v10, 0x1

    .line 583
    move-wide/from16 v22, v2

    .end local v2    # "completedFrameNumber":J
    .local v22, "completedFrameNumber":J
    :try_start_3
    iget-object v2, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_2

    .line 579
    .end local v22    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_1
    move-wide/from16 v22, v2

    .line 585
    .end local v2    # "completedFrameNumber":J
    .end local v14    # "lastRegularFrameNumber":J
    .end local v16    # "lastReprocessFrameNumber":J
    .end local v18    # "lastZslStillFrameNumber":J
    .restart local v22    # "completedFrameNumber":J
    :goto_2
    move-object/from16 v2, v20

    move-object/from16 v3, v21

    goto :goto_3

    .line 586
    .end local v20    # "executor":Ljava/util/concurrent/Executor;
    .end local v21    # "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v22    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_2
    move-wide/from16 v22, v2

    .end local v2    # "completedFrameNumber":J
    .restart local v22    # "completedFrameNumber":J
    const/16 v20, 0x0

    .line 587
    .restart local v20    # "executor":Ljava/util/concurrent/Executor;
    const/4 v2, 0x0

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    .line 589
    .end local v0    # "index":I
    .end local v20    # "executor":Ljava/util/concurrent/Executor;
    .local v2, "executor":Ljava/util/concurrent/Executor;
    .local v3, "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    :goto_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 593
    if-eqz v13, :cond_3

    if-eqz v10, :cond_4

    .line 594
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 598
    :cond_4
    if-eqz v10, :cond_5

    if-eqz v3, :cond_5

    if-eqz v2, :cond_5

    .line 599
    new-instance v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;

    invoke-direct {v0, v1, v3, v11, v9}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$1;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILandroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;)V

    move-object v12, v0

    .line 609
    .local v12, "resultDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 611
    .local v14, "ident":J
    :try_start_4
    invoke-interface {v2, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 613
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    nop

    .line 616
    iget-object v0, v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 617
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;->onDeviceIdle()V

    goto :goto_4

    .line 613
    :catchall_1
    move-exception v0

    move-object/from16 v16, v0

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 614
    throw v16

    .line 621
    .end local v2    # "executor":Ljava/util/concurrent/Executor;
    .end local v3    # "callback":Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .end local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v10    # "sequenceCompleted":Z
    .end local v11    # "requestId":I
    .end local v12    # "resultDispatch":Ljava/lang/Runnable;
    .end local v13    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v14    # "ident":J
    :cond_5
    :goto_4
    move-wide/from16 v2, v22

    goto/16 :goto_0

    .line 589
    .end local v22    # "completedFrameNumber":J
    .local v2, "completedFrameNumber":J
    .restart local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .restart local v10    # "sequenceCompleted":Z
    .restart local v11    # "requestId":I
    :catchall_2
    move-exception v0

    move-wide/from16 v22, v2

    .end local v2    # "completedFrameNumber":J
    .restart local v22    # "completedFrameNumber":J
    :goto_5
    :try_start_5
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_5

    .line 622
    .end local v9    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v10    # "sequenceCompleted":Z
    .end local v11    # "requestId":I
    .end local v22    # "completedFrameNumber":J
    .restart local v2    # "completedFrameNumber":J
    :cond_6
    return-void
.end method

.method private blacklist disconnect()V
    .locals 5

    .line 747
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 749
    monitor-exit v0

    return-void

    .line 752
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    if-eqz v1, :cond_1

    .line 753
    invoke-interface {v1}, Landroid/hardware/camera2/ICameraOfflineSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 756
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    invoke-interface {v1}, Landroid/hardware/camera2/ICameraOfflineSession;->disconnect()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 759
    goto :goto_0

    .line 757
    :catch_0
    move-exception v1

    .line 758
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CameraOfflineSessionImpl"

    const-string v3, "Exception while disconnecting from offline session: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 759
    nop

    .line 764
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    .line 766
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$4;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$4;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 773
    .local v1, "closeDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 775
    .local v2, "ident":J
    :try_start_3
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    nop

    .line 779
    .end local v1    # "closeDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    monitor-exit v0

    .line 780
    return-void

    .line 777
    .restart local v1    # "closeDispatch":Ljava/lang/Runnable;
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 778
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    throw v4

    .line 761
    .end local v1    # "closeDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Offline session is not yet ready"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    throw v1

    .line 779
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private blacklist isClosed()Z
    .locals 1

    .line 743
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mClosing:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private blacklist removeCompletedCallbackHolderLocked(JJJ)V
    .locals 15
    .param p1, "lastCompletedRegularFrameNumber"    # J
    .param p3, "lastCompletedReprocessFrameNumber"    # J
    .param p5, "lastCompletedZslStillFrameNumber"    # J

    .line 636
    move-object v0, p0

    const/4 v1, 0x0

    .line 637
    .local v1, "isReprocess":Z
    iget-object v2, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineRequestLastFrameNumbersList:Ljava/util/List;

    .line 638
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 639
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 640
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;

    .line 641
    .local v3, "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getRequestId()I

    move-result v4

    .line 644
    .local v4, "requestId":I
    iget-object v5, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    .line 645
    .local v5, "index":I
    if-ltz v5, :cond_0

    .line 646
    iget-object v6, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/impl/CaptureCallbackHolder;

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 647
    .local v6, "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    :goto_1
    if-eqz v6, :cond_2

    .line 648
    nop

    .line 649
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastRegularFrameNumber()J

    move-result-wide v7

    .line 650
    .local v7, "lastRegularFrameNumber":J
    nop

    .line 651
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastReprocessFrameNumber()J

    move-result-wide v9

    .line 652
    .local v9, "lastReprocessFrameNumber":J
    nop

    .line 653
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->getLastZslStillFrameNumber()J

    move-result-wide v11

    .line 654
    .local v11, "lastZslStillFrameNumber":J
    cmp-long v13, v7, p1

    if-gtz v13, :cond_2

    cmp-long v13, v9, p3

    if-gtz v13, :cond_2

    cmp-long v13, v11, p5

    if-gtz v13, :cond_2

    .line 657
    invoke-virtual {v3}, Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;->isSequenceCompleted()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 658
    iget-object v13, v0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCaptureCallbackMap:Landroid/util/SparseArray;

    invoke-virtual {v13, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 669
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 671
    :cond_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sequence not yet completed for request id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "CameraOfflineSessionImpl"

    invoke-static {v14, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    goto :goto_0

    .line 676
    .end local v3    # "requestLastFrameNumbers":Landroid/hardware/camera2/impl/RequestLastFrameNumbersHolder;
    .end local v4    # "requestId":I
    .end local v5    # "index":I
    .end local v6    # "holder":Landroid/hardware/camera2/impl/CaptureCallbackHolder;
    .end local v7    # "lastRegularFrameNumber":J
    .end local v9    # "lastReprocessFrameNumber":J
    .end local v11    # "lastZslStillFrameNumber":J
    :cond_2
    :goto_2
    goto :goto_0

    .line 677
    :cond_3
    return-void
.end method


# virtual methods
.method public whitelist abortCaptures()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 884
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist binderDied()V
    .locals 2

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraOfflineSession on device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " died unexpectedly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraOfflineSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V

    .line 801
    return-void
.end method

.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 832
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 844
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 850
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist captureSingleRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 838
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 0

    .line 916
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V

    .line 917
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 785
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 789
    nop

    .line 790
    return-void

    .line 788
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 789
    throw v0
.end method

.method public whitelist finalizeOutputConfigurations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 826
    .local p1, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getCallbacks()Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;
    .locals 1

    .line 131
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mCallbacks:Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$CameraDeviceCallbacks;

    return-object v0
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 2

    .line 805
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getInputSurface()Landroid/view/Surface;
    .locals 2

    .line 900
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isReprocessable()Z
    .locals 2

    .line 895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist notifyFailedSwitch()V
    .locals 5

    .line 680
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 681
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$2;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 688
    .local v1, "switchFailDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 690
    .local v2, "ident":J
    :try_start_1
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    nop

    .line 694
    .end local v1    # "switchFailDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    monitor-exit v0

    .line 695
    return-void

    .line 692
    .restart local v1    # "switchFailDispatch":Ljava/lang/Runnable;
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    throw v4

    .line 694
    .end local v1    # "switchFailDispatch":Ljava/lang/Runnable;
    .end local v2    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist prepare(ILandroid/view/Surface;)V
    .locals 2
    .param p1, "maxCount"    # I
    .param p2, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 815
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist prepare(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 810
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setRemoteSession(Landroid/hardware/camera2/ICameraOfflineSession;)V
    .locals 6
    .param p1, "remoteSession"    # Landroid/hardware/camera2/ICameraOfflineSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 703
    if-nez p1, :cond_0

    .line 704
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->notifyFailedSwitch()V

    .line 705
    monitor-exit v0

    return-void

    .line 708
    :cond_0
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mRemoteSession:Landroid/hardware/camera2/ICameraOfflineSession;

    .line 710
    invoke-interface {p1}, Landroid/hardware/camera2/ICameraOfflineSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 711
    .local v1, "remoteSessionBinder":Landroid/os/IBinder;
    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 717
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 721
    nop

    .line 723
    :try_start_2
    new-instance v2, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;

    invoke-direct {v2, p0}, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl$3;-><init>(Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;)V

    .line 732
    .local v2, "readyDispatch":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 734
    .local v3, "ident":J
    :try_start_3
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;->mOfflineExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v5, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 736
    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    nop

    .line 738
    .end local v1    # "remoteSessionBinder":Landroid/os/IBinder;
    .end local v2    # "readyDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    monitor-exit v0

    .line 739
    return-void

    .line 736
    .restart local v1    # "remoteSessionBinder":Landroid/os/IBinder;
    .restart local v2    # "readyDispatch":Ljava/lang/Runnable;
    .restart local v3    # "ident":J
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 737
    nop

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .end local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    throw v5

    .line 718
    .end local v2    # "readyDispatch":Ljava/lang/Runnable;
    .end local v3    # "ident":J
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .restart local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    :catch_0
    move-exception v3

    .line 719
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "The camera offline session has encountered a serious error"

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .end local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    throw v4

    .line 712
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .restart local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    :cond_1
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const-string v4, "The camera offline session has encountered a serious error"

    invoke-direct {v3, v2, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .end local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    throw v3

    .line 738
    .end local v1    # "remoteSessionBinder":Landroid/os/IBinder;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraOfflineSessionImpl;
    .restart local p1    # "remoteSession":Landroid/hardware/camera2/ICameraOfflineSession;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public whitelist setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            "Landroid/os/Handler;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 868
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRepeatingBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 874
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 856
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 862
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stopRepeating()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 879
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist supportsOfflineProcessing(Landroid/view/Surface;)Z
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;

    .line 911
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist switchToOffline(Ljava/util/Collection;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;)Landroid/hardware/camera2/CameraOfflineSession;
    .locals 2
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/Surface;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/hardware/camera2/CameraOfflineSession$CameraOfflineSessionCallback;",
            ")",
            "Landroid/hardware/camera2/CameraOfflineSession;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 906
    .local p1, "offlineOutputs":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/Surface;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist tearDown(Landroid/view/Surface;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist updateOutputConfiguration(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 2
    .param p1, "config"    # Landroid/hardware/camera2/params/OutputConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 890
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported in offline mode"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
