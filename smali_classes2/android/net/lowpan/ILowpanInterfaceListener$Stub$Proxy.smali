.class Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILowpanInterfaceListener.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterfaceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
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

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 253
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 256
    iget-object v0, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 260
    const-string v0, "android.net.lowpan.ILowpanInterfaceListener"

    return-object v0
.end method

.method public blacklist onConnectedChanged(Z)V
    .locals 5
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 278
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 280
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    nop

    .line 285
    return-void

    .line 283
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    throw v1
.end method

.method public blacklist onEnabledChanged(Z)V
    .locals 4
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 268
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    nop

    .line 273
    return-void

    .line 271
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    throw v1
.end method

.method public blacklist onLinkAddressAdded(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
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
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 364
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

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

.method public blacklist onLinkAddressRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 374
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    nop

    .line 381
    return-void

    .line 379
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    throw v1
.end method

.method public blacklist onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 5
    .param p1, "value"    # Landroid/net/IpPrefix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 339
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 340
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    nop

    .line 345
    return-void

    .line 343
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    throw v1
.end method

.method public blacklist onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 5
    .param p1, "value"    # Landroid/net/IpPrefix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 350
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 351
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 352
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

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

.method public blacklist onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 5
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 328
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    nop

    .line 333
    return-void

    .line 331
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    throw v1
.end method

.method public blacklist onReceiveFromCommissioner([B)V
    .locals 5
    .param p1, "packet"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 386
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 388
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    nop

    .line 393
    return-void

    .line 391
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    throw v1
.end method

.method public blacklist onRoleChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 302
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    throw v1
.end method

.method public blacklist onStateChanged(Ljava/lang/String;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 314
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    nop

    .line 321
    return-void

    .line 319
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v1
.end method

.method public blacklist onUpChanged(Z)V
    .locals 5
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 290
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.lowpan.ILowpanInterfaceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 292
    iget-object v1, p0, Landroid/net/lowpan/ILowpanInterfaceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

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
