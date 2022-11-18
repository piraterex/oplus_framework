.class Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssGeofenceCallback.java"

# interfaces
.implements Landroid/hardware/gnss/IGnssGeofenceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/IGnssGeofenceCallback$Stub;
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

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mCachedVersion:I

    .line 191
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 188
    iput-object p1, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 189
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 198
    sget-object v0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 335
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 337
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 339
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 341
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 344
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    goto :goto_0

    .line 344
    .end local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 346
    throw v2

    .line 348
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 334
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

    .line 318
    iget v0, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 322
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    iget-object v2, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    goto :goto_0

    .line 327
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v2

    .line 331
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist gnssGeofenceAddCb(II)V
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 243
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 245
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v2, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 249
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    nop

    .line 258
    return-void

    .line 250
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method gnssGeofenceAddCb is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .end local p1    # "geofenceId":I
    .end local p2    # "status":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "status":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw v2
.end method

.method public blacklist gnssGeofencePauseCb(II)V
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    iget-object v2, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 287
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    nop

    .line 296
    return-void

    .line 288
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method gnssGeofencePauseCb is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .end local p1    # "geofenceId":I
    .end local p2    # "status":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "status":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v2
.end method

.method public blacklist gnssGeofenceRemoveCb(II)V
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v2, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 268
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 276
    nop

    .line 277
    return-void

    .line 269
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method gnssGeofenceRemoveCb is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .end local p1    # "geofenceId":I
    .end local p2    # "status":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "status":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 275
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 276
    throw v2
.end method

.method public blacklist gnssGeofenceResumeCb(II)V
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v2, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 306
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    nop

    .line 315
    return-void

    .line 307
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method gnssGeofenceResumeCb is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .end local p1    # "geofenceId":I
    .end local p2    # "status":I
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "status":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v2
.end method

.method public blacklist gnssGeofenceStatusCb(ILandroid/hardware/gnss/GnssLocation;)V
    .locals 5
    .param p1, "availability"    # I
    .param p2, "lastLocation"    # Landroid/hardware/gnss/GnssLocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 224
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 229
    iget-object v3, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 230
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return-void

    .line 231
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method gnssGeofenceStatusCb is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .end local p1    # "availability":I
    .end local p2    # "lastLocation":Landroid/hardware/gnss/GnssLocation;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .restart local p1    # "availability":I
    .restart local p2    # "lastLocation":Landroid/hardware/gnss/GnssLocation;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v2
.end method

.method public blacklist gnssGeofenceTransitionCb(ILandroid/hardware/gnss/GnssLocation;IJ)V
    .locals 5
    .param p1, "geofenceId"    # I
    .param p2, "location"    # Landroid/hardware/gnss/GnssLocation;
    .param p3, "transition"    # I
    .param p4, "timestampMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 210
    iget-object v3, p0, Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 211
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    nop

    .line 220
    return-void

    .line 212
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method gnssGeofenceTransitionCb is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .end local p1    # "geofenceId":I
    .end local p2    # "location":Landroid/hardware/gnss/GnssLocation;
    .end local p3    # "transition":I
    .end local p4    # "timestampMillis":J
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/IGnssGeofenceCallback$Stub$Proxy;
    .restart local p1    # "geofenceId":I
    .restart local p2    # "location":Landroid/hardware/gnss/GnssLocation;
    .restart local p3    # "transition":I
    .restart local p4    # "timestampMillis":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw v2
.end method
