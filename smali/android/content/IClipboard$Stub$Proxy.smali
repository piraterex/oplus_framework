.class Landroid/content/IClipboard$Stub$Proxy;
.super Ljava/lang/Object;
.source "IClipboard.java"

# interfaces
.implements Landroid/content/IClipboard;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IClipboard$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-object p1, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 293
    return-void
.end method


# virtual methods
.method public blacklist addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .locals 5
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
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

    .line 415
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 417
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    iget-object v2, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 420
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    nop

    .line 426
    return-void

    .line 423
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 296
    iget-object v0, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist clearPrimaryClip(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 339
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 340
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v2, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 346
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 300
    const-string v0, "android.content.IClipboard"

    return-object v0
.end method

.method public blacklist getPrimaryClip(Ljava/lang/String;I)Landroid/content/ClipData;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I
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
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object v2, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 363
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 364
    sget-object v3, Landroid/content/ClipData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 367
    .local v2, "_result":Landroid/content/ClipData;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    nop

    .line 370
    return-object v2

    .line 367
    .end local v2    # "_result":Landroid/content/ClipData;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    throw v2
.end method

.method public blacklist getPrimaryClipDescription(Ljava/lang/String;I)Landroid/content/ClipDescription;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    iget-object v2, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 382
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 383
    sget-object v3, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipDescription;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 386
    .local v2, "_result":Landroid/content/ClipDescription;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    nop

    .line 389
    return-object v2

    .line 386
    .end local v2    # "_result":Landroid/content/ClipDescription;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw v2
.end method

.method public blacklist getPrimaryClipSource(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 467
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 470
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-object v2, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 474
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 478
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    nop

    .line 481
    return-object v2

    .line 478
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw v2
.end method

.method public blacklist hasClipboardText(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 448
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 451
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object v2, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 455
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 459
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    nop

    .line 462
    return v2

    .line 459
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    throw v2
.end method

.method public blacklist hasPrimaryClip(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v2, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 401
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 405
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return v2

    .line 405
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw v2
.end method

.method public blacklist removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;I)V
    .locals 5
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 434
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    iget-object v2, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 437
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    nop

    .line 443
    return-void

    .line 440
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 442
    throw v2
.end method

.method public blacklist setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;I)V
    .locals 5
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 305
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 309
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v3, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 312
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    nop

    .line 318
    return-void

    .line 315
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 316
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    throw v2
.end method

.method public blacklist setPrimaryClipAsPackage(Landroid/content/ClipData;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "sourcePackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.IClipboard"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 325
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 326
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 329
    iget-object v3, p0, Landroid/content/IClipboard$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 330
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    nop

    .line 336
    return-void

    .line 333
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    throw v2
.end method
