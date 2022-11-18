.class Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioMessaging.java"

# interfaces
.implements Landroid/hardware/radio/messaging/IRadioMessaging;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/IRadioMessaging$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 393
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mCachedVersion:I

    .line 394
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 391
    iput-object p1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 392
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V
    .locals 4
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "ackPdu"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 410
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 417
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    nop

    .line 419
    return-void

    .line 413
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acknowledgeIncomingGsmSmsWithPdu is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "success":Z
    .end local p3    # "ackPdu":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "success":Z
    .restart local p3    # "ackPdu":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 418
    throw v1
.end method

.method public blacklist acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsAck;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsAck"    # Landroid/hardware/radio/messaging/CdmaSmsAck;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 424
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 427
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 433
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    nop

    .line 435
    return-void

    .line 429
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acknowledgeLastIncomingCdmaSms is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "smsAck":Landroid/hardware/radio/messaging/CdmaSmsAck;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "smsAck":Landroid/hardware/radio/messaging/CdmaSmsAck;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 434
    throw v1
.end method

.method public blacklist acknowledgeLastIncomingGsmSms(IZI)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "success"    # Z
    .param p3, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 440
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 443
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 450
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    nop

    .line 452
    return-void

    .line 446
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acknowledgeLastIncomingGsmSms is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "success":Z
    .end local p3    # "cause":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "success":Z
    .restart local p3    # "cause":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 397
    iget-object v0, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist deleteSmsOnRuim(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 466
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    nop

    .line 468
    return-void

    .line 462
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method deleteSmsOnRuim is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "index":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "index":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    throw v1
.end method

.method public blacklist deleteSmsOnSim(II)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 473
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 482
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    nop

    .line 484
    return-void

    .line 478
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method deleteSmsOnSim is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "index":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 482
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "index":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw v1
.end method

.method public blacklist getCdmaBroadcastConfig(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 497
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 498
    nop

    .line 499
    return-void

    .line 493
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCdmaBroadcastConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 497
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 498
    throw v1
.end method

.method public blacklist getGsmBroadcastConfig(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 504
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 512
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    nop

    .line 514
    return-void

    .line 508
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getGsmBroadcastConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 401
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 787
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 789
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 791
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 792
    iget-object v2, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 793
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 794
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 796
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 798
    goto :goto_0

    .line 796
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 798
    throw v2

    .line 800
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 786
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 770
    iget v0, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 771
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 772
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 774
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 775
    iget-object v2, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 776
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 777
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    goto :goto_0

    .line 779
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    throw v2

    .line 783
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getSmscAddress(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 520
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 527
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    nop

    .line 529
    return-void

    .line 523
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSmscAddress is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 527
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw v1
.end method

.method public blacklist reportSmsMemoryStatus(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "available"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 537
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 543
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-void

    .line 539
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method reportSmsMemoryStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "available":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 543
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "available":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v1
.end method

.method public blacklist responseAcknowledgement()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 550
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 551
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 557
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    nop

    .line 559
    return-void

    .line 553
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method responseAcknowledgement is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 557
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 558
    throw v1
.end method

.method public blacklist sendCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "sms"    # Landroid/hardware/radio/messaging/CdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 564
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 567
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 573
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    nop

    .line 575
    return-void

    .line 569
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendCdmaSms is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "sms":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "sms":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 574
    throw v1
.end method

.method public blacklist sendCdmaSmsExpectMore(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "sms"    # Landroid/hardware/radio/messaging/CdmaSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 580
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 581
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 582
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 583
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 589
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    nop

    .line 591
    return-void

    .line 585
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendCdmaSmsExpectMore is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "sms":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "sms":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    throw v1
.end method

.method public blacklist sendImsSms(ILandroid/hardware/radio/messaging/ImsSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/messaging/ImsSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 596
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 599
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 605
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    nop

    .line 607
    return-void

    .line 601
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendImsSms is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "message":Landroid/hardware/radio/messaging/ImsSmsMessage;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "message":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    throw v1
.end method

.method public blacklist sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/messaging/GsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 612
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 613
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 615
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 621
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    nop

    .line 623
    return-void

    .line 617
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendSms is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "message":Landroid/hardware/radio/messaging/GsmSmsMessage;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 621
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "message":Landroid/hardware/radio/messaging/GsmSmsMessage;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw v1
.end method

.method public blacklist sendSmsExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "message"    # Landroid/hardware/radio/messaging/GsmSmsMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 628
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 631
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 637
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 638
    nop

    .line 639
    return-void

    .line 633
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendSmsExpectMore is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "message":Landroid/hardware/radio/messaging/GsmSmsMessage;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "message":Landroid/hardware/radio/messaging/GsmSmsMessage;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 638
    throw v1
.end method

.method public blacklist setCdmaBroadcastActivation(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 644
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 646
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 647
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 648
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 653
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    nop

    .line 655
    return-void

    .line 649
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCdmaBroadcastActivation is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "activate":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "activate":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    throw v1
.end method

.method public blacklist setCdmaBroadcastConfig(I[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "configInfo"    # [Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 660
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 663
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 669
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    nop

    .line 671
    return-void

    .line 665
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCdmaBroadcastConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "configInfo":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 669
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "configInfo":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw v1
.end method

.method public blacklist setGsmBroadcastActivation(IZ)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "activate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 676
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 678
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 679
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 680
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 685
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    nop

    .line 687
    return-void

    .line 681
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setGsmBroadcastActivation is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "activate":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 685
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "activate":Z
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    throw v1
.end method

.method public blacklist setGsmBroadcastConfig(I[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "configInfo"    # [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 692
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 695
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 696
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 701
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    nop

    .line 703
    return-void

    .line 697
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setGsmBroadcastConfig is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "configInfo":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 701
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "configInfo":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 702
    throw v1
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/messaging/IRadioMessagingResponse;Landroid/hardware/radio/messaging/IRadioMessagingIndication;)V
    .locals 5
    .param p1, "radioMessagingResponse"    # Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    .param p2, "radioMessagingIndication"    # Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 706
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 708
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 710
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 711
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 717
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    nop

    .line 719
    return-void

    .line 713
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setResponseFunctions is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "radioMessagingResponse":Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    .end local p2    # "radioMessagingIndication":Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 717
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "radioMessagingResponse":Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    .restart local p2    # "radioMessagingIndication":Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    throw v1
.end method

.method public blacklist setSmscAddress(ILjava/lang/String;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 724
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 725
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 727
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 733
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    nop

    .line 735
    return-void

    .line 729
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setSmscAddress is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "smsc":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 733
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "smsc":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    throw v1
.end method

.method public blacklist writeSmsToRuim(ILandroid/hardware/radio/messaging/CdmaSmsWriteArgs;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "cdmaSms"    # Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 740
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 742
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 743
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 749
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    nop

    .line 751
    return-void

    .line 745
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method writeSmsToRuim is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "cdmaSms":Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 749
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "cdmaSms":Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    throw v1
.end method

.method public blacklist writeSmsToSim(ILandroid/hardware/radio/messaging/SmsWriteArgs;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "smsWriteArgs"    # Landroid/hardware/radio/messaging/SmsWriteArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 756
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 759
    iget-object v1, p0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 760
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 765
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    nop

    .line 767
    return-void

    .line 761
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method writeSmsToSim is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "smsWriteArgs":Landroid/hardware/radio/messaging/SmsWriteArgs;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "smsWriteArgs":Landroid/hardware/radio/messaging/SmsWriteArgs;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 766
    throw v1
.end method
