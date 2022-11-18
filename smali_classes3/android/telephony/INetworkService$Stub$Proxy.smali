.class Landroid/telephony/INetworkService$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkService.java"

# interfaces
.implements Landroid/telephony/INetworkService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/INetworkService$Stub;
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

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Landroid/telephony/INetworkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 171
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 174
    iget-object v0, p0, Landroid/telephony/INetworkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o createNetworkServiceProvider(I)V
    .locals 4
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.INetworkService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget-object v1, p0, Landroid/telephony/INetworkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    nop

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 190
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 178
    const-string v0, "android.telephony.INetworkService"

    return-object v0
.end method

.method public blacklist registerForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/INetworkServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 222
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.INetworkService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 225
    iget-object v1, p0, Landroid/telephony/INetworkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    nop

    .line 230
    return-void

    .line 228
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    throw v1
.end method

.method public greylist-max-o removeNetworkServiceProvider(I)V
    .locals 5
    .param p1, "slotId"    # I
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
    const-string v1, "android.telephony.INetworkService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget-object v1, p0, Landroid/telephony/INetworkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

.method public blacklist requestNetworkRegistrationInfo(IILandroid/telephony/INetworkServiceCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "domain"    # I
    .param p3, "callback"    # Landroid/telephony/INetworkServiceCallback;
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
    const-string v1, "android.telephony.INetworkService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 212
    iget-object v1, p0, Landroid/telephony/INetworkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    nop

    .line 217
    return-void

    .line 215
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw v1
.end method

.method public blacklist unregisterForNetworkRegistrationInfoChanged(ILandroid/telephony/INetworkServiceCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/INetworkServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.INetworkService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 238
    iget-object v1, p0, Landroid/telephony/INetworkService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
