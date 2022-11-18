.class Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IQualifiedNetworksService.java"

# interfaces
.implements Landroid/telephony/data/IQualifiedNetworksService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IQualifiedNetworksService$Stub;
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

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createNetworkAvailabilityProvider(ILandroid/telephony/data/IQualifiedNetworksServiceCallback;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/data/IQualifiedNetworksServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.data.IQualifiedNetworksService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 153
    iget-object v1, p0, Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "android.telephony.data.IQualifiedNetworksService"

    return-object v0
.end method

.method public blacklist removeNetworkAvailabilityProvider(I)V
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 163
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.data.IQualifiedNetworksService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v1, p0, Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    nop

    .line 170
    return-void

    .line 168
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    throw v1
.end method

.method public blacklist reportThrottleStatusChanged(ILjava/util/List;)V
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/ThrottleStatus;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    .local p2, "statuses":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/ThrottleStatus;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 175
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.telephony.data.IQualifiedNetworksService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 178
    iget-object v1, p0, Landroid/telephony/data/IQualifiedNetworksService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    nop

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw v1
.end method
