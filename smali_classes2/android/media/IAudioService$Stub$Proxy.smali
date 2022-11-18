.class Landroid/media/IAudioService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAudioService.java"

# interfaces
.implements Landroid/media/IAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IAudioService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 3761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3762
    iput-object p1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 3763
    return-void
.end method


# virtual methods
.method public greylist-max-o abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 5
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4833
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4834
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4840
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4841
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4842
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x40

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4843
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4844
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4847
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4849
    nop

    .line 4850
    return v2

    .line 4847
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4848
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4849
    throw v2
.end method

.method public blacklist abandonAudioFocusForTest(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Landroid/media/AudioAttributes;Ljava/lang/String;)I
    .locals 5
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "callingPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6395
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6396
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6397
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6398
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6399
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6400
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6401
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6405
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6407
    nop

    .line 6408
    return v2

    .line 6405
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6407
    throw v2
.end method

.method public blacklist addAssistantServicesUids([I)V
    .locals 5
    .param p1, "assistantUID"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7134
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7135
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7138
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7140
    nop

    .line 7141
    return-void

    .line 7138
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7140
    throw v2
.end method

.method public greylist-max-o addMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 5
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5263
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5264
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5265
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x59

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5266
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5267
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5270
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5272
    nop

    .line 5273
    return v2

    .line 5270
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5271
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5272
    throw v2
.end method

.method public blacklist addSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 5
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6753
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6756
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6757
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6758
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6761
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6763
    nop

    .line 6764
    return-void

    .line 6761
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6763
    throw v2
.end method

.method public greylist-max-o adjustStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3895
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3896
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3898
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3900
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3901
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3902
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3903
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3904
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3907
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3909
    nop

    .line 3910
    return-void

    .line 3907
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3909
    throw v2
.end method

.method public blacklist adjustStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # Landroid/os/UserHandle;
    .param p8, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6081
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6082
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6083
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6084
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6085
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6086
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6087
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6088
    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6089
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6090
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6093
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6094
    nop

    .line 6095
    return-void

    .line 6093
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6094
    throw v1
.end method

.method public blacklist adjustStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3914
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3916
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3918
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3919
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3920
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3921
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3922
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3923
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3926
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3928
    nop

    .line 3929
    return-void

    .line 3926
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3928
    throw v2
.end method

.method public blacklist adjustSuggestedStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # Landroid/os/UserHandle;
    .param p8, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6100
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6102
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6103
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6104
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6105
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6106
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6107
    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6108
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6109
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6113
    nop

    .line 6114
    return-void

    .line 6112
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6113
    throw v1
.end method

.method public blacklist areNavigationRepeatSoundEffectsEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6257
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6258
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6259
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6262
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6264
    nop

    .line 6265
    return v2

    .line 6262
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6264
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 3766
    iget-object v0, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cacheBinauralRecordParameters(Ljava/lang/String;)V
    .locals 5
    .param p1, "kvpairs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5937
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5938
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5941
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5943
    nop

    .line 5944
    return-void

    .line 5941
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5943
    throw v2
.end method

.method public blacklist cacheParameters(Ljava/lang/String;)V
    .locals 5
    .param p1, "keyValuePairs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5985
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x84

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5986
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5989
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5991
    nop

    .line 5992
    return-void

    .line 5989
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5990
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5991
    throw v2
.end method

.method public blacklist canBeSpatialized(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;)Z
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "af"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6630
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6631
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6632
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6633
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xaa

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6634
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6635
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6638
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6640
    nop

    .line 6641
    return v2

    .line 6638
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6640
    throw v2
.end method

.method public blacklist cancelMuteAwaitConnection(Landroid/media/AudioDeviceAttributes;)V
    .locals 5
    .param p1, "dev"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7018
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7019
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7020
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7023
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7024
    nop

    .line 7025
    return-void

    .line 7023
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7024
    throw v1
.end method

.method public blacklist clearPreferredDevicesForCapturePreset(I)I
    .locals 5
    .param p1, "capturePreset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6016
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6019
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6021
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6022
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6023
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6026
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6028
    nop

    .line 6029
    return v2

    .line 6026
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6028
    throw v2
.end method

.method public greylist-max-o disableSafeMediaVolume(Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5160
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5162
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5163
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5166
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5168
    nop

    .line 5169
    return-void

    .line 5166
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5168
    throw v2
.end method

.method public greylist-max-o dispatchFocusChange(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "focusChange"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5455
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5458
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5459
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5460
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5461
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5462
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5463
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5467
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5469
    nop

    .line 5470
    return v2

    .line 5467
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5469
    throw v2
.end method

.method public greylist-max-o forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    .locals 5
    .param p1, "startForcing"    # Z
    .param p2, "cb"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4003
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4005
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4006
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4007
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4008
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4009
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4012
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4014
    nop

    .line 4015
    return-void

    .line 4012
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4013
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4014
    throw v2
.end method

.method public greylist-max-o forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4937
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4938
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4939
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4942
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4944
    nop

    .line 4945
    return-void

    .line 4942
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4944
    throw v2
.end method

.method public blacklist getActiveAssistantServiceUids()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7196
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7197
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7198
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7201
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7203
    nop

    .line 7204
    return-object v2

    .line 7201
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7203
    throw v2
.end method

.method public greylist-max-o getActivePlaybackConfigurations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioPlaybackConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5419
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5422
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5423
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5424
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5425
    sget-object v3, Landroid/media/AudioPlaybackConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5428
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5430
    nop

    .line 5431
    return-object v2

    .line 5428
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5430
    throw v2
.end method

.method public greylist-max-o getActiveRecordingConfigurations()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5379
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5381
    sget-object v3, Landroid/media/AudioRecordingConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5384
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5386
    nop

    .line 5387
    return-object v2

    .line 5384
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5386
    throw v2
.end method

.method public blacklist getActualHeadTrackingMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6835
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6836
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6837
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6838
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6841
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6843
    nop

    .line 6844
    return v2

    .line 6841
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6843
    throw v2
.end method

.method public blacklist getAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6330
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6333
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6334
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6335
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x99

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6336
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6337
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 6340
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6342
    nop

    .line 6343
    return-wide v2

    .line 6340
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6342
    throw v2
.end method

.method public blacklist getAllowedCapturePolicy()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5791
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x78

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5792
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5793
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5796
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5798
    nop

    .line 5799
    return v2

    .line 5796
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5798
    throw v2
.end method

.method public blacklist getAssistantServicesUids()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7179
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7180
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7181
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7184
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7186
    nop

    .line 7187
    return-object v2

    .line 7184
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7186
    throw v2
.end method

.method public blacklist getAudioProductStrategies()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioProductStrategy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4289
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4290
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4291
    sget-object v3, Landroid/media/audiopolicy/AudioProductStrategy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4294
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4296
    nop

    .line 4297
    return-object v2

    .line 4294
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioProductStrategy;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4295
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4296
    throw v2
.end method

.method public blacklist getAudioVolumeGroups()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/audiopolicy/AudioVolumeGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4149
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4150
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4151
    sget-object v3, Landroid/media/audiopolicy/AudioVolumeGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4154
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4156
    nop

    .line 4157
    return-object v2

    .line 4154
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/audiopolicy/AudioVolumeGroup;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4156
    throw v2
.end method

.method public blacklist getAvailableCommunicationDeviceIds()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6173
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6177
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6178
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6179
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6182
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6184
    nop

    .line 6185
    return-object v2

    .line 6182
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6184
    throw v2
.end method

.method public blacklist getBleCgVolume()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4074
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4077
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4078
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4079
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4080
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4083
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4085
    nop

    .line 4086
    return v2

    .line 4083
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4085
    throw v2
.end method

.method public blacklist getCommunicationDevice()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6212
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6213
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6214
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6215
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6218
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6220
    nop

    .line 6221
    return v2

    .line 6218
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6220
    throw v2
.end method

.method public greylist-max-o getCurrentAudioFocus()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4870
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4874
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4875
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4876
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4879
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4881
    nop

    .line 4882
    return v2

    .line 4879
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4881
    throw v2
.end method

.method public blacklist getDefaultVolumeInfo()Landroid/media/VolumeInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6969
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6973
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6974
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6975
    sget-object v3, Landroid/media/VolumeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/VolumeInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6978
    .local v2, "_result":Landroid/media/VolumeInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6980
    nop

    .line 6981
    return-object v2

    .line 6978
    .end local v2    # "_result":Landroid/media/VolumeInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6980
    throw v2
.end method

.method public blacklist getDesiredHeadTrackingMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6802
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6803
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6804
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6807
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6809
    nop

    .line 6810
    return v2

    .line 6807
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6809
    throw v2
.end method

.method public blacklist getDeviceMaskForStream(I)I
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6154
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6155
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6158
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6159
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6160
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6161
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6165
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6167
    nop

    .line 6168
    return v2

    .line 6165
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6166
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6167
    throw v2
.end method

.method public blacklist getDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;)I
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5860
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5863
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5864
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5865
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5866
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5867
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5870
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5872
    nop

    .line 5873
    return v2

    .line 5870
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5871
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5872
    throw v2
.end method

.method public blacklist getDevicesForAttributes(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5737
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5738
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x75

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5739
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5740
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5743
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5745
    nop

    .line 5746
    return-object v2

    .line 5743
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5744
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5745
    throw v2
.end method

.method public blacklist getDevicesForAttributesUnprotected(Landroid/media/AudioAttributes;)Ljava/util/List;
    .locals 5
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioAttributes;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5750
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5751
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5754
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5755
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5756
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x76

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5757
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5758
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5761
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5763
    nop

    .line 5764
    return-object v2

    .line 5761
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5762
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5763
    throw v2
.end method

.method public blacklist getEncodedSurroundMode(I)I
    .locals 5
    .param p1, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4695
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4696
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4697
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4698
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4699
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4702
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4704
    nop

    .line 4705
    return v2

    .line 4702
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4704
    throw v2
.end method

.method public blacklist getFadeOutDurationOnFocusLossMillis(Landroid/media/AudioAttributes;)J
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6413
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6417
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6418
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6419
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6420
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 6423
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6425
    nop

    .line 6426
    return-wide v2

    .line 6423
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6425
    throw v2
.end method

.method public greylist-max-o getFocusRampTimeMs(ILandroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "focusGain"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5435
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5436
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5441
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5442
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x64

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5443
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5444
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5447
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5449
    nop

    .line 5450
    return v2

    .line 5447
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5449
    throw v2
.end method

.method public blacklist getFocusStack()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioFocusInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7093
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7094
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7097
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7098
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7099
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7100
    sget-object v3, Landroid/media/AudioFocusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7103
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7105
    nop

    .line 7106
    return-object v2

    .line 7103
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioFocusInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7105
    throw v2
.end method

.method public blacklist getHalVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7229
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7232
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7233
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7234
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7235
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7238
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7240
    nop

    .line 7241
    return-object v2

    .line 7238
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7240
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 3770
    const-string v0, "android.media.IAudioService"

    return-object v0
.end method

.method public greylist-max-o getLastAudibleStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4240
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4242
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4245
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4247
    nop

    .line 4248
    return v2

    .line 4245
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4247
    throw v2
.end method

.method public blacklist getLastHfpScoVolume()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4091
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4094
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4095
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4096
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4097
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4100
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4102
    nop

    .line 4103
    return v2

    .line 4100
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4101
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4102
    throw v2
.end method

.method public blacklist getMaxAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;)J
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6352
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6353
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6354
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6355
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 6358
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6360
    nop

    .line 6361
    return-wide v2

    .line 6358
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6360
    throw v2
.end method

.method public blacklist getMaxVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4203
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4204
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4205
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4209
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4211
    nop

    .line 4212
    return v2

    .line 4209
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4211
    throw v2
.end method

.method public blacklist getMinVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4221
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4222
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4223
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4224
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4227
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4229
    nop

    .line 4230
    return v2

    .line 4227
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4229
    throw v2
.end method

.method public greylist-max-o getMode()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4523
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4524
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4525
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4528
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4530
    nop

    .line 4531
    return v2

    .line 4528
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4530
    throw v2
.end method

.method public blacklist getMutingExpectedDevice()Landroid/media/AudioDeviceAttributes;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7032
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7033
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7034
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7035
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioDeviceAttributes;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7038
    .local v2, "_result":Landroid/media/AudioDeviceAttributes;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7040
    nop

    .line 7041
    return-object v2

    .line 7038
    .end local v2    # "_result":Landroid/media/AudioDeviceAttributes;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7039
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7040
    throw v2
.end method

.method public blacklist getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keyValuePairs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5894
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5895
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5898
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5899
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5900
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5901
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5902
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5905
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5907
    nop

    .line 5908
    return-object v2

    .line 5905
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5907
    throw v2
.end method

.method public blacklist getPreferredDevicesForCapturePreset(I)Ljava/util/List;
    .locals 5
    .param p1, "capturePreset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6040
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6041
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6042
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6045
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6047
    nop

    .line 6048
    return-object v2

    .line 6045
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6047
    throw v2
.end method

.method public blacklist getPreferredDevicesForStrategy(I)Ljava/util/List;
    .locals 5
    .param p1, "strategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5715
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5718
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5719
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5720
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5721
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5722
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5725
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5727
    nop

    .line 5728
    return-object v2

    .line 5725
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5727
    throw v2
.end method

.method public blacklist getReportedSurroundFormats()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4622
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4623
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4624
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4625
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 4626
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 4629
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .local v2, "_result":Ljava/util/List;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4631
    nop

    .line 4632
    return-object v2

    .line 4629
    .end local v2    # "_result":Ljava/util/List;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4631
    throw v2
.end method

.method public greylist-max-o getRingerModeExternal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4398
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4402
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4403
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4404
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4407
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4409
    nop

    .line 4410
    return v2

    .line 4407
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4408
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4409
    throw v2
.end method

.method public greylist-max-o getRingerModeInternal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4419
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4420
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4421
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4424
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4426
    nop

    .line 4427
    return v2

    .line 4424
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4426
    throw v2
.end method

.method public greylist-max-o getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4963
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4964
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4967
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4968
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4969
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4970
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/IRingtonePlayer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRingtonePlayer;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4973
    .local v2, "_result":Landroid/media/IRingtonePlayer;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4975
    nop

    .line 4976
    return-object v2

    .line 4973
    .end local v2    # "_result":Landroid/media/IRingtonePlayer;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4974
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4975
    throw v2
.end method

.method public blacklist getSpatializerCompatibleAudioDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6735
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6736
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6739
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6740
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6741
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6742
    sget-object v3, Landroid/media/AudioDeviceAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6745
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6747
    nop

    .line 6748
    return-object v2

    .line 6745
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6747
    throw v2
.end method

.method public blacklist getSpatializerImmersiveAudioLevel()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6462
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6463
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6467
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6469
    nop

    .line 6470
    return v2

    .line 6467
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6469
    throw v2
.end method

.method public blacklist getSpatializerOutput()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6909
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6910
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6914
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6916
    nop

    .line 6917
    return v2

    .line 6914
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6916
    throw v2
.end method

.method public blacklist getSpatializerParameter(I[B)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6890
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6891
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6892
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6893
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6894
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6895
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6898
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6900
    nop

    .line 6901
    return-void

    .line 6898
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6899
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6900
    throw v2
.end method

.method public greylist-max-o getStreamMaxVolume(I)I
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4127
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4130
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4132
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4133
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4134
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4137
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4139
    nop

    .line 4140
    return v2

    .line 4137
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4138
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4139
    throw v2
.end method

.method public greylist-max-o getStreamMinVolume(I)I
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4109
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4112
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4113
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4114
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4115
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4116
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4119
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4121
    nop

    .line 4122
    return v2

    .line 4119
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4121
    throw v2
.end method

.method public greylist-max-o getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4055
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4058
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4059
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4060
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4061
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4062
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4065
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4067
    nop

    .line 4068
    return v2

    .line 4065
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4067
    throw v2
.end method

.method public blacklist getSupportedHeadTrackingModes()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6815
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6818
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6819
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6820
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6821
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 6824
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6826
    nop

    .line 6827
    return-object v2

    .line 6824
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6826
    throw v2
.end method

.method public blacklist getSupportedSystemUsages()[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4268
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4272
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4273
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4274
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 4277
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4279
    nop

    .line 4280
    return-object v2

    .line 4277
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4279
    throw v2
.end method

.method public blacklist getSurroundFormats()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4601
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4605
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4606
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4607
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 4608
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 4611
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4613
    nop

    .line 4614
    return-object v2

    .line 4611
    .end local v2    # "_result":Ljava/util/Map;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4613
    throw v2
.end method

.method public greylist-max-o getUiSoundsStreamType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4985
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4986
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4987
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4990
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4992
    nop

    .line 4993
    return v2

    .line 4990
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4992
    throw v2
.end method

.method public greylist-max-o getVibrateSetting(I)I
    .locals 5
    .param p1, "vibrateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4470
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4471
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4472
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4473
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4476
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4478
    nop

    .line 4479
    return v2

    .line 4476
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4477
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4478
    throw v2
.end method

.method public blacklist getVolumeIndexForAttributes(Landroid/media/AudioAttributes;)I
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4181
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4185
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4186
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x19

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4187
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4191
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4193
    nop

    .line 4194
    return v2

    .line 4191
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4193
    throw v2
.end method

.method public blacklist handleBluetoothA2dpActiveDeviceChange(Landroid/bluetooth/BluetoothDevice;IIZI)V
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I
    .param p3, "profile"    # I
    .param p4, "suppressNoisyIntent"    # Z
    .param p5, "a2dpVolume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5037
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5039
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5040
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5041
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5042
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 5043
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5044
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 5045
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5046
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5049
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5051
    nop

    .line 5052
    return-void

    .line 5049
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5050
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5051
    throw v2
.end method

.method public blacklist handleBluetoothActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothDevice;Landroid/media/BluetoothProfileConnectionInfo;)V
    .locals 5
    .param p1, "newDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "previousDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "info"    # Landroid/media/BluetoothProfileConnectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5491
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5492
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5493
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5494
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5495
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5498
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5500
    nop

    .line 5501
    return-void

    .line 5498
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5500
    throw v2
.end method

.method public blacklist handleVolumeKey(Landroid/view/KeyEvent;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "isOnTv"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3971
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3972
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3973
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3974
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3975
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3976
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3980
    nop

    .line 3981
    return-void

    .line 3979
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3980
    throw v1
.end method

.method public blacklist hasHapticChannels(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5646
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5647
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5648
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5649
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5650
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5653
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5655
    nop

    .line 5656
    return v2

    .line 5653
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5655
    throw v2
.end method

.method public blacklist hasHeadTracker(Landroid/media/AudioDeviceAttributes;)Z
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6531
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6532
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6533
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6534
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6537
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6539
    nop

    .line 6540
    return v2

    .line 6537
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6538
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6539
    throw v2
.end method

.method public blacklist hasRegisteredDynamicPolicy()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5335
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5336
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5337
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5340
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5342
    nop

    .line 5343
    return v2

    .line 5340
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5342
    throw v2
.end method

.method public greylist-max-o isAudioServerRunning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5550
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5551
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5552
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5555
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5557
    nop

    .line 5558
    return v2

    .line 5555
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5557
    throw v2
.end method

.method public greylist-max-o isBluetoothA2dpOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4790
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4794
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4795
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4796
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4799
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4801
    nop

    .line 4802
    return v2

    .line 4799
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4801
    throw v2
.end method

.method public greylist-max-o isBluetoothScoOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4757
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4758
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4762
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4763
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4764
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4767
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4769
    nop

    .line 4770
    return v2

    .line 4767
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4769
    throw v2
.end method

.method public blacklist isCallScreeningModeSupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5664
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5665
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5666
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5667
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5670
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5672
    nop

    .line 5673
    return v2

    .line 5670
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5672
    throw v2
.end method

.method public greylist-max-o isCameraSoundForced()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5074
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5077
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5078
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5079
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5080
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5083
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5085
    nop

    .line 5086
    return v2

    .line 5083
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5085
    throw v2
.end method

.method public greylist-max-o isHdmiSystemAudioSupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5194
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5195
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5196
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5197
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5200
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5202
    nop

    .line 5203
    return v2

    .line 5200
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5202
    throw v2
.end method

.method public blacklist isHeadTrackerAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6583
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6584
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6585
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6588
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6590
    nop

    .line 6591
    return v2

    .line 6588
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6590
    throw v2
.end method

.method public blacklist isHeadTrackerEnabled(Landroid/media/AudioDeviceAttributes;)Z
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6561
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6564
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6565
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6566
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6567
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6568
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6571
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6573
    nop

    .line 6574
    return v2

    .line 6571
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6573
    throw v2
.end method

.method public blacklist isHomeSoundEffectEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6282
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6285
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6286
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6287
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6288
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6291
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6293
    nop

    .line 6294
    return v2

    .line 6291
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6293
    throw v2
.end method

.method public greylist-max-o isMasterMute()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4019
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4023
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4024
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4025
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4028
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4030
    nop

    .line 4031
    return v2

    .line 4028
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4030
    throw v2
.end method

.method public blacklist isMicrophoneMuted()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4305
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4306
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4307
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4308
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4311
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4313
    nop

    .line 4314
    return v2

    .line 4311
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4312
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4313
    throw v2
.end method

.method public blacklist isMusicActive(Z)Z
    .locals 5
    .param p1, "remotely"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6136
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6137
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6142
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6143
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6144
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6147
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6149
    nop

    .line 6150
    return v2

    .line 6147
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6148
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6149
    throw v2
.end method

.method public blacklist isPstnCallAudioInterceptable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6985
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6986
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6990
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6991
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6992
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6995
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6997
    nop

    .line 6998
    return v2

    .line 6995
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6997
    throw v2
.end method

.method public blacklist isSpatializerAvailable()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6495
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6496
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6497
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6498
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6501
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6503
    nop

    .line 6504
    return v2

    .line 6501
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6503
    throw v2
.end method

.method public blacklist isSpatializerAvailableForDevice(Landroid/media/AudioDeviceAttributes;)Z
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6512
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6513
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6514
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6515
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6516
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6519
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6521
    nop

    .line 6522
    return v2

    .line 6519
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6521
    throw v2
.end method

.method public blacklist isSpatializerEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6475
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6478
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6479
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6480
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6481
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6484
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6486
    nop

    .line 6487
    return v2

    .line 6484
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6485
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6486
    throw v2
.end method

.method public greylist-max-o isSpeakerphoneOn()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4726
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4729
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4730
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4731
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4732
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4735
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4737
    nop

    .line 4738
    return v2

    .line 4735
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4737
    throw v2
.end method

.method public greylist-max-o isStreamAffectedByMute(I)Z
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5145
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5146
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5147
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5150
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5152
    nop

    .line 5153
    return v2

    .line 5150
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5152
    throw v2
.end method

.method public greylist-max-o isStreamAffectedByRingerMode(I)Z
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5125
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5126
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5127
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5128
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5129
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5132
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5134
    nop

    .line 5135
    return v2

    .line 5132
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5134
    throw v2
.end method

.method public greylist-max-o isStreamMute(I)Z
    .locals 5
    .param p1, "streamType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3988
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3989
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3990
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3991
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3995
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3997
    nop

    .line 3998
    return v2

    .line 3995
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3997
    throw v2
.end method

.method public blacklist isSurroundFormatEnabled(I)Z
    .locals 5
    .param p1, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4656
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4659
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4660
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4661
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4662
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4663
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4666
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4668
    nop

    .line 4669
    return v2

    .line 4666
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4667
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4668
    throw v2
.end method

.method public blacklist isUltrasoundSupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4319
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4323
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4324
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4325
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4328
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4330
    nop

    .line 4331
    return v2

    .line 4328
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4330
    throw v2
.end method

.method public greylist-max-o isValidRingerMode(I)Z
    .locals 5
    .param p1, "ringerMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4432
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4437
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4438
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4439
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4442
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4444
    nop

    .line 4445
    return v2

    .line 4442
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4444
    throw v2
.end method

.method public blacklist isVolumeFixed()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6951
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6952
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6955
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6956
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6957
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6958
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6961
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6963
    nop

    .line 6964
    return v2

    .line 6961
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6963
    throw v2
.end method

.method public greylist-max-o loadSoundEffects()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4561
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4562
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4566
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4567
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4568
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4571
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4573
    nop

    .line 4574
    return v2

    .line 4571
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4573
    throw v2
.end method

.method public blacklist muteAwaitConnection([ILandroid/media/AudioDeviceAttributes;J)V
    .locals 5
    .param p1, "usagesToMute"    # [I
    .param p2, "dev"    # Landroid/media/AudioDeviceAttributes;
    .param p3, "timeOutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7002
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7004
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7006
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7007
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 7008
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7011
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7012
    nop

    .line 7013
    return-void

    .line 7011
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7012
    throw v1
.end method

.method public greylist-max-o notifyVolumeControllerVisible(Landroid/media/IVolumeController;Z)V
    .locals 5
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .param p2, "visible"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5106
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5108
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5109
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5110
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5111
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5112
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5115
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5117
    nop

    .line 5118
    return-void

    .line 5115
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5117
    throw v2
.end method

.method public blacklist oplusRegisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/IAudioModeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5955
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5956
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5959
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5961
    nop

    .line 5962
    return-void

    .line 5959
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5961
    throw v2
.end method

.method public blacklist playSoundEffect(II)V
    .locals 5
    .param p1, "effectType"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4537
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4539
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4540
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4544
    nop

    .line 4545
    return-void

    .line 4543
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4544
    throw v1
.end method

.method public greylist-max-o playSoundEffectVolume(IF)V
    .locals 5
    .param p1, "effectType"    # I
    .param p2, "volume"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4550
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4552
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 4553
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4557
    nop

    .line 4558
    return-void

    .line 4556
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4557
    throw v1
.end method

.method public greylist-max-o playerAttributes(ILandroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "piid"    # I
    .param p2, "attr"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3799
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3801
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3803
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3804
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3807
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3808
    nop

    .line 3809
    return-void

    .line 3807
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3808
    throw v1
.end method

.method public blacklist playerEvent(III)V
    .locals 5
    .param p1, "piid"    # I
    .param p2, "event"    # I
    .param p3, "deviceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3812
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3814
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3816
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3817
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3818
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3822
    nop

    .line 3823
    return-void

    .line 3821
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3822
    throw v1
.end method

.method public greylist-max-o playerHasOpPlayAudio(IZ)V
    .locals 5
    .param p1, "piid"    # I
    .param p2, "hasOpPlayAudio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5476
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5478
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5479
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5483
    nop

    .line 5484
    return-void

    .line 5482
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5483
    throw v1
.end method

.method public blacklist playerSessionId(II)V
    .locals 5
    .param p1, "piid"    # I
    .param p2, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3881
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3883
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3885
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3886
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3890
    nop

    .line 3891
    return-void

    .line 3889
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3890
    throw v1
.end method

.method public blacklist recenterHeadTracker()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6862
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6863
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6866
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6867
    nop

    .line 6868
    return-void

    .line 6866
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6867
    throw v1
.end method

.method public blacklist recorderEvent(II)V
    .locals 5
    .param p1, "riid"    # I
    .param p2, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3856
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3858
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3859
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3860
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3861
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3865
    nop

    .line 3866
    return-void

    .line 3864
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3865
    throw v1
.end method

.method public blacklist registerAudioPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;ZZZZLandroid/media/projection/IMediaProjection;)Ljava/lang/String;
    .locals 5
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p3, "hasFocusListener"    # Z
    .param p4, "isFocusPolicy"    # Z
    .param p5, "isTestFocusPolicy"    # Z
    .param p6, "isVolumeController"    # Z
    .param p7, "projection"    # Landroid/media/projection/IMediaProjection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5212
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5214
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5215
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5216
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5217
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5218
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5219
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x56

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5220
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5221
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5224
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5226
    nop

    .line 5227
    return-object v2

    .line 5224
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5225
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5226
    throw v2
.end method

.method public greylist-max-o registerAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 5
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5523
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5524
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5527
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5529
    nop

    .line 5530
    return-void

    .line 5527
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5529
    throw v2
.end method

.method public blacklist registerCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/ICapturePresetDevicesRoleDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6055
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6056
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6057
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6058
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6061
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6063
    nop

    .line 6064
    return-void

    .line 6061
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6063
    throw v2
.end method

.method public blacklist registerCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/ICommunicationDeviceDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6230
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6231
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6234
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6236
    nop

    .line 6237
    return-void

    .line 6234
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6236
    throw v2
.end method

.method public blacklist registerDeviceVolumeBehaviorDispatcher(ZLandroid/media/IDeviceVolumeBehaviorDispatcher;)V
    .locals 5
    .param p1, "register"    # Z
    .param p2, "dispatcher"    # Landroid/media/IDeviceVolumeBehaviorDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7077
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7078
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7081
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7082
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7083
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7084
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7087
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7089
    nop

    .line 7090
    return-void

    .line 7087
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7088
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7089
    throw v2
.end method

.method public blacklist registerDeviceVolumeDispatcherForAbsoluteVolume(ZLandroid/media/IAudioDeviceVolumeDispatcher;Ljava/lang/String;Landroid/media/AudioDeviceAttributes;Ljava/util/List;Z)V
    .locals 5
    .param p1, "register"    # Z
    .param p2, "cb"    # Landroid/media/IAudioDeviceVolumeDispatcher;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p6, "handlesvolumeAdjustment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/media/IAudioDeviceVolumeDispatcher;",
            "Ljava/lang/String;",
            "Landroid/media/AudioDeviceAttributes;",
            "Ljava/util/List<",
            "Landroid/media/VolumeInfo;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7208
    .local p5, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/media/VolumeInfo;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7209
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7214
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7215
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7216
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 7217
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7218
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xcf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7219
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7222
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7224
    nop

    .line 7225
    return-void

    .line 7222
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7223
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7224
    throw v2
.end method

.method public blacklist registerHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6710
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6711
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6714
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6716
    nop

    .line 6717
    return-void

    .line 6714
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6716
    throw v2
.end method

.method public blacklist registerModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/IAudioModeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6431
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6435
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6436
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6439
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6441
    nop

    .line 6442
    return-void

    .line 6439
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6441
    throw v2
.end method

.method public blacklist registerMuteAwaitConnectionDispatcher(Landroid/media/IMuteAwaitConnectionCallback;Z)V
    .locals 5
    .param p1, "cb"    # Landroid/media/IMuteAwaitConnectionCallback;
    .param p2, "register"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7045
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7046
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7048
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7049
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7050
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7051
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7052
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7055
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7057
    nop

    .line 7058
    return-void

    .line 7055
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7056
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7057
    throw v2
.end method

.method public greylist-max-o registerPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 5
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5392
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5394
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5396
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5397
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5400
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5402
    nop

    .line 5403
    return-void

    .line 5400
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5402
    throw v2
.end method

.method public greylist-max-o registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 5
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5350
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5352
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5353
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5356
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5358
    nop

    .line 5359
    return-void

    .line 5356
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5358
    throw v2
.end method

.method public blacklist registerSpatializerCallback(Landroid/media/ISpatializerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6648
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6649
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6650
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6651
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6654
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6656
    nop

    .line 6657
    return-void

    .line 6654
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6655
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6656
    throw v2
.end method

.method public blacklist registerSpatializerHeadTrackerAvailableCallback(Landroid/media/ISpatializerHeadTrackerAvailableCallback;Z)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerHeadTrackerAvailableCallback;
    .param p2, "register"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6598
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6600
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6601
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6602
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6605
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6607
    nop

    .line 6608
    return-void

    .line 6605
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6607
    throw v2
.end method

.method public blacklist registerSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerHeadTrackingModeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6680
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xad

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6681
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6684
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6686
    nop

    .line 6687
    return-void

    .line 6684
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6686
    throw v2
.end method

.method public blacklist registerSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerOutputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6926
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6927
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6930
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6932
    nop

    .line 6933
    return-void

    .line 6930
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6932
    throw v2
.end method

.method public blacklist registerStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDevicesDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5803
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5804
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5806
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5807
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5808
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5809
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5812
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5814
    nop

    .line 5815
    return-void

    .line 5812
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5814
    throw v2
.end method

.method public greylist-max-o releasePlayer(I)V
    .locals 5
    .param p1, "piid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3828
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3829
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3830
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3834
    nop

    .line 3835
    return-void

    .line 3833
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3834
    throw v1
.end method

.method public blacklist releaseRecorder(I)V
    .locals 5
    .param p1, "riid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3869
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3871
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3872
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3873
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3876
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3877
    nop

    .line 3878
    return-void

    .line 3876
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3877
    throw v1
.end method

.method public greylist-max-o reloadAudioSettings()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4589
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4591
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4592
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4595
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4596
    nop

    .line 4597
    return-void

    .line 4595
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4596
    throw v1
.end method

.method public blacklist removeAssistantServicesUids([I)V
    .locals 5
    .param p1, "assistantUID"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7149
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7150
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7153
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7155
    nop

    .line 7156
    return-void

    .line 7153
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7155
    throw v2
.end method

.method public greylist-max-o removeMixForPolicy(Landroid/media/audiopolicy/AudioPolicyConfig;Landroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 5
    .param p1, "policyConfig"    # Landroid/media/audiopolicy/AudioPolicyConfig;
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5281
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5282
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5283
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5284
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5285
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5286
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5289
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5291
    nop

    .line 5292
    return v2

    .line 5289
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5291
    throw v2
.end method

.method public blacklist removePreferredDevicesForStrategy(I)I
    .locals 5
    .param p1, "strategy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5697
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5701
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5702
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x73

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5703
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5704
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5707
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5709
    nop

    .line 5710
    return v2

    .line 5707
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5709
    throw v2
.end method

.method public blacklist removeSpatializerCompatibleAudioDevice(Landroid/media/AudioDeviceAttributes;)V
    .locals 5
    .param p1, "ada"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6767
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6768
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6771
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6772
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6773
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6776
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6778
    nop

    .line 6779
    return-void

    .line 6776
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6778
    throw v2
.end method

.method public blacklist removeUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5584
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5587
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5588
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5589
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5590
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5591
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5592
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5595
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5597
    nop

    .line 5598
    return v2

    .line 5595
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5597
    throw v2
.end method

.method public blacklist removeUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5624
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5627
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5628
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5629
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5630
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5631
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5632
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5635
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5637
    nop

    .line 5638
    return v2

    .line 5635
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5637
    throw v2
.end method

.method public blacklist requestAudioFocus(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/media/audiopolicy/IAudioPolicyCallback;I)I
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .param p8, "flags"    # I
    .param p9, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p10, "sdk"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4807
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4811
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4812
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4813
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4814
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4815
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4816
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4817
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4818
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 4819
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4820
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeInt(I)V

    .line 4821
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4822
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4823
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4826
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4828
    nop

    .line 4829
    return v2

    .line 4826
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4827
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4828
    throw v2
.end method

.method public blacklist requestAudioFocusForTest(Landroid/media/AudioAttributes;ILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;III)I
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;
    .param p7, "flags"    # I
    .param p8, "uid"    # I
    .param p9, "sdk"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6370
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6371
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6372
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6373
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6374
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6375
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6376
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 6377
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6378
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 6379
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6381
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6384
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6386
    nop

    .line 6387
    return v2

    .line 6384
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6386
    throw v2
.end method

.method public blacklist sendFocusLoss(Landroid/media/AudioFocusInfo;Landroid/media/audiopolicy/IAudioPolicyCallback;)Z
    .locals 5
    .param p1, "focusLoser"    # Landroid/media/AudioFocusInfo;
    .param p2, "apcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7111
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7114
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7115
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7116
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 7117
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7118
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7119
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7122
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7124
    nop

    .line 7125
    return v2

    .line 7122
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7123
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7124
    throw v2
.end method

.method public blacklist setActiveAssistantServiceUids([I)V
    .locals 5
    .param p1, "activeUids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 7164
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7165
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7168
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7170
    nop

    .line 7171
    return-void

    .line 7168
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7170
    throw v2
.end method

.method public blacklist setAdditionalOutputDeviceDelay(Landroid/media/AudioDeviceAttributes;J)Z
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6315
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6316
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 6317
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6318
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6319
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6322
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6324
    nop

    .line 6325
    return v2

    .line 6322
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6324
    throw v2
.end method

.method public blacklist setAllowedCapturePolicy(I)I
    .locals 5
    .param p1, "capturePolicy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5768
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5769
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5772
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5773
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5774
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5775
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5779
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5781
    nop

    .line 5782
    return v2

    .line 5779
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5781
    throw v2
.end method

.method public greylist-max-o setBluetoothA2dpOn(Z)V
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4777
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4779
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4780
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4783
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4785
    nop

    .line 4786
    return-void

    .line 4783
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4785
    throw v2
.end method

.method public greylist-max-o setBluetoothScoOn(Z)V
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4743
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4745
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4746
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4747
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4748
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4751
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4753
    nop

    .line 4754
    return-void

    .line 4751
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4753
    throw v2
.end method

.method public blacklist setCommunicationDevice(Landroid/os/IBinder;I)Z
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "portId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6190
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 6195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6196
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6197
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6198
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6201
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6203
    nop

    .line 6204
    return v2

    .line 6201
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6203
    throw v2
.end method

.method public blacklist setDesiredHeadTrackingMode(I)V
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6783
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6786
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6787
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6788
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6791
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6793
    nop

    .line 6794
    return-void

    .line 6791
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6793
    throw v2
.end method

.method public blacklist setDeviceVolumeBehavior(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "deviceVolumeBehavior"    # I
    .param p3, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5843
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5845
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5846
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5847
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5848
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5849
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5850
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5853
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5855
    nop

    .line 5856
    return-void

    .line 5853
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5855
    throw v2
.end method

.method public blacklist setEncodedSurroundMode(I)Z
    .locals 5
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4673
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4674
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4677
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4678
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4679
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4680
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4681
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4684
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4686
    nop

    .line 4687
    return v2

    .line 4684
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4685
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4686
    throw v2
.end method

.method public greylist-max-o setFocusPropertiesForPolicy(ILandroid/media/audiopolicy/IAudioPolicyCallback;)I
    .locals 5
    .param p1, "duckingBehavior"    # I
    .param p2, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5300
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5303
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5304
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5305
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5308
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5310
    nop

    .line 5311
    return v2

    .line 5308
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5310
    throw v2
.end method

.method public greylist-max-o setFocusRequestResultFromExtPolicy(Landroid/media/AudioFocusInfo;ILandroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "afi"    # Landroid/media/AudioFocusInfo;
    .param p2, "requestResult"    # I
    .param p3, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5506
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5507
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5508
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5509
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5510
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x68

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5514
    nop

    .line 5515
    return-void

    .line 5513
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5514
    throw v1
.end method

.method public greylist-max-o setHdmiSystemAudioSupported(Z)I
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5173
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5176
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5177
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5178
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5179
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5180
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5183
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5185
    nop

    .line 5186
    return v2

    .line 5183
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5185
    throw v2
.end method

.method public blacklist setHeadTrackerEnabled(ZLandroid/media/AudioDeviceAttributes;)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "device"    # Landroid/media/AudioDeviceAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6545
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6547
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6548
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6549
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6550
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6551
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6554
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6556
    nop

    .line 6557
    return-void

    .line 6554
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6556
    throw v2
.end method

.method public blacklist setHomeSoundEffectEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6300
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6302
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x97

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6306
    nop

    .line 6307
    return-void

    .line 6305
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6306
    throw v1
.end method

.method public blacklist setIPDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "state"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "cb"    # Landroid/os/IBinder;
    .param p5, "suppressNoisyIntent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5019
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5020
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5021
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5022
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5023
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 5024
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5025
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5026
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5029
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5031
    nop

    .line 5032
    return-void

    .line 5029
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5031
    throw v2
.end method

.method public blacklist setMasterMute(ZILjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "mute"    # Z
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4036
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4040
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4041
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4042
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4043
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4044
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4045
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4048
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4050
    nop

    .line 4051
    return-void

    .line 4048
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4050
    throw v2
.end method

.method public blacklist setMicrophoneMute(ZLjava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4341
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4342
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4343
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4344
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4347
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4349
    nop

    .line 4350
    return-void

    .line 4347
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4349
    throw v2
.end method

.method public blacklist setMicrophoneMuteFromSwitch(Z)V
    .locals 5
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4355
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4356
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4357
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4361
    nop

    .line 4362
    return-void

    .line 4360
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4361
    throw v1
.end method

.method public greylist-max-o setMode(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4502
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4504
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4506
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4507
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4508
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4509
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4512
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4514
    nop

    .line 4515
    return-void

    .line 4512
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4513
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4514
    throw v2
.end method

.method public blacklist setMultiAudioFocusEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5968
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5970
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5972
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x83

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5975
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5976
    nop

    .line 5977
    return-void

    .line 5975
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5976
    throw v1
.end method

.method public blacklist setNavigationRepeatSoundEffectsEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6271
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6273
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x95

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6277
    nop

    .line 6278
    return-void

    .line 6276
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6277
    throw v1
.end method

.method public blacklist setParameters(Ljava/lang/String;)V
    .locals 5
    .param p1, "keyValuePairs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5882
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5883
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5884
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5885
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5888
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5890
    nop

    .line 5891
    return-void

    .line 5888
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5889
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5890
    throw v2
.end method

.method public blacklist setPreferredDevicesForCapturePreset(ILjava/util/List;)I
    .locals 5
    .param p1, "capturePreset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5995
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5996
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5999
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6000
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6001
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 6002
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6003
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6004
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 6007
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6009
    nop

    .line 6010
    return v2

    .line 6007
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6008
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6009
    throw v2
.end method

.method public blacklist setPreferredDevicesForStrategy(ILjava/util/List;)I
    .locals 5
    .param p1, "strategy"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/media/AudioDeviceAttributes;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5677
    .local p2, "device":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioDeviceAttributes;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 5683
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 5684
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5685
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5686
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5689
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5691
    nop

    .line 5692
    return v2

    .line 5689
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5691
    throw v2
.end method

.method public greylist-max-o setRingerModeExternal(ILjava/lang/String;)V
    .locals 5
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4368
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4369
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4370
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4371
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4372
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4375
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4377
    nop

    .line 4378
    return-void

    .line 4375
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4376
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4377
    throw v2
.end method

.method public greylist-max-o setRingerModeInternal(ILjava/lang/String;)V
    .locals 5
    .param p1, "ringerMode"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4386
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4387
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4388
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4391
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4393
    nop

    .line 4394
    return-void

    .line 4391
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4393
    throw v2
.end method

.method public greylist-max-o setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 5
    .param p1, "player"    # Landroid/media/IRingtonePlayer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4948
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4949
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4951
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4952
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4953
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4954
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4957
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4959
    nop

    .line 4960
    return-void

    .line 4957
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4959
    throw v2
.end method

.method public blacklist setRttEnabled(Z)V
    .locals 5
    .param p1, "rttEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5832
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 5834
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x7b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5838
    nop

    .line 5839
    return-void

    .line 5837
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5838
    throw v1
.end method

.method public blacklist setSpatializerEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 6616
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6617
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6620
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6622
    nop

    .line 6623
    return-void

    .line 6620
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6622
    throw v2
.end method

.method public blacklist setSpatializerGlobalTransform([F)V
    .locals 5
    .param p1, "transform"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6850
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6851
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 6852
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6856
    nop

    .line 6857
    return-void

    .line 6855
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6856
    throw v1
.end method

.method public blacklist setSpatializerParameter(I[B)V
    .locals 5
    .param p1, "key"    # I
    .param p2, "value"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6872
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6874
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6875
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6876
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 6877
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6878
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6881
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6883
    nop

    .line 6884
    return-void

    .line 6881
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6883
    throw v2
.end method

.method public blacklist setSpeakerphoneOn(Landroid/os/IBinder;Z)V
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4712
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4713
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4714
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4715
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4716
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4719
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4721
    nop

    .line 4722
    return-void

    .line 4719
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4721
    throw v2
.end method

.method public greylist-max-o setStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3932
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3937
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3938
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3939
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3940
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3941
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3944
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    nop

    .line 3947
    return-void

    .line 3944
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    throw v2
.end method

.method public blacklist setStreamVolumeForUid(IIILjava/lang/String;IILandroid/os/UserHandle;I)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "pid"    # I
    .param p7, "userHandle"    # Landroid/os/UserHandle;
    .param p8, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6117
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6119
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6120
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 6121
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6122
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 6123
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6124
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 6125
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 6126
    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 6127
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 6128
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6132
    nop

    .line 6133
    return-void

    .line 6131
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6132
    throw v1
.end method

.method public blacklist setStreamVolumePermission()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5912
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5913
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5916
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5917
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5918
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5919
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5922
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5924
    nop

    .line 5925
    return v2

    .line 5922
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5924
    throw v2
.end method

.method public blacklist setStreamVolumeWithAttribution(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3951
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3953
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3954
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3955
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3956
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3957
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3958
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3959
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3960
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3963
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3965
    nop

    .line 3966
    return-void

    .line 3963
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3965
    throw v2
.end method

.method public blacklist setSupportedSystemUsages([I)V
    .locals 5
    .param p1, "systemUsages"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4257
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4258
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4261
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4263
    nop

    .line 4264
    return-void

    .line 4261
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4263
    throw v2
.end method

.method public blacklist setSurroundFormatEnabled(IZ)Z
    .locals 5
    .param p1, "audioFormat"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4637
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4640
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4642
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4643
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4644
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4645
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4648
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4650
    nop

    .line 4651
    return v2

    .line 4648
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4649
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4650
    throw v2
.end method

.method public blacklist setTestDeviceConnectionState(Landroid/media/AudioDeviceAttributes;Z)V
    .locals 5
    .param p1, "device"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "connected"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7064
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7065
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7066
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7067
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc6

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7068
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7071
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7073
    nop

    .line 7074
    return-void

    .line 7071
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7072
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7073
    throw v2
.end method

.method public blacklist setUidDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "uid"    # I
    .param p3, "deviceTypes"    # [I
    .param p4, "deviceAddresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5566
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5568
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5569
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5570
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5571
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5572
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5573
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5576
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5578
    nop

    .line 5579
    return v2

    .line 5576
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5577
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5578
    throw v2
.end method

.method public blacklist setUserIdDeviceAffinity(Landroid/media/audiopolicy/IAudioPolicyCallback;I[I[Ljava/lang/String;)I
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .param p2, "userId"    # I
    .param p3, "deviceTypes"    # [I
    .param p4, "deviceAddresses"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5608
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5609
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5610
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 5611
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5612
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5613
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 5616
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5618
    nop

    .line 5619
    return v2

    .line 5616
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5617
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5618
    throw v2
.end method

.method public greylist-max-o setVibrateSetting(II)V
    .locals 5
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4452
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4455
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4456
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4459
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4461
    nop

    .line 4462
    return-void

    .line 4459
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4461
    throw v2
.end method

.method public greylist-max-o setVolumeController(Landroid/media/IVolumeController;)V
    .locals 5
    .param p1, "controller"    # Landroid/media/IVolumeController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5091
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5093
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5094
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5095
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5096
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5099
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5101
    nop

    .line 5102
    return-void

    .line 5099
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5101
    throw v2
.end method

.method public blacklist setVolumeIndexForAttributes(Landroid/media/AudioAttributes;IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioAttributes;
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4164
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4165
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 4166
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4167
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4168
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4169
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4170
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4171
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4174
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4176
    nop

    .line 4177
    return-void

    .line 4174
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4176
    throw v2
.end method

.method public greylist-max-o setVolumePolicy(Landroid/media/VolumePolicy;)V
    .locals 5
    .param p1, "policy"    # Landroid/media/VolumePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5319
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5320
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5321
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5324
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5326
    nop

    .line 5327
    return-void

    .line 5324
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5325
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5326
    throw v2
.end method

.method public blacklist setWiredDeviceConnectionState(Landroid/media/AudioDeviceAttributes;ILjava/lang/String;)V
    .locals 5
    .param p1, "aa"    # Landroid/media/AudioDeviceAttributes;
    .param p2, "state"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5000
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5001
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 5002
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5003
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5004
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5005
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5008
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5010
    nop

    .line 5011
    return-void

    .line 5008
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5010
    throw v2
.end method

.method public greylist-max-o shouldVibrate(I)Z
    .locals 5
    .param p1, "vibrateType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4484
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4487
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4488
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4489
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4490
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4491
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 4494
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4496
    nop

    .line 4497
    return v2

    .line 4494
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4496
    throw v2
.end method

.method public greylist-max-o startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4887
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4891
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4892
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4893
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4896
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4898
    nop

    .line 4899
    return-void

    .line 4896
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4898
    throw v2
.end method

.method public greylist-max-o startBluetoothScoVirtualCall(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4902
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4903
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4905
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4907
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4908
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4911
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4913
    nop

    .line 4914
    return-void

    .line 4911
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4913
    throw v2
.end method

.method public greylist-max-o startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 5
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5056
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5059
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5060
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5061
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5062
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5063
    sget-object v3, Landroid/media/AudioRoutesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioRoutesInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 5066
    .local v2, "_result":Landroid/media/AudioRoutesInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5068
    nop

    .line 5069
    return-object v2

    .line 5066
    .end local v2    # "_result":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5068
    throw v2
.end method

.method public greylist-max-o stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "cb"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4920
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4922
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4923
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4926
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4928
    nop

    .line 4929
    return-void

    .line 4926
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4928
    throw v2
.end method

.method public greylist-max-o trackPlayer(Landroid/media/PlayerBase$PlayerIdCard;)I
    .locals 5
    .param p1, "pic"    # Landroid/media/PlayerBase$PlayerIdCard;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3781
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3782
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3785
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3786
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3787
    iget-object v3, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3788
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3789
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3792
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3794
    nop

    .line 3795
    return v2

    .line 3792
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3794
    throw v2
.end method

.method public blacklist trackRecorder(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "recorder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3839
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3842
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3843
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3844
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3845
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3846
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3849
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3851
    nop

    .line 3852
    return v2

    .line 3849
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3851
    throw v2
.end method

.method public greylist-max-o unloadSoundEffects()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4580
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4581
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4585
    nop

    .line 4586
    return-void

    .line 4584
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4585
    throw v1
.end method

.method public greylist-max-o unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 5
    .param p1, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4854
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4855
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4858
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4859
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 4860
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4863
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4865
    nop

    .line 4866
    return-void

    .line 4863
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4865
    throw v2
.end method

.method public blacklist unregisterAudioPolicy(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 5246
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5248
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 5249
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5252
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5254
    nop

    .line 5255
    return-void

    .line 5252
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5253
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5254
    throw v2
.end method

.method public greylist-max-o unregisterAudioPolicyAsync(Landroid/media/audiopolicy/IAudioPolicyCallback;)V
    .locals 5
    .param p1, "pcb"    # Landroid/media/audiopolicy/IAudioPolicyCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5233
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5234
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5235
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x57

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5239
    nop

    .line 5240
    return-void

    .line 5238
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5239
    throw v1
.end method

.method public greylist-max-o unregisterAudioServerStateDispatcher(Landroid/media/IAudioServerStateDispatcher;)V
    .locals 5
    .param p1, "asd"    # Landroid/media/IAudioServerStateDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5535
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5536
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5537
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5541
    nop

    .line 5542
    return-void

    .line 5540
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5541
    throw v1
.end method

.method public blacklist unregisterCapturePresetDevicesRoleDispatcher(Landroid/media/ICapturePresetDevicesRoleDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/ICapturePresetDevicesRoleDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6067
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6069
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6071
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x89

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6075
    nop

    .line 6076
    return-void

    .line 6074
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6075
    throw v1
.end method

.method public blacklist unregisterCommunicationDeviceDispatcher(Landroid/media/ICommunicationDeviceDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/ICommunicationDeviceDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6242
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6244
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x93

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6248
    nop

    .line 6249
    return-void

    .line 6247
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6248
    throw v1
.end method

.method public blacklist unregisterHeadToSoundstagePoseCallback(Landroid/media/ISpatializerHeadToSoundStagePoseCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerHeadToSoundStagePoseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6720
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6721
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6725
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6726
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6729
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6731
    nop

    .line 6732
    return-void

    .line 6729
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6731
    throw v2
.end method

.method public blacklist unregisterModeDispatcher(Landroid/media/IAudioModeDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/IAudioModeDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6447
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6448
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6449
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6453
    nop

    .line 6454
    return-void

    .line 6452
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6453
    throw v1
.end method

.method public greylist-max-o unregisterPlaybackCallback(Landroid/media/IPlaybackConfigDispatcher;)V
    .locals 5
    .param p1, "pcdb"    # Landroid/media/IPlaybackConfigDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5408
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5410
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x62

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5414
    nop

    .line 5415
    return-void

    .line 5413
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5414
    throw v1
.end method

.method public greylist-max-o unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 5
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5364
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5366
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5370
    nop

    .line 5371
    return-void

    .line 5369
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5370
    throw v1
.end method

.method public blacklist unregisterSpatializerCallback(Landroid/media/ISpatializerCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6665
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6666
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6669
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6671
    nop

    .line 6672
    return-void

    .line 6669
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6671
    throw v2
.end method

.method public blacklist unregisterSpatializerHeadTrackingCallback(Landroid/media/ISpatializerHeadTrackingModeCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerHeadTrackingModeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6695
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6696
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6699
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6701
    nop

    .line 6702
    return-void

    .line 6699
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6701
    throw v2
.end method

.method public blacklist unregisterSpatializerOutputCallback(Landroid/media/ISpatializerOutputCallback;)V
    .locals 5
    .param p1, "cb"    # Landroid/media/ISpatializerOutputCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 6939
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IAudioService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 6941
    iget-object v2, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 6942
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6945
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6947
    nop

    .line 6948
    return-void

    .line 6945
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6947
    throw v2
.end method

.method public blacklist unregisterStrategyPreferredDevicesDispatcher(Landroid/media/IStrategyPreferredDevicesDispatcher;)V
    .locals 5
    .param p1, "dispatcher"    # Landroid/media/IStrategyPreferredDevicesDispatcher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5820
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IAudioService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 5822
    iget-object v1, p0, Landroid/media/IAudioService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x7a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5826
    nop

    .line 5827
    return-void

    .line 5825
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5826
    throw v1
.end method
