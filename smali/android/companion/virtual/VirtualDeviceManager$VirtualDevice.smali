.class public Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;
.super Ljava/lang/Object;
.source "VirtualDeviceManager.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/VirtualDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualDevice"
.end annotation


# instance fields
.field private final blacklist mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

.field private final blacklist mActivityListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;",
            "Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/companion/virtual/IVirtualDeviceManager;

.field private blacklist mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

.field private final blacklist mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityListeners(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V
    .locals 7
    .param p1, "service"    # Landroid/companion/virtual/IVirtualDeviceManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "associationId"    # I
    .param p4, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListeners:Landroid/util/ArrayMap;

    .line 159
    new-instance v6, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;

    invoke-direct {v6, p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$1;-><init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;)V

    iput-object v6, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListenerBinder:Landroid/companion/virtual/IVirtualDeviceActivityListener;

    .line 195
    iput-object p1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    .line 196
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mContext:Landroid/content/Context;

    .line 197
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    .line 199
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 197
    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/companion/virtual/IVirtualDeviceManager;->createVirtualDevice(Landroid/os/IBinder;Ljava/lang/String;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    .line 203
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;-><init>(Landroid/companion/virtual/IVirtualDeviceManager;Landroid/content/Context;ILandroid/companion/virtual/VirtualDeviceParams;)V

    return-void
.end method

.method private blacklist getVirtualDisplayFlags(I)I
    .locals 1
    .param p1, "flags"    # I

    .line 450
    or-int/lit16 v0, p1, 0x9c9

    return v0
.end method

.method private blacklist getVirtualDisplayName()Ljava/lang/String;
    .locals 2

    .line 459
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VirtualDevice_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v1}, Landroid/companion/virtual/IVirtualDevice;->getAssociationId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method public whitelist addActivityListener(Ljava/util/concurrent/Executor;Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 475
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListeners:Landroid/util/ArrayMap;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;

    invoke-direct {v1, p2, p1}, Landroid/companion/virtual/VirtualDeviceManager$ActivityListenerDelegate;-><init>(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;Ljava/util/concurrent/Executor;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    return-void
.end method

.method public whitelist test-api close()V
    .locals 2

    .line 307
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0}, Landroid/companion/virtual/IVirtualDevice;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    nop

    .line 311
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Landroid/companion/virtual/audio/VirtualAudioDevice;->close()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    .line 315
    :cond_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createVirtualAudioDevice(Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)Landroid/companion/virtual/audio/VirtualAudioDevice;
    .locals 7
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;

    .line 420
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    if-nez v0, :cond_0

    .line 421
    new-instance v0, Landroid/companion/virtual/audio/VirtualAudioDevice;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    move-object v1, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/companion/virtual/audio/VirtualAudioDevice;-><init>(Landroid/content/Context;Landroid/companion/virtual/IVirtualDevice;Landroid/hardware/display/VirtualDisplay;Ljava/util/concurrent/Executor;Landroid/companion/virtual/audio/VirtualAudioDevice$AudioConfigurationChangeCallback;)V

    iput-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    .line 424
    :cond_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualAudioDevice:Landroid/companion/virtual/audio/VirtualAudioDevice;

    return-object v0
.end method

.method public whitelist createVirtualDisplay(IIILandroid/view/Surface;ILjava/util/concurrent/Executor;Landroid/hardware/display/VirtualDisplay$Callback;)Landroid/hardware/display/VirtualDisplay;
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "densityDpi"    # I
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "flags"    # I
    .param p6, "executor"    # Ljava/util/concurrent/Executor;
    .param p7, "callback"    # Landroid/hardware/display/VirtualDisplay$Callback;

    .line 281
    new-instance v0, Landroid/hardware/display/VirtualDisplayConfig$Builder;

    .line 282
    invoke-direct {p0}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->getVirtualDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Landroid/hardware/display/VirtualDisplayConfig$Builder;-><init>(Ljava/lang/String;III)V

    .line 283
    invoke-virtual {v0, p4}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setSurface(Landroid/view/Surface;)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v0

    .line 284
    invoke-direct {p0, p5}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->getVirtualDisplayFlags(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->setFlags(I)Landroid/hardware/display/VirtualDisplayConfig$Builder;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplayConfig$Builder;->build()Landroid/hardware/display/VirtualDisplayConfig;

    move-result-object v0

    .line 286
    .local v0, "config":Landroid/hardware/display/VirtualDisplayConfig;
    new-instance v1, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;

    invoke-direct {v1, p7, p6}, Landroid/hardware/display/DisplayManagerGlobal$VirtualDisplayCallback;-><init>(Landroid/hardware/display/VirtualDisplay$Callback;Ljava/util/concurrent/Executor;)V

    .line 290
    .local v1, "callbackWrapper":Landroid/hardware/display/IVirtualDisplayCallback;
    :try_start_0
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mService:Landroid/companion/virtual/IVirtualDeviceManager;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 290
    invoke-interface {v2, v0, v1, v3, v4}, Landroid/companion/virtual/IVirtualDeviceManager;->createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    .local v2, "displayId":I
    nop

    .line 295
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    .line 296
    .local v3, "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    iget-object v4, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v4, v1, v2}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplayWrapper(Landroid/hardware/display/VirtualDisplayConfig;Landroid/content/Context;Landroid/hardware/display/IVirtualDisplayCallback;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object v4

    return-object v4

    .line 292
    .end local v2    # "displayId":I
    .end local v3    # "displayManager":Landroid/hardware/display/DisplayManagerGlobal;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist createVirtualKeyboard(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualKeyboard;
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I

    .line 333
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualKeyboard:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/companion/virtual/IVirtualDevice;->createVirtualKeyboard(ILjava/lang/String;IILandroid/os/IBinder;)V

    .line 337
    new-instance v1, Landroid/hardware/input/VirtualKeyboard;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, v2, v0}, Landroid/hardware/input/VirtualKeyboard;-><init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 338
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createVirtualMouse(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualMouse;
    .locals 8
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I

    .line 359
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualMouse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 361
    .local v0, "token":Landroid/os/IBinder;
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    invoke-interface/range {v2 .. v7}, Landroid/companion/virtual/IVirtualDevice;->createVirtualMouse(ILjava/lang/String;IILandroid/os/IBinder;)V

    .line 363
    new-instance v1, Landroid/hardware/input/VirtualMouse;

    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v1, v2, v0}, Landroid/hardware/input/VirtualMouse;-><init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 364
    .end local v0    # "token":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist createVirtualTouchscreen(Landroid/hardware/display/VirtualDisplay;Ljava/lang/String;II)Landroid/hardware/input/VirtualTouchscreen;
    .locals 9
    .param p1, "display"    # Landroid/hardware/display/VirtualDisplay;
    .param p2, "inputDeviceName"    # Ljava/lang/String;
    .param p3, "vendorId"    # I
    .param p4, "productId"    # I

    .line 385
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android.hardware.input.VirtualTouchscreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Binder;-><init>(Ljava/lang/String;)V

    .line 387
    .local v0, "token":Landroid/os/IBinder;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 388
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 389
    iget-object v2, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v0

    move-object v8, v1

    invoke-interface/range {v2 .. v8}, Landroid/companion/virtual/IVirtualDevice;->createVirtualTouchscreen(ILjava/lang/String;IILandroid/os/IBinder;Landroid/graphics/Point;)V

    .line 391
    new-instance v2, Landroid/hardware/input/VirtualTouchscreen;

    iget-object v3, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-direct {v2, v3, v0}, Landroid/hardware/input/VirtualTouchscreen;-><init>(Landroid/companion/virtual/IVirtualDevice;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 392
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "size":Landroid/graphics/Point;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist launchPendingIntent(ILandroid/app/PendingIntent;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V
    .locals 4
    .param p1, "displayId"    # I
    .param p2, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "listener"    # Ljava/util/function/IntConsumer;

    .line 229
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    new-instance v1, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;

    new-instance v2, Landroid/os/Handler;

    .line 232
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2, p3, p4}, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice$2;-><init>(Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;Landroid/os/Handler;Ljava/util/concurrent/Executor;Ljava/util/function/IntConsumer;)V

    .line 229
    invoke-interface {v0, p1, p2, v1}, Landroid/companion/virtual/IVirtualDevice;->launchPendingIntent(ILandroid/app/PendingIntent;Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 242
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist removeActivityListener(Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/companion/virtual/VirtualDeviceManager$ActivityListener;

    .line 486
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mActivityListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method public whitelist setShowPointerIcon(Z)V
    .locals 2
    .param p1, "showPointerIcon"    # Z

    .line 437
    :try_start_0
    iget-object v0, p0, Landroid/companion/virtual/VirtualDeviceManager$VirtualDevice;->mVirtualDevice:Landroid/companion/virtual/IVirtualDevice;

    invoke-interface {v0, p1}, Landroid/companion/virtual/IVirtualDevice;->setShowPointerIcon(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 440
    nop

    .line 441
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
