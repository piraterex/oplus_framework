.class Landroid/service/media/IMediaBrowserService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMediaBrowserService.java"

# interfaces
.implements Landroid/service/media/IMediaBrowserService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/media/IMediaBrowserService$Stub;
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

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 219
    return-void
.end method


# virtual methods
.method public greylist-max-o addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 298
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.media.IMediaBrowserService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 301
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 302
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 303
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    nop

    .line 308
    return-void

    .line 306
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    throw v1
.end method

.method public greylist-max-o addSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.media.IMediaBrowserService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 261
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    nop

    .line 266
    return-void

    .line 264
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 222
    iget-object v0, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "rootHints"    # Landroid/os/Bundle;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 232
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.media.IMediaBrowserService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 235
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 236
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    nop

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    throw v1
.end method

.method public greylist-max-o disconnect(Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.media.IMediaBrowserService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 248
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    nop

    .line 253
    return-void

    .line 251
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 226
    const-string v0, "android.service.media.IMediaBrowserService"

    return-object v0
.end method

.method public greylist-max-o getMediaItem(Ljava/lang/String;Landroid/os/ResultReceiver;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/os/ResultReceiver;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.media.IMediaBrowserService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 287
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 288
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    nop

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw v1
.end method

.method public greylist-max-o removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 311
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 313
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.media.IMediaBrowserService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 316
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 317
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    nop

    .line 322
    return-void

    .line 320
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    throw v1
.end method

.method public greylist-max-o removeSubscriptionDeprecated(Ljava/lang/String;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "callbacks"    # Landroid/service/media/IMediaBrowserServiceCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 271
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.media.IMediaBrowserService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 274
    iget-object v1, p0, Landroid/service/media/IMediaBrowserService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    nop

    .line 279
    return-void

    .line 277
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 278
    throw v1
.end method
