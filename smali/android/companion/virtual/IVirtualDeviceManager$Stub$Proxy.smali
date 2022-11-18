.class Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IVirtualDeviceManager.java"

# interfaces
.implements Landroid/companion/virtual/IVirtualDeviceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/virtual/IVirtualDeviceManager$Stub;
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

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 162
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 165
    iget-object v0, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createVirtualDevice(Landroid/os/IBinder;Ljava/lang/String;ILandroid/companion/virtual/VirtualDeviceParams;Landroid/companion/virtual/IVirtualDeviceActivityListener;)Landroid/companion/virtual/IVirtualDevice;
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "associationId"    # I
    .param p4, "params"    # Landroid/companion/virtual/VirtualDeviceParams;
    .param p5, "activityListener"    # Landroid/companion/virtual/IVirtualDeviceActivityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 186
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 189
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.companion.virtual.IVirtualDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 191
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 194
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 195
    iget-object v3, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 196
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 197
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/companion/virtual/IVirtualDevice$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/virtual/IVirtualDevice;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 200
    .local v2, "_result":Landroid/companion/virtual/IVirtualDevice;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    nop

    .line 203
    return-object v2

    .line 200
    .end local v2    # "_result":Landroid/companion/virtual/IVirtualDevice;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v2
.end method

.method public blacklist createVirtualDisplay(Landroid/hardware/display/VirtualDisplayConfig;Landroid/hardware/display/IVirtualDisplayCallback;Landroid/companion/virtual/IVirtualDevice;Ljava/lang/String;)I
    .locals 5
    .param p1, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;
    .param p2, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p3, "virtualDevice"    # Landroid/companion/virtual/IVirtualDevice;
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.companion.virtual.IVirtualDeviceManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 222
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 223
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object v3, p0, Landroid/companion/virtual/IVirtualDeviceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 225
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 226
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 229
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    nop

    .line 232
    return v2

    .line 229
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 230
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 169
    const-string v0, "android.companion.virtual.IVirtualDeviceManager"

    return-object v0
.end method
