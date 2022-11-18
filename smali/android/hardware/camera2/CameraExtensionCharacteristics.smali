.class public final Landroid/hardware/camera2/CameraExtensionCharacteristics;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;,
        Landroid/hardware/camera2/CameraExtensionCharacteristics$Extension;
    }
.end annotation


# static fields
.field public static final whitelist EXTENSION_AUTOMATIC:I = 0x0

.field public static final whitelist EXTENSION_BEAUTY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTENSION_BOKEH:I = 0x2

.field public static final whitelist EXTENSION_FACE_RETOUCH:I = 0x1

.field public static final whitelist EXTENSION_HDR:I = 0x3

.field private static final blacklist EXTENSION_LIST:[I

.field public static final whitelist EXTENSION_NIGHT:I = 0x4

.field public static final blacklist NON_PROCESSING_INPUT_FORMAT:I = 0x22

.field public static final blacklist PROCESSING_INPUT_FORMAT:I = 0x23

.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionCharacteristics"


# instance fields
.field private final blacklist mCameraId:Ljava/lang/String;

.field private final blacklist mChars:Landroid/hardware/camera2/CameraCharacteristics;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 155
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
    .end array-data
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 173
    iput-object p3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    .line 174
    return-void
.end method

.method public static blacklist areAdvancedExtensionsSupported()Z
    .locals 1

    .line 461
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->areAdvancedExtensionsSupported()Z

    move-result v0

    return v0
.end method

.method private static blacklist generateJpegSupportedSizes(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .locals 4
    .param p1, "streamMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 209
    .local p0, "sizesList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v1

    .line 210
    .local v1, "extensionSizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/HashSet;

    .line 211
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 211
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v0, v2

    .line 212
    .local v0, "supportedSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    new-instance v2, Ljava/util/HashSet;

    const/16 v3, 0x100

    invoke-virtual {p1, v3}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 214
    .local v2, "supportedJpegSizes":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/util/Size;>;"
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->retainAll(Ljava/util/Collection;)Z

    .line 216
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method private static blacklist generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .locals 3
    .param p1, "format"    # Ljava/lang/Integer;
    .param p2, "streamMap"    # Landroid/hardware/camera2/params/StreamConfigurationMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Ljava/lang/Integer;",
            "Landroid/hardware/camera2/params/StreamConfigurationMap;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 199
    .local p0, "sizesList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    invoke-static {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;

    move-result-object v0

    .line 200
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v1

    .line 201
    .local v1, "supportedSizes":[Landroid/util/Size;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 202
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 204
    :cond_0
    return-object v0
.end method

.method private static blacklist getSupportedSizes(Ljava/util/List;Ljava/lang/Integer;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "format"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/extension/SizeList;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 178
    .local p0, "sizesList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/extension/SizeList;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Size;>;"
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 180
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/extension/SizeList;

    .line 181
    .local v2, "entry":Landroid/hardware/camera2/extension/SizeList;
    iget v3, v2, Landroid/hardware/camera2/extension/SizeList;->format:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 182
    iget-object v1, v2, Landroid/hardware/camera2/extension/SizeList;->sizes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/extension/Size;

    .line 183
    .local v3, "sz":Landroid/hardware/camera2/extension/Size;
    new-instance v4, Landroid/util/Size;

    iget v5, v3, Landroid/hardware/camera2/extension/Size;->width:I

    iget v6, v3, Landroid/hardware/camera2/extension/Size;->height:I

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v3    # "sz":Landroid/hardware/camera2/extension/Size;
    goto :goto_1

    .line 185
    :cond_0
    return-object v0

    .line 187
    .end local v2    # "entry":Landroid/hardware/camera2/extension/SizeList;
    :cond_1
    goto :goto_0

    .line 190
    :cond_2
    return-object v0
.end method

.method public static blacklist initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .locals 4
    .param p0, "extensionType"    # I

    .line 503
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    .local v0, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    nop

    .line 509
    if-eqz v0, :cond_0

    .line 513
    return-object v0

    .line 510
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 505
    .end local v0    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist initializeExtension(I)Landroid/util/Pair;
    .locals 5
    .param p0, "extensionType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/hardware/camera2/extension/IPreviewExtenderImpl;",
            "Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;",
            ">;"
        }
    .end annotation

    .line 525
    :try_start_0
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v0

    .line 527
    .local v0, "previewExtender":Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    .local v1, "imageExtender":Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    nop

    .line 531
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 535
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 532
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown extension: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    .end local v0    # "previewExtender":Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .end local v1    # "imageExtender":Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to initialize extension: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V
    .locals 1
    .param p0, "cb"    # Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    .line 448
    return-void
.end method

.method public static blacklist isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z
    .locals 6
    .param p0, "cameraId"    # Ljava/lang/String;
    .param p1, "extensionType"    # I
    .param p2, "chars"    # Landroid/hardware/camera2/CameraCharacteristics;

    .line 469
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v0

    const-string v1, "Failed to query extension availability! Extension service does not respond!"

    const-string v2, "CameraExtensionCharacteristics"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 471
    :try_start_0
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v0

    .line 472
    .local v0, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    invoke-interface {v0, p0}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->isExtensionAvailable(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 473
    .end local v0    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    return v3

    .line 481
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 484
    .local v0, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    nop

    .line 487
    :try_start_2
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 488
    invoke-virtual {p2}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    invoke-interface {v4, p0, v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->isExtensionAvailable(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)Z

    move-result v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 487
    :goto_0
    return v3

    .line 489
    :catch_1
    move-exception v4

    .line 490
    .local v4, "e":Landroid/os/RemoteException;
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return v3

    .line 482
    .end local v0    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    .line 483
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return v3
.end method

.method private static blacklist isOutputSupportedFor(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 539
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "klass must not be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 541
    const-class v0, Landroid/graphics/SurfaceTexture;

    if-ne p0, v0, :cond_0

    .line 542
    const/4 v0, 0x1

    return v0

    .line 545
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist registerClient(Landroid/content/Context;)J
    .locals 2
    .param p0, "ctx"    # Landroid/content/Context;

    .line 433
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static blacklist releaseSession()V
    .locals 1

    .line 454
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->releaseSession()V

    .line 455
    return-void
.end method

.method public static blacklist unregisterClient(J)V
    .locals 1
    .param p0, "clientId"    # J

    .line 440
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->unregisterClient(J)V

    .line 441
    return-void
.end method


# virtual methods
.method public whitelist getAvailableCaptureRequestKeys(I)Ljava/util/Set;
    .locals 10
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureRequest$Key;",
            ">;"
        }
    .end annotation

    .line 816
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    .line 817
    .local v0, "clientId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    .line 821
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 824
    .local v2, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 828
    const/4 v3, 0x0

    .line 829
    .local v3, "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 830
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    .line 831
    .local v4, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    .line 832
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCaptureRequestKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    .line 833
    .end local v4    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    goto :goto_0

    .line 834
    :cond_0
    nop

    .line 835
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    .line 836
    .local v4, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 837
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 838
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getAvailableCaptureRequestKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    .line 839
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit()V

    .line 842
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :goto_0
    if-eqz v3, :cond_2

    .line 843
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_REQUEST_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 845
    .local v4, "requestKeys":[I
    if-eqz v4, :cond_1

    .line 850
    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 853
    .local v5, "requestChars":Landroid/hardware/camera2/CameraCharacteristics;
    const-class v6, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 854
    .local v6, "crKey":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    .line 856
    .local v7, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    const-class v8, Landroid/hardware/camera2/CaptureRequest;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v7, v4, v9}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 846
    .end local v5    # "requestChars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "crKey":Ljava/lang/Object;
    .end local v7    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureRequest$Key<*>;>;"
    :cond_1
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "android.request.availableRequestKeys must be non-null in the characteristics"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "clientId":J
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v5

    .line 861
    .end local v4    # "requestKeys":[I
    .restart local v0    # "clientId":J
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :cond_2
    :goto_1
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 862
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 864
    :cond_3
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 865
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    .end local v3    # "captureRequestMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    :cond_4
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 871
    nop

    .line 873
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 825
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    .restart local v0    # "clientId":J
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 867
    :catch_0
    move-exception v3

    .line 868
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to query the available capture request keys!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 870
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "clientId":J
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :goto_2
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 871
    throw v3

    .line 818
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureRequest$Key;>;"
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getAvailableCaptureResultKeys(I)Ljava/util/Set;
    .locals 10
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Landroid/hardware/camera2/CaptureResult$Key;",
            ">;"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    .line 896
    .local v0, "clientId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    .line 900
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 902
    .local v2, "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 906
    const/4 v3, 0x0

    .line 907
    .local v3, "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 908
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    .line 909
    .local v4, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    .line 910
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getAvailableCaptureResultKeys(Ljava/lang/String;)Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    .line 911
    .end local v4    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    goto :goto_0

    .line 912
    :cond_0
    nop

    .line 913
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    .line 914
    .local v4, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onInit(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 915
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 916
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getAvailableCaptureResultKeys()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v5

    move-object v3, v5

    .line 917
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->onDeInit()V

    .line 920
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :goto_0
    if-eqz v3, :cond_4

    .line 921
    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_AVAILABLE_RESULT_KEYS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/impl/CameraMetadataNative;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 923
    .local v4, "resultKeys":[I
    if-eqz v4, :cond_3

    .line 927
    new-instance v5, Landroid/hardware/camera2/CameraCharacteristics;

    invoke-direct {v5, v3}, Landroid/hardware/camera2/CameraCharacteristics;-><init>(Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 928
    .local v5, "resultChars":Landroid/hardware/camera2/CameraCharacteristics;
    const-class v6, Landroid/hardware/camera2/CaptureResult$Key;

    .line 929
    .local v6, "crKey":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/lang/Class;

    .line 931
    .local v7, "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    const-class v8, Landroid/hardware/camera2/CaptureResult;

    const/4 v9, 0x1

    invoke-virtual {v5, v8, v7, v4, v9}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableKeyList(Ljava/lang/Class;Ljava/lang/Class;[IZ)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 935
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 936
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_1
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 939
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 941
    :cond_2
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 942
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {v2, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 924
    .end local v5    # "resultChars":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v6    # "crKey":Ljava/lang/Object;
    .end local v7    # "crKeyTyped":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/hardware/camera2/CaptureResult$Key<*>;>;"
    :cond_3
    new-instance v5, Ljava/lang/AssertionError;

    const-string v6, "android.request.availableResultKeys must be non-null in the characteristics"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "clientId":J
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    .end local v3    # "captureResultMeta":Landroid/hardware/camera2/impl/CameraMetadataNative;
    .end local v4    # "resultKeys":[I
    .restart local v0    # "clientId":J
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :cond_4
    :goto_1
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 949
    nop

    .line 951
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3

    .line 903
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 948
    .restart local v0    # "clientId":J
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 945
    :catch_0
    move-exception v3

    .line 946
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed to query the available capture result keys!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 948
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "clientId":J
    .restart local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    :goto_2
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 949
    throw v3

    .line 897
    .end local v2    # "ret":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/hardware/camera2/CaptureResult$Key;>;"
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getEstimatedCaptureLatencyRangeMillis(ILandroid/util/Size;I)Landroid/util/Range;
    .locals 10
    .param p1, "extension"    # I
    .param p2, "captureOutputSize"    # Landroid/util/Size;
    .param p3, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/Size;",
            "I)",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 737
    sparse-switch p3, :sswitch_data_0

    .line 743
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :sswitch_0
    nop

    .line 746
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    .line 747
    .local v0, "clientId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    .line 752
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v3, p1, v4}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 756
    new-instance v3, Landroid/hardware/camera2/extension/Size;

    invoke-direct {v3}, Landroid/hardware/camera2/extension/Size;-><init>()V

    .line 758
    .local v3, "sz":Landroid/hardware/camera2/extension/Size;
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/Size;->width:I

    .line 759
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/hardware/camera2/extension/Size;->height:I

    .line 760
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 761
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v4

    .line 762
    .local v4, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    .line 763
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v4, v5, v3, p3}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getEstimatedCaptureLatencyRange(Ljava/lang/String;Landroid/hardware/camera2/extension/Size;I)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    .line 765
    .local v5, "latencyRange":Landroid/hardware/camera2/extension/LatencyRange;
    if-eqz v5, :cond_0

    .line 766
    new-instance v6, Landroid/util/Range;

    iget-wide v7, v5, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 795
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 766
    return-object v6

    .line 768
    .end local v4    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .end local v5    # "latencyRange":Landroid/hardware/camera2/extension/LatencyRange;
    :cond_0
    goto :goto_0

    .line 769
    :cond_1
    nop

    .line 770
    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v4

    .line 771
    .local v4, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 772
    const/16 v5, 0x23

    if-ne p3, v5, :cond_2

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 773
    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v5, :cond_2

    .line 776
    nop

    .line 795
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 776
    return-object v2

    .line 778
    :cond_2
    const/16 v5, 0x100

    if-ne p3, v5, :cond_3

    :try_start_2
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 779
    invoke-interface {v5}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v5
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_3

    .line 783
    nop

    .line 795
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 783
    return-object v2

    .line 786
    :cond_3
    :try_start_3
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v5, v3}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getEstimatedCaptureLatencyRange(Landroid/hardware/camera2/extension/Size;)Landroid/hardware/camera2/extension/LatencyRange;

    move-result-object v5

    .line 787
    .restart local v5    # "latencyRange":Landroid/hardware/camera2/extension/LatencyRange;
    if-eqz v5, :cond_4

    .line 788
    new-instance v6, Landroid/util/Range;

    iget-wide v7, v5, Landroid/hardware/camera2/extension/LatencyRange;->min:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Landroid/hardware/camera2/extension/LatencyRange;->max:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 795
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 788
    return-object v6

    .line 795
    .end local v3    # "sz":Landroid/hardware/camera2/extension/Size;
    .end local v4    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    .end local v5    # "latencyRange":Landroid/hardware/camera2/extension/LatencyRange;
    :cond_4
    :goto_0
    goto :goto_1

    .line 753
    :cond_5
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported extension"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "captureOutputSize":Landroid/util/Size;
    .end local p3    # "format":I
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 795
    .restart local v0    # "clientId":J
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "captureOutputSize":Landroid/util/Size;
    .restart local p3    # "format":I
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 791
    :catch_0
    move-exception v3

    .line 792
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v4, "CameraExtensionCharacteristics"

    const-string v5, "Failed to query the extension capture latency! Extension service does not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 795
    nop

    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 796
    nop

    .line 798
    return-object v2

    .line 795
    :goto_2
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 796
    throw v2

    .line 748
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getExtensionSupportedSizes(II)Ljava/util/List;
    .locals 7
    .param p1, "extension"    # I
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 657
    :try_start_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    .local v0, "clientId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_6

    .line 663
    :try_start_1
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 667
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 669
    .local v2, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "Unsupported format: "

    if-eqz v3, :cond_0

    .line 670
    sparse-switch p2, :sswitch_data_0

    .line 675
    :try_start_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    .line 673
    :sswitch_0
    nop

    .line 677
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    .line 678
    .local v3, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    .line 679
    iget-object v4, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedCaptureOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 680
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 679
    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 710
    :try_start_3
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 679
    return-object v4

    .line 675
    .end local v3    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :goto_0
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v3

    .line 682
    .restart local v0    # "clientId":J
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :cond_0
    const/16 v3, 0x23

    if-ne p2, v3, :cond_2

    .line 683
    nop

    .line 684
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    .line 685
    .local v3, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 686
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    if-nez v4, :cond_1

    .line 689
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 710
    :try_start_5
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 689
    return-object v4

    .line 691
    :cond_1
    :try_start_6
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v4

    .line 692
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 691
    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 710
    :try_start_7
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 691
    return-object v4

    .line 693
    .end local v3    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_2
    const/16 v3, 0x100

    if-ne p2, v3, :cond_4

    .line 694
    nop

    .line 695
    :try_start_8
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    .line 696
    .restart local v3    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 697
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getCaptureProcessor()Landroid/hardware/camera2/extension/ICaptureProcessorImpl;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 700
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    .line 701
    invoke-interface {v4}, Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v4

    .line 700
    invoke-static {v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateJpegSupportedSizes(Ljava/util/List;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 710
    :try_start_9
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 700
    return-object v4

    .line 703
    :cond_3
    const/4 v4, 0x0

    :try_start_a
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 710
    :try_start_b
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_0

    .line 703
    return-object v4

    .line 706
    .end local v3    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_4
    :try_start_c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v3

    .line 664
    .end local v2    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .restart local v0    # "clientId":J
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 710
    .restart local v0    # "clientId":J
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :catchall_0
    move-exception v2

    :try_start_d
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 711
    nop

    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v2

    .line 659
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "format":I
    throw v2
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    .line 712
    .end local v0    # "clientId":J
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "format":I
    :catch_0
    move-exception v0

    .line 713
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CameraExtensionCharacteristics"

    const-string v2, "Failed to query the extension supported sizes! Extension service does not respond!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist getExtensionSupportedSizes(ILjava/lang/Class;)Ljava/util/List;
    .locals 8
    .param p1, "extension"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 594
    .local p2, "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isOutputSupportedFor(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 600
    :cond_0
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v0

    .line 601
    .local v0, "clientId":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_3

    .line 606
    :try_start_0
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2, p1, v3}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    iget-object v2, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v3, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 612
    .local v2, "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    invoke-static {}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->areAdvancedExtensionsSupported()Z

    move-result v3

    const/16 v4, 0x22

    if-eqz v3, :cond_1

    .line 613
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v3

    .line 614
    .local v3, "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    invoke-interface {v3, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->init(Ljava/lang/String;)V

    .line 615
    iget-object v5, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    .line 616
    invoke-interface {v3, v5}, Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;->getSupportedPreviewOutputResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 617
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 615
    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 615
    return-object v4

    .line 619
    .end local v3    # "extender":Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    :cond_1
    nop

    .line 620
    :try_start_1
    invoke-static {p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->initializeExtension(I)Landroid/util/Pair;

    move-result-object v3

    .line 621
    .local v3, "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-virtual {v7}, Landroid/hardware/camera2/CameraCharacteristics;->getNativeMetadata()Landroid/hardware/camera2/impl/CameraMetadataNative;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->init(Ljava/lang/String;Landroid/hardware/camera2/impl/CameraMetadataNative;)V

    .line 622
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    invoke-interface {v5}, Landroid/hardware/camera2/extension/IPreviewExtenderImpl;->getSupportedResolutions()Ljava/util/List;

    move-result-object v5

    .line 623
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 622
    invoke-static {v5, v4, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->generateSupportedSizes(Ljava/util/List;Ljava/lang/Integer;Landroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 630
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 622
    return-object v4

    .line 607
    .end local v2    # "streamMap":Landroid/hardware/camera2/params/StreamConfigurationMap;
    .end local v3    # "extenders":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/hardware/camera2/extension/IPreviewExtenderImpl;Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;>;"
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extension"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "clientId":J
    .end local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .end local p1    # "extension":I
    .end local p2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 630
    .restart local v0    # "clientId":J
    .restart local p0    # "this":Landroid/hardware/camera2/CameraExtensionCharacteristics;
    .restart local p1    # "extension":I
    .restart local p2    # "klass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 625
    :catch_0
    move-exception v2

    .line 626
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "CameraExtensionCharacteristics"

    const-string v4, "Failed to query the extension supported sizes! Extension service does not respond!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 630
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 628
    return-object v3

    .line 630
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 631
    throw v2

    .line 602
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Unsupported extensions"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getSupportedExtensions()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 554
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->registerClient(Landroid/content/Context;)J

    move-result-wide v1

    .line 556
    .local v1, "clientId":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 557
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 561
    :cond_0
    :try_start_0
    sget-object v3, Landroid/hardware/camera2/CameraExtensionCharacteristics;->EXTENSION_LIST:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v3, v5

    .line 562
    .local v6, "extensionType":I
    iget-object v7, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mCameraId:Ljava/lang/String;

    iget-object v8, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics;->mChars:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v7, v6, v8}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->isExtensionSupported(Ljava/lang/String;ILandroid/hardware/camera2/CameraCharacteristics;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 563
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    .end local v6    # "extensionType":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 567
    :cond_2
    invoke-static {v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 568
    nop

    .line 570
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 567
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/hardware/camera2/CameraExtensionCharacteristics;->unregisterClient(J)V

    .line 568
    throw v3
.end method
