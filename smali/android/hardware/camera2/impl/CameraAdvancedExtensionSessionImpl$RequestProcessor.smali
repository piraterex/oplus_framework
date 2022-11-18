.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
.super Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RequestProcessor"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .locals 0

    .line 850
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IRequestProcessorImpl$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist abortCaptures()V
    .locals 3

    .line 921
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    :catch_0
    move-exception v1

    .line 925
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Capture session closed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 922
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 923
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "Failed during capture abort!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 927
    :goto_1
    return-void
.end method

.method public blacklist setImageProcessor(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/IImageProcessorImpl;)V
    .locals 6
    .param p1, "outputConfigId"    # Landroid/hardware/camera2/extension/OutputConfigId;
    .param p2, "imageProcessor"    # Landroid/hardware/camera2/extension/IImageProcessorImpl;

    .line 854
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    iget-object v0, v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 855
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmReaderMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 856
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmReaderMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v1

    iget v2, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 857
    .local v1, "reader":Landroid/media/ImageReader;
    const/4 v2, 0x0

    .line 858
    .local v2, "physicalCameraId":Ljava/lang/String;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v3

    .line 860
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/CameraOutputConfig;

    iget-object v3, v3, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    move-object v2, v3

    .line 861
    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;

    iget v4, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    const/4 v5, 0x0

    invoke-direct {v3, v4, p2, v2, v5}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;-><init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler-IA;)V

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v4}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 864
    :cond_0
    const-string v3, "CameraAdvancedExtensionSessionImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera output configuration for ImageReader with  config Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    .end local v1    # "reader":Landroid/media/ImageReader;
    .end local v2    # "physicalCameraId":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 868
    :cond_1
    const-string v1, "CameraAdvancedExtensionSessionImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImageReader with output config id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :goto_1
    monitor-exit v0

    .line 872
    return-void

    .line 871
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setRepeating(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)Z
    .locals 6
    .param p1, "request"    # Landroid/hardware/camera2/extension/Request;
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;

    .line 904
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 906
    .local v1, "repeatingRequest":Landroid/hardware/camera2/CaptureRequest;
    new-instance v2, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {v2, v3, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/extension/IRequestCallback;)V

    .line 907
    .local v2, "captureCallback":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v1, v4, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 914
    nop

    .end local v1    # "repeatingRequest":Landroid/hardware/camera2/CaptureRequest;
    .end local v2    # "captureCallback":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    goto :goto_0

    .line 912
    :catch_0
    move-exception v1

    .line 913
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Capture session closed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 909
    :catch_1
    move-exception v1

    .line 910
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "Failed to enable repeating request!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist stopRepeating()V
    .locals 3

    .line 932
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 935
    :catch_0
    move-exception v1

    .line 936
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Capture session closed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 933
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v1

    .line 934
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "Failed during repeating capture stop!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    nop

    .line 938
    :goto_1
    return-void
.end method

.method public blacklist submit(Landroid/hardware/camera2/extension/Request;Landroid/hardware/camera2/extension/IRequestCallback;)Z
    .locals 2
    .param p1, "request"    # Landroid/hardware/camera2/extension/Request;
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;

    .line 876
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 877
    .local v0, "captureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/Request;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    invoke-virtual {p0, v0, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)Z

    move-result v1

    return v1
.end method

.method public blacklist submitBurst(Ljava/util/List;Landroid/hardware/camera2/extension/IRequestCallback;)Z
    .locals 7
    .param p2, "callback"    # Landroid/hardware/camera2/extension/IRequestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/Request;",
            ">;",
            "Landroid/hardware/camera2/extension/IRequestCallback;",
            ")Z"
        }
    .end annotation

    .line 884
    .local p1, "requests":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/Request;>;"
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    :try_start_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-direct {v1, v2, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/extension/IRequestCallback;)V

    .line 885
    .local v1, "captureCallback":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 886
    .local v2, "captureRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/Request;

    .line 887
    .local v4, "request":Landroid/hardware/camera2/extension/Request;
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5, v4, v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$sminitializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    nop

    .end local v4    # "request":Landroid/hardware/camera2/extension/Request;
    goto :goto_0

    .line 890
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v3

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;->this$0:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->-$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v3, v2, v4, v1}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    nop

    .end local v1    # "captureCallback":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;
    .end local v2    # "captureRequests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest;>;"
    goto :goto_1

    .line 895
    :catch_0
    move-exception v1

    .line 896
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Capture session closed!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 892
    :catch_1
    move-exception v1

    .line 893
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v2, "Failed to submit capture requests!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x0

    return v0
.end method
