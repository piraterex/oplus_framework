.class Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsVideoCallProvider.java"

# interfaces
.implements Lcom/android/ims/internal/IImsVideoCallProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsVideoCallProvider$Stub;
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

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 268
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 275
    const-string v0, "com.android.ims.internal.IImsVideoCallProvider"

    return-object v0
.end method

.method public greylist-max-o requestCallDataUsage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 388
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 390
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    nop

    .line 396
    return-void

    .line 394
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    throw v1
.end method

.method public greylist-max-o requestCameraCapabilities()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 379
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

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

.method public greylist-max-o sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 356
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 357
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    nop

    .line 362
    return-void

    .line 360
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v1
.end method

.method public greylist-max-o sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .locals 5
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 367
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 369
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    nop

    .line 374
    return-void

    .line 372
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    throw v1
.end method

.method public greylist-max-o setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/android/ims/internal/IImsVideoCallCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 283
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    nop

    .line 288
    return-void

    .line 286
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw v1
.end method

.method public greylist-max-o setCamera(Ljava/lang/String;I)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 293
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    nop

    .line 301
    return-void

    .line 299
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw v1
.end method

.method public greylist-max-o setDeviceOrientation(I)V
    .locals 5
    .param p1, "rotation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 330
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    nop

    .line 337
    return-void

    .line 335
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw v1
.end method

.method public greylist-max-o setDisplaySurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 318
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 320
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    nop

    .line 325
    return-void

    .line 323
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    throw v1
.end method

.method public greylist-max-o setPauseImage(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 401
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 403
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return-void

    .line 406
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw v1
.end method

.method public greylist-max-o setPreviewSurface(Landroid/view/Surface;)V
    .locals 5
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    nop

    .line 313
    return-void

    .line 311
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    throw v1
.end method

.method public greylist-max-o setZoom(F)V
    .locals 5
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 342
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsVideoCallProvider"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 344
    iget-object v1, p0, Lcom/android/ims/internal/IImsVideoCallProvider$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

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
