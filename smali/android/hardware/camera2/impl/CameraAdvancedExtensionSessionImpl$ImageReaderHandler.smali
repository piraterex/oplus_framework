.class final Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;
.super Ljava/lang/Object;
.source "CameraAdvancedExtensionSessionImpl.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ImageReaderHandler"
.end annotation


# instance fields
.field private final blacklist mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

.field private final blacklist mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

.field private final blacklist mPhysicalCameraId:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;)V
    .locals 1
    .param p1, "outputConfigId"    # I
    .param p2, "iImageProcessor"    # Landroid/hardware/camera2/extension/IImageProcessorImpl;
    .param p3, "physicalCameraId"    # Ljava/lang/String;

    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    new-instance v0, Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-direct {v0}, Landroid/hardware/camera2/extension/OutputConfigId;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    .line 787
    iput p1, v0, Landroid/hardware/camera2/extension/OutputConfigId;->id:I

    .line 788
    iput-object p2, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    .line 789
    iput-object p3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mPhysicalCameraId:Ljava/lang/String;

    .line 790
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;-><init>(ILandroid/hardware/camera2/extension/IImageProcessorImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist onImageAvailable(Landroid/media/ImageReader;)V
    .locals 6
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 794
    const-string v0, "CameraAdvancedExtensionSessionImpl"

    iget-object v1, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    if-nez v1, :cond_0

    .line 795
    return-void

    .line 800
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    .line 804
    .local v1, "img":Landroid/media/Image;
    nop

    .line 805
    if-nez v1, :cond_1

    .line 806
    const-string v2, "Invalid image!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    return-void

    .line 811
    :cond_1
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 816
    nop

    .line 818
    new-instance v2, Landroid/hardware/camera2/extension/ParcelImage;

    invoke-direct {v2}, Landroid/hardware/camera2/extension/ParcelImage;-><init>()V

    .line 819
    .local v2, "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    invoke-virtual {v1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    .line 821
    :try_start_2
    invoke-virtual {v1}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object v3

    .line 822
    .local v3, "fd":Landroid/hardware/SyncFence;
    invoke-virtual {v3}, Landroid/hardware/SyncFence;->isValid()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 823
    invoke-virtual {v3}, Landroid/hardware/SyncFence;->getFdDup()Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iput-object v4, v2, Landroid/hardware/camera2/extension/ParcelImage;->fence:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 827
    .end local v3    # "fd":Landroid/hardware/SyncFence;
    :cond_2
    goto :goto_0

    .line 825
    :catch_0
    move-exception v3

    .line 826
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Failed to parcel buffer fence!"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v1}, Landroid/media/Image;->getWidth()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->width:I

    .line 829
    invoke-virtual {v1}, Landroid/media/Image;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->height:I

    .line 830
    invoke-virtual {v1}, Landroid/media/Image;->getFormat()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->format:I

    .line 831
    invoke-virtual {v1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v3

    iput-wide v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->timestamp:J

    .line 832
    invoke-virtual {v1}, Landroid/media/Image;->getTransform()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->transform:I

    .line 833
    invoke-virtual {v1}, Landroid/media/Image;->getScalingMode()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->scalingMode:I

    .line 834
    invoke-virtual {v1}, Landroid/media/Image;->getPlaneCount()I

    move-result v3

    iput v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->planeCount:I

    .line 835
    invoke-virtual {v1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->crop:Landroid/graphics/Rect;

    .line 838
    :try_start_3
    iget-object v3, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mIImageProcessor:Landroid/hardware/camera2/extension/IImageProcessorImpl;

    iget-object v4, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mPhysicalCameraId:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v5}, Landroid/hardware/camera2/extension/IImageProcessorImpl;->onNextImageAvailable(Landroid/hardware/camera2/extension/OutputConfigId;Landroid/hardware/camera2/extension/ParcelImage;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 844
    nop

    :goto_1
    iget-object v0, v2, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 845
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 846
    goto :goto_2

    .line 844
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 840
    :catch_1
    move-exception v3

    .line 841
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to propagate image buffer on output surface id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/hardware/camera2/impl/CameraAdvancedExtensionSessionImpl$ImageReaderHandler;->mOutputConfigId:Landroid/hardware/camera2/extension/OutputConfigId;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " extension service does not respond!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 844
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 847
    :goto_2
    return-void

    .line 844
    :goto_3
    iget-object v3, v2, Landroid/hardware/camera2/extension/ParcelImage;->buffer:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v3}, Landroid/hardware/HardwareBuffer;->close()V

    .line 845
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 846
    throw v0

    .line 812
    .end local v2    # "parcelImage":Landroid/hardware/camera2/extension/ParcelImage;
    :catch_2
    move-exception v2

    .line 813
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Failed to detach image"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 815
    return-void

    .line 801
    .end local v1    # "img":Landroid/media/Image;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 802
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Failed to acquire image, too many images pending!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    return-void
.end method
