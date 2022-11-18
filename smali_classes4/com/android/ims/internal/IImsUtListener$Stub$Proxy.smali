.class Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsUtListener.java"

# interfaces
.implements Lcom/android/ims/internal/IImsUtListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsUtListener$Stub;
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

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 261
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 268
    const-string v0, "com.android.ims.internal.IImsUtListener"

    return-object v0
.end method

.method public blacklist lineIdentificationSupplementaryServiceResponse(ILandroid/telephony/ims/ImsSsInfo;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "config"    # Landroid/telephony/ims/ImsSsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 331
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 334
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 338
    nop

    .line 339
    return-void

    .line 337
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 338
    throw v1
.end method

.method public greylist-max-o onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
    .locals 5
    .param p1, "ssData"    # Landroid/telephony/ims/ImsSsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 396
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    nop

    .line 401
    return-void

    .line 399
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v1
.end method

.method public greylist-max-o utConfigurationCallBarringQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 5
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cbInfo"    # [Landroid/telephony/ims/ImsSsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 345
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 347
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 349
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    throw v1
.end method

.method public greylist-max-o utConfigurationCallForwardQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsCallForwardInfo;)V
    .locals 5
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cfInfo"    # [Landroid/telephony/ims/ImsCallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 360
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 362
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 364
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    nop

    .line 369
    return-void

    .line 367
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    throw v1
.end method

.method public greylist-max-o utConfigurationCallWaitingQueried(Lcom/android/ims/internal/IImsUt;I[Landroid/telephony/ims/ImsSsInfo;)V
    .locals 5
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "cwInfo"    # [Landroid/telephony/ims/ImsSsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 375
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 377
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 379
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public greylist-max-o utConfigurationQueried(Lcom/android/ims/internal/IImsUt;ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "ssInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 305
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    nop

    .line 312
    return-void

    .line 310
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    throw v1
.end method

.method public greylist-max-o utConfigurationQueryFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 319
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 321
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    nop

    .line 326
    return-void

    .line 324
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    throw v1
.end method

.method public greylist-max-o utConfigurationUpdateFailed(Lcom/android/ims/internal/IImsUt;ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 5
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .param p3, "error"    # Landroid/telephony/ims/ImsReasonInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 290
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 292
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    nop

    .line 297
    return-void

    .line 295
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw v1
.end method

.method public greylist-max-o utConfigurationUpdated(Lcom/android/ims/internal/IImsUt;I)V
    .locals 4
    .param p1, "ut"    # Lcom/android/ims/internal/IImsUt;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.ims.internal.IImsUtListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v1, p0, Lcom/android/ims/internal/IImsUtListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v1
.end method
