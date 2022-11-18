.class Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;
.super Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InitializeSessionHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .locals 0

    .line 855
    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-direct {p0}, Landroid/hardware/camera2/extension/IInitializeSessionCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    return-void
.end method


# virtual methods
.method public blacklist onFailure()V
    .locals 2

    .line 893
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 894
    const-string v0, "CameraExtensionSessionImpl"

    const-string v1, "Failed to initialize proxy service session! This can happen when trying to configure multiple concurrent extension sessions!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 898
    return-void
.end method

.method public blacklist onSuccess()V
    .locals 12

    .line 858
    const/4 v0, 0x1

    .line 859
    .local v0, "status":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    .line 860
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mcompileInitialRequestList(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Ljava/util/ArrayList;

    move-result-object v1

    .line 861
    .local v1, "initialRequestList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const-string v3, "CameraExtensionSessionImpl"

    if-nez v2, :cond_0

    .line 863
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmRepeatingRequestImageCallback(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-static {v2, v1, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetInitialCaptureRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v2

    .line 867
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string v4, "Failed to initialize the initial capture request!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    const/4 v0, 0x0

    .line 871
    .end local v2    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    goto :goto_1

    .line 874
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v4

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v4

    new-instance v11, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$fgetmRepeatingRequestImageCallback(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-result-object v10

    move-object v5, v11

    invoke-direct/range {v5 .. v10}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-static {v2, v4, v11}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 882
    goto :goto_1

    .line 877
    :catch_1
    move-exception v2

    .line 878
    .local v2, "e":Landroid/util/AndroidException;
    const-string v4, "Failed to initialize internal repeating request!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/4 v0, 0x0

    .line 886
    .end local v2    # "e":Landroid/util/AndroidException;
    :goto_1
    if-nez v0, :cond_1

    .line 887
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;->this$0:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->-$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    .line 889
    :cond_1
    return-void
.end method
