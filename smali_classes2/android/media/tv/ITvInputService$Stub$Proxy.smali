.class Landroid/media/tv/ITvInputService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInputService.java"

# interfaces
.implements Landroid/media/tv/ITvInputService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 288
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 291
    iget-object v0, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createRecordingSession(Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p2, "inputId"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 342
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    nop

    .line 349
    return-void

    .line 347
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    throw v1
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Landroid/media/tv/ITvInputSessionCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Landroid/media/tv/ITvInputSessionCallback;
    .param p3, "inputId"    # Ljava/lang/String;
    .param p4, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 326
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 327
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 328
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    nop

    .line 335
    return-void

    .line 333
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 334
    throw v1
.end method

.method public blacklist getAvailableExtensionInterfaceNames()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 353
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 356
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 358
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 359
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 362
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    nop

    .line 365
    return-object v2

    .line 362
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v2
.end method

.method public blacklist getExtensionInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 373
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 376
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 380
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    nop

    .line 383
    return-object v2

    .line 380
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 381
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 382
    throw v2
.end method

.method public blacklist getExtensionInterfacePermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 388
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 391
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 394
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 398
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    nop

    .line 401
    return-object v2

    .line 398
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 295
    const-string v0, "android.media.tv.ITvInputService"

    return-object v0
.end method

.method public greylist-max-o notifyHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 5
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 408
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 410
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 414
    nop

    .line 415
    return-void

    .line 413
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 414
    throw v1
.end method

.method public greylist-max-o notifyHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)V
    .locals 5
    .param p1, "hardwareInfo"    # Landroid/media/tv/TvInputHardwareInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 420
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 421
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 422
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    nop

    .line 427
    return-void

    .line 425
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw v1
.end method

.method public greylist-max-o notifyHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 432
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 434
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    nop

    .line 439
    return-void

    .line 437
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    throw v1
.end method

.method public greylist-max-o notifyHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 444
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 446
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    nop

    .line 451
    return-void

    .line 449
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 450
    throw v1
.end method

.method public blacklist notifyHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V
    .locals 5
    .param p1, "deviceInfo"    # Landroid/hardware/hdmi/HdmiDeviceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 456
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 458
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    nop

    .line 463
    return-void

    .line 461
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    throw v1
.end method

.method public greylist-max-o registerCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/media/tv/ITvInputServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 303
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    nop

    .line 308
    return-void

    .line 306
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    throw v1
.end method

.method public greylist-max-o unregisterCallback(Landroid/media/tv/ITvInputServiceCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/media/tv/ITvInputServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 313
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 315
    iget-object v1, p0, Landroid/media/tv/ITvInputService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    nop

    .line 320
    return-void

    .line 318
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    throw v1
.end method
