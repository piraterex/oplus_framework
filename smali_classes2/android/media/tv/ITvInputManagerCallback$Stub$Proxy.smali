.class Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITvInputManagerCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManagerCallback$Stub;
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

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 183
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 186
    iget-object v0, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 190
    const-string v0, "android.media.tv.ITvInputManagerCallback"

    return-object v0
.end method

.method public blacklist onCurrentTunedInfosUpdated(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/tv/TunedInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    .local p1, "currentTunedInfos":Ljava/util/List;, "Ljava/util/List<Landroid/media/tv/TunedInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 259
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v1
.end method

.method public greylist-max-o onInputAdded(Ljava/lang/String;)V
    .locals 4
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    nop

    .line 203
    return-void

    .line 201
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v1
.end method

.method public greylist-max-o onInputRemoved(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    nop

    .line 215
    return-void

    .line 213
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v1
.end method

.method public greylist-max-o onInputStateChanged(Ljava/lang/String;I)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .param p2, "state"    # I
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
    const-string v1, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    nop

    .line 240
    return-void

    .line 238
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    throw v1
.end method

.method public greylist-max-o onInputUpdated(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 220
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    nop

    .line 227
    return-void

    .line 225
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 226
    throw v1
.end method

.method public greylist-max-o onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "TvInputInfo"    # Landroid/media/tv/TvInputInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 247
    iget-object v1, p0, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    nop

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    throw v1
.end method
