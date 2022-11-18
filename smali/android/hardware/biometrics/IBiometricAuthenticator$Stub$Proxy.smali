.class Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBiometricAuthenticator.java"

# interfaces
.implements Landroid/hardware/biometrics/IBiometricAuthenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/IBiometricAuthenticator$Stub;
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

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 346
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 349
    iget-object v0, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 463
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 467
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 468
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    nop

    .line 474
    return-void

    .line 471
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    throw v2
.end method

.method public blacklist createTestSession(Landroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 5
    .param p1, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 366
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/ITestSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 370
    .local v2, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    nop

    .line 373
    return-object v2

    .line 370
    .end local v2    # "_result":Landroid/hardware/biometrics/ITestSession;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    throw v2
.end method

.method public blacklist dumpSensorServiceStateProto(Z)[B
    .locals 5
    .param p1, "clearSchedulerBuffer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 403
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 404
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 405
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 408
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    nop

    .line 411
    return-object v2

    .line 408
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    throw v2
.end method

.method public blacklist getAuthenticatorId(I)J
    .locals 5
    .param p1, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 559
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 560
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 561
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 564
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 566
    nop

    .line 567
    return-wide v2

    .line 564
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 566
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 353
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    return-object v0
.end method

.method public blacklist getLockoutModeForUser(I)I
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 524
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 525
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 528
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    nop

    .line 531
    return v2

    .line 528
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    throw v2
.end method

.method public blacklist getSensorProperties(Ljava/lang/String;)Landroid/hardware/biometrics/SensorPropertiesInternal;
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 384
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 385
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 386
    sget-object v3, Landroid/hardware/biometrics/SensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/SensorPropertiesInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 389
    .local v2, "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    nop

    .line 392
    return-object v2

    .line 389
    .end local v2    # "_result":Landroid/hardware/biometrics/SensorPropertiesInternal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    throw v2
.end method

.method public blacklist hasEnrolledTemplates(ILjava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 505
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 506
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 509
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    nop

    .line 512
    return v2

    .line 509
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 511
    throw v2
.end method

.method public blacklist invalidateAuthenticatorId(ILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 5
    .param p1, "userId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 542
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 543
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    nop

    .line 549
    return-void

    .line 546
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    throw v2
.end method

.method public blacklist isHardwareDetected(Ljava/lang/String;)Z
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 479
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 482
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 485
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 489
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    nop

    .line 492
    return v2

    .line 489
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    throw v2
.end method

.method public blacklist prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .locals 16
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "operationId"    # J
    .param p5, "userId"    # I
    .param p6, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "requestId"    # J
    .param p10, "cookie"    # I
    .param p11, "allowBackgroundAuthentication"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 421
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 423
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 425
    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 426
    move-wide/from16 v5, p3

    :try_start_2
    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 427
    move/from16 v7, p5

    :try_start_3
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 428
    move-object/from16 v8, p6

    :try_start_4
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 429
    move-object/from16 v9, p7

    :try_start_5
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 430
    move-wide/from16 v10, p8

    :try_start_6
    invoke-virtual {v1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 431
    move/from16 v12, p10

    :try_start_7
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 432
    move/from16 v13, p11

    :try_start_8
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 433
    move-object/from16 v14, p0

    :try_start_9
    iget-object v0, v14, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x4

    const/4 v3, 0x0

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 434
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 437
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    nop

    .line 440
    return-void

    .line 437
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    :catchall_8
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    :catchall_9
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_0
    move-wide/from16 v5, p3

    :goto_1
    move/from16 v7, p5

    :goto_2
    move-object/from16 v8, p6

    :goto_3
    move-object/from16 v9, p7

    :goto_4
    move-wide/from16 v10, p8

    :goto_5
    move/from16 v12, p10

    :goto_6
    move/from16 v13, p11

    :goto_7
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    throw v0
.end method

.method public blacklist resetLockout(Landroid/os/IBinder;Ljava/lang/String;I[B)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "hardwareAuthToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 573
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 577
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 580
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 581
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    nop

    .line 587
    return-void

    .line 584
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    throw v2
.end method

.method public blacklist startPreparedClient(I)V
    .locals 5
    .param p1, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.biometrics.IBiometricAuthenticator"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-object v2, p0, Landroid/hardware/biometrics/IBiometricAuthenticator$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 450
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    nop

    .line 456
    return-void

    .line 453
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 454
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 455
    throw v2
.end method
