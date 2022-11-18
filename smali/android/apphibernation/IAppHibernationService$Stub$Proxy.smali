.class Landroid/apphibernation/IAppHibernationService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAppHibernationService.java"

# interfaces
.implements Landroid/apphibernation/IAppHibernationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/apphibernation/IAppHibernationService$Stub;
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

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 213
    return-void
.end method

.method static synthetic blacklist lambda$getHibernationStatsForUser$0(Landroid/os/Parcel;Ljava/util/Map;I)V
    .locals 2
    .param p0, "_reply"    # Landroid/os/Parcel;
    .param p1, "_result"    # Ljava/util/Map;
    .param p2, "i"    # I

    .line 325
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 327
    .local v0, "k":Ljava/lang/String;
    sget-object v1, Landroid/apphibernation/HibernationStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/apphibernation/HibernationStats;

    .line 328
    .local v1, "v":Landroid/apphibernation/HibernationStats;
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 216
    iget-object v0, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getHibernatingPackagesForUser(I)Ljava/util/List;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.apphibernation.IAppHibernationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v2, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 301
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 302
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 305
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    nop

    .line 308
    return-object v2

    .line 305
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    throw v2
.end method

.method public blacklist getHibernationStatsForUser(Ljava/util/List;I)Ljava/util/Map;
    .locals 7
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/apphibernation/HibernationStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 313
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.apphibernation.IAppHibernationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget-object v2, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 320
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 322
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 323
    .local v3, "N":I
    if-gez v3, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 324
    .local v5, "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apphibernation/HibernationStats;>;"
    :goto_0
    invoke-static {v4, v3}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v6, Landroid/apphibernation/IAppHibernationService$Stub$Proxy$$ExternalSyntheticLambda0;

    invoke-direct {v6, v1, v5}, Landroid/apphibernation/IAppHibernationService$Stub$Proxy$$ExternalSyntheticLambda0;-><init>(Landroid/os/Parcel;Ljava/util/Map;)V

    invoke-interface {v4, v6}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    .end local v2    # "_status":Z
    .end local v3    # "N":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    nop

    .line 336
    return-object v5

    .line 333
    .end local v5    # "_result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/apphibernation/HibernationStats;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 220
    const-string v0, "android.apphibernation.IAppHibernationService"

    return-object v0
.end method

.method public blacklist isHibernatingForUser(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.apphibernation.IAppHibernationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v2, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 232
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 233
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 236
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    nop

    .line 239
    return v2

    .line 236
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    throw v2
.end method

.method public blacklist isHibernatingGlobally(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.apphibernation.IAppHibernationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 267
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 271
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    nop

    .line 274
    return v2

    .line 271
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    throw v2
.end method

.method public blacklist setHibernatingForUser(Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isHibernating"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.apphibernation.IAppHibernationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 250
    iget-object v2, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 251
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    nop

    .line 257
    return-void

    .line 254
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    throw v2
.end method

.method public blacklist setHibernatingGlobally(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "isHibernating"    # Z
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

    .line 281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.apphibernation.IAppHibernationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 284
    iget-object v2, p0, Landroid/apphibernation/IAppHibernationService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 285
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    nop

    .line 291
    return-void

    .line 288
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    throw v2
.end method
