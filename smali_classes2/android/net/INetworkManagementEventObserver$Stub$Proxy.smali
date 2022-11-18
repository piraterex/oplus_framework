.class Landroid/net/INetworkManagementEventObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkManagementEventObserver.java"

# interfaces
.implements Landroid/net/INetworkManagementEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkManagementEventObserver$Stub;
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

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    iput-object p1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 338
    return-void
.end method


# virtual methods
.method public greylist-max-o addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 449
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 451
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 452
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    nop

    .line 457
    return-void

    .line 455
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    throw v1
.end method

.method public greylist-max-o addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 433
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    nop

    .line 438
    return-void

    .line 436
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 341
    iget-object v0, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 345
    const-string v0, "android.net.INetworkManagementEventObserver"

    return-object v0
.end method

.method public greylist-max-o interfaceAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    nop

    .line 402
    return-void

    .line 400
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v1
.end method

.method public blacklist interfaceClassDataActivityChanged(IZJI)V
    .locals 5
    .param p1, "transportType"    # I
    .param p2, "active"    # Z
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 492
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 495
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 496
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    nop

    .line 502
    return-void

    .line 500
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw v1
.end method

.method public greylist-max-o interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "servers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 514
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 516
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 517
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 522
    nop

    .line 523
    return-void

    .line 521
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 522
    throw v1
.end method

.method public greylist-max-o interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 377
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 380
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    nop

    .line 385
    return-void

    .line 383
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    throw v1
.end method

.method public greylist-max-o interfaceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 410
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 412
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 417
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    nop

    .line 419
    return-void

    .line 417
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    throw v1
.end method

.method public greylist-max-o interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 357
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 360
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v1
.end method

.method public greylist-max-o limitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 476
    nop

    .line 477
    return-void

    .line 475
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 476
    throw v1
.end method

.method public greylist-max-o routeRemoved(Landroid/net/RouteInfo;)V
    .locals 5
    .param p1, "route"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 542
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 544
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    nop

    .line 549
    return-void

    .line 547
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    throw v1
.end method

.method public greylist-max-o routeUpdated(Landroid/net/RouteInfo;)V
    .locals 5
    .param p1, "route"    # Landroid/net/RouteInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkManagementEventObserver"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 531
    iget-object v1, p0, Landroid/net/INetworkManagementEventObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    nop

    .line 536
    return-void

    .line 534
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    throw v1
.end method
