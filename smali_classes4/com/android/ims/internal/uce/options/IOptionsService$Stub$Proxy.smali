.class Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOptionsService.java"

# interfaces
.implements Lcom/android/ims/internal/uce/options/IOptionsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/options/IOptionsService$Stub;
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

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 337
    return-void
.end method


# virtual methods
.method public greylist-max-o addListener(ILcom/android/ims/internal/uce/options/IOptionsListener;Lcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 5
    .param p1, "optionsServiceHandle"    # I
    .param p2, "optionsListener"    # Lcom/android/ims/internal/uce/options/IOptionsListener;
    .param p3, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 389
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 390
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 391
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 392
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;

    .line 393
    .local v3, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 394
    invoke-virtual {p3, v1}, Lcom/android/ims/internal/uce/common/UceLong;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 398
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    nop

    .line 401
    return-object v3

    .line 398
    .end local v3    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getContactCap(ILjava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 5
    .param p1, "optionsServiceHandle"    # I
    .param p2, "remoteURI"    # Ljava/lang/String;
    .param p3, "reqUserData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 499
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 500
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 503
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    iget-object v2, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 508
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 509
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 512
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    nop

    .line 515
    return-object v2

    .line 512
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    throw v2
.end method

.method public greylist-max-o getContactListCap(I[Ljava/lang/String;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 5
    .param p1, "optionsServiceHandle"    # I
    .param p2, "remoteURIList"    # [Ljava/lang/String;
    .param p3, "reqUserData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 530
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 533
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 534
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object v2, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 538
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 539
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 542
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-object v2

    .line 542
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 344
    const-string v0, "com.android.ims.internal.uce.options.IOptionsService"

    return-object v0
.end method

.method public greylist-max-o getMyInfo(II)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 5
    .param p1, "optionsServiceHandle"    # I
    .param p2, "reqUserdata"    # I
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    iget-object v2, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 478
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 479
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 482
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    nop

    .line 485
    return-object v2

    .line 482
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    throw v2
.end method

.method public greylist-max-o getVersion(I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 5
    .param p1, "optionsServiceHandle"    # I
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-object v2, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 362
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 363
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 366
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    nop

    .line 369
    return-object v2

    .line 366
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    throw v2
.end method

.method public greylist-max-o removeListener(ILcom/android/ims/internal/uce/common/UceLong;)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 5
    .param p1, "optionsServiceHandle"    # I
    .param p2, "optionsServiceListenerHdl"    # Lcom/android/ims/internal/uce/common/UceLong;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 419
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 420
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 421
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 424
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    nop

    .line 427
    return-object v2

    .line 424
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw v2
.end method

.method public greylist-max-o responseIncomingOptions(IIILjava/lang/String;Lcom/android/ims/internal/uce/options/OptionsCapInfo;Z)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 5
    .param p1, "optionsServiceHandle"    # I
    .param p2, "tId"    # I
    .param p3, "sipResponseCode"    # I
    .param p4, "reasonPhrase"    # Ljava/lang/String;
    .param p5, "capInfo"    # Lcom/android/ims/internal/uce/options/OptionsCapInfo;
    .param p6, "bContactInBL"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 571
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 572
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 573
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 574
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 577
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
    nop

    .line 580
    return-object v2

    .line 577
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
    throw v2
.end method

.method public greylist-max-o setMyInfo(ILcom/android/ims/internal/uce/common/CapInfo;I)Lcom/android/ims/internal/uce/common/StatusCode;
    .locals 5
    .param p1, "optionsServiceHandle"    # I
    .param p2, "capInfo"    # Lcom/android/ims/internal/uce/common/CapInfo;
    .param p3, "reqUserData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 445
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.options.IOptionsService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 448
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-object v3, p0, Lcom/android/ims/internal/uce/options/IOptionsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 450
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 451
    sget-object v3, Lcom/android/ims/internal/uce/common/StatusCode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/ims/internal/uce/common/StatusCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 454
    .local v2, "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    nop

    .line 457
    return-object v2

    .line 454
    .end local v2    # "_result":Lcom/android/ims/internal/uce/common/StatusCode;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    throw v2
.end method
