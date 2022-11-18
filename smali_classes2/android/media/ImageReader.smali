.class public Landroid/media/ImageReader;
.super Ljava/lang/Object;
.source "ImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageReader$ImagePlane;,
        Landroid/media/ImageReader$SurfaceImage;,
        Landroid/media/ImageReader$HandlerExecutor;,
        Landroid/media/ImageReader$ListenerHandler;,
        Landroid/media/ImageReader$Builder;,
        Landroid/media/ImageReader$OnImageAvailableListener;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACQUIRE_MAX_IMAGES:I = 0x2

.field private static final greylist-max-o ACQUIRE_NO_BUFS:I = 0x1

.field private static final greylist-max-o ACQUIRE_SUCCESS:I


# instance fields
.field private greylist-max-o mAcquiredImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mCloseLock:Ljava/lang/Object;

.field private final blacklist mDataSpace:I

.field private greylist-max-o mEstimatedNativeAllocBytes:I

.field private final greylist-max-o mFormat:I

.field private final blacklist mHardwareBufferFormat:I

.field private final greylist-max-o mHeight:I

.field private greylist-max-o mIsReaderValid:Z

.field private greylist-max-o mListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private blacklist mListenerExecutor:Ljava/util/concurrent/Executor;

.field private greylist-max-o mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxImages:I

.field private greylist-max-o mNativeContext:J

.field private final greylist-max-o mNumPlanes:I

.field private final blacklist mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

.field private greylist-max-o mSurface:Landroid/view/Surface;

.field private final blacklist mUsage:J

.field private final blacklist mUseLegacyImageFormat:Z

.field private final greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataSpace(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFormat(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHardwareBufferFormat(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNumPlanes(Landroid/media/ImageReader;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageReader;->mNumPlanes:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUsage(Landroid/media/ImageReader;)J
    .locals 2

    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseLegacyImageFormat(Landroid/media/ImageReader;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mreleaseImage(Landroid/media/ImageReader;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/ImageReader;->releaseImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1507
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1508
    invoke-static {}, Landroid/media/ImageReader;->nativeClassInit()V

    .line 1509
    return-void
.end method

.method private constructor blacklist <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V
    .locals 18
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "maxImages"    # I
    .param p5, "usage"    # J
    .param p7, "parent"    # Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 315
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 1080
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 1081
    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 1087
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 316
    move/from16 v11, p1

    iput v11, v10, Landroid/media/ImageReader;->mWidth:I

    .line 317
    move/from16 v12, p2

    iput v12, v10, Landroid/media/ImageReader;->mHeight:I

    .line 318
    move/from16 v13, p3

    iput v13, v10, Landroid/media/ImageReader;->mFormat:I

    .line 319
    move-wide/from16 v14, p5

    iput-wide v14, v10, Landroid/media/ImageReader;->mUsage:J

    .line 320
    move/from16 v9, p4

    iput v9, v10, Landroid/media/ImageReader;->mMaxImages:I

    .line 321
    move-object/from16 v8, p7

    iput-object v8, v10, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 323
    invoke-static/range {p3 .. p3}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v7

    iput v7, v10, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    .line 324
    invoke-static/range {p3 .. p3}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v5

    iput v5, v10, Landroid/media/ImageReader;->mDataSpace:I

    .line 325
    const/4 v6, 0x1

    iput-boolean v6, v10, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    .line 326
    invoke-static/range {p3 .. p3}, Landroid/media/ImageUtils;->getNumPlanesForFormat(I)I

    move-result v0

    iput v0, v10, Landroid/media/ImageReader;->mNumPlanes:I

    .line 328
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v16, v5

    move/from16 v17, v6

    move-wide/from16 v5, p5

    move/from16 v8, v16

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Landroid/media/ImageReader;->initializeImageReader(IIIIJIIZ)V

    .line 330
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;Landroid/media/ImageReader-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-void
.end method

.method private constructor blacklist <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V
    .locals 17
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "maxImages"    # I
    .param p4, "usage"    # J
    .param p6, "parent"    # Landroid/hardware/camera2/MultiResolutionImageReader;
    .param p7, "hardwareBufferFormat"    # I
    .param p8, "dataSpace"    # I

    .line 333
    move-object/from16 v10, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1079
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    .line 1080
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    .line 1081
    const/4 v0, 0x0

    iput-boolean v0, v10, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 1087
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v10, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    .line 334
    move/from16 v11, p1

    iput v11, v10, Landroid/media/ImageReader;->mWidth:I

    .line 335
    move/from16 v12, p2

    iput v12, v10, Landroid/media/ImageReader;->mHeight:I

    .line 336
    const/4 v3, 0x0

    iput v3, v10, Landroid/media/ImageReader;->mFormat:I

    .line 337
    move-wide/from16 v13, p4

    iput-wide v13, v10, Landroid/media/ImageReader;->mUsage:J

    .line 338
    move/from16 v15, p3

    iput v15, v10, Landroid/media/ImageReader;->mMaxImages:I

    .line 339
    move-object/from16 v9, p6

    iput-object v9, v10, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 340
    move/from16 v8, p7

    iput v8, v10, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    .line 341
    move/from16 v7, p8

    iput v7, v10, Landroid/media/ImageReader;->mDataSpace:I

    .line 342
    const/4 v5, 0x0

    iput-boolean v5, v10, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    .line 343
    invoke-static/range {p7 .. p7}, Landroid/media/ImageUtils;->getNumPlanesForHardwareBufferFormat(I)I

    move-result v0

    iput v0, v10, Landroid/media/ImageReader;->mNumPlanes:I

    .line 345
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move/from16 v16, v5

    move-wide/from16 v5, p4

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Landroid/media/ImageReader;->initializeImageReader(IIIIJIIZ)V

    .line 347
    return-void
.end method

.method synthetic constructor blacklist <init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;IILandroid/media/ImageReader-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageReader;-><init>(IIIJLandroid/hardware/camera2/MultiResolutionImageReader;II)V

    return-void
.end method

.method private greylist-max-o acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I
    .locals 5
    .param p1, "si"    # Landroid/media/ImageReader$SurfaceImage;

    .line 564
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    const/4 v1, 0x1

    .line 567
    .local v1, "status":I
    :try_start_0
    iget-boolean v2, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    if-eqz v2, :cond_0

    .line 568
    iget-boolean v2, p0, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    invoke-direct {p0, p1, v2}, Landroid/media/ImageReader;->nativeImageSetup(Landroid/media/Image;Z)I

    move-result v2

    move v1, v2

    .line 571
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 578
    new-instance v2, Ljava/lang/AssertionError;

    goto :goto_0

    .line 573
    :pswitch_0
    const/4 v2, 0x1

    iput-boolean v2, p1, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 576
    :pswitch_1
    nop

    .line 583
    if-nez v1, :cond_1

    .line 584
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    :cond_1
    monitor-exit v0

    return v1

    .line 578
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "this":Landroid/media/ImageReader;
    .end local p1    # "si":Landroid/media/ImageReader$SurfaceImage;
    throw v2

    .line 587
    .end local v1    # "status":I
    .restart local p0    # "this":Landroid/media/ImageReader;
    .restart local p1    # "si":Landroid/media/ImageReader$SurfaceImage;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static blacklist initializeImagePlanes(ILandroid/graphics/GraphicBuffer;IIJIILandroid/graphics/Rect;)[Landroid/media/ImageReader$ImagePlane;
    .locals 9
    .param p0, "numPlanes"    # I
    .param p1, "buffer"    # Landroid/graphics/GraphicBuffer;
    .param p2, "fenceFd"    # I
    .param p3, "format"    # I
    .param p4, "timestamp"    # J
    .param p6, "transform"    # I
    .param p7, "scalingMode"    # I
    .param p8, "crop"    # Landroid/graphics/Rect;

    .line 1484
    move-object/from16 v0, p8

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->right:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    move v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v1 .. v8}, Landroid/media/ImageReader;->nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;

    move-result-object v1

    return-object v1
.end method

.method private blacklist initializeImageReader(IIIIJIIZ)V
    .locals 15
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "imageFormat"    # I
    .param p4, "maxImages"    # I
    .param p5, "usage"    # J
    .param p7, "hardwareBufferFormat"    # I
    .param p8, "dataSpace"    # I
    .param p9, "useLegacyImageFormat"    # Z

    .line 281
    move-object v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    const/4 v12, 0x1

    if-lt v10, v12, :cond_3

    if-lt v11, v12, :cond_3

    .line 286
    move/from16 v13, p4

    if-lt v13, v12, :cond_2

    .line 291
    const/16 v0, 0x11

    move/from16 v14, p3

    if-eq v14, v0, :cond_1

    .line 296
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/media/ImageReader;->nativeInit(Ljava/lang/Object;IIIJII)V

    .line 299
    iput-boolean v12, v9, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 301
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeGetSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, v9, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    .line 308
    nop

    .line 309
    if-eqz p9, :cond_0

    move v0, v14

    goto :goto_0

    :cond_0
    move/from16 v0, p7

    .line 308
    :goto_0
    invoke-static {v10, v11, v0, v12}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v0

    iput v0, v9, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 311
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, v9, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 312
    return-void

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_2
    move/from16 v14, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_3
    move/from16 v14, p3

    move/from16 v13, p4

    .line 282
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The image dimensions must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o isImageOwnedbyMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 877
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 878
    return v1

    .line 880
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 881
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v2

    if-ne v2, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeClose()V
.end method

.method private static synchronized native blacklist nativeCreateImagePlanes(ILandroid/graphics/GraphicBuffer;IIIIII)[Landroid/media/ImageReader$ImagePlane;
.end method

.method private synchronized native greylist-max-o nativeDetachImage(Landroid/media/Image;)I
.end method

.method private synchronized native greylist-max-o nativeDiscardFreeBuffers()V
.end method

.method private synchronized native blacklist nativeGetConsumer()J
.end method

.method private synchronized native greylist-max-o nativeGetSurface()Landroid/view/Surface;
.end method

.method private synchronized native blacklist nativeImageSetup(Landroid/media/Image;Z)I
.end method

.method private synchronized native blacklist nativeInit(Ljava/lang/Object;IIIJII)V
.end method

.method private synchronized native greylist-max-o nativeReleaseImage(Landroid/media/Image;)V
.end method

.method private static synchronized native blacklist nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
.end method

.method public static whitelist newInstance(IIII)Landroid/media/ImageReader;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I

    .line 144
    new-instance v8, Landroid/media/ImageReader;

    .line 145
    const/16 v0, 0x22

    if-ne p2, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    :goto_0
    move-wide v5, v0

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    .line 144
    return-object v8
.end method

.method public static whitelist newInstance(IIIIJ)Landroid/media/ImageReader;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .param p4, "usage"    # J

    .line 261
    new-instance v8, Landroid/media/ImageReader;

    const/4 v7, 0x0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    return-object v8
.end method

.method public static blacklist newInstance(IIIILandroid/hardware/camera2/MultiResolutionImageReader;)Landroid/media/ImageReader;
    .locals 9
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .param p4, "parent"    # Landroid/hardware/camera2/MultiResolutionImageReader;

    .line 275
    new-instance v8, Landroid/media/ImageReader;

    .line 276
    const/16 v0, 0x22

    if-ne p2, v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3

    :goto_0
    move-wide v5, v0

    move-object v0, v8

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/media/ImageReader;-><init>(IIIIJLandroid/hardware/camera2/MultiResolutionImageReader;)V

    .line 275
    return-object v8
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;)V
    .locals 6
    .param p0, "selfRef"    # Ljava/lang/Object;

    .line 892
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 893
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageReader;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageReader;

    .line 894
    .local v1, "ir":Landroid/media/ImageReader;
    if-nez v1, :cond_0

    .line 895
    return-void

    .line 900
    :cond_0
    iget-object v2, v1, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 901
    :try_start_0
    iget-object v3, v1, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 902
    .local v3, "executor":Ljava/util/concurrent/Executor;
    iget-object v4, v1, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 903
    .local v4, "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 905
    iget-object v5, v1, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 906
    :try_start_1
    iget-boolean v2, v1, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 907
    .local v2, "isReaderValid":Z
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 912
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    .line 913
    new-instance v5, Landroid/media/ImageReader$1;

    invoke-direct {v5, v4, v1}, Landroid/media/ImageReader$1;-><init>(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/media/ImageReader;)V

    invoke-interface {v3, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 920
    :cond_1
    return-void

    .line 907
    .end local v2    # "isReaderValid":Z
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 903
    .end local v3    # "executor":Ljava/util/concurrent/Executor;
    .end local v4    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private greylist-max-o releaseImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "i"    # Landroid/media/Image;

    .line 651
    instance-of v0, p1, Landroid/media/ImageReader$SurfaceImage;

    if-eqz v0, :cond_2

    .line 655
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 656
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_0

    .line 657
    return-void

    .line 660
    :cond_0
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->getReader()Landroid/media/ImageReader;

    move-result-object v1

    if-ne v1, p0, :cond_1

    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    .line 666
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeReleaseImage(Landroid/media/Image;)V

    .line 667
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageReader$SurfaceImage;->mIsImageValid:Z

    .line 668
    iget-object v1, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 669
    return-void

    .line 661
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This image was not produced by this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This image was not produced by an ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist unlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V
    .locals 0
    .param p0, "buffer"    # Landroid/graphics/GraphicBuffer;

    .line 1496
    invoke-static {p0}, Landroid/media/ImageReader;->nativeUnlockGraphicBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 1497
    return-void
.end method


# virtual methods
.method public whitelist acquireLatestImage()Landroid/media/Image;
    .locals 4

    .line 507
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 508
    .local v0, "image":Landroid/media/Image;
    if-nez v0, :cond_0

    .line 509
    const/4 v1, 0x0

    return-object v1

    .line 513
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    .local v1, "next":Landroid/media/Image;
    if-nez v1, :cond_3

    .line 515
    move-object v2, v0

    .line 516
    .local v2, "result":Landroid/media/Image;
    const/4 v0, 0x0

    .line 517
    nop

    .line 523
    if-eqz v0, :cond_1

    .line 524
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 526
    :cond_1
    iget-object v3, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v3, :cond_2

    .line 527
    invoke-virtual {v3, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 517
    :cond_2
    return-object v2

    .line 519
    .end local v2    # "result":Landroid/media/Image;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Landroid/media/Image;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    move-object v0, v1

    .line 521
    .end local v1    # "next":Landroid/media/Image;
    goto :goto_0

    .line 523
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 524
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 526
    :cond_4
    iget-object v2, p0, Landroid/media/ImageReader;->mParent:Landroid/hardware/camera2/MultiResolutionImageReader;

    if-eqz v2, :cond_5

    .line 527
    invoke-virtual {v2, p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 529
    :cond_5
    throw v1
.end method

.method public whitelist acquireNextImage()Landroid/media/Image;
    .locals 6

    .line 622
    iget-boolean v0, p0, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    if-eqz v0, :cond_0

    .line 623
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    goto :goto_0

    .line 625
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_0
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    iget v2, p0, Landroid/media/ImageReader;->mDataSpace:I

    invoke-direct {v0, p0, v1, v2}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;II)V

    .line 627
    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    .line 629
    .local v1, "status":I
    packed-switch v1, :pswitch_data_0

    .line 640
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown nativeImageSetup return code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 635
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Landroid/media/ImageReader;->mMaxImages:I

    .line 638
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 636
    const-string v4, "maxImages (%d) has already been acquired, call #close before acquiring more."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 633
    :pswitch_1
    const/4 v2, 0x0

    return-object v2

    .line 631
    :pswitch_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public greylist-max-o acquireNextImageNoThrowISE()Landroid/media/Image;
    .locals 3

    .line 541
    iget-boolean v0, p0, Landroid/media/ImageReader;->mUseLegacyImageFormat:Z

    if-eqz v0, :cond_0

    .line 542
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mFormat:I

    invoke-direct {v0, p0, v1}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;I)V

    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    goto :goto_0

    .line 544
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_0
    new-instance v0, Landroid/media/ImageReader$SurfaceImage;

    iget v1, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    iget v2, p0, Landroid/media/ImageReader;->mDataSpace:I

    invoke-direct {v0, p0, v1, v2}, Landroid/media/ImageReader$SurfaceImage;-><init>(Landroid/media/ImageReader;II)V

    .line 546
    .restart local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :goto_0
    invoke-direct {p0, v0}, Landroid/media/ImageReader;->acquireNextSurfaceImage(Landroid/media/ImageReader$SurfaceImage;)I

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public whitelist test-api close()V
    .locals 4

    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 763
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 773
    :cond_0
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/media/ImageReader;->mIsReaderValid:Z

    .line 775
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/Image;

    .line 776
    .local v3, "image":Landroid/media/Image;
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 777
    .end local v3    # "image":Landroid/media/Image;
    goto :goto_0

    .line 778
    :cond_1
    iget-object v2, p0, Landroid/media/ImageReader;->mAcquiredImages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 780
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeClose()V

    .line 782
    iget v2, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    if-lez v2, :cond_2

    .line 783
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v3, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 784
    iput v1, p0, Landroid/media/ImageReader;->mEstimatedNativeAllocBytes:I

    .line 786
    :cond_2
    monitor-exit v0

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o detachImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 855
    if-eqz p1, :cond_2

    .line 858
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->isImageOwnedbyMe(Landroid/media/Image;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    move-object v0, p1

    check-cast v0, Landroid/media/ImageReader$SurfaceImage;

    .line 864
    .local v0, "si":Landroid/media/ImageReader$SurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->throwISEIfImageIsInvalid()V

    .line 866
    invoke-virtual {v0}, Landroid/media/ImageReader$SurfaceImage;->isAttachable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 870
    invoke-direct {p0, p1}, Landroid/media/ImageReader;->nativeDetachImage(Landroid/media/Image;)I

    .line 871
    invoke-static {v0}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageReader$SurfaceImage;)V

    .line 872
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$fputmPlanes(Landroid/media/ImageReader$SurfaceImage;[Landroid/media/ImageReader$SurfaceImage$SurfacePlane;)V

    .line 873
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/ImageReader$SurfaceImage;->-$$Nest$msetDetached(Landroid/media/ImageReader$SurfaceImage;Z)V

    .line 874
    return-void

    .line 867
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Image was already detached from this ImageReader"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 859
    .end local v0    # "si":Landroid/media/ImageReader$SurfaceImage;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to detach an image that is not owned by this ImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 856
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input image must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist discardFreeBuffers()V
    .locals 2

    .line 808
    iget-object v0, p0, Landroid/media/ImageReader;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 809
    :try_start_0
    invoke-direct {p0}, Landroid/media/ImageReader;->nativeDiscardFreeBuffers()V

    .line 810
    monitor-exit v0

    .line 811
    return-void

    .line 810
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 816
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageReader;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 818
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 819
    nop

    .line 820
    return-void

    .line 818
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 819
    throw v0
.end method

.method public whitelist getDataSpace()I
    .locals 1

    .line 421
    iget v0, p0, Landroid/media/ImageReader;->mDataSpace:I

    return v0
.end method

.method public whitelist getHardwareBufferFormat()I
    .locals 1

    .line 408
    iget v0, p0, Landroid/media/ImageReader;->mHardwareBufferFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 372
    iget v0, p0, Landroid/media/ImageReader;->mHeight:I

    return v0
.end method

.method public whitelist getImageFormat()I
    .locals 1

    .line 395
    iget v0, p0, Landroid/media/ImageReader;->mFormat:I

    return v0
.end method

.method public whitelist getMaxImages()I
    .locals 1

    .line 442
    iget v0, p0, Landroid/media/ImageReader;->mMaxImages:I

    return v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 1

    .line 471
    iget-object v0, p0, Landroid/media/ImageReader;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public whitelist getUsage()J
    .locals 2

    .line 451
    iget-wide v0, p0, Landroid/media/ImageReader;->mUsage:J

    return-wide v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 359
    iget v0, p0, Landroid/media/ImageReader;->mWidth:I

    return v0
.end method

.method public whitelist setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 684
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    if-eqz p1, :cond_4

    .line 686
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 687
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v1, :cond_3

    .line 691
    iget-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/ImageReader$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_2

    .line 692
    :cond_1
    new-instance v2, Landroid/media/ImageReader$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageReader$ListenerHandler;-><init>(Landroid/media/ImageReader;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 693
    new-instance v3, Landroid/media/ImageReader$HandlerExecutor;

    invoke-direct {v3, p0, v2}, Landroid/media/ImageReader$HandlerExecutor;-><init>(Landroid/media/ImageReader;Landroid/os/Handler;)V

    iput-object v3, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 695
    .end local v1    # "looper":Landroid/os/Looper;
    :cond_2
    goto :goto_1

    .line 688
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/ImageReader;
    .end local p1    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 696
    .end local v1    # "looper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/media/ImageReader;
    .restart local p1    # "listener":Landroid/media/ImageReader$OnImageAvailableListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageReader;->mListenerHandler:Landroid/media/ImageReader$ListenerHandler;

    .line 697
    iput-object v1, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 699
    :goto_1
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 700
    monitor-exit v0

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 718
    if-eqz p2, :cond_0

    .line 722
    iget-object v0, p0, Landroid/media/ImageReader;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iput-object p2, p0, Landroid/media/ImageReader;->mListenerExecutor:Ljava/util/concurrent/Executor;

    .line 724
    iput-object p1, p0, Landroid/media/ImageReader;->mListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 725
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 719
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
