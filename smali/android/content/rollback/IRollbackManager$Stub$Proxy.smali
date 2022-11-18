.class Landroid/content/rollback/IRollbackManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRollbackManager.java"

# interfaces
.implements Landroid/content/rollback/IRollbackManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/rollback/IRollbackManager$Stub;
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

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput-object p1, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 241
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 244
    iget-object v0, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist blockRollbackManager(J)V
    .locals 5
    .param p1, "millis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 384
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.rollback.IRollbackManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 388
    iget-object v2, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 389
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    nop

    .line 395
    return-void

    .line 392
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw v2
.end method

.method public blacklist commitRollback(ILandroid/content/pm/ParceledListSlice;Ljava/lang/String;Landroid/content/IntentSender;)V
    .locals 5
    .param p1, "rollbackId"    # I
    .param p2, "causePackages"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callerPackageName"    # Ljava/lang/String;
    .param p4, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.rollback.IRollbackManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 292
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 294
    iget-object v3, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 295
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    nop

    .line 301
    return-void

    .line 298
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw v2
.end method

.method public blacklist expireRollbackForPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 346
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.rollback.IRollbackManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-object v2, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 349
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    nop

    .line 355
    return-void

    .line 352
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    throw v2
.end method

.method public blacklist getAvailableRollbacks()Landroid/content/pm/ParceledListSlice;
    .locals 5
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

    .line 256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.rollback.IRollbackManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 258
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 259
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 262
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    nop

    .line 265
    return-object v2

    .line 262
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 248
    const-string v0, "android.content.rollback.IRollbackManager"

    return-object v0
.end method

.method public blacklist getRecentlyCommittedRollbacks()Landroid/content/pm/ParceledListSlice;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 273
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.rollback.IRollbackManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    iget-object v2, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 275
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 276
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 279
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    nop

    .line 282
    return-object v2

    .line 279
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    throw v2
.end method

.method public blacklist notifyStagedSession(I)I
    .locals 5
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 365
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.rollback.IRollbackManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget-object v2, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 371
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 372
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 375
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    nop

    .line 378
    return v2

    .line 375
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v2
.end method

.method public blacklist reloadPersistedData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.rollback.IRollbackManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 333
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 338
    nop

    .line 339
    return-void

    .line 336
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 338
    throw v2
.end method

.method public blacklist snapshotAndRestoreUserData(Ljava/lang/String;[IIJLjava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I
    .param p3, "appId"    # I
    .param p4, "ceDataInode"    # J
    .param p6, "seInfo"    # Ljava/lang/String;
    .param p7, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 310
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.content.rollback.IRollbackManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 313
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 315
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v2, p0, Landroid/content/rollback/IRollbackManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 318
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    nop

    .line 324
    return-void

    .line 321
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    throw v2
.end method
