.class Landroid/bluetooth/IBluetoothAvrcpTarget$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBluetoothAvrcpTarget.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothAvrcpTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothAvrcpTarget$Stub;
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

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/bluetooth/IBluetoothAvrcpTarget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 109
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 112
    iget-object v0, p0, Landroid/bluetooth/IBluetoothAvrcpTarget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "android.bluetooth.IBluetoothAvrcpTarget"

    return-object v0
.end method

.method public blacklist sendVolumeChanged(I)V
    .locals 5
    .param p1, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.bluetooth.IBluetoothAvrcpTarget"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v2, p0, Landroid/bluetooth/IBluetoothAvrcpTarget$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 127
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    nop

    .line 133
    return-void

    .line 130
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw v2
.end method
