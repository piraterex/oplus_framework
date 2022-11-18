.class final Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
.super Ljava/lang/Object;
.source "CameraExtensionCharacteristics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraExtensionCharacteristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CameraExtensionManagerGlobal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;
    }
.end annotation


# static fields
.field private static final blacklist GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

.field private static final blacklist PROXY_PACKAGE_NAME:Ljava/lang/String; = "com.android.cameraextensions"

.field private static final blacklist PROXY_SERVICE_NAME:Ljava/lang/String; = "com.android.cameraextensions.CameraExtensionsProxyService"

.field private static final blacklist TAG:Ljava/lang/String; = "CameraExtensionManagerGlobal"


# instance fields
.field private final blacklist PROXY_SERVICE_DELAY_MS:I

.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

.field private blacklist mSupportsAdvancedExtensions:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInitFuture(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxy(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    .locals 0

    iget-object p0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnection(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProxy(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;)V
    .locals 0

    iput-object p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupportsAdvancedExtensions(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mSupportsAdvancedExtensions:Z

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 230
    new-instance v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    invoke-direct {v0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;-><init>()V

    sput-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    .line 233
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->PROXY_SERVICE_DELAY_MS:I

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    .line 235
    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    .line 236
    iput-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    .line 237
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mSupportsAdvancedExtensions:Z

    .line 240
    return-void
.end method

.method private blacklist connectToProxyLocked(Landroid/content/Context;)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;

    .line 247
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_1

    .line 248
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 249
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.cameraextensions"

    const-string v2, "com.android.cameraextensions.CameraExtensionsProxyService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string/jumbo v1, "ro.vendor.camera.extensions.package"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "vendorProxyPackage":Ljava/lang/String;
    const-string/jumbo v2, "ro.vendor.camera.extensions.service"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "vendorProxyService":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, "CameraExtensionManagerGlobal"

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choosing the vendor camera extensions proxy package: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Choosing the vendor camera extensions proxy service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    :cond_0
    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    const/4 v5, 0x0

    invoke-direct {v3, v5}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture-IA;)V

    iput-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    .line 264
    new-instance v3, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;

    invoke-direct {v3, p0}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$1;-><init>(Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;)V

    iput-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    .line 283
    const v3, 0x40000049    # 2.0000174f

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0, v3, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 288
    :try_start_0
    iget-object v3, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mInitFuture:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, v7}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal$InitializerFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception v3

    .line 290
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    const-string v5, "Timed out while initializing proxy service!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "vendorProxyPackage":Ljava/lang/String;
    .end local v2    # "vendorProxyService":Ljava/lang/String;
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist get()Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;
    .locals 1

    .line 243
    sget-object v0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->GLOBAL_CAMERA_MANAGER:Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;

    return-object v0
.end method


# virtual methods
.method public blacklist areAdvancedExtensionsSupported()Z
    .locals 1

    .line 392
    iget-boolean v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mSupportsAdvancedExtensions:Z

    return v0
.end method

.method public blacklist initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;
    .locals 2
    .param p1, "extensionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 420
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_0

    .line 421
    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeAdvancedExtension(I)Landroid/hardware/camera2/extension/IAdvancedExtenderImpl;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 423
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;
    .locals 2
    .param p1, "extensionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_0

    .line 410
    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeImageExtension(I)Landroid/hardware/camera2/extension/IImageCaptureExtenderImpl;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 412
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;
    .locals 2
    .param p1, "extensionType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_0

    .line 399
    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializePreviewExtension(I)Landroid/hardware/camera2/extension/IPreviewExtenderImpl;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 401
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/camera2/extension/IInitializeSessionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;

    if-eqz v1, :cond_0

    .line 373
    invoke-interface {v1, p1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->initializeSession(Landroid/hardware/camera2/extension/IInitializeSessionCallback;)V

    .line 375
    :cond_0
    monitor-exit v0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerClient(Landroid/content/Context;)J
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .line 341
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->connectToProxyLocked(Landroid/content/Context;)V

    .line 343
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_0

    .line 345
    :try_start_1
    invoke-interface {v1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->registerClient()J

    move-result-wide v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-wide v1

    .line 346
    :catch_0
    move-exception v1

    .line 347
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CameraExtensionManagerGlobal"

    const-string v5, "Failed to initialize extension! Extension service does  not respond!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    monitor-exit v0

    return-wide v2

    .line 352
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    monitor-exit v0

    return-wide v2

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist releaseSession()V
    .locals 4

    .line 379
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 382
    :try_start_1
    invoke-interface {v1}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->releaseSession()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    goto :goto_0

    .line 383
    :catch_0
    move-exception v1

    .line 384
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CameraExtensionManagerGlobal"

    const-string v3, "Failed to release session! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public blacklist unregisterClient(J)V
    .locals 4
    .param p1, "clientId"    # J

    .line 358
    iget-object v0, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Landroid/hardware/camera2/CameraExtensionCharacteristics$CameraExtensionManagerGlobal;->mProxy:Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 361
    :try_start_1
    invoke-interface {v1, p1, p2}, Landroid/hardware/camera2/extension/ICameraExtensionsProxyService;->unregisterClient(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 365
    goto :goto_0

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CameraExtensionManagerGlobal"

    const-string v3, "Failed to de-initialize extension! Extension service does not respond!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    monitor-exit v0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
