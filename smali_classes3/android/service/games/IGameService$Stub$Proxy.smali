.class Landroid/service/games/IGameService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGameService.java"

# interfaces
.implements Landroid/service/games/IGameService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/games/IGameService$Stub;
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

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Landroid/service/games/IGameService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 130
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/service/games/IGameService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist connected(Landroid/service/games/IGameServiceController;)V
    .locals 4
    .param p1, "gameServiceController"    # Landroid/service/games/IGameServiceController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.games.IGameService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 145
    iget-object v1, p0, Landroid/service/games/IGameService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    nop

    .line 150
    return-void

    .line 148
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 149
    throw v1
.end method

.method public blacklist disconnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 155
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.games.IGameService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Landroid/service/games/IGameService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    nop

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    throw v1
.end method

.method public blacklist gameStarted(Landroid/service/games/GameStartedEvent;)V
    .locals 5
    .param p1, "gameStartedEvent"    # Landroid/service/games/GameStartedEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 166
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.games.IGameService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 167
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v1, p0, Landroid/service/games/IGameService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    nop

    .line 173
    return-void

    .line 171
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "android.service.games.IGameService"

    return-object v0
.end method
