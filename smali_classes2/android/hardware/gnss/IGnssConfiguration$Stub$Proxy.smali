.class Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssConfiguration.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssConfiguration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssConfiguration$Stub;
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

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mCachedVersion:I

    .line 187
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 184
    iput-object p1, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 185
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 194
    sget-object v0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 341
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 343
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 347
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    goto :goto_0

    .line 350
    .end local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw v2

    .line 354
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 340
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

    .line 324
    iget v0, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 328
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 330
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    goto :goto_0

    .line 333
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    throw v2

    .line 337
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist setBlocklist([Landroid/hardware/gnss/BlocklistedSource;)V
    .locals 5
    .param p1, "blocklist"    # [Landroid/hardware/gnss/BlocklistedSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 311
    iget-object v3, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 312
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    nop

    .line 321
    return-void

    .line 313
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setBlocklist is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .end local p1    # "blocklist":[Landroid/hardware/gnss/BlocklistedSource;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .restart local p1    # "blocklist":[Landroid/hardware/gnss/BlocklistedSource;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v2
.end method

.method public blacklist setEmergencySuplPdn(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 275
    iget-object v2, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 276
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 282
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    nop

    .line 285
    return-void

    .line 277
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setEmergencySuplPdn is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .end local p1    # "enable":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 282
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .restart local p1    # "enable":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 283
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    throw v2
.end method

.method public blacklist setEsExtensionSec(I)V
    .locals 5
    .param p1, "emergencyExtensionSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 289
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 291
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v2, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 294
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    nop

    .line 303
    return-void

    .line 295
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setEsExtensionSec is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .end local p1    # "emergencyExtensionSeconds":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .restart local p1    # "emergencyExtensionSeconds":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 301
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    throw v2
.end method

.method public blacklist setGlonassPositioningProtocol(I)V
    .locals 5
    .param p1, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-object v2, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 258
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 261
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    nop

    .line 267
    return-void

    .line 259
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setGlonassPositioningProtocol is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .end local p1    # "protocol":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .restart local p1    # "protocol":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw v2
.end method

.method public blacklist setLppProfile(I)V
    .locals 5
    .param p1, "lppProfile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    iget-object v2, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 240
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    nop

    .line 249
    return-void

    .line 241
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setLppProfile is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .end local p1    # "lppProfile":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .restart local p1    # "lppProfile":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 248
    throw v2
.end method

.method public blacklist setSuplMode(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v2, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 222
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    nop

    .line 231
    return-void

    .line 223
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setSuplMode is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .end local p1    # "mode":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .restart local p1    # "mode":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
    throw v2
.end method

.method public blacklist setSuplVersion(I)V
    .locals 5
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 201
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget-object v2, p0, Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 204
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    nop

    .line 213
    return-void

    .line 205
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method setSuplVersion is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .end local p1    # "version":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssConfiguration$Stub$Proxy;
    .restart local p1    # "version":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    throw v2
.end method
