.class public final Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
.super Landroid/hardware/camera2/CameraExtensionSession;
.source "CameraExtensionSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CaptureResultHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$OnImageAvailableListener;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$ImageLoopbackCallback;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;,
        Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;
    }
.end annotation


# static fields
.field private static final blacklist PREVIEW_QUEUE_SIZE:I = 0xa

.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionSessionImpl"


# instance fields
.field private blacklist mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private blacklist mBurstCaptureImageReader:Landroid/media/ImageReader;

.field private final blacklist mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

.field private blacklist mCameraBurstSurface:Landroid/view/Surface;

.field private final blacklist mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private blacklist mCameraRepeatingSurface:Landroid/view/Surface;

.field private blacklist mCaptureResultsSupported:Z

.field private blacklist mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private blacklist mClientCaptureSurface:Landroid/view/Surface;

.field private blacklist mClientRepeatingRequestSurface:Landroid/view/Surface;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mExtensionClientId:J

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private final blacklist mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

.field private blacklist mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

.field private blacklist mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

.field private final blacklist mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

.field private blacklist mInitialized:Z

.field final blacklist mInterfaceLock:Ljava/lang/Object;

.field private blacklist mInternalRepeatingRequestEnabled:Z

.field private final blacklist mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

.field private blacklist mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

.field private blacklist mPreviewProcessorType:I

.field private blacklist mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

.field private blacklist mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

.field private blacklist mRepeatingRequestImageReader:Landroid/media/ImageReader;

.field private blacklist mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

.field private final blacklist mSessionId:I

.field private blacklist mStubCaptureImageReader:Landroid/media/ImageReader;

.field private final blacklist mSupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedRequestKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSupportedResultKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCameraDevice(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureResultsSupported(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureResultsSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientRepeatingRequestSurface(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/ICaptureProcessorImpl;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInitializeHandler(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInternalRepeatingRequestEnabled(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewExtender(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewImageProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewProcessorType(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPreviewRequestUpdateProcessor(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestImageCallback(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRepeatingRequestImageWriter(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Landroid/media/ImageWriter;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSessionId(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)I
    .locals 0

    iget p0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCaptureSession(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcompileInitialRequestList(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->compileInitialRequestList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mfinishPipelineInitialization(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->finishPipelineInitialization()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitializeFilteredResults(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeFilteredResults(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigurationFailure(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->notifyConfigurationFailure()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigurationSuccess(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->notifyConfigurationSuccess()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetInitialCaptureRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setInitialCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetRepeatingRequest(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sminitializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeGetSurfaceFormat(Landroid/view/Surface;)I
    .locals 0

    invoke-static {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->nativeGetSurfaceFormat(Landroid/view/Surface;)I

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Ljava/util/List;JLandroid/hardware/camera2/CameraDevice;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILjava/util/Set;Ljava/util/Set;)V
    .locals 16
    .param p1, "imageExtender"    # Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .param p2, "previewExtender"    # Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .param p4, "extensionClientId"    # J
    .param p6, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p7, "repeatingRequestSurface"    # Landroid/view/Surface;
    .param p8, "burstCaptureSurface"    # Landroid/view/Surface;
    .param p9, "callback"    # Landroid/hardware/camera2/CameraExtensionSession$StateCallback;
    .param p10, "executor"    # Ljava/util/concurrent/Executor;
    .param p11, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;",
            "Landroid/hardware/camera2/extension/IPreviewExtenderImpl;",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;J",
            "Landroid/hardware/camera2/CameraDevice;",
            "Landroid/view/Surface;",
            "Landroid/view/Surface;",
            "Landroid/hardware/camera2/CameraExtensionSession$StateCallback;",
            "Ljava/util/concurrent/Executor;",
            "I",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p3, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local p12, "requestKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .local p13, "resultKeys":Ljava/util/Set;, "Ljava/util/Set<Landroid/hardware/camera2/CaptureResult$Key;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/hardware/camera2/CameraExtensionSession;-><init>()V

    .line 93
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 96
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 97
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 98
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    .line 99
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    .line 100
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 101
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 103
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    .line 104
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 105
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    .line 106
    iput-object v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    .line 107
    const/4 v2, 0x2

    iput v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    .line 114
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    .line 117
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    .line 234
    move-wide/from16 v3, p4

    iput-wide v3, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExtensionClientId:J

    .line 235
    move-object/from16 v5, p1

    iput-object v5, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 236
    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    .line 237
    move-object/from16 v7, p6

    iput-object v7, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 238
    move-object/from16 v8, p9

    iput-object v8, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    .line 239
    move-object/from16 v9, p10

    iput-object v9, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 240
    move-object/from16 v10, p7

    iput-object v10, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    .line 241
    move-object/from16 v11, p8

    iput-object v11, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    .line 242
    move-object/from16 v12, p3

    iput-object v12, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedPreviewSizes:Ljava/util/List;

    .line 243
    new-instance v13, Landroid/os/HandlerThread;

    const-string v14, "CameraExtensionSessionImpl"

    invoke-direct {v13, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    .line 244
    invoke-virtual {v13}, Landroid/os/HandlerThread;->start()V

    .line 245
    new-instance v14, Landroid/os/Handler;

    invoke-virtual {v13}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-direct {v14, v13}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v14, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    .line 246
    const/4 v13, 0x0

    iput-boolean v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    .line 247
    new-instance v13, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    invoke-direct {v13, v0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler-IA;)V

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitializeHandler:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitializeSessionHandler;

    .line 248
    move/from16 v1, p11

    iput v1, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSessionId:I

    .line 249
    move-object/from16 v13, p12

    iput-object v13, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    .line 250
    move-object/from16 v14, p13

    iput-object v14, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedResultKeys:Ljava/util/Set;

    .line 251
    invoke-interface/range {p13 .. p13}, Ljava/util/Set;->isEmpty()Z

    move-result v15

    xor-int/2addr v2, v15

    iput-boolean v2, v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureResultsSupported:Z

    .line 252
    return-void
.end method

.method private blacklist compileInitialRequestList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;"
        }
    .end annotation

    .line 488
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    .local v0, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v1

    .line 491
    .local v1, "initialPreviewParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v1, :cond_0

    .line 492
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    :cond_0
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onEnableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 496
    .local v2, "initialStillCaptureParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v2, :cond_1

    .line 497
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    .end local v1    # "initialPreviewParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v2    # "initialStillCaptureParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_1
    goto :goto_0

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to initialize session parameters! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private blacklist createBurstRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;ILjava/util/Map;)Ljava/util/List;
    .locals 8
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p3, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .param p4, "target"    # Landroid/view/Surface;
    .param p5, "captureTemplate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Landroid/view/Surface;",
            "I",
            "Ljava/util/Map<",
            "Landroid/hardware/camera2/CaptureRequest;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 511
    .local p2, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    .local p6, "captureMap":Ljava/util/Map;, "Ljava/util/Map<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/CaptureStageImpl;

    .line 514
    .local v2, "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :try_start_0
    invoke-virtual {p1, p5}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .local v3, "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    nop

    .line 521
    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 522
    .local v5, "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-virtual {p3, v5}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v6

    .line 523
    .local v6, "value":Ljava/lang/Object;
    if-eqz v6, :cond_0

    .line 524
    iget-object v7, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-virtual {v7, v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 526
    .end local v5    # "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_1

    .line 528
    :cond_1
    invoke-virtual {v3, p4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 529
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    .line 530
    .local v4, "request":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    iget-object v6, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v5, v6}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 531
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 532
    if-eqz p6, :cond_2

    .line 533
    iget v5, v2, Landroid/hardware/camera2/extension/CaptureStageImpl;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    .end local v2    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v4    # "request":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    goto :goto_0

    .line 515
    .end local v3    # "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    .restart local v2    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :catch_0
    move-exception v1

    .line 516
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    const/4 v3, 0x0

    return-object v3

    .line 537
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    .end local v2    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_3
    return-object v0
.end method

.method public static blacklist createCameraExtensionSession(Landroid/hardware/camera2/CameraDevice;Landroid/content/Context;Landroid/hardware/camera2/params/ExtensionSessionConfiguration;I)Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .locals 29
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

    .line 133
    move-object/from16 v0, p1

    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v15

    .line 134
    .local v15, "clientId":J
    const-wide/16 v1, 0x0

    cmp-long v3, v15, v1

    if-ltz v3, :cond_b

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v14

    .line 139
    .local v14, "cameraId":Ljava/lang/String;
    const-class v3, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Landroid/hardware/camera2/CameraManager;

    .line 140
    .local v13, "manager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v13, v14}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v12

    .line 141
    .local v12, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;

    invoke-direct {v3, v0, v14, v12}, Landroid/hardware/camera2/CameraExtensionCharacteristics;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V

    move-object v11, v3

    .line 144
    .local v11, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v4

    .line 144
    invoke-static {v3, v4, v12}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 150
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-gt v3, v4, :cond_8

    .line 156
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

    .line 157
    .local v4, "c":Landroid/hardware/camera2/params/OutputConfiguration;
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 161
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    cmp-long v5, v5, v1

    if-nez v5, :cond_0

    .line 166
    .end local v4    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    goto :goto_0

    .line 163
    .restart local v4    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported stream use case: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 164
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getStreamUseCase()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported dynamic range profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    invoke-virtual {v4}, Landroid/hardware/camera2/params/OutputConfiguration;->getDynamicRangeProfile()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v4    # "c":Landroid/hardware/camera2/params/OutputConfiguration;
    :cond_2
    nop

    .line 169
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v10

    .line 171
    .local v10, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    const/4 v1, 0x0

    .line 172
    .local v1, "suitableSurfaceCount":I
    nop

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v2

    const-class v3, Landroid/graphics/SurfaceTexture;

    .line 172
    invoke-virtual {v11, v2, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v9

    .line 174
    .local v9, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    nop

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    .line 174
    invoke-static {v2, v9}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getRepeatingRequestSurface(Ljava/util/List;Ljava/util/List;)Landroid/view/Surface;

    move-result-object v17

    .line 176
    .local v17, "repeatingRequestSurface":Landroid/view/Surface;
    if-eqz v17, :cond_3

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 180
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v8, v2

    .line 181
    .local v8, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    sget-object v2, Landroid/hardware/camera2/impl/CameraExtensionUtils;->SUPPORTED_CAPTURE_OUTPUT_FORMATS:[I

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget v5, v2, v4

    .line 182
    .local v5, "format":I
    nop

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v6

    .line 182
    invoke-virtual {v11, v6, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getExtensionSupportedSizes(II)Ljava/util/List;

    move-result-object v6

    .line 184
    .local v6, "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    if-eqz v6, :cond_4

    .line 185
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .end local v5    # "format":I
    .end local v6    # "supportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 188
    :cond_5
    nop

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v2

    .line 188
    invoke-static {v2, v8}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->getBurstCaptureSurface(Ljava/util/List;Ljava/util/HashMap;)Landroid/view/Surface;

    move-result-object v18

    .line 190
    .local v18, "burstCaptureSurface":Landroid/view/Surface;
    if-eqz v18, :cond_6

    .line 191
    add-int/lit8 v1, v1, 0x1

    move v7, v1

    goto :goto_2

    .line 190
    :cond_6
    move v7, v1

    .line 194
    .end local v1    # "suitableSurfaceCount":I
    .local v7, "suitableSurfaceCount":I
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getOutputConfigurations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v7, v1, :cond_7

    .line 198
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 199
    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 200
    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 201
    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-virtual {v12}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    invoke-interface {v1, v14, v2}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 203
    new-instance v19, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;

    iget-object v1, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v1, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getStateCallback()Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    move-result-object v20

    .line 212
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v21

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureRequestKeys(I)Ljava/util/Set;

    move-result-object v22

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getAvailableCaptureResultKeys(I)Ljava/util/Set;

    move-result-object v23

    move-object/from16 v1, v19

    move-object v4, v9

    move-wide v5, v15

    move/from16 v24, v7

    .end local v7    # "suitableSurfaceCount":I
    .local v24, "suitableSurfaceCount":I
    move-object/from16 v7, p0

    move-object/from16 v25, v8

    .end local v8    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .local v25, "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    move-object/from16 v8, v17

    move-object/from16 v26, v9

    .end local v9    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .local v26, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    move-object/from16 v9, v18

    move-object/from16 v27, v10

    .end local v10    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .local v27, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    move-object/from16 v10, v20

    move-object/from16 v20, v11

    .end local v11    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .local v20, "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    move-object/from16 v11, v21

    move-object/from16 v21, v12

    .end local v12    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .local v21, "chars":Landroid/hardware/camera2/CameraCharacteristics;
    move/from16 v12, p3

    move-object/from16 v28, v13

    .end local v13    # "manager":Landroid/hardware/camera2/CameraManager;
    .local v28, "manager":Landroid/hardware/camera2/CameraManager;
    move-object/from16 v13, v22

    move-object/from16 v22, v14

    .end local v14    # "cameraId":Ljava/lang/String;
    .local v22, "cameraId":Ljava/lang/String;
    move-object/from16 v14, v23

    invoke-direct/range {v1 .. v14}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;-><init>(Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Ljava/util/List;JLandroid/hardware/camera2/CameraDevice;Landroid/view/Surface;Landroid/view/Surface;Landroid/hardware/camera2/CameraExtensionSession$StateCallback;Ljava/util/concurrent/Executor;ILjava/util/Set;Ljava/util/Set;)V

    .line 217
    .local v1, "session":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    invoke-virtual {v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initialize()V

    .line 219
    return-object v1

    .line 195
    .end local v1    # "session":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .end local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v21    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v24    # "suitableSurfaceCount":I
    .end local v25    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v26    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v27    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v28    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local v7    # "suitableSurfaceCount":I
    .restart local v8    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .restart local v9    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .restart local v10    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .restart local v11    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v12    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v13    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local v14    # "cameraId":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "One or more unsupported output surfaces found!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    .end local v7    # "suitableSurfaceCount":I
    .end local v8    # "supportedCaptureSizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Landroid/util/Size;>;>;"
    .end local v9    # "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    .end local v10    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v17    # "repeatingRequestSurface":Landroid/view/Surface;
    .end local v18    # "burstCaptureSurface":Landroid/view/Surface;
    :cond_8
    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v28, v13

    move-object/from16 v22, v14

    .end local v11    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v12    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v13    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v14    # "cameraId":Ljava/lang/String;
    .restart local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v21    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    .restart local v28    # "manager":Landroid/hardware/camera2/CameraManager;
    goto :goto_3

    .line 150
    .end local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v21    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v28    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local v11    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v12    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v13    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local v14    # "cameraId":Ljava/lang/String;
    :cond_9
    move-object/from16 v20, v11

    move-object/from16 v21, v12

    move-object/from16 v28, v13

    move-object/from16 v22, v14

    .line 152
    .end local v11    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v12    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v13    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v14    # "cameraId":Ljava/lang/String;
    .restart local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v21    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v22    # "cameraId":Ljava/lang/String;
    .restart local v28    # "manager":Landroid/hardware/camera2/CameraManager;
    :goto_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected amount of output surfaces, received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
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

    .line 146
    .end local v20    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v21    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v22    # "cameraId":Ljava/lang/String;
    .end local v28    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local v11    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local v12    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v13    # "manager":Landroid/hardware/camera2/CameraManager;
    .restart local v14    # "cameraId":Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported extension type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/params/ExtensionSessionConfiguration;->getExtension()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 135
    .end local v11    # "extensionChars":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local v12    # "chars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v13    # "manager":Landroid/hardware/camera2/CameraManager;
    .end local v14    # "cameraId":Ljava/lang/String;
    :cond_b
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Unsupported extension!"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;
    .locals 6
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "captureTemplate"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/view/Surface;",
            "I)",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 575
    .local p2, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    return-object v0
.end method

.method private blacklist createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;
    .locals 6
    .param p1, "cameraDevice"    # Landroid/hardware/camera2/CameraDevice;
    .param p3, "target"    # Landroid/view/Surface;
    .param p4, "captureTemplate"    # I
    .param p5, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraDevice;",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/view/Surface;",
            "I",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Landroid/hardware/camera2/CaptureRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 544
    .local p2, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    invoke-virtual {p1, p4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 545
    .local v0, "requestBuilder":Landroid/hardware/camera2/CaptureRequest$Builder;
    if-eqz p3, :cond_0

    .line 546
    invoke-virtual {v0, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 549
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 550
    .local v1, "ret":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v2

    .line 551
    .local v2, "nativeMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/extension/CaptureStageImpl;

    .line 552
    .local v4, "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v4, :cond_1

    .line 553
    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureStageImpl;->parameters:Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-static {v2, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->update(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 555
    .end local v4    # "captureStage":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_1
    goto :goto_0

    .line 557
    :cond_2
    if-eqz p5, :cond_4

    .line 560
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedRequestKeys:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 561
    .local v4, "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;
    invoke-virtual {p5, v4}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v5

    .line 562
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_3

    .line 563
    invoke-virtual {v2, v4, v5}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 565
    .end local v4    # "requestKey":Landroid/hardware/camera2/CaptureRequest$Key;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 568
    :cond_4
    return-object v1
.end method

.method private static blacklist findSmallestAspectMatchedSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;
    .locals 9
    .param p1, "arSize"    # Landroid/util/Size;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;",
            "Landroid/util/Size;",
            ")",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 1835
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/util/Size;>;"
    const v0, 0x3c23d70a    # 0.01f

    .line 1837
    .local v0, "TOLL":F
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eqz v1, :cond_5

    .line 1841
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1842
    .local v1, "targetAR":F
    const/4 v2, 0x0

    .line 1843
    .local v2, "ret":Landroid/util/Size;
    const/4 v3, 0x0

    .line 1844
    .local v3, "fallbackSize":Landroid/util/Size;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Size;

    .line 1845
    .local v5, "sz":Landroid/util/Size;
    if-nez v3, :cond_0

    .line 1846
    move-object v3, v5

    .line 1848
    :cond_0
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    if-lez v6, :cond_2

    if-eqz v2, :cond_1

    .line 1850
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    .line 1851
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    if-ge v6, v7, :cond_2

    .line 1852
    :cond_1
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 1853
    .local v6, "currentAR":F
    sub-float v7, v6, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 1854
    move-object v2, v5

    .line 1857
    .end local v5    # "sz":Landroid/util/Size;
    .end local v6    # "currentAR":F
    :cond_2
    goto :goto_0

    .line 1858
    :cond_3
    if-nez v2, :cond_4

    .line 1859
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "AR matched size not found returning first size in list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    move-object v2, v3

    .line 1863
    :cond_4
    return-object v2

    .line 1838
    .end local v1    # "targetAR":F
    .end local v2    # "ret":Landroid/util/Size;
    .end local v3    # "fallbackSize":Landroid/util/Size;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid input aspect ratio"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist finishPipelineInitialization()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 387
    iget v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    const/16 v2, 0x22

    const/16 v3, 0xa

    if-nez v1, :cond_0

    .line 388
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    .line 389
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->nativeGetSurfaceFormat(Landroid/view/Surface;)I

    move-result v4

    .line 388
    invoke-interface {v1, v0, v4}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 390
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    invoke-static {v0, v3, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    goto :goto_0

    .line 394
    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 395
    invoke-static {v0, v3, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    .line 401
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 402
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    .line 404
    .local v0, "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    iget v3, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    invoke-interface {v1, v2, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 406
    .end local v0    # "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    :cond_2
    return-void
.end method

.method private blacklist initializeBurstCapturePipeline()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 323
    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getMaxCaptureStage()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Multiple stages expected without a valid capture processor!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    const/16 v2, 0x100

    if-eqz v0, :cond_4

    .line 329
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/16 v3, 0x23

    if-eqz v0, :cond_3

    .line 330
    invoke-static {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    .line 332
    .local v0, "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    if-ne v1, v2, :cond_2

    .line 333
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-direct {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;-><init>(Landroid/hardware/camera2/extension/ICaptureProcessorImpl;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    .line 334
    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 336
    :cond_2
    iget v1, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v2, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 338
    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getMaxCaptureStage()I

    move-result v4

    .line 336
    invoke-static {v1, v2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 339
    .end local v0    # "surfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    goto :goto_1

    .line 343
    :cond_3
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 344
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 345
    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    .line 343
    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 349
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 350
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 351
    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    .line 349
    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    .line 353
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {v1, v0, v3}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onOutputSurface(Landroid/view/Surface;I)V

    .line 357
    :goto_1
    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-direct {v0, p0, v1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;)V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 358
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 360
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    .line 361
    new-instance v0, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 363
    .local v0, "sz":Landroid/hardware/camera2/extension/Size;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->width:I

    .line 364
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/Size;->height:I

    .line 365
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    invoke-interface {v1, v0}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    .line 366
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getImageFormat()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/hardware/camera2/extension/ICaptureProcessorImpl;->onImageFormatUpdate(I)V

    .line 367
    .end local v0    # "sz":Landroid/hardware/camera2/extension/Size;
    goto :goto_2

    .line 368
    :cond_4
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    .line 370
    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    goto :goto_2

    .line 375
    :cond_5
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 376
    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 377
    invoke-virtual {v3}, Landroid/media/ImageReader;->getHeight()I

    move-result v3

    .line 375
    invoke-static {v0, v3, v2, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 380
    invoke-virtual {v0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    .line 383
    :goto_2
    return-void
.end method

.method private blacklist initializeFilteredResults(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/impl/CameraMetadataNative;
    .locals 4
    .param p1, "result"    # Landroid/hardware/camera2/TotalCaptureResult;

    .line 1823
    new-instance v0, Landroid/hardware/camera2/impl/CameraMetadataNative;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraMetadataNative;-><init>()V

    .line 1824
    .local v0, "captureResults":Landroid/hardware/camera2/impl/CameraMetadataNative;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedResultKeys:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 1825
    .local v2, "key":Landroid/hardware/camera2/CaptureResult$Key;
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    .line 1826
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 1827
    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1829
    .end local v2    # "key":Landroid/hardware/camera2/CaptureResult$Key;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 1830
    :cond_1
    return-object v0
.end method

.method private static blacklist initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;
    .locals 4
    .param p0, "img"    # Landroid/media/Image;

    .line 1867
    new-instance v0, Landroid/hardware/camera2/extension/ParcelImage;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/ParcelImage;-><init>()V

    .line 1868
    .local v0, "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    invoke-virtual {p0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    .line 1870
    :try_start_0
    invoke-virtual {p0}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object v1

    .line 1871
    .local v1, "fd":Landroid/hardware/SyncFence;
    invoke-virtual {v1}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1872
    invoke-virtual {v1}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/hardware/camera2/extension/ParcelImage;->fence:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1876
    .end local v1    # "fd":Landroid/hardware/SyncFence;
    :cond_0
    goto :goto_0

    .line 1874
    :catch_0
    move-exception v1

    .line 1875
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to parcel buffer fence!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->width:I

    .line 1878
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->height:I

    .line 1879
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->format:I

    .line 1880
    invoke-virtual {p0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->timestamp:J

    .line 1881
    invoke-virtual {p0}, Landroid/media/Image;->getTransform()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->transform:I

    .line 1882
    invoke-virtual {p0}, Landroid/media/Image;->getScalingMode()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->scalingMode:I

    .line 1883
    invoke-virtual {p0}, Landroid/media/Image;->getPlaneCount()I

    move-result v1

    iput v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->planeCount:I

    .line 1884
    invoke-virtual {p0}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Landroid/hardware/camera2/extension/ParcelImage;->crop:Landroid/graphics/Rect;

    .line 1886
    return-object v0
.end method

.method private static blacklist initializeParcelable(Ljava/util/HashMap;Ljava/lang/Integer;Ljava/lang/Byte;)Ljava/util/List;
    .locals 7
    .param p1, "jpegOrientation"    # Ljava/lang/Integer;
    .param p2, "jpegQuality"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Landroid/media/Image;",
            "Landroid/hardware/camera2/TotalCaptureResult;",
            ">;>;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureBundle;",
            ">;"
        }
    .end annotation

    .line 1892
    .local p0, "captureMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1893
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureBundle;>;"
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1894
    .local v2, "stagetId":Ljava/lang/Integer;
    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 1895
    .local v3, "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    new-instance v4, Landroid/hardware/camera2/extension/CaptureBundle;

    invoke-direct {v4}, Landroid/hardware/camera2/extension/CaptureBundle;-><init>()V

    .line 1896
    .local v4, "bundle":Landroid/hardware/camera2/extension/CaptureBundle;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->stage:I

    .line 1897
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/media/Image;

    invoke-static {v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeParcelImage(Landroid/media/Image;)Landroid/hardware/camera2/extension/ParcelImage;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureImage:Landroid/hardware/camera2/extension/ParcelImage;

    .line 1898
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v5}, Landroid/hardware/camera2/TotalCaptureResult;->getSequenceId()I

    move-result v5

    iput v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->sequenceId:I

    .line 1899
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/TotalCaptureResult;

    invoke-virtual {v5}, Landroid/hardware/camera2/TotalCaptureResult;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    iput-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    .line 1900
    if-eqz p1, :cond_0

    .line 1901
    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6, p1}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1903
    :cond_0
    if-eqz p2, :cond_1

    .line 1904
    iget-object v5, v4, Landroid/hardware/camera2/extension/CaptureBundle;->captureResult:Landroid/hardware/camera2/impl/CameraMetadataNative;

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v5, v6, p2}, Landroid/hardware/camera2/impl/CameraMetadataNative;->set(Landroid/hardware/camera2/CaptureResult$Key;Ljava/lang/Object;)V

    .line 1906
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    .end local v2    # "stagetId":Ljava/lang/Integer;
    .end local v3    # "entry":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;>;"
    .end local v4    # "bundle":Landroid/hardware/camera2/extension/CaptureBundle;
    goto :goto_0

    .line 1909
    :cond_2
    return-object v0
.end method

.method private blacklist initializeRepeatingRequestPipeline()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    new-instance v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    invoke-direct {v0}, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;-><init>()V

    .line 257
    .local v0, "repeatingSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getProcessorType()I

    move-result v1

    iput v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    .line 258
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    .line 259
    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v0

    goto :goto_0

    .line 263
    :cond_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    invoke-static {v1}, Landroid/hardware/camera2/impl/CameraExtensionUtils;->querySurface(Landroid/view/Surface;)Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;

    move-result-object v1

    .line 265
    .local v1, "captureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    new-instance v2, Landroid/util/Size;

    iget v3, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v4, v1, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 266
    .local v2, "captureSize":Landroid/util/Size;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mSupportedPreviewSizes:Ljava/util/List;

    invoke-static {v3, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->findSmallestAspectMatchedSize(Ljava/util/List;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v3

    .line 267
    .local v3, "previewSize":Landroid/util/Size;
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    .line 268
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    .line 269
    const-wide/16 v4, 0x100

    iput-wide v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    .line 272
    .end local v1    # "captureSurfaceInfo":Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;
    .end local v2    # "captureSize":Landroid/util/Size;
    .end local v3    # "previewSize":Landroid/util/Size;
    :goto_0
    iget v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewProcessorType:I

    const/4 v2, 0x1

    const-string v3, "Failed casting preview processor!"

    if-ne v1, v2, :cond_1

    .line 274
    :try_start_0
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    .line 275
    invoke-interface {v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getPreviewImageProcessor()Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;

    move-result-object v5

    iget v6, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mFormat:I

    iget-wide v7, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    iget-object v9, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;-><init>(Landroid/hardware/camera2/extension/IPreviewImageProcessorImpl;IJLandroid/os/Handler;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    nop

    .line 280
    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onImageFormatUpdate(I)V

    .line 282
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    new-instance v2, Landroid/util/Size;

    iget v3, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->onResolutionUpdate(Landroid/util/Size;)V

    .line 284
    iget v5, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v6, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v7, 0x23

    const/16 v8, 0xa

    iget-wide v9, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    invoke-static/range {v5 .. v10}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 288
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    goto :goto_1

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_1
    if-nez v1, :cond_2

    .line 292
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getRequestUpdateProcessor()Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .line 295
    nop

    .line 296
    iget v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v5, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v6, 0x22

    const/16 v7, 0xa

    iget-wide v8, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    invoke-static/range {v4 .. v9}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 300
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    .line 301
    new-instance v1, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v1}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 303
    .local v1, "sz":Landroid/hardware/camera2/extension/Size;
    iget v2, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iput v2, v1, Landroid/hardware/camera2/extension/Size;->width:I

    .line 304
    iget v2, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    iput v2, v1, Landroid/hardware/camera2/extension/Size;->height:I

    .line 305
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    invoke-interface {v2, v1}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onResolutionUpdate(Landroid/hardware/camera2/extension/Size;)V

    .line 306
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewRequestUpdateProcessor:Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;

    const/16 v3, 0x22

    invoke-interface {v2, v3}, Landroid/hardware/camera2/extension/IRequestUpdateProcessorImpl;->onImageFormatUpdate(I)V

    .line 308
    .end local v1    # "sz":Landroid/hardware/camera2/extension/Size;
    goto :goto_1

    .line 293
    :catch_1
    move-exception v1

    .line 294
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 309
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_2
    iget v4, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mWidth:I

    iget v5, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mHeight:I

    const/16 v6, 0x22

    const/16 v7, 0xa

    iget-wide v8, v0, Landroid/hardware/camera2/impl/CameraExtensionUtils$SurfaceInfo;->mUsage:J

    invoke-static/range {v4 .. v9}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 313
    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    .line 315
    :goto_1
    new-instance v1, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    invoke-direct {v1, p0, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/media/ImageReader;)V

    iput-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 317
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    .line 318
    invoke-virtual {v2, v1, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 319
    return-void
.end method

.method private static blacklist nativeGetSurfaceFormat(Landroid/view/Surface;)I
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;

    .line 120
    invoke-static {p0}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    return v0
.end method

.method private blacklist notifyConfigurationFailure()V
    .locals 4

    .line 793
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 795
    monitor-exit v0

    return-void

    .line 797
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 799
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->release(Z)V

    .line 801
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 803
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    nop

    .line 808
    return-void

    .line 806
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    throw v2

    .line 797
    .end local v0    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist notifyConfigurationSuccess()V
    .locals 4

    .line 811
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 812
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 813
    monitor-exit v0

    return-void

    .line 815
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    .line 817
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 821
    .local v0, "ident":J
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 823
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    nop

    .line 825
    return-void

    .line 823
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 824
    throw v2

    .line 817
    .end local v0    # "ident":J
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist setInitialCaptureRequest(Ljava/util/List;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;)V
    .locals 3
    .param p2, "requestHandler"    # Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/CaptureStageImpl;",
            ">;",
            "Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$InitialRequestHandler;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 690
    .local p1, "captureStageList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    .line 692
    .local v0, "initialRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 693
    return-void
.end method

.method private blacklist setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I
    .locals 1
    .param p1, "captureStage"    # Landroid/hardware/camera2/extension/CaptureStageImpl;
    .param p2, "requestHandler"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 697
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result v0

    return v0
.end method

.method private blacklist setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I
    .locals 7
    .param p1, "captureStage"    # Landroid/hardware/camera2/extension/CaptureStageImpl;
    .param p2, "requestHandler"    # Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .param p3, "clientRequest"    # Landroid/hardware/camera2/CaptureRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 704
    .local v0, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, v0

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    .line 707
    .local v1, "repeatingRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v1, v3, p2}, Landroid/hardware/camera2/CameraCaptureSession;->setSingleRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public whitelist capture(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .locals 17
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 583
    move-object/from16 v15, p0

    move-object/from16 v14, p1

    iget-boolean v0, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_4

    .line 587
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 592
    const/16 v16, -0x1

    .line 593
    .local v16, "seqId":I
    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    const/4 v8, 0x3

    const-string v9, "CameraExtensionSessionImpl"

    if-eqz v0, :cond_1

    invoke-virtual {v14, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 597
    .local v7, "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v2, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 598
    invoke-interface {v0}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureStages()Ljava/util/List;

    move-result-object v3

    iget-object v5, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    const/4 v6, 0x2

    .line 597
    move-object/from16 v1, p0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createBurstRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/hardware/camera2/CaptureRequest;Landroid/view/Surface;ILjava/util/Map;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    .local v0, "burstRequest":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    nop

    .line 605
    if-eqz v0, :cond_0

    .line 610
    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v2, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v3, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v3, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;

    iget-object v4, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-object v8, v3

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object v13, v7

    move-object v6, v14

    move-object v14, v4

    invoke-direct/range {v8 .. v14}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$BurstRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Ljava/util/HashMap;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurstRequests(Ljava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)I

    move-result v0

    .line 614
    .end local v7    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .end local v16    # "seqId":I
    .local v0, "seqId":I
    goto :goto_0

    .line 606
    .local v0, "burstRequest":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    .restart local v7    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    .restart local v16    # "seqId":I
    :cond_0
    move-object v6, v14

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Failed to create still capture burst request"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 600
    .end local v0    # "burstRequest":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    :catch_0
    move-exception v0

    move-object v6, v14

    .line 601
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Failed to initialize internal burst request! Extension service does not respond!"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v8}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 593
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "requestMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/hardware/camera2/CaptureRequest;Ljava/lang/Integer;>;"
    :cond_1
    move-object v6, v14

    .line 614
    iget-object v0, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 615
    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 617
    const/4 v7, 0x0

    .line 619
    .local v7, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v0, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 622
    iget-object v2, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v4, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object v3, v0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;ILandroid/hardware/camera2/CaptureRequest;)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 628
    .end local v7    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .local v0, "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    nop

    .line 630
    iget-object v8, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v9, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v6, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    const/4 v7, 0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;Z)V

    iget-object v1, v15, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v0, v9, v1}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    move-result v0

    .line 633
    .end local v16    # "seqId":I
    .local v0, "seqId":I
    nop

    .line 637
    :goto_0
    return v0

    .line 624
    .end local v0    # "seqId":I
    .restart local v7    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    .restart local v16    # "seqId":I
    :catch_1
    move-exception v0

    .line 625
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Failed to initialize capture request! Extension service does not respond!"

    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    invoke-direct {v1, v8}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1

    .line 634
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v7    # "captureRequest":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Capture request to unknown output surface!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 588
    .end local v16    # "seqId":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Single capture to both preview & still capture outputs target is not supported!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 584
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Uninitialized component"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 654
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_3

    .line 656
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    .line 657
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 659
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    .local v1, "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 662
    .local v2, "disableParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v2, :cond_0

    .line 663
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    :cond_0
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 667
    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDisableSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    .line 668
    .local v3, "disableStillCaptureParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v3, :cond_1

    .line 669
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    .end local v2    # "disableParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v3    # "disableStillCaptureParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    :cond_1
    goto :goto_0

    .line 671
    :catch_0
    move-exception v2

    .line 672
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CameraExtensionSessionImpl"

    const-string v4, "Failed to disable extension! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 676
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v1, v3, v4}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 678
    .local v2, "disableRequest":Landroid/hardware/camera2/CaptureRequest;
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    invoke-direct {v4, p0, v5}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CloseRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2, v4, v5}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 682
    .end local v2    # "disableRequest":Landroid/hardware/camera2/CaptureRequest;
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 684
    .end local v1    # "captureStageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    :cond_3
    monitor-exit v0

    .line 685
    return-void

    .line 684
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist getDevice()Landroid/hardware/camera2/CameraDevice;
    .locals 2

    .line 450
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    monitor-exit v0

    return-object v1

    .line 452
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized blacklist initialize()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 412
    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 413
    const-string v0, "CameraExtensionSessionImpl"

    const-string v1, "Session already initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    monitor-exit p0

    return-void

    .line 418
    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .local v0, "sessionParamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 420
    .local v1, "outputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeRepeatingRequestPipeline()V

    .line 421
    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 422
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v2}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v2

    .line 423
    .local v2, "previewSessionParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v2, :cond_1

    .line 424
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    :cond_1
    invoke-direct {p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->initializeBurstCapturePipeline()V

    .line 427
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    invoke-direct {v3, v4}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onPresetSession()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v3

    .line 429
    .local v3, "stillCaptureSessionParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    if-eqz v3, :cond_2

    .line 430
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_2
    new-instance v4, Landroid/hardware/camera2/params/SessionConfiguration;

    const/4 v5, 0x0

    new-instance v6, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-direct {v6, v7}, Landroid/hardware/camera2/impl/CameraExtensionUtils$HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v7, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$SessionStateHandler-IA;)V

    invoke-direct {v4, v5, v1, v6, v7}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 439
    .local v4, "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 440
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x1

    invoke-direct {p0, v5, v0, v8, v6}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->createRequest(Landroid/hardware/camera2/CameraDevice;Ljava/util/List;Landroid/view/Surface;I)Landroid/hardware/camera2/CaptureRequest;

    move-result-object v5

    .line 442
    .local v5, "sessionParamRequest":Landroid/hardware/camera2/CaptureRequest;
    invoke-virtual {v4, v5}, Landroid/hardware/camera2/params/SessionConfiguration;->setSessionParameters(Landroid/hardware/camera2/CaptureRequest;)V

    .line 445
    .end local v5    # "sessionParamRequest":Landroid/hardware/camera2/CaptureRequest;
    :cond_3
    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    monitor-exit p0

    return-void

    .line 411
    .end local v0    # "sessionParamsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/extension/CaptureStageImpl;>;"
    .end local v1    # "outputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v2    # "previewSessionParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v3    # "stillCaptureSessionParams":Landroid/hardware/camera2/extension/CaptureStageImpl;
    .end local v4    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method synthetic blacklist lambda$notifyConfigurationFailure$1$android-hardware-camera2-impl-CameraExtensionSessionImpl()V
    .locals 1

    .line 804
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigureFailed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method synthetic blacklist lambda$notifyConfigurationSuccess$2$android-hardware-camera2-impl-CameraExtensionSessionImpl()V
    .locals 1

    .line 821
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onConfigured(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method synthetic blacklist lambda$release$0$android-hardware-camera2-impl-CameraExtensionSessionImpl()V
    .locals 1

    .line 785
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCallbacks:Landroid/hardware/camera2/CameraExtensionSession$StateCallback;

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionSession$StateCallback;->onClosed(Landroid/hardware/camera2/CameraExtensionSession;)V

    return-void
.end method

.method public blacklist release(Z)V
    .locals 7
    .param p1, "skipCloseNotification"    # Z

    .line 713
    const/4 v0, 0x0

    .line 715
    .local v0, "notifyClose":Z
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 716
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    .line 717
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 720
    :try_start_1
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->onDeInit()V

    .line 721
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageExtender:Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 725
    goto :goto_0

    .line 722
    :catch_0
    move-exception v3

    .line 723
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "CameraExtensionSessionImpl"

    const-string v5, "Failed to release extensions! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-wide v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExtensionClientId:J

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_0

    .line 728
    invoke-static {v3, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 729
    iget-boolean v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v3, :cond_0

    .line 730
    const/4 v0, 0x1

    .line 731
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->releaseSession()V

    .line 734
    :cond_0
    iput-boolean v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    .line 736
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 737
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->close()V

    .line 738
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 741
    :cond_1
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_2

    .line 742
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 743
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageReader:Landroid/media/ImageReader;

    .line 746
    :cond_2
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    if-eqz v2, :cond_3

    .line 747
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;->close()V

    .line 748
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    .line 751
    :cond_3
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_4

    .line 752
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 753
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mBurstCaptureImageReader:Landroid/media/ImageReader;

    .line 756
    :cond_4
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_5

    .line 757
    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    .line 758
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mStubCaptureImageReader:Landroid/media/ImageReader;

    .line 761
    :cond_5
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    if-eqz v2, :cond_6

    .line 762
    invoke-virtual {v2}, Landroid/media/ImageWriter;->close()V

    .line 763
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageWriter:Landroid/media/ImageWriter;

    .line 766
    :cond_6
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    if-eqz v2, :cond_7

    .line 767
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;->close()V

    .line 768
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewImageProcessor:Landroid/hardware/camera2/impl/CameraExtensionForwardProcessor;

    .line 771
    :cond_7
    iget-object v2, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    if-eqz v2, :cond_8

    .line 772
    invoke-virtual {v2}, Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;->close()V

    .line 773
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageJpegProcessor:Landroid/hardware/camera2/impl/CameraExtensionJpegProcessor;

    .line 776
    :cond_8
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 777
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mImageProcessor:Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    .line 778
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraRepeatingSurface:Landroid/view/Surface;

    .line 779
    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientCaptureSurface:Landroid/view/Surface;

    iput-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCameraBurstSurface:Landroid/view/Surface;

    .line 780
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 782
    if-eqz v0, :cond_9

    if-nez p1, :cond_9

    .line 783
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 785
    .local v1, "ident":J
    :try_start_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 787
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    goto :goto_1

    .line 787
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 788
    throw v3

    .line 790
    .end local v1    # "ident":J
    :cond_9
    :goto_1
    return-void

    .line 780
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method public whitelist setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;)I
    .locals 9
    .param p1, "request"    # Landroid/hardware/camera2/CaptureRequest;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "listener"    # Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mClientRepeatingRequestSurface:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 469
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest;->containsTarget(Landroid/view/Surface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTargets()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 474
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :try_start_1
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mPreviewExtender:Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v1}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getCaptureStage()Landroid/hardware/camera2/extension/CaptureStageImpl;

    move-result-object v1

    new-instance v8, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;

    iget-object v7, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mRepeatingRequestImageCallback:Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$PreviewRequestHandler;-><init>(Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;Landroid/hardware/camera2/CaptureRequest;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;Landroid/hardware/camera2/impl/CameraExtensionSessionImpl$CameraOutputImageCallback;)V

    invoke-direct {p0, v1, v8, p1}, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->setRepeatingRequest(Landroid/hardware/camera2/extension/CaptureStageImpl;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/hardware/camera2/CaptureRequest;)I

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CameraExtensionSessionImpl"

    const-string v3, "Failed to set repeating request! Extension service does not respond"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v2, Landroid/hardware/camera2/CameraAccessException;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v2

    .line 471
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid repeating request output target!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v1

    .line 466
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No registered preview surface"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v1

    .line 462
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .end local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    throw v1

    .line 484
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    .restart local p1    # "request":Landroid/hardware/camera2/CaptureRequest;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "listener":Landroid/hardware/camera2/CameraExtensionSession$ExtensionCaptureCallback;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist stopRepeating()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 642
    iget-object v0, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInterfaceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 643
    :try_start_0
    iget-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 647
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mInternalRepeatingRequestEnabled:Z

    .line 648
    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 649
    monitor-exit v0

    .line 650
    return-void

    .line 644
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Uninitialized component"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    throw v1

    .line 649
    .restart local p0    # "this":Landroid/hardware/camera2/impl/CameraExtensionSessionImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
