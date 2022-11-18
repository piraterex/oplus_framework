.class Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKeyMintOperation.java"

# interfaces
.implements Landroid/hardware/security/keymint/IKeyMintOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/security/keymint/IKeyMintOperation$Stub;
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

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mCachedVersion:I

    .line 168
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 165
    iput-object p1, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 166
    return-void
.end method


# virtual methods
.method public blacklist abort()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 256
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 259
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    nop

    .line 265
    return-void

    .line 257
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method abort is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 264
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 171
    iget-object v0, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist finish([B[BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;[B)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "signature"    # [B
    .param p3, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .param p4, "timestampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .param p5, "confirmationToken"    # [B
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
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 231
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 232
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 233
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 235
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 236
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 239
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 243
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    nop

    .line 246
    return-object v2

    .line 237
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method finish is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "signature":[B
    .end local p3    # "authToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local p4    # "timestampToken":Landroid/hardware/security/secureclock/TimeStampToken;
    .end local p5    # "confirmationToken":[B
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "signature":[B
    .restart local p3    # "authToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    .restart local p4    # "timestampToken":Landroid/hardware/security/secureclock/TimeStampToken;
    .restart local p5    # "confirmationToken":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 175
    sget-object v0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 285
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 289
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 291
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    goto :goto_0

    .line 294
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    throw v2

    .line 298
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 284
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

    .line 268
    iget v0, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 270
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 272
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 274
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    throw v2

    .line 281
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist update([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)[B
    .locals 5
    .param p1, "input"    # [B
    .param p2, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .param p3, "timeStampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 207
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 208
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 209
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 210
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 213
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 214
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 217
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    nop

    .line 220
    return-object v2

    .line 211
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method update is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "authToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local p3    # "timeStampToken":Landroid/hardware/security/secureclock/TimeStampToken;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "authToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    .restart local p3    # "timeStampToken":Landroid/hardware/security/secureclock/TimeStampToken;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 219
    throw v2
.end method

.method public blacklist updateAad([BLandroid/hardware/security/keymint/HardwareAuthToken;Landroid/hardware/security/secureclock/TimeStampToken;)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "authToken"    # Landroid/hardware/security/keymint/HardwareAuthToken;
    .param p3, "timeStampToken"    # Landroid/hardware/security/secureclock/TimeStampToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-virtual {v0}, Landroid/os/Parcel;->markSensitive()V

    .line 181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 186
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v2, p0, Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/16 v4, 0x20

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 188
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 191
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    nop

    .line 197
    return-void

    .line 189
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method updateAad is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    .end local p1    # "input":[B
    .end local p2    # "authToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    .end local p3    # "timeStampToken":Landroid/hardware/security/secureclock/TimeStampToken;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/security/keymint/IKeyMintOperation$Stub$Proxy;
    .restart local p1    # "input":[B
    .restart local p2    # "authToken":Landroid/hardware/security/keymint/HardwareAuthToken;
    .restart local p3    # "timeStampToken":Landroid/hardware/security/secureclock/TimeStampToken;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw v2
.end method
