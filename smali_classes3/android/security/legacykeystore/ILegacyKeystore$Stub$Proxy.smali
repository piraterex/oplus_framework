.class Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILegacyKeystore.java"

# interfaces
.implements Landroid/security/legacykeystore/ILegacyKeystore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/legacykeystore/ILegacyKeystore$Stub;
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

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 182
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 185
    iget-object v0, p0, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;I)[B
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v2, p0, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 208
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 212
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 215
    return-object v2

    .line 212
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 189
    sget-object v0, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist list(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 279
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 282
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v2, p0, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 286
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 287
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 290
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-object v2

    .line 290
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw v2
.end method

.method public blacklist put(Ljava/lang/String;I[B)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "blob"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 234
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 238
    iget-object v2, p0, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 239
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    nop

    .line 245
    return-void

    .line 242
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 244
    throw v2
.end method

.method public blacklist remove(Ljava/lang/String;I)V
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    iget-object v2, p0, Landroid/security/legacykeystore/ILegacyKeystore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 262
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    nop

    .line 268
    return-void

    .line 265
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 267
    throw v2
.end method
