.class Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAdvertisingSetCallback.java"

# interfaces
.implements Landroid/bluetooth/le/IAdvertisingSetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/IAdvertisingSetCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 269
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 272
    iget-object v0, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 276
    const-string v0, "android.bluetooth.le.IAdvertisingSetCallback"

    return-object v0
.end method

.method public blacklist onAdvertisingDataSet(II)V
    .locals 5
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    nop

    .line 344
    return-void

    .line 342
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    throw v1
.end method

.method public blacklist onAdvertisingEnabled(IZI)V
    .locals 5
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    nop

    .line 331
    return-void

    .line 329
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    throw v1
.end method

.method public blacklist onAdvertisingParametersUpdated(III)V
    .locals 5
    .param p1, "advertiserId"    # I
    .param p2, "tx_power"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 362
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    nop

    .line 371
    return-void

    .line 369
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    throw v1
.end method

.method public blacklist onAdvertisingSetStarted(III)V
    .locals 4
    .param p1, "advertiserId"    # I
    .param p2, "tx_power"    # I
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 282
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    nop

    .line 291
    return-void

    .line 289
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw v1
.end method

.method public blacklist onAdvertisingSetStopped(I)V
    .locals 5
    .param p1, "advertiserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 310
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    nop

    .line 317
    return-void

    .line 315
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    throw v1
.end method

.method public blacklist onOwnAddressRead(IILjava/lang/String;)V
    .locals 5
    .param p1, "advertiserId"    # I
    .param p2, "addressType"    # I
    .param p3, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    nop

    .line 305
    return-void

    .line 303
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw v1
.end method

.method public blacklist onPeriodicAdvertisingDataSet(II)V
    .locals 5
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 387
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 389
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    nop

    .line 397
    return-void

    .line 395
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 396
    throw v1
.end method

.method public blacklist onPeriodicAdvertisingEnabled(IZI)V
    .locals 5
    .param p1, "advertiserId"    # I
    .param p2, "enable"    # Z
    .param p3, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 405
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    throw v1
.end method

.method public blacklist onPeriodicAdvertisingParametersUpdated(II)V
    .locals 5
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 376
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    nop

    .line 384
    return-void

    .line 382
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 383
    throw v1
.end method

.method public blacklist onScanResponseDataSet(II)V
    .locals 5
    .param p1, "advertiserId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.bluetooth.le.IAdvertisingSetCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v1, p0, Landroid/bluetooth/le/IAdvertisingSetCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    nop

    .line 357
    return-void

    .line 355
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 356
    throw v1
.end method
