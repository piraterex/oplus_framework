.class Landroid/location/ILocationListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILocationListener.java"

# interfaces
.implements Landroid/location/ILocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroid/location/ILocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 137
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 140
    iget-object v0, p0, Landroid/location/ILocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 144
    const-string v0, "android.location.ILocationListener"

    return-object v0
.end method

.method public blacklist onFlushComplete(I)V
    .locals 5
    .param p1, "requestCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 176
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.ILocationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v1, p0, Landroid/location/ILocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public blacklist onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
    .locals 4
    .param p2, "onCompleteCallback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;",
            "Landroid/os/IRemoteCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.location.ILocationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 153
    iget-object v1, p0, Landroid/location/ILocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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

.method public blacklist onProviderEnabledChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
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
    const-string v1, "android.location.ILocationListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 166
    iget-object v1, p0, Landroid/location/ILocationListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    nop

    .line 171
    return-void

    .line 169
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v1
.end method
