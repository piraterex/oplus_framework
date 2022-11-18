.class Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyMintDevice.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintDevice$Stub;
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

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mCachedVersion:I

    .line 344
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 341
    iput-object p1, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 342
    return-void
.end method


# virtual methods
.method public blacklist addRngEntropy([B)V
    .locals 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 380
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 382
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 383
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    nop

    .line 392
    return-void

    .line 384
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method addRngEntropy is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "data":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "data":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 347
    iget-object v0, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist begin(I[B[Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/HardwareAuthToken;)Landroid/hardware/security/keymint/BeginResult;
    .locals 5
    .param p1, "purpose"    # I
    .param p2, "keyBlob"    # [B
    .param p3, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p4, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 556
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 557
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 558
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 559
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 562
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 563
    sget-object v3, Landroid/hardware/security/keymint/BeginResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/BeginResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 566
    .local v2, "_result":Landroid/hardware/security/keymint/BeginResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    nop

    .line 569
    return-object v2

    .line 560
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method begin is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "purpose":I
    .end local p2    # "keyBlob":[B
    .end local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p4    # "authToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 566
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "purpose":I
    .restart local p2    # "keyBlob":[B
    .restart local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p4    # "authToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    throw v2
.end method

.method public blacklist convertStorageKeyToEphemeral([B)[B
    .locals 5
    .param p1, "storageKeyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 616
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 618
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 619
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 623
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 626
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 628
    nop

    .line 629
    return-object v2

    .line 620
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method convertStorageKeyToEphemeral is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "storageKeyBlob":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 626
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "storageKeyBlob":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 627
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 628
    throw v2
.end method

.method public blacklist deleteAllKeys()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 517
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 518
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 526
    nop

    .line 527
    return-void

    .line 519
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method deleteAllKeys is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 526
    throw v2
.end method

.method public blacklist deleteKey([B)V
    .locals 5
    .param p1, "keyBlob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 499
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 500
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    nop

    .line 509
    return-void

    .line 501
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method deleteKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "keyBlob":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "keyBlob":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    throw v2
.end method

.method public blacklist destroyAttestationIds()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 530
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 531
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 534
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 536
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-void

    .line 537
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method destroyAttestationIds is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v2
.end method

.method public blacklist deviceLocked(ZLandroid/hardware/security/secureclock/TimeStampToken;)V
    .locals 5
    .param p1, "passwordOnly"    # Z
    .param p2, "timestampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 574
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 577
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 579
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 580
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 581
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 589
    nop

    .line 590
    return-void

    .line 582
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method deviceLocked is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "passwordOnly":Z
    .end local p2    # "timestampToken":Landroid/hardware/security/secureclock/TimeStampToken;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "passwordOnly":Z
    .restart local p2    # "timestampToken":Landroid/hardware/security/secureclock/TimeStampToken;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 588
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 589
    throw v2
.end method

.method public blacklist earlyBootEnded()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 593
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 594
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 597
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 599
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 602
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 605
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    nop

    .line 608
    return-void

    .line 600
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method earlyBootEnded is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    throw v2
.end method

.method public blacklist generateKey([Landroid/hardware/security/keymint/KeyParameter;Landroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;
    .locals 5
    .param p1, "keyParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p2, "attestationKey"    # Landroid/hardware/security/keymint/AttestationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 400
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 401
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 402
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 403
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 404
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 408
    sget-object v3, Landroid/hardware/security/keymint/KeyCreationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/KeyCreationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 411
    .local v2, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    nop

    .line 414
    return-object v2

    .line 405
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method generateKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "keyParams":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p2    # "attestationKey":Landroid/hardware/security/keymint/AttestationKey;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 411
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "keyParams":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p2    # "attestationKey":Landroid/hardware/security/keymint/AttestationKey;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    throw v2
.end method

.method public blacklist getHardwareInfo()Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 357
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 360
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 362
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 365
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 366
    sget-object v3, Landroid/hardware/security/keymint/KeyMintHardwareInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 369
    .local v2, "_result":Landroid/hardware/security/keymint/KeyMintHardwareInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    nop

    .line 372
    return-object v2

    .line 363
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getHardwareInfo is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 351
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 736
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 738
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 740
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 742
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 743
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 745
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 747
    goto :goto_0

    .line 745
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 747
    throw v2

    .line 749
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 735
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

    .line 719
    iget v0, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 721
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 723
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 724
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 725
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    goto :goto_0

    .line 728
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    throw v2

    .line 732
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getKeyCharacteristics([B[B[B)[Landroid/hardware/security/keymint/KeyCharacteristics;
    .locals 5
    .param p1, "keyBlob"    # [B
    .param p2, "appId"    # [B
    .param p3, "appData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 638
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 640
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 641
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 642
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 643
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 646
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 647
    sget-object v3, Landroid/hardware/security/keymint/KeyCharacteristics;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/KeyCharacteristics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 650
    .local v2, "_result":[Landroid/hardware/security/keymint/KeyCharacteristics;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 652
    nop

    .line 653
    return-object v2

    .line 644
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getKeyCharacteristics is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "keyBlob":[B
    .end local p2    # "appId":[B
    .end local p3    # "appData":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "keyBlob":[B
    .restart local p2    # "appId":[B
    .restart local p3    # "appData":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 652
    throw v2
.end method

.method public blacklist getRootOfTrust([B)[B
    .locals 5
    .param p1, "challenge"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 683
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0x10

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, p1, v4, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 685
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 686
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 689
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 693
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    nop

    .line 696
    return-object v2

    .line 687
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getRootOfTrust is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "challenge":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 693
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "challenge":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 695
    throw v2
.end method

.method public blacklist getRootOfTrustChallenge()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 658
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 662
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 664
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 667
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 668
    const-class v3, [B

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/16 v6, 0x10

    aput v6, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 671
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    nop

    .line 674
    return-object v2

    .line 665
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method getRootOfTrustChallenge is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 671
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 673
    throw v2
.end method

.method public blacklist importKey([Landroid/hardware/security/keymint/KeyParameter;I[BLandroid/hardware/security/keymint/AttestationKey;)Landroid/hardware/security/keymint/KeyCreationResult;
    .locals 5
    .param p1, "keyParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p2, "keyFormat"    # I
    .param p3, "keyData"    # [B
    .param p4, "attestationKey"    # Landroid/hardware/security/keymint/AttestationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 425
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 426
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 427
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 428
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 429
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 432
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 433
    sget-object v3, Landroid/hardware/security/keymint/KeyCreationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/KeyCreationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 436
    .local v2, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    nop

    .line 439
    return-object v2

    .line 430
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "keyParams":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p2    # "keyFormat":I
    .end local p3    # "keyData":[B
    .end local p4    # "attestationKey":Landroid/hardware/security/keymint/AttestationKey;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "keyParams":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p2    # "keyFormat":I
    .restart local p3    # "keyData":[B
    .restart local p4    # "attestationKey":Landroid/hardware/security/keymint/AttestationKey;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    throw v2
.end method

.method public blacklist importWrappedKey([B[B[B[Landroid/hardware/security/keymint/KeyParameter;JJ)Landroid/hardware/security/keymint/KeyCreationResult;
    .locals 5
    .param p1, "wrappedKeyData"    # [B
    .param p2, "wrappingKeyBlob"    # [B
    .param p3, "maskingKey"    # [B
    .param p4, "unwrappingParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p5, "passwordSid"    # J
    .param p7, "biometricSid"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 450
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 451
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 452
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 453
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 454
    invoke-virtual {v0, p7, p8}, Landroid/os/Parcel;->writeLong(J)V

    .line 455
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 456
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 460
    sget-object v3, Landroid/hardware/security/keymint/KeyCreationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/security/keymint/KeyCreationResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 463
    .local v2, "_result":Landroid/hardware/security/keymint/KeyCreationResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    nop

    .line 466
    return-object v2

    .line 457
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importWrappedKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "wrappedKeyData":[B
    .end local p2    # "wrappingKeyBlob":[B
    .end local p3    # "maskingKey":[B
    .end local p4    # "unwrappingParams":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p5    # "passwordSid":J
    .end local p7    # "biometricSid":J
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 463
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "wrappedKeyData":[B
    .restart local p2    # "wrappingKeyBlob":[B
    .restart local p3    # "maskingKey":[B
    .restart local p4    # "unwrappingParams":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p5    # "passwordSid":J
    .restart local p7    # "biometricSid":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    throw v2
.end method

.method public blacklist sendRootOfTrust([B)V
    .locals 5
    .param p1, "rootOfTrust"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 701
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 704
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 706
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 707
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 710
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 713
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 715
    nop

    .line 716
    return-void

    .line 708
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method sendRootOfTrust is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "rootOfTrust":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "rootOfTrust":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 715
    throw v2
.end method

.method public blacklist upgradeKey([B[Landroid/hardware/security/keymint/KeyParameter;)[B
    .locals 5
    .param p1, "keyBlobToUpgrade"    # [B
    .param p2, "upgradeParams"    # [Landroid/hardware/security/keymint/KeyParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 477
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 478
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 479
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 482
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 486
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    nop

    .line 489
    return-object v2

    .line 480
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method upgradeKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .end local p1    # "keyBlobToUpgrade":[B
    .end local p2    # "upgradeParams":[Landroid/hardware/security/keymint/KeyParameter;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintDevice$Stub$Proxy;
    .restart local p1    # "keyBlobToUpgrade":[B
    .restart local p2    # "upgradeParams":[Landroid/hardware/security/keymint/KeyParameter;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    throw v2
.end method
