.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewRequestHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;
    }
.end annotation


# instance fields
.field private final blacklist mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

.field private blacklist mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

.field private final blacklist mClientNotificationsEnabled:Z

.field private final blacklist mClientRequest:Landroid/hardware/camera2/CaptureRequest;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

.field private blacklist mPendingResultMap:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mRepeatingImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private blacklist mRequestUpdatedNeeded:Z

.field private final blacklist mSingleCapture:Z

.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureResultHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientNotificationsEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mcalculatePruneThreshold(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/util/LongSparseArray;)Ljava/lang/Long;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->calculatePruneThreshold(Landroid/util/LongSparseArray;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->discardPendingRepeatingResults(ILandroid/util/LongSparseArray;Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V
    .locals 7
    .param p2, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .param p5, "imageCallback"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 1403
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;Z)V

    .line 1404
    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;Z)V
    .locals 1
    .param p2, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .param p5, "imageCallback"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
    .param p6, "singleCapture"    # Z

    .line 1408
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    .line 1393
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    .line 1394
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    .line 1396
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    .line 1398
    const/4 p1, 0x0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z

    .line 1409
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1410
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    .line 1411
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 1412
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    .line 1414
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRepeatingImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 1415
    iput-boolean p6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    .line 1416
    return-void
.end method

.method private blacklist calculatePruneThreshold(Landroid/util/LongSparseArray;)Ljava/lang/Long;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1672
    .local p1, "previewMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    const-wide v0, 0x7fffffffffffffffL

    .line 1673
    .local v0, "oldestTimestamp":J
    const/4 v2, 0x0

    .local v2, "idx":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1674
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1675
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    invoke-virtual {p1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    .line 1676
    .local v4, "timestamp":J
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_0

    cmp-long v6, v4, v0

    if-gez v6, :cond_0

    .line 1677
    move-wide v0, v4

    .line 1673
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    .end local v4    # "timestamp":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1680
    .end local v2    # "idx":I
    :cond_1
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    goto :goto_1

    :cond_2
    move-wide v2, v0

    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method private blacklist discardPendingRepeatingResults(ILandroid/util/LongSparseArray;Z)V
    .locals 7
    .param p1, "idx"    # I
    .param p3, "notifyCurrentIndex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/LongSparseArray<",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;Z)V"
        }
    .end annotation

    .line 1685
    .local p2, "previewMap":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    if-gez p1, :cond_0

    .line 1686
    return-void

    .line 1688
    :cond_0
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_4

    .line 1689
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1690
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/media/Image;

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    goto :goto_1

    .line 1691
    :cond_1
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-ne v0, p1, :cond_2

    if-eqz p3, :cond_3

    .line 1693
    :cond_2
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/TotalCaptureResult;

    .line 1694
    .local v1, "result":Landroid/hardware/camera2/TotalCaptureResult;
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 1695
    .local v2, "timestamp":Ljava/lang/Long;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1696
    invoke-static {v6, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    .line 1695
    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1698
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Preview frame drop with timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CameraExtensionSessionImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1701
    .local v3, "ident":J
    :try_start_0
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda3;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1706
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1707
    goto :goto_1

    .line 1706
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1707
    throw v5

    .line 1710
    .end local v1    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    .end local v2    # "timestamp":Ljava/lang/Long;
    .end local v3    # "ident":J
    :cond_3
    :goto_1
    invoke-virtual {p2, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 1688
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 1712
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method private blacklist resumeInternalRepeatingRequest(Z)V
    .locals 11
    .param p1, "internal"    # Z

    .line 1650
    const-string v0, "Failed to resume internal repeating request!"

    const-string v1, "CameraExtensionSessionImpl"

    if-eqz p1, :cond_0

    .line 1651
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    new-instance v10, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRepeatingImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-static {v2, v3, v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    goto :goto_0

    .line 1655
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v3

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-static {v2, v3, p0, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1664
    :catch_0
    move-exception v2

    .line 1665
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1660
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :catch_1
    move-exception v2

    .line 1663
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 1657
    :catch_2
    move-exception v0

    .line 1658
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to resume internal repeating request, extension service fails to respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    nop

    .line 1667
    :goto_1
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$discardPendingRepeatingResults$6$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler()V
    .locals 3

    .line 1702
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1703
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    .line 1702
    return-void
.end method

.method synthetic blacklist lambda$onCaptureCompleted$4$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler()V
    .locals 3

    .line 1617
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1618
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    .line 1617
    return-void
.end method

.method synthetic blacklist lambda$onCaptureCompleted$5$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler()V
    .locals 3

    .line 1628
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    .line 1629
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    .line 1628
    return-void
.end method

.method synthetic blacklist lambda$onCaptureFailed$3$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler()V
    .locals 3

    .line 1518
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method synthetic blacklist lambda$onCaptureSequenceAborted$1$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler(I)V
    .locals 2
    .param p1, "sequenceId"    # I

    .line 1471
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1472
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceAborted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    .line 1471
    return-void
.end method

.method synthetic blacklist lambda$onCaptureSequenceCompleted$2$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler(I)V
    .locals 2
    .param p1, "sequenceId"    # I

    .line 1500
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1501
    invoke-virtual {v0, v1, p1}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraExtensionSession;I)V

    .line 1500
    return-void
.end method

.method synthetic blacklist lambda$onCaptureStarted$0$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler(J)V
    .locals 3
    .param p1, "timestamp"    # J

    .line 1448
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;J)V

    return-void
.end method

.method public whitelist onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 11
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 1530
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    .line 1531
    .local v0, "notifyClient":Z
    const/4 v1, 0x1

    .line 1533
    .local v1, "processStatus":Z
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, v2, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1534
    :try_start_0
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1535
    .local v3, "timestamp":Ljava/lang/Long;
    if-eqz v3, :cond_9

    .line 1536
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmCaptureResultsSupported(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-nez v4, :cond_0

    .line 1538
    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientRequest:Landroid/hardware/camera2/CaptureRequest;

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    .line 1539
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v10

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;I)V

    iput-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    .line 1541
    :cond_0
    iget-boolean v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_2

    .line 1543
    const/4 v4, 0x0

    .line 1545
    .local v4, "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :try_start_1
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewRequestUpdateProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object v7

    .line 1546
    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    invoke-virtual {p3}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v9

    .line 1545
    invoke-interface {v7, v8, v9}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->process(Landroid/hardware/camera2/impl/CameraMetadataNative;I)Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, v7

    .line 1550
    goto :goto_0

    .line 1547
    :catch_0
    move-exception v7

    .line 1548
    .local v7, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v8, "CameraExtensionSessionImpl"

    const-string v9, "Extension service does not respond during processing!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1551
    .end local v7    # "e":Landroid/os/RemoteException;
    :goto_0
    if-eqz v4, :cond_1

    .line 1553
    :try_start_3
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v5, v4, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    .line 1554
    iput-boolean v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    .line 1559
    :catch_1
    move-exception v5

    .line 1560
    .local v5, "e":Landroid/hardware/camera2/CameraAccessException;
    :try_start_4
    const-string v7, "CameraExtensionSessionImpl"

    const-string v8, "Failed to update repeating request settings!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    nop

    .end local v5    # "e":Landroid/hardware/camera2/CameraAccessException;
    goto/16 :goto_5

    .line 1555
    :catch_2
    move-exception v5

    .line 1561
    :goto_1
    goto/16 :goto_5

    .line 1563
    :cond_1
    iput-boolean v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z

    goto/16 :goto_5

    .line 1565
    .end local v4    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_2
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 1567
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v4

    .line 1569
    .local v4, "idx":I
    if-ltz v4, :cond_4

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v7, :cond_4

    .line 1571
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-eqz v7, :cond_3

    .line 1572
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1573
    invoke-static {v10, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v10

    .line 1572
    invoke-virtual {v7, v8, v9, v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 1575
    :cond_3
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-direct {p0, v4, v7, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->discardPendingRepeatingResults(ILandroid/util/LongSparseArray;Z)V

    goto/16 :goto_6

    .line 1576
    :cond_4
    if-ltz v4, :cond_5

    .line 1578
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    .line 1579
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/media/Image;

    .line 1578
    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$sminitializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1581
    .local v7, "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :try_start_5
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    invoke-virtual {v8, v7, p3, v9}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/extension/IProcessResultImpl;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1599
    :try_start_6
    iget-object v8, v7, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1600
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/Image;

    :goto_2
    invoke-virtual {v8}, Landroid/media/Image;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1601
    goto :goto_3

    .line 1599
    :catchall_0
    move-exception v5

    goto :goto_4

    .line 1587
    :catch_3
    move-exception v8

    .line 1595
    .local v8, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    .line 1596
    :try_start_7
    const-string v9, "CameraExtensionSessionImpl"

    const-string v10, "Runtime exception encountered during buffer processing, dropping frame!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1599
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :try_start_8
    iget-object v8, v7, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1600
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/Image;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    .line 1583
    :catch_4
    move-exception v8

    .line 1584
    .local v8, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 1585
    :try_start_9
    const-string v9, "CameraExtensionSessionImpl"

    const-string v10, "Extension service does not respond during processing, dropping frame!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1599
    .end local v8    # "e":Landroid/os/RemoteException;
    :try_start_a
    iget-object v8, v7, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1600
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Landroid/media/Image;

    goto :goto_2

    .line 1602
    :goto_3
    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-direct {p0, v4, v8, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->discardPendingRepeatingResults(ILandroid/util/LongSparseArray;Z)V

    .line 1603
    .end local v7    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    goto :goto_6

    .line 1599
    .restart local v7    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :goto_4
    iget-object v6, v7, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1600
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Landroid/media/Image;

    invoke-virtual {v6}, Landroid/media/Image;->close()V

    .line 1601
    nop

    .end local v0    # "notifyClient":Z
    .end local v1    # "processStatus":Z
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    throw v5

    .line 1605
    .end local v7    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    .restart local v0    # "notifyClient":Z
    .restart local v1    # "processStatus":Z
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
    .restart local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_5
    const/4 v0, 0x0

    .line 1606
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mPendingResultMap:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x0

    invoke-direct {v9, v10, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v5, v7, v8, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    .line 1565
    .end local v4    # "idx":I
    :cond_6
    :goto_5
    nop

    .line 1613
    :goto_6
    if-eqz v0, :cond_a

    .line 1614
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1616
    .local v4, "ident":J
    if-eqz v1, :cond_7

    .line 1617
    :try_start_b
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda4;

    invoke-direct {v8, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda4;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1621
    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v7

    if-eq v7, v6, :cond_8

    .line 1623
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mCaptureResultHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 1624
    invoke-static {v9, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v9

    .line 1623
    invoke-virtual {v6, v7, v8, v9}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;->onCaptureCompleted(JLandroid/hardware/camera2/impl/CameraMetadataNative;)V

    goto :goto_7

    .line 1627
    :cond_7
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda5;

    invoke-direct {v7, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda5;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1634
    :cond_8
    :goto_7
    :try_start_c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1635
    nop

    .line 1636
    .end local v4    # "ident":J
    goto :goto_8

    .line 1634
    .restart local v4    # "ident":J
    :catchall_1
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1635
    nop

    .end local v0    # "notifyClient":Z
    .end local v1    # "processStatus":Z
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
    .end local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .end local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p3    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    throw v6

    .line 1638
    .end local v4    # "ident":J
    .restart local v0    # "notifyClient":Z
    .restart local v1    # "processStatus":Z
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
    .restart local p1    # "session":Landroid/hardware/camera2/CameraCaptureSession;
    .restart local p2    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p3    # "result":Landroid/hardware/camera2/TotalCaptureResult;
    :cond_9
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "Result without valid sensor timestamp!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1641
    .end local v3    # "timestamp":Ljava/lang/Long;
    :cond_a
    :goto_8
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1643
    if-nez v0, :cond_b

    .line 1644
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationSuccess(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1646
    :cond_b
    return-void

    .line 1641
    :catchall_2
    move-exception v3

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    throw v3
.end method

.method public whitelist onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "failure"    # Landroid/hardware/camera2/CaptureFailure;

    .line 1514
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 1515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1517
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1521
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1522
    goto :goto_0

    .line 1521
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1522
    throw v2

    .line 1524
    .end local v0    # "ident":J
    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist onCaptureSequenceAborted(Landroid/hardware/camera2/CameraCaptureSession;I)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I

    .line 1461
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1462
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmInternalRepeatingRequestEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    if-nez v1, :cond_0

    .line 1463
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->resumeInternalRepeatingRequest(Z)V

    .line 1465
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1467
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v0, :cond_1

    .line 1468
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1470
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda6;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda6;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1475
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1476
    nop

    .line 1477
    .end local v0    # "ident":J
    goto :goto_0

    .line 1475
    .restart local v0    # "ident":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1476
    throw v2

    .line 1478
    .end local v0    # "ident":J
    :cond_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 1480
    :goto_0
    return-void

    .line 1465
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist onCaptureSequenceCompleted(Landroid/hardware/camera2/CameraCaptureSession;IJ)V
    .locals 4
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "sequenceId"    # I
    .param p3, "frameNumber"    # J

    .line 1487
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1488
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    if-nez v1, :cond_0

    .line 1489
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRequestUpdatedNeeded:Z

    .line 1490
    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->resumeInternalRepeatingRequest(Z)V

    goto :goto_0

    .line 1491
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmInternalRepeatingRequestEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mSingleCapture:Z

    if-nez v1, :cond_1

    .line 1492
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->resumeInternalRepeatingRequest(Z)V

    .line 1494
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1496
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v0, :cond_2

    .line 1497
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1499
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1504
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1505
    goto :goto_1

    .line 1504
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1505
    throw v2

    .line 1507
    .end local v0    # "ident":J
    :cond_2
    :goto_1
    return-void

    .line 1494
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public whitelist onCaptureStarted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 5
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;
    .param p2, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p3, "timestamp"    # J
    .param p5, "frameNumber"    # J

    .line 1423
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1426
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    if-nez v1, :cond_3

    .line 1427
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 1429
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v1, :cond_0

    .line 1430
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmClientRepeatingRequestSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;

    move-result-object v2

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmClientRepeatingRequestSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;

    move-result-object v4

    .line 1431
    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$smnativeGetSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    .line 1430
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onOutputSurface(Landroid/view/Surface;I)V

    goto :goto_0

    .line 1433
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onOutputSurface(Landroid/view/Surface;I)V

    .line 1435
    :goto_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;

    invoke-direct {v1, p0, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback-IA;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    goto :goto_2

    .line 1437
    :cond_1
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v1, :cond_2

    .line 1438
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmRepeatingRequestImageWriter(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/media/ImageWriter;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageForwardCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/media/ImageWriter;)V

    goto :goto_1

    .line 1439
    :cond_2
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {v1, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback-IA;)V

    :goto_1
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    .line 1442
    :cond_3
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1444
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mClientNotificationsEnabled:Z

    if-eqz v0, :cond_4

    .line 1445
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1447
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p3, p4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;J)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1451
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1452
    goto :goto_3

    .line 1451
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1452
    throw v2

    .line 1455
    .end local v0    # "ident":J
    :cond_4
    :goto_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mRepeatingImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->mImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->registerListener(Ljava/lang/Long;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;)V

    .line 1456
    return-void

    .line 1442
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
