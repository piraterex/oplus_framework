.class Landroid/webkit/IWebViewUpdateService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWebViewUpdateService.java"

# interfaces
.implements Landroid/webkit/IWebViewUpdateService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/IWebViewUpdateService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 250
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 253
    iget-object v0, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "newProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 309
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 311
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 312
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 316
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    nop

    .line 319
    return-object v2

    .line 316
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 318
    throw v2
.end method

.method public greylist-max-o enableMultiProcess(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 420
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 422
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 423
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 426
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    nop

    .line 429
    return-void

    .line 426
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    throw v2
.end method

.method public greylist-max-o getAllWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 349
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 351
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 352
    sget-object v3, Landroid/webkit/WebViewProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/webkit/WebViewProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 355
    .local v2, "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    nop

    .line 358
    return-object v2

    .line 355
    .end local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    throw v2
.end method

.method public greylist-max-o getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 387
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 388
    sget-object v3, Landroid/content/pm/PackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 391
    .local v2, "_result":Landroid/content/pm/PackageInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    nop

    .line 394
    return-object v2

    .line 391
    .end local v2    # "_result":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw v2
.end method

.method public greylist-max-o getCurrentWebViewPackageName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 367
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 369
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 373
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    nop

    .line 376
    return-object v2

    .line 373
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 257
    const-string v0, "android.webkit.IWebViewUpdateService"

    return-object v0
.end method

.method public greylist-max-o getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 331
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 333
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 334
    sget-object v3, Landroid/webkit/WebViewProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/webkit/WebViewProviderInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 337
    .local v2, "_result":[Landroid/webkit/WebViewProviderInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    nop

    .line 340
    return-object v2

    .line 337
    .end local v2    # "_result":[Landroid/webkit/WebViewProviderInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v2
.end method

.method public greylist-max-o isMultiProcessEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 400
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 403
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 405
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 406
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 409
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    nop

    .line 412
    return v2

    .line 409
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw v2
.end method

.method public greylist-max-o notifyRelroCreationCompleted()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 265
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 267
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    nop

    .line 273
    return-void

    .line 270
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 272
    throw v2
.end method

.method public greylist waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 5
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

    .line 284
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.webkit.IWebViewUpdateService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Landroid/webkit/IWebViewUpdateService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 286
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 287
    sget-object v3, Landroid/webkit/WebViewProviderResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebViewProviderResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 290
    .local v2, "_result":Landroid/webkit/WebViewProviderResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-object v2

    .line 290
    .end local v2    # "_result":Landroid/webkit/WebViewProviderResponse;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw v2
.end method
