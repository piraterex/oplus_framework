.class Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDropBoxManagerService.java"

# interfaces
.implements Lcom/android/internal/os/IDropBoxManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/IDropBoxManagerService$Stub;
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

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput-object p1, p0, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 200
    return-void
.end method


# virtual methods
.method public blacklist addData(Ljava/lang/String;[BI)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 217
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 218
    iget-object v2, p0, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 219
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    nop

    .line 225
    return-void

    .line 222
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 224
    throw v2
.end method

.method public blacklist addFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;I)V
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 231
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v3, p0, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 236
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    nop

    .line 242
    return-void

    .line 239
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 207
    const-string v0, "com.android.internal.os.IDropBoxManagerService"

    return-object v0
.end method

.method public blacklist getNextEntry(Ljava/lang/String;JLjava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 269
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 272
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 274
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 275
    sget-object v3, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 278
    .local v2, "_result":Landroid/os/DropBoxManager$Entry;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-object v2

    .line 278
    .end local v2    # "_result":Landroid/os/DropBoxManager$Entry;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw v2
.end method

.method public blacklist getNextEntryWithAttribution(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 292
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v2, p0, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 295
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 296
    sget-object v3, Landroid/os/DropBoxManager$Entry;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/DropBoxManager$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 299
    .local v2, "_result":Landroid/os/DropBoxManager$Entry;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    nop

    .line 302
    return-object v2

    .line 299
    .end local v2    # "_result":Landroid/os/DropBoxManager$Entry;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v2
.end method

.method public greylist-max-o isTagEnabled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 250
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.os.IDropBoxManagerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/android/internal/os/IDropBoxManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 253
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 257
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    nop

    .line 260
    return v2

    .line 257
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 259
    throw v2
.end method
