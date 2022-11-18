.class Landroid/media/IAudioDeviceVolumeDispatcher$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAudioDeviceVolumeDispatcher.java"

# interfaces
.implements Landroid/media/IAudioDeviceVolumeDispatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioDeviceVolumeDispatcher$Stub;
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
    iput-object p1, p0, Landroid/media/IAudioDeviceVolumeDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 130
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 133
    iget-object v0, p0, Landroid/media/IAudioDeviceVolumeDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist dispatchDeviceVolumeAdjusted(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;II)V
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;
    .param p3, "direction"    # I
    .param p4, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioDeviceVolumeDispatcher"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 158
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 159
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v1, p0, Landroid/media/IAudioDeviceVolumeDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    nop

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 165
    throw v1
.end method

.method public blacklist dispatchDeviceVolumeChanged(Landroid/media/AudioDeviceAttributes;Landroid/media/VolumeInfo;)V
    .locals 4
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "vol"    # Landroid/media/VolumeInfo;
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
    const-string v1, "android.media.IAudioDeviceVolumeDispatcher"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 145
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 146
    iget-object v1, p0, Landroid/media/IAudioDeviceVolumeDispatcher$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    nop

    .line 151
    return-void

    .line 149
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "android.media.IAudioDeviceVolumeDispatcher"

    return-object v0
.end method
