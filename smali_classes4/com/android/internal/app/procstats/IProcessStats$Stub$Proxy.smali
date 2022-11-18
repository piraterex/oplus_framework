.class Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProcessStats.java"

# interfaces
.implements Lcom/android/internal/app/procstats/IProcessStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/procstats/IProcessStats$Stub;
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

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p1, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 223
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getCommittedStats(JIZLjava/util/List;)J
    .locals 6
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 300
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 301
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 302
    iget-object v2, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 303
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 305
    .local v3, "_result":J
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p5, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    nop

    .line 311
    return-wide v3

    .line 308
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 310
    throw v2
.end method

.method public blacklist getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .locals 6
    .param p1, "highWaterMarkMs"    # J
    .param p3, "section"    # I
    .param p4, "doAggregate"    # Z
    .param p6, "mergedStats"    # Lcom/android/internal/app/procstats/ProcessStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 324
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 329
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 331
    iget-object v2, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 332
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 334
    .local v3, "_result":J
    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p5, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 336
    invoke-virtual {p6, v1}, Lcom/android/internal/app/procstats/ProcessStats;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    .end local v2    # "_status":Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    nop

    .line 343
    return-wide v3

    .line 340
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    throw v2
.end method

.method public blacklist getCurrentMemoryState()I
    .locals 5
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

    .line 274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 276
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 280
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    nop

    .line 283
    return v2

    .line 280
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v2
.end method

.method public blacklist getCurrentStats(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 239
    iget-object v2, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 240
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 241
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 242
    .local v3, "_result":[B
    sget-object v4, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p1, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-object v3

    .line 245
    .end local v3    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 230
    const-string v0, "com.android.internal.app.procstats.IProcessStats"

    return-object v0
.end method

.method public blacklist getMinAssociationDumpDuration()J
    .locals 5
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 352
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 353
    iget-object v2, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 354
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 358
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    nop

    .line 361
    return-wide v2

    .line 358
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw v2
.end method

.method public blacklist getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "minTime"    # J
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
    const-string v2, "com.android.internal.app.procstats.IProcessStats"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget-object v2, p0, Lcom/android/internal/app/procstats/IProcessStats$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 259
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 260
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 263
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    nop

    .line 266
    return-object v2

    .line 263
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    throw v2
.end method
