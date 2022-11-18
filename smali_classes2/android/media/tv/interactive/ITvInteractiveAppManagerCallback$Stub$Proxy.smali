.class Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInteractiveAppManagerCallback.java"

# interfaces
.implements Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub;
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

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    iput-object p1, p0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 172
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 179
    const-string v0, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    return-object v0
.end method

.method public blacklist onInteractiveAppServiceAdded(Ljava/lang/String;)V
    .locals 4
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 185
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    nop

    .line 192
    return-void

    .line 190
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    throw v1
.end method

.method public blacklist onInteractiveAppServiceRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    nop

    .line 204
    return-void

    .line 202
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    throw v1
.end method

.method public blacklist onInteractiveAppServiceUpdated(Ljava/lang/String;)V
    .locals 5
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 209
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    nop

    .line 216
    return-void

    .line 214
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    throw v1
.end method

.method public blacklist onStateChanged(Ljava/lang/String;III)V
    .locals 5
    .param p1, "iAppServiceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "state"    # I
    .param p4, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    nop

    .line 243
    return-void

    .line 241
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    throw v1
.end method

.method public blacklist onTvInteractiveAppServiceInfoUpdated(Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;)V
    .locals 5
    .param p1, "tvIAppInfo"    # Landroid/media/tv/interactive/TvInteractiveAppServiceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 221
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.interactive.ITvInteractiveAppManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 223
    iget-object v1, p0, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    nop

    .line 228
    return-void

    .line 226
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw v1
.end method
