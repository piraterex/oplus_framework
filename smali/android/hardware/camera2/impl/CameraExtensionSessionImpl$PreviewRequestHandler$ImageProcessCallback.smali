.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;
.super Ljava/lang/Object;
.source "CameraExtensionSessionImpl.java"

# interfaces
.implements Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageProcessCallback"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V
    .locals 0

    .line 1745
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)V

    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onImageAvailable$0$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback()V
    .locals 3

    .line 1803
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmClientRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureProcessStarted(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method synthetic blacklist lambda$onImageAvailable$1$android-hardware-camera2-impl-CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback()V
    .locals 3

    .line 1807
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v1, v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmClientRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;->onCaptureFailed(Landroid/hardware/camera2/CameraExtensionSession;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public blacklist onImageAvailable(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 9
    .param p1, "reader"    # Landroid/media/ImageReader;
    .param p2, "img"    # Landroid/media/Image;

    .line 1758
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 1762
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v4

    .line 1764
    invoke-static {v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mcalculatePruneThreshold(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;Landroid/util/LongSparseArray;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v2

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v3

    .line 1762
    invoke-static {v0, v2, v3, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V

    .line 1768
    :cond_0
    const-string v0, "CameraExtensionSessionImpl"

    if-nez p2, :cond_1

    .line 1769
    const-string v1, "Invalid preview buffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    return-void

    .line 1774
    :cond_1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1780
    nop

    .line 1782
    invoke-virtual {p2}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 1783
    .local v1, "timestamp":J
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v3

    .line 1784
    .local v3, "idx":I
    if-ltz v3, :cond_4

    .line 1785
    const/4 v4, 0x1

    .line 1786
    .local v4, "processStatus":Z
    invoke-static {p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$sminitializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object v5

    .line 1788
    .local v5, "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :try_start_1
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v6, v6, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    move-result-object v6

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v7

    .line 1789
    invoke-virtual {v7, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/hardware/camera2/TotalCaptureResult;

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v8}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmCaptureResultHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;

    move-result-object v8

    .line 1788
    invoke-virtual {v6, v5, v7, v8}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->process(Landroid/hardware/camera2/extension/ParcelImage;Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/extension/IProcessResultImpl;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1795
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1790
    :catch_0
    move-exception v6

    .line 1791
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v4, 0x0

    .line 1792
    :try_start_2
    const-string v7, "Extension service does not respond during processing, dropping frame!"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1795
    nop

    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, v5, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1796
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 1797
    nop

    .line 1798
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v0, v3, v6, v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V

    .line 1799
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmClientNotificationsEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1802
    .local v6, "ident":J
    if-eqz v4, :cond_2

    .line 1803
    :try_start_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v8, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1807
    :cond_2
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v8, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback$$ExternalSyntheticLambda1;

    invoke-direct {v8, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1812
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1813
    goto :goto_2

    .line 1812
    :catchall_1
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1813
    throw v0

    .line 1815
    .end local v4    # "processStatus":Z
    .end local v5    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    .end local v6    # "ident":J
    :cond_3
    :goto_2
    goto :goto_4

    .line 1795
    .restart local v4    # "processStatus":Z
    .restart local v5    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :goto_3
    iget-object v6, v5, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v6}, Landroid/hardware/HardwareBuffer;->close()V

    .line 1796
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 1797
    throw v0

    .line 1816
    .end local v4    # "processStatus":Z
    .end local v5    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :cond_4
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v0

    new-instance v4, Landroid/util/Pair;

    const/4 v5, 0x0

    invoke-direct {v4, p2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1818
    :goto_4
    return-void

    .line 1775
    .end local v1    # "timestamp":J
    .end local v3    # "idx":I
    :catch_1
    move-exception v1

    .line 1776
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Failed to detach image!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    .line 1779
    return-void
.end method

.method public blacklist onImageDropped(J)V
    .locals 4
    .param p1, "timestamp"    # J

    .line 1749
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$mdiscardPendingRepeatingResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;ILandroid/util/LongSparseArray;Z)V

    .line 1753
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler$ImageProcessCallback;->this$1:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;->-$$Nest$fgetmPendingResultMap(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;)Landroid/util/LongSparseArray;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1754
    return-void
.end method
