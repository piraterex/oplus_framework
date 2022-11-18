.class Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPresenceListener.java"

# interfaces
.implements Lcom/android/ims/internal/uce/presence/IPresenceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub;
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

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 280
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o capInfoReceived(Ljava/lang/String;[Lcom/android/ims/internal/uce/presence/PresTupleInfo;)V
    .locals 5
    .param p1, "presentityURI"    # Ljava/lang/String;
    .param p2, "tupleInfo"    # [Lcom/android/ims/internal/uce/presence/PresTupleInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 421
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 422
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    nop

    .line 428
    return-void

    .line 425
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    throw v2
.end method

.method public greylist-max-o cmdStatus(Lcom/android/ims/internal/uce/presence/PresCmdStatus;)V
    .locals 5
    .param p1, "cmdStatus"    # Lcom/android/ims/internal/uce/presence/PresCmdStatus;
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

    .line 377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 378
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 379
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    nop

    .line 386
    return-void

    .line 383
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 385
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 287
    const-string v0, "com.android.ims.internal.uce.presence.IPresenceListener"

    return-object v0
.end method

.method public greylist-max-o getVersionCb(Ljava/lang/String;)V
    .locals 5
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 296
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 301
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    nop

    .line 307
    return-void

    .line 304
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw v2
.end method

.method public greylist-max-o listCapInfoReceived(Lcom/android/ims/internal/uce/presence/PresRlmiInfo;[Lcom/android/ims/internal/uce/presence/PresResInfo;)V
    .locals 5
    .param p1, "rlmiInfo"    # Lcom/android/ims/internal/uce/presence/PresRlmiInfo;
    .param p2, "resInfo"    # [Lcom/android/ims/internal/uce/presence/PresResInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 441
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 442
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 443
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 444
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    nop

    .line 450
    return-void

    .line 447
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    throw v2
.end method

.method public greylist-max-o publishTriggering(Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;)V
    .locals 5
    .param p1, "publishTrigger"    # Lcom/android/ims/internal/uce/presence/PresPublishTriggerType;
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

    .line 358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 361
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    nop

    .line 367
    return-void

    .line 364
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    throw v2
.end method

.method public greylist-max-o serviceAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 5
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 320
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 321
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    nop

    .line 327
    return-void

    .line 324
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 326
    throw v2
.end method

.method public greylist-max-o serviceUnAvailable(Lcom/android/ims/internal/uce/common/StatusCode;)V
    .locals 5
    .param p1, "statusCode"    # Lcom/android/ims/internal/uce/common/StatusCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 340
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 341
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    nop

    .line 347
    return-void

    .line 344
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    throw v2
.end method

.method public greylist-max-o sipResponseReceived(Lcom/android/ims/internal/uce/presence/PresSipResponse;)V
    .locals 5
    .param p1, "sipResponse"    # Lcom/android/ims/internal/uce/presence/PresSipResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 398
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 399
    iget-object v3, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 400
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 405
    nop

    .line 406
    return-void

    .line 403
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 405
    throw v2
.end method

.method public greylist-max-o unpublishMessageSent()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.uce.presence.IPresenceListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 461
    iget-object v2, p0, Lcom/android/ims/internal/uce/presence/IPresenceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 462
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    nop

    .line 468
    return-void

    .line 465
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    throw v2
.end method
