.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage;,
        Landroid/media/ImageWriter$Builder;,
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;
    }
.end annotation


# instance fields
.field private blacklist mDataSpace:I

.field private greylist-max-o mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEstimatedNativeAllocBytes:I

.field private blacklist mHardwareBufferFormat:I

.field private blacklist mHeight:I

.field private greylist-max-o mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private greylist-max-o mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxImages:I

.field private greylist-max-o mNativeContext:J

.field private blacklist mUsage:J

.field private blacklist mWidth:I

.field private greylist-max-o mWriterFormat:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDataSpace(Landroid/media/ImageWriter;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/media/ImageWriter;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageWriter;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .locals 0

    iget-object p0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/media/ImageWriter;)I
    .locals 0

    iget p0, p0, Landroid/media/ImageWriter;->mWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mabortImage(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 1316
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1317
    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    .line 1318
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIII)V
    .locals 14
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "imageFormat"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 311
    move-object v12, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 108
    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 312
    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    .line 313
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 314
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, v12, Landroid/media/ImageWriter;->mDataSpace:I

    .line 316
    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget-wide v10, v12, Landroid/media/ImageWriter;->mUsage:J

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    .line 318
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIIJ)V
    .locals 17
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "hardwareBufferFormat"    # I
    .param p5, "dataSpace"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "usage"    # J

    .line 332
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 108
    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 333
    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    .line 334
    move-wide/from16 v14, p8

    iput-wide v14, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 338
    if-eqz p3, :cond_0

    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, "imageFormat":I
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 341
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, v12, Landroid/media/ImageWriter;->mDataSpace:I

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v16, v0

    goto :goto_0

    .line 343
    .end local v0    # "imageFormat":I
    :cond_0
    invoke-static/range {p4 .. p5}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v0

    .line 344
    .restart local v0    # "imageFormat":I
    move/from16 v10, p4

    iput v10, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 345
    move/from16 v11, p5

    iput v11, v12, Landroid/media/ImageWriter;->mDataSpace:I

    move/from16 v16, v0

    .line 348
    .end local v0    # "imageFormat":I
    .local v16, "imageFormat":I
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, v16

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    .line 350
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;IZIIIIJLandroid/media/ImageWriter-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIJ)V
    .locals 16
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "imageFormat"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "usage"    # J

    .line 321
    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 108
    const-wide/16 v0, 0x30

    iput-wide v0, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, v12, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 322
    move/from16 v13, p2

    iput v13, v12, Landroid/media/ImageWriter;->mMaxImages:I

    .line 323
    move-wide/from16 v14, p7

    iput-wide v14, v12, Landroid/media/ImageWriter;->mUsage:J

    .line 324
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v0

    iput v0, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 325
    invoke-static/range {p4 .. p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v7

    iput v7, v12, Landroid/media/ImageWriter;->mDataSpace:I

    .line 327
    iget v6, v12, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v11}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V

    .line 329
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJ)V

    return-void
.end method

.method private greylist-max-o abortImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 843
    if-eqz p1, :cond_2

    .line 847
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 852
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 853
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_0

    .line 854
    return-void

    .line 863
    :cond_0
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    .line 864
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 865
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 866
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 867
    return-void

    .line 848
    .end local v0    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 844
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o attachAndQueueInputImage(Landroid/media/Image;)V
    .locals 18
    .param p1, "image"    # Landroid/media/Image;

    .line 745
    move-object/from16 v15, p0

    if-eqz p1, :cond_3

    .line 748
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->isAttachable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 766
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v14

    .line 767
    .local v14, "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 768
    iget-wide v1, v15, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v5

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v8

    iget v9, v14, Landroid/graphics/Rect;->left:I

    iget v10, v14, Landroid/graphics/Rect;->top:I

    iget v11, v14, Landroid/graphics/Rect;->right:I

    iget v12, v14, Landroid/graphics/Rect;->bottom:I

    .line 770
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    .line 768
    move-object/from16 v0, p0

    move-object/from16 v17, v14

    .end local v14    # "crop":Landroid/graphics/Rect;
    .local v17, "crop":Landroid/graphics/Rect;
    move/from16 v14, v16

    invoke-direct/range {v0 .. v14}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIIIIII)I

    goto :goto_0

    .line 772
    .end local v17    # "crop":Landroid/graphics/Rect;
    .restart local v14    # "crop":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v17, v14

    .end local v14    # "crop":Landroid/graphics/Rect;
    .restart local v17    # "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v14

    .line 773
    .local v14, "gb":Landroid/graphics/GraphicBuffer;
    iget-wide v1, v15, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 774
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v7

    move-object/from16 v13, v17

    .end local v17    # "crop":Landroid/graphics/Rect;
    .local v13, "crop":Landroid/graphics/Rect;
    iget v8, v13, Landroid/graphics/Rect;->left:I

    iget v9, v13, Landroid/graphics/Rect;->top:I

    iget v10, v13, Landroid/graphics/Rect;->right:I

    iget v11, v13, Landroid/graphics/Rect;->bottom:I

    .line 775
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    .line 773
    move-object/from16 v0, p0

    move-object v3, v14

    .end local v13    # "crop":Landroid/graphics/Rect;
    .restart local v17    # "crop":Landroid/graphics/Rect;
    move/from16 v13, v16

    invoke-direct/range {v0 .. v13}, Landroid/media/ImageWriter;->nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I

    .line 776
    invoke-virtual {v14}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 777
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 779
    .end local v14    # "gb":Landroid/graphics/GraphicBuffer;
    :goto_0
    return-void

    .line 759
    .end local v17    # "crop":Landroid/graphics/Rect;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not attach an image that is owned ImageWriter already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synchronized native greylist-max-o cancelImage(JLandroid/media/Image;)V
.end method

.method private blacklist initializeImageWriter(Landroid/view/Surface;IZZIIIIIJ)V
    .locals 15
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "useLegacyImageFormat"    # Z
    .param p5, "imageFormat"    # I
    .param p6, "hardwareBufferFormat"    # I
    .param p7, "dataSpace"    # I
    .param p8, "width"    # I
    .param p9, "height"    # I
    .param p10, "usage"    # J

    .line 254
    move-object v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    if-eqz v12, :cond_5

    const/4 v14, 0x1

    if-lt v13, v14, :cond_5

    .line 261
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p3

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p10

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J

    move-result-wide v0

    iput-wide v0, v11, Landroid/media/ImageWriter;->mNativeContext:J

    .line 265
    if-eqz p3, :cond_0

    .line 268
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v0

    .line 269
    .end local p5    # "imageFormat":I
    .local v0, "imageFormat":I
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, v11, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 270
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, v11, Landroid/media/ImageWriter;->mDataSpace:I

    goto :goto_0

    .line 265
    .end local v0    # "imageFormat":I
    .restart local p5    # "imageFormat":I
    :cond_0
    move/from16 v0, p5

    .line 276
    .end local p5    # "imageFormat":I
    .restart local v0    # "imageFormat":I
    :goto_0
    const/16 v1, 0x21

    if-ne v0, v1, :cond_1

    .line 277
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v1

    .line 278
    .local v1, "surfaceDataspace":I
    packed-switch v1, :pswitch_data_0

    .line 289
    :pswitch_0
    const/16 v0, 0x100

    goto :goto_1

    .line 286
    :pswitch_1
    const v0, 0x48454946

    .line 287
    goto :goto_1

    .line 283
    :pswitch_2
    const v0, 0x69656963

    .line 284
    goto :goto_1

    .line 280
    :pswitch_3
    const/16 v0, 0x101

    .line 281
    nop

    .line 291
    :goto_1
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 292
    invoke-static {v0}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mDataSpace:I

    .line 300
    .end local v1    # "surfaceDataspace":I
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v1

    .line 301
    .local v1, "surfSize":Landroid/util/Size;
    const/4 v2, -0x1

    move/from16 v3, p8

    if-ne v3, v2, :cond_2

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    goto :goto_2

    :cond_2
    move v4, v3

    :goto_2
    iput v4, v11, Landroid/media/ImageWriter;->mWidth:I

    .line 302
    move/from16 v4, p9

    if-ne v4, v2, :cond_3

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v4

    :goto_3
    iput v2, v11, Landroid/media/ImageWriter;->mHeight:I

    .line 304
    iget v5, v11, Landroid/media/ImageWriter;->mWidth:I

    .line 306
    if-eqz p4, :cond_4

    move v6, v0

    goto :goto_4

    :cond_4
    move/from16 v6, p6

    .line 305
    :goto_4
    invoke-static {v5, v2, v6, v14}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v2

    iput v2, v11, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 307
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    iget v5, v11, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v2, v5}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 308
    return-void

    .line 254
    .end local v0    # "imageFormat":I
    .end local v1    # "surfSize":Landroid/util/Size;
    .restart local p5    # "imageFormat":I
    :cond_5
    move/from16 v3, p8

    move/from16 v4, p9

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal input argument: surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxImages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1000
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o isImageOwnedByMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 870
    instance-of v0, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 871
    return v1

    .line 873
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 874
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v2

    if-eq v2, p0, :cond_1

    .line 875
    return v1

    .line 878
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private synchronized native blacklist nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I
.end method

.method private synchronized native blacklist nativeAttachAndQueueImage(JJIJIIIIIII)I
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeClose(J)V
.end method

.method private synchronized native greylist-max-o nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native blacklist nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J
.end method

.method private synchronized native blacklist nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V
.end method

.method public static whitelist newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .locals 8
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I

    .line 147
    new-instance v7, Landroid/media/ImageWriter;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v7
.end method

.method public static whitelist newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .locals 9
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "format"    # I

    .line 245
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    :goto_0
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v6, p2

    invoke-direct/range {v2 .. v8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method public static blacklist newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;
    .locals 9
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 196
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_1
    :goto_0
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, 0x0

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-direct/range {v2 .. v8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;)V
    .locals 4
    .param p0, "selfRef"    # Ljava/lang/Object;

    .line 809
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 810
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageWriter;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    .line 811
    .local v1, "iw":Landroid/media/ImageWriter;
    if-nez v1, :cond_0

    .line 812
    return-void

    .line 816
    :cond_0
    iget-object v2, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 817
    :try_start_0
    iget-object v3, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 818
    .local v3, "handler":Landroid/os/Handler;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    if-eqz v3, :cond_1

    .line 820
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 822
    :cond_1
    return-void

    .line 818
    .end local v3    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    .line 694
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 695
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/Image;

    .line 696
    .local v1, "image":Landroid/media/Image;
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 697
    .end local v1    # "image":Landroid/media/Image;
    goto :goto_0

    .line 698
    :cond_0
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 699
    iget-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v0, v1}, Landroid/media/ImageWriter;->nativeClose(J)V

    .line 700
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 702
    iget v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    if-lez v0, :cond_1

    .line 703
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    iget v1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 704
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 706
    :cond_1
    return-void
.end method

.method public whitelist dequeueInputImage()Landroid/media/Image;
    .locals 3

    .line 451
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-ge v0, v1, :cond_0

    .line 454
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    .line 455
    .local v0, "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    .line 456
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 458
    return-object v0

    .line 452
    .end local v0    # "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already dequeued max number of Images "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 711
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 714
    nop

    .line 715
    return-void

    .line 713
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 714
    throw v0
.end method

.method public whitelist getDataSpace()I
    .locals 1

    .line 612
    iget v0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return v0
.end method

.method public whitelist getFormat()I
    .locals 1

    .line 574
    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public whitelist getHardwareBufferFormat()I
    .locals 1

    .line 599
    iget v0, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 400
    iget v0, p0, Landroid/media/ImageWriter;->mHeight:I

    return v0
.end method

.method public whitelist getMaxImages()I
    .locals 1

    .line 376
    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public whitelist getUsage()J
    .locals 2

    .line 586
    iget-wide v0, p0, Landroid/media/ImageWriter;->mUsage:J

    return-wide v0
.end method

.method public whitelist getWidth()I
    .locals 1

    .line 388
    iget v0, p0, Landroid/media/ImageWriter;->mWidth:I

    return v0
.end method

.method public whitelist queueInputImage(Landroid/media/Image;)V
    .locals 18
    .param p1, "image"    # Landroid/media/Image;

    .line 513
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    if-eqz v14, :cond_6

    .line 516
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v15

    .line 517
    .local v15, "ownedByMe":Z
    if-eqz v15, :cond_1

    move-object v0, v14

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v0, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 518
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image from ImageWriter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 523
    :cond_1
    :goto_0
    if-nez v15, :cond_4

    .line 524
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ImageReader;

    if-eqz v0, :cond_2

    .line 525
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ImageReader;

    .line 527
    .local v0, "prevOwner":Landroid/media/ImageReader;
    invoke-virtual {v0, v14}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    .end local v0    # "prevOwner":Landroid/media/ImageReader;
    goto :goto_1

    .line 528
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_1
    nop

    .line 533
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 538
    return-void

    .line 529
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 542
    .local v12, "crop":Landroid/graphics/Rect;
    iget-wide v1, v13, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v6

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    iget v9, v12, Landroid/graphics/Rect;->right:I

    iget v10, v12, Landroid/graphics/Rect;->bottom:I

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v11

    .line 544
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v16

    .line 542
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-object/from16 v17, v12

    .end local v12    # "crop":Landroid/graphics/Rect;
    .local v17, "crop":Landroid/graphics/Rect;
    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V

    .line 553
    if-eqz v15, :cond_5

    .line 554
    iget-object v0, v13, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 556
    move-object v0, v14

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 557
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 558
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 560
    .end local v0    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_5
    return-void

    .line 514
    .end local v15    # "ownedByMe":Z
    .end local v17    # "crop":Landroid/graphics/Rect;
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageWriter$OnImageReleasedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 662
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 663
    if-eqz p1, :cond_4

    .line 664
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 665
    .local v1, "looper":Landroid/os/Looper;
    :goto_0
    if-eqz v1, :cond_3

    .line 669
    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_2

    .line 670
    :cond_1
    new-instance v2, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 672
    :cond_2
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 673
    .end local v1    # "looper":Landroid/os/Looper;
    goto :goto_1

    .line 666
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/ImageWriter;
    .end local p1    # "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 674
    .end local v1    # "looper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/media/ImageWriter;
    .restart local p1    # "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 675
    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 677
    :goto_1
    monitor-exit v0

    .line 678
    return-void

    .line 677
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
