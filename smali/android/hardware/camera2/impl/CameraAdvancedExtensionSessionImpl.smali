.class public final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.super Landroid/hardware/camera2/CameraExtensionSession;
.source "CameraAdvancedExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$CaptureCallbackHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;,
        Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CameraAdvancedExtensionSessionImpl"


# instance fields
.field private final blacklist mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

.field private final blacklist mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private final blacklist mCameraConfigMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private blacklist mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private blacklist mClientCaptureSurface:Landroid/view/Surface;

.field private blacklist mClientRepeatingRequestSurface:Landroid/view/Surface;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mExtensionClientId:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

.field private blacklist mInitialized:Z

.field final blacklist mInterfaceLock:Ljava/lang/Object;

.field private final blacklist mReaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

.field private final blacklist mSessionId:I

.field private blacklist mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraConfigMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializeHandler(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReaderMap(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRequestProcessor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionProcessor(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCaptureSession(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInitialized(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->notifyConfigurationFailure()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(JLandroid/hardware/camera2/extension/IAdvancedExtenderImpl;Landroid/hardware/camera2/CameraDevice;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;I)V
    .locals 3
    .param p1, "extensionClientId"    # J
    .param p3, "extender"    # Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .param p4, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p5, "repeatingRequestSurface"    # Landroid/view/Surface;
    .param p6, "burstCaptureSurface"    # Landroid/view/Surface;
    .param p7, "callback"    # Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .param p8, "executor"    # Ljava/util/concurrent/Executor;
    .param p9, "sessionId"    # I

    .line 189
    invoke-direct {p0}, Landroid/hardware/camera2/CameraExtensionSession;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    .line 88
    new-instance v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor-IA;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mRequestProcessor:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestProcessor;

    .line 93
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 94
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 190
    iput-wide p1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionClientId:J

    .line 191
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    .line 192
    iput-object p4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 193
    iput-object p7, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    .line 194
    iput-object p8, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 195
    iput-object p5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 196
    iput-object p6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    .line 197
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CameraAdvancedExtensionSessionImpl"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 198
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    .line 201
    new-instance v0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler-IA;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$InitializeSessionHandler;

    .line 202
    iput p9, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionId:I

    .line 203
    return-void
.end method

.method public static blacklist createCameraAdvancedExtensionSession(Landroid/hardware/camera2/CameraDevice;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;I)Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .locals 24
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/hardware/camera2/params/ExtensionSessionConfiguration;
    .param p3, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v11

    .line 112
    .local v11, "clientId":J
    const-wide/16 v1, 0x0

    cmp-long v3, v11, v1

    if-ltz v3, :cond_b

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v13

    .line 117
    .local v13, "cameraId":Ljava/lang/String;
    const-class v3, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/hardware/camera2/CameraManager;

    .line 118
    .local v14, "manager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v14, v13}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v15

    .line 119
    .local v15, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    invoke-direct {v3, v0, v13, v15}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    move-object v10, v3

    .line 122
    .local v10, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v4

    .line 122
    invoke-static {v3, v4, v15}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_8

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/params/OutputConfiguration;

    .line 135
    .local v4, "c":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 139
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_0

    .line 144
    .end local v4    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 141
    .restart local v4    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported stream use case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 142
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported dynamic range profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 137
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v4    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_2
    const/4 v1, 0x0

    .line 147
    .local v1, "suitableSurfaceCount":I
    nop

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    const-class v3, Landroid/graphics/SurfaceTexture;

    .line 147
    invoke-virtual {v10, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 149
    .local v9, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    nop

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    .line 149
    invoke-static {v2, v9}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getRepeatingRequestSurface(Ljava/util/List;Ljava/util/List;)Landroid/view/Surface;

    move-result-object v16

    .line 151
    .local v16, "repeatingRequestSurface":Landroid/view/Surface;
    if-eqz v16, :cond_3

    .line 152
    add-int/lit8 v1, v1, 0x1

    .line 155
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v8, v2

    .line 156
    .local v8, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    sget-object v2, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget v5, v2, v4

    .line 157
    .local v5, "format":I
    nop

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v6

    .line 157
    invoke-virtual {v10, v6, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(II)Ljava/util/List;

    move-result-object v6

    .line 159
    .local v6, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v6, :cond_4

    .line 160
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .end local v5    # "format":I
    .end local v6    # "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 163
    :cond_5
    nop

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    .line 163
    invoke-static {v2, v8}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getBurstCaptureSurface(Ljava/util/List;Ljava/util/HashMap;)Landroid/view/Surface;

    move-result-object v17

    .line 165
    .local v17, "burstCaptureSurface":Landroid/view/Surface;
    if-eqz v17, :cond_6

    .line 166
    add-int/lit8 v1, v1, 0x1

    move v7, v1

    goto :goto_2

    .line 165
    :cond_6
    move v7, v1

    .line 169
    .end local v1    # "suitableSurfaceCount":I
    .local v7, "suitableSurfaceCount":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v7, v1, :cond_7

    .line 173
    nop

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    .line 173
    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v6

    .line 175
    .local v6, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    invoke-interface {v6, v13}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    .line 177
    new-instance v18, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v20

    move-object/from16 v1, v18

    move-wide v2, v11

    move-object v4, v6

    move-object/from16 v5, p0

    move-object/from16 v21, v6

    .end local v6    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .local v21, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    move-object/from16 v6, v16

    move/from16 v22, v7

    .end local v7    # "suitableSurfaceCount":I
    .local v22, "suitableSurfaceCount":I
    move-object/from16 v7, v17

    move-object/from16 v23, v8

    .end local v8    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .local v23, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    move-object/from16 v8, v19

    move-object/from16 v19, v9

    .end local v9    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v19, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v9, v20

    move-object/from16 v20, v10

    .end local v10    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .local v20, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    move/from16 v10, p3

    invoke-direct/range {v1 .. v10}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;-><init>(JLandroid/hardware/camera2/extension/IAdvancedExtenderImpl;Landroid/hardware/camera2/CameraDevice;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;I)V

    .line 180
    .local v1, "ret":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initialize()V

    .line 182
    return-object v1

    .line 170
    .end local v1    # "ret":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local v19    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v21    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .end local v22    # "suitableSurfaceCount":I
    .end local v23    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .restart local v7    # "suitableSurfaceCount":I
    .restart local v8    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .restart local v9    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v10    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or more unsupported output surfaces found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v7    # "suitableSurfaceCount":I
    .end local v8    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v9    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v16    # "repeatingRequestSurface":Landroid/view/Surface;
    .end local v17    # "burstCaptureSurface":Landroid/view/Surface;
    :cond_8
    move-object/from16 v20, v10

    .end local v10    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    goto :goto_3

    .line 128
    .end local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v10    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_9
    move-object/from16 v20, v10

    .line 130
    .end local v10    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :goto_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected amount of output surfaces, received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expected <= 2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 124
    .end local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v10    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported extension type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    .end local v10    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v13    # "cameraId":Ljava/lang/String;
    .end local v14    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v15    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unsupported extension!"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist initializeCaptureRequest(Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/extension/Request;Ljava/util/HashMap;)Landroid/hardware/camera2/CaptureRequest;
    .locals 8
    .param p0, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p1, "request"    # Landroid/hardware/camera2/extension/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Landroid/hardware/camera2/extension/Request;",
            "Ljava/util/HashMap<",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/extension/CameraOutputConfig;",
            ">;)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 944
    .local p2, "surfaceIdMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/Surface;Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    iget v0, p1, Landroid/hardware/camera2/extension/Request;->templateId:I

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 945
    .local v0, "builder":Landroid/hardware/camera2/CaptureRequest$Builder;
    iget-object v1, p1, Landroid/hardware/camera2/extension/Request;->targetOutputConfigIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/OutputConfigId;

    .line 946
    .local v2, "configId":Landroid/hardware/camera2/extension/OutputConfigId;
    const/4 v3, 0x0

    .line 947
    .local v3, "found":Z
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 948
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/Surface;Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/extension/CameraOutputConfig;

    iget-object v6, v6, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v6, v6, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    iget v7, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    if-ne v6, v7, :cond_0

    .line 949
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Surface;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 950
    const/4 v3, 0x1

    .line 951
    goto :goto_2

    .line 953
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/Surface;Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    :cond_0
    goto :goto_1

    .line 955
    :cond_1
    :goto_2
    if-nez v3, :cond_2

    .line 956
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Surface with output id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found among registered camera outputs!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CameraAdvancedExtensionSessionImpl"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v2    # "configId":Landroid/hardware/camera2/extension/OutputConfigId;
    .end local v3    # "found":Z
    :cond_2
    goto :goto_0

    .line 961
    :cond_3
    iget v1, p1, Landroid/hardware/camera2/extension/Request;->requestId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 962
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 963
    .local v1, "ret":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/camera2/extension/Request;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 964
    return-object v1
.end method

.method private static blacklist initializeParcelable(Landroid/view/Surface;)Landroid/hardware/camera2/extension/OutputSurface;
    .locals 4
    .param p0, "s"    # Landroid/view/Surface;

    .line 298
    new-instance v0, Landroid/hardware/camera2/extension/OutputSurface;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputSurface;-><init>()V

    .line 299
    .local v0, "ret":Landroid/hardware/camera2/extension/OutputSurface;
    if-eqz p0, :cond_0

    .line 300
    iput-object p0, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    .line 301
    new-instance v1, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    .line 302
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v1

    .line 303
    .local v1, "surfaceSize":Landroid/util/Size;
    iget-object v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/Size;->width:I

    .line 304
    iget-object v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/Size;->height:I

    .line 305
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v2

    iput v2, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    .line 306
    .end local v1    # "surfaceSize":Landroid/util/Size;
    goto :goto_0

    .line 307
    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->surface:Landroid/view/Surface;

    .line 308
    new-instance v1, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/Size;-><init>()V

    iput-object v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    .line 309
    iget-object v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    const/4 v2, -0x1

    iput v2, v1, Landroid/hardware/camera2/extension/Size;->width:I

    .line 310
    iget-object v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->size:Landroid/hardware/camera2/extension/Size;

    iput v2, v1, Landroid/hardware/camera2/extension/Size;->height:I

    .line 311
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/camera2/extension/OutputSurface;->imageFormat:I

    .line 314
    :goto_0
    return-object v0
.end method

.method private static blacklist initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;
    .locals 3
    .param p0, "result"    # Landroid/hardware/camera2/CaptureResult;

    .line 264
    new-instance v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelCaptureResult;-><init>()V

    .line 265
    .local v0, "ret":Landroid/hardware/camera2/extension/ParcelCaptureResult;
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->cameraId:Ljava/lang/String;

    .line 266
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 267
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    .line 268
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getSequenceId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->sequenceId:I

    .line 269
    invoke-virtual {p0}, Landroid/hardware/camera2/CaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelCaptureResult;->frameNumber:J

    .line 271
    return-object v0
.end method

.method private static blacklist initializeParcelable(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    .locals 8
    .param p0, "totalResult"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 275
    new-instance v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;-><init>()V

    .line 276
    .local v0, "ret":Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->logicalCameraId:Ljava/lang/String;

    .line 277
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->results:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 278
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->parent:Landroid/hardware/camera2/CaptureRequest;

    .line 279
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sequenceId:I

    .line 280
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getFrameNumber()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->frameNumber:J

    .line 281
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getSessionId()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->sessionId:I

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    .line 283
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPartialResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult;

    .line 284
    .local v2, "partial":Landroid/hardware/camera2/CaptureResult;
    iget-object v3, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->partials:Ljava/util/List;

    invoke-static {v2}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/hardware/camera2/CaptureResult;)Landroid/hardware/camera2/extension/ParcelCaptureResult;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    .end local v2    # "partial":Landroid/hardware/camera2/CaptureResult;
    goto :goto_0

    .line 286
    :cond_0
    nop

    .line 287
    invoke-virtual {p0}, Landroid/hardware/camera2/TotalCaptureResult;->getPhysicalCameraTotalResults()Ljava/util/Map;

    move-result-object v1

    .line 288
    .local v1, "physicalResults":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    .line 289
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/TotalCaptureResult;

    .line 290
    .local v3, "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    iget-object v4, v0, Landroid/hardware/camera2/extension/ParcelTotalCaptureResult;->physicalResult:Ljava/util/List;

    new-instance v5, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;

    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getCameraId()Ljava/lang/String;

    move-result-object v6

    .line 291
    invoke-virtual {v3}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/hardware/camera2/impl/PhysicalCaptureResultInfo;-><init>(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 290
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v3    # "physicalResult":Landroid/hardware/camera2/TotalCaptureResult;
    goto :goto_1

    .line 294
    :cond_1
    return-object v0
.end method

.method private blacklist initializeSurfrace(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;
    .locals 5
    .param p1, "output"    # Landroid/hardware/camera2/extension/CameraOutputConfig;

    .line 968
    iget v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    const/4 v1, 0x0

    const-string v2, ", skipping!"

    const-string v3, "Unsupported client output id: "

    const-string v4, "CameraAdvancedExtensionSessionImpl"

    packed-switch v0, :pswitch_data_0

    .line 990
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported output config type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 977
    :pswitch_0
    iget v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    if-lez v0, :cond_1

    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->height:I

    if-gtz v0, :cond_0

    goto :goto_0

    .line 983
    :cond_0
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v0, v0, Landroid/hardware/camera2/extension/Size;->width:I

    iget-object v1, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->size:Landroid/hardware/camera2/extension/Size;

    iget v1, v1, Landroid/hardware/camera2/extension/Size;->height:I

    iget v2, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->imageFormat:I

    iget v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->capacity:I

    invoke-static {v0, v1, v2, v3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    .line 985
    .local v0, "reader":Landroid/media/ImageReader;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v2, v2, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 986
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    return-object v1

    .line 979
    .end local v0    # "reader":Landroid/media/ImageReader;
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v3, v3, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return-object v1

    .line 970
    :pswitch_1
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    if-nez v0, :cond_2

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->outputId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget v3, v3, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-object v1

    .line 975
    :cond_2
    iget-object v0, p1, Landroid/hardware/camera2/extension/CameraOutputConfig;->surface:Landroid/view/Surface;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist notifyConfigurationFailure()V
    .locals 4

    .line 480
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 481
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 482
    monitor-exit v0

    return-void

    .line 484
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->release(Z)V

    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 490
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    nop

    .line 496
    return-void

    .line 494
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 495
    throw v2

    .line 484
    .end local v0    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .locals 11
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 360
    const/4 v0, -0x1

    .line 361
    .local v0, "seqId":I
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v2, :cond_3

    .line 366
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 371
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 373
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2, p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 375
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v10, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler-IA;)V

    invoke-interface {v2, v10}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startCapture(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 380
    goto :goto_0

    .line 377
    :catch_0
    move-exception v2

    .line 378
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Failed  to submit capture request, extension service failed to respond!"

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v4

    .line 381
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 382
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 384
    :try_start_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v10, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler-IA;)V

    invoke-interface {v2, p1, v10}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startTrigger(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    .line 389
    nop

    .line 393
    :goto_0
    :try_start_4
    monitor-exit v1

    .line 395
    return v0

    .line 386
    :catch_1
    move-exception v2

    .line 387
    .restart local v2    # "e":Landroid/os/RemoteException;
    new-instance v4, Landroid/hardware/camera2/CameraAccessException;

    const-string v5, "Failed  to submit trigger request, extension service failed to respond!"

    invoke-direct {v4, v3, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v4

    .line 391
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid single capture output target!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v2

    .line 367
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Single capture to both preview & still capture outputs target is not supported!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v2

    .line 363
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Uninitialized component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v2

    .line 393
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public whitelist test-api close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 422
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 423
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->stopRepeating()V

    .line 424
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->onCaptureSessionEnd()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 428
    goto :goto_0

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CameraAdvancedExtensionSessionImpl"

    const-string v3, "Failed to stop the repeating request or end the session, , extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 431
    :cond_0
    monitor-exit v0

    .line 432
    return-void

    .line 431
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 2

    .line 319
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-object v1

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized blacklist initialize()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 209
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    const-string v1, "Session already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 214
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/view/Surface;)Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v0

    .line 215
    .local v0, "previewSurface":Landroid/hardware/camera2/extension/OutputSurface;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeParcelable(Landroid/view/Surface;)Landroid/hardware/camera2/extension/OutputSurface;

    move-result-object v1

    .line 216
    .local v1, "captureSurface":Landroid/hardware/camera2/extension/OutputSurface;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mAdvancedExtender:Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSessionProcessor()Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    .line 217
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->initSession(Ljava/lang/String;Landroid/hardware/camera2/extension/OutputSurface;Landroid/hardware/camera2/extension/OutputSurface;)Landroid/hardware/camera2/extension/CameraSessionConfig;

    move-result-object v2

    .line 219
    .local v2, "sessionConfig":Landroid/hardware/camera2/extension/CameraSessionConfig;
    iget-object v3, v2, Landroid/hardware/camera2/extension/CameraSessionConfig;->outputConfigs:Ljava/util/List;

    .line 220
    .local v3, "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v4, "outputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/extension/CameraOutputConfig;

    .line 222
    .local v6, "output":Landroid/hardware/camera2/extension/CameraOutputConfig;
    invoke-direct {p0, v6}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeSurfrace(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;

    move-result-object v7

    .line 223
    .local v7, "outputSurface":Landroid/view/Surface;
    if-nez v7, :cond_1

    .line 224
    goto :goto_0

    .line 226
    :cond_1
    new-instance v8, Landroid/hardware/camera2/params/OutputConfiguration;

    iget v9, v6, Landroid/hardware/camera2/extension/CameraOutputConfig;->surfaceGroupId:I

    invoke-direct {v8, v9, v7}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(ILandroid/view/Surface;)V

    .line 229
    .local v8, "cameraOutput":Landroid/hardware/camera2/params/OutputConfiguration;
    iget-object v9, v6, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    if-eqz v9, :cond_3

    iget-object v9, v6, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 230
    invoke-virtual {v8}, Landroid/hardware/camera2/params/OutputConfiguration;->enableSurfaceSharing()V

    .line 231
    iget-object v9, v6, Landroid/hardware/camera2/extension/CameraOutputConfig;->sharedSurfaceConfigs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/extension/CameraOutputConfig;

    .line 232
    .local v10, "sharedOutputConfig":Landroid/hardware/camera2/extension/CameraOutputConfig;
    invoke-direct {p0, v10}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->initializeSurfrace(Landroid/hardware/camera2/extension/CameraOutputConfig;)Landroid/view/Surface;

    move-result-object v11

    .line 233
    .local v11, "sharedSurface":Landroid/view/Surface;
    if-nez v11, :cond_2

    .line 234
    goto :goto_1

    .line 236
    :cond_2
    invoke-virtual {v8, v11}, Landroid/hardware/camera2/params/OutputConfiguration;->addSurface(Landroid/view/Surface;)V

    .line 237
    iget-object v12, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    nop

    .end local v10    # "sharedOutputConfig":Landroid/hardware/camera2/extension/CameraOutputConfig;
    .end local v11    # "sharedSurface":Landroid/view/Surface;
    goto :goto_1

    .line 241
    :cond_3
    iget-object v9, v6, Landroid/hardware/camera2/extension/CameraOutputConfig;->physicalCameraId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/hardware/camera2/params/OutputConfiguration;->setPhysicalCameraId(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraConfigMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Landroid/hardware/camera2/params/OutputConfiguration;->getSurface()Landroid/view/Surface;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    nop

    .end local v6    # "output":Landroid/hardware/camera2/extension/CameraOutputConfig;
    .end local v7    # "outputSurface":Landroid/view/Surface;
    .end local v8    # "cameraOutput":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 246
    :cond_4
    new-instance v5, Landroid/hardware/camera2/params/SessionConfiguration;

    const/4 v6, 0x0

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v8, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v7, v8}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v8, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$SessionStateHandler-IA;)V

    invoke-direct {v5, v6, v4, v7, v8}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 250
    .local v5, "sessionConfiguration":Landroid/hardware/camera2/params/SessionConfiguration;
    iget-object v6, v2, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    if-eqz v6, :cond_5

    iget-object v6, v2, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 251
    invoke-virtual {v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 252
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget v7, v2, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionTemplateId:I

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    .line 254
    .local v6, "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    invoke-virtual {v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v7

    .line 255
    .local v7, "sessionRequest":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v7}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v8

    iget-object v9, v2, Landroid/hardware/camera2/extension/CameraSessionConfig;->sessionParameter:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v8, v9}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 257
    invoke-virtual {v5, v7}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 260
    .end local v6    # "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .end local v7    # "sessionRequest":Landroid/hardware/camera2/CaptureRequest;
    :cond_5
    iget-object v6, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v6, v5}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 208
    .end local v0    # "previewSurface":Landroid/hardware/camera2/extension/OutputSurface;
    .end local v1    # "captureSurface":Landroid/hardware/camera2/extension/OutputSurface;
    .end local v2    # "sessionConfig":Landroid/hardware/camera2/extension/CameraSessionConfig;
    .end local v3    # "outputConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CameraOutputConfig;>;"
    .end local v4    # "outputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v5    # "sessionConfiguration":Landroid/hardware/camera2/params/SessionConfiguration;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic blacklist lambda$notifyConfigurationFailure$1$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl()V
    .locals 1

    .line 491
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method synthetic blacklist lambda$release$0$android-hardware-camera2-impl-CameraAdvancedExtensionSessionImpl()V
    .locals 1

    .line 471
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method public blacklist release(Z)V
    .locals 8
    .param p1, "skipCloseNotification"    # Z

    .line 435
    const/4 v0, 0x0

    .line 437
    .local v0, "notifyClose":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 440
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 442
    :try_start_1
    invoke-interface {v2}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->deInitSession()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 446
    goto :goto_0

    .line 443
    :catch_0
    move-exception v2

    .line 444
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "CameraAdvancedExtensionSessionImpl"

    const-string v5, "Failed to de-initialize session processor, extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    .line 450
    :cond_0
    iget-wide v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExtensionClientId:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    .line 451
    invoke-static {v4, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 452
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v2, :cond_1

    .line 453
    const/4 v0, 0x1

    .line 454
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->releaseSession()V

    .line 457
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    .line 459
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/ImageReader;

    .line 460
    .local v4, "reader":Landroid/media/ImageReader;
    invoke-virtual {v4}, Landroid/media/ImageReader;->close()V

    .line 461
    .end local v4    # "reader":Landroid/media/ImageReader;
    goto :goto_1

    .line 462
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mReaderMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 464
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 465
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    .line 466
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 468
    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 469
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 471
    .local v1, "ident":J
    :try_start_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 474
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    goto :goto_2

    .line 474
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 475
    throw v3

    .line 477
    .end local v1    # "ident":J
    :cond_3
    :goto_2
    return-void

    .line 466
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .locals 10
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 327
    const/4 v0, -0x1

    .line 328
    .local v0, "seqId":I
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 329
    :try_start_0
    iget-boolean v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v2, :cond_2

    .line 333
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 337
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 343
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v2, p1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->setParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 345
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    new-instance v9, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;

    const/4 v8, 0x0

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler;-><init>(Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$RequestCallbackHandler-IA;)V

    invoke-interface {v2, v9}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->startRepeating(Landroid/hardware/camera2/extension/ICaptureCallback;)I

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 350
    nop

    .line 351
    :try_start_2
    monitor-exit v1

    .line 353
    return v0

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Landroid/hardware/camera2/CameraAccessException;

    const/4 v4, 0x3

    const-string v5, "Failed to enable repeating request, extension service failed to respond!"

    invoke-direct {v3, v4, v5}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v3

    .line 339
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid repeating request output target!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v2

    .line 334
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No registered preview surface"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v2

    .line 330
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Uninitialized component"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "seqId":I
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v2

    .line 351
    .restart local v0    # "seqId":I
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public whitelist stopRepeating()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 400
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 401
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;->mSessionProcessor:Landroid/hardware/camera2/extension/ISessionProcessorImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/ISessionProcessorImpl;->stopRepeating()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    nop

    .line 414
    :try_start_2
    monitor-exit v0

    .line 415
    return-void

    .line 409
    :catch_0
    move-exception v1

    .line 410
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    const-string v4, "Failed to notify about the end of repeating request, extension service failed to respond!"

    invoke-direct {v2, v3, v4}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw v2

    .line 402
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    throw v1

    .line 414
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
