.class Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVirtualDisplayCallback.java"

# interfaces
.implements Landroid/hardware/display/IVirtualDisplayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/IVirtualDisplayCallback$Stub;
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

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 143
    iget-object v0, p0, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 147
    const-string v0, "android.hardware.display.IVirtualDisplayCallback"

    return-object v0
.end method

.method public greylist-max-o onPaused()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    nop

    .line 165
    return-void

    .line 163
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw v1
.end method

.method public greylist-max-o onResumed()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    nop

    .line 180
    return-void

    .line 178
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 179
    throw v1
.end method

.method public greylist-max-o onStopped()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.hardware.display.IVirtualDisplayCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Landroid/hardware/display/IVirtualDisplayCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    nop

    .line 197
    return-void

    .line 195
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw v1
.end method
