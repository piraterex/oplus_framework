.class Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeystoreSecurityLevel.java"

# interfaces
.implements Landroid/system/keystore2/IKeystoreSecurityLevel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;
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

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedVersion:I

    .line 213
    const-string v0, "-1"

    iput-object v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 210
    iput-object p1, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 211
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist convertStorageKeyToEphemeral(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/EphemeralStorageKeyResponse;
    .locals 5
    .param p1, "storageKey"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 333
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 334
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 338
    sget-object v3, Landroid/system/keystore2/EphemeralStorageKeyResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/EphemeralStorageKeyResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 341
    .local v2, "_result":Landroid/system/keystore2/EphemeralStorageKeyResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    nop

    .line 344
    return-object v2

    .line 335
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method convertStorageKeyToEphemeral is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "storageKey":Landroid/system/keystore2/KeyDescriptor;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 341
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "storageKey":Landroid/system/keystore2/KeyDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    throw v2
.end method

.method public blacklist createOperation(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;Z)Landroid/system/keystore2/CreateOperationResponse;
    .locals 5
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "operationParameters"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p3, "forced"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 231
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 232
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 233
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 234
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 238
    sget-object v3, Landroid/system/keystore2/CreateOperationResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/CreateOperationResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 241
    .local v2, "_result":Landroid/system/keystore2/CreateOperationResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    nop

    .line 244
    return-object v2

    .line 235
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method createOperation is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "operationParameters":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p3    # "forced":Z
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "operationParameters":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p3    # "forced":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 243
    throw v2
.end method

.method public blacklist deleteKey(Landroid/system/keystore2/KeyDescriptor;)V
    .locals 5
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 353
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 354
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 355
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 363
    nop

    .line 364
    return-void

    .line 356
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method deleteKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 363
    throw v2
.end method

.method public blacklist generateKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;
    .locals 5
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p4, "flags"    # I
    .param p5, "entropy"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 249
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 254
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 255
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 256
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 257
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 259
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 260
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 263
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 264
    sget-object v3, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 267
    .local v2, "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    nop

    .line 270
    return-object v2

    .line 261
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method generateKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p4    # "flags":I
    .end local p5    # "entropy":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .restart local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p4    # "flags":I
    .restart local p5    # "entropy":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 220
    sget-object v0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 384
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 386
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 388
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 390
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 393
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    goto :goto_0

    .line 393
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 395
    throw v2

    .line 397
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 383
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

    .line 367
    iget v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 369
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 371
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 373
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    goto :goto_0

    .line 376
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw v2

    .line 380
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist importKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;I[B)Landroid/system/keystore2/KeyMetadata;
    .locals 5
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "attestationKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p4, "flags"    # I
    .param p5, "keyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 275
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 276
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 281
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 282
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 283
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 285
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 286
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 290
    sget-object v3, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 293
    .local v2, "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    nop

    .line 296
    return-object v2

    .line 287
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p4    # "flags":I
    .end local p5    # "keyData":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "attestationKey":Landroid/system/keystore2/KeyDescriptor;
    .restart local p3    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p4    # "flags":I
    .restart local p5    # "keyData":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v2
.end method

.method public blacklist importWrappedKey(Landroid/system/keystore2/KeyDescriptor;Landroid/system/keystore2/KeyDescriptor;[B[Landroid/hardware/security/keymint/KeyParameter;[Landroid/system/keystore2/AuthenticatorSpec;)Landroid/system/keystore2/KeyMetadata;
    .locals 5
    .param p1, "key"    # Landroid/system/keystore2/KeyDescriptor;
    .param p2, "wrappingKey"    # Landroid/system/keystore2/KeyDescriptor;
    .param p3, "maskingKey"    # [B
    .param p4, "params"    # [Landroid/hardware/security/keymint/KeyParameter;
    .param p5, "authenticators"    # [Landroid/system/keystore2/AuthenticatorSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 308
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 309
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 310
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 311
    iget-object v2, p0, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 312
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 316
    sget-object v3, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/system/keystore2/KeyMetadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 319
    .local v2, "_result":Landroid/system/keystore2/KeyMetadata;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    nop

    .line 322
    return-object v2

    .line 313
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method importWrappedKey is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .end local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .end local p2    # "wrappingKey":Landroid/system/keystore2/KeyDescriptor;
    .end local p3    # "maskingKey":[B
    .end local p4    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .end local p5    # "authenticators":[Landroid/system/keystore2/AuthenticatorSpec;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/system/keystore2/IKeystoreSecurityLevel$Stub$Proxy;
    .restart local p1    # "key":Landroid/system/keystore2/KeyDescriptor;
    .restart local p2    # "wrappingKey":Landroid/system/keystore2/KeyDescriptor;
    .restart local p3    # "maskingKey":[B
    .restart local p4    # "params":[Landroid/hardware/security/keymint/KeyParameter;
    .restart local p5    # "authenticators":[Landroid/system/keystore2/AuthenticatorSpec;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    throw v2
.end method
