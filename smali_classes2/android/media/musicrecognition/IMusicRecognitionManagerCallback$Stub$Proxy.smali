.class Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMusicRecognitionManagerCallback.java"

# interfaces
.implements Landroid/media/musicrecognition/IMusicRecognitionManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub;
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

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 143
    const-string v0, "android.media.musicrecognition.IMusicRecognitionManagerCallback"

    return-object v0
.end method

.method public blacklist onAudioStreamClosed()V
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
    const-string v1, "android.media.musicrecognition.IMusicRecognitionManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

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

.method public blacklist onRecognitionFailed(I)V
    .locals 5
    .param p1, "failureCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.musicrecognition.IMusicRecognitionManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v1, p0, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 168
    throw v1
.end method

.method public blacklist onRecognitionSucceeded(Landroid/media/MediaMetadata;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "result"    # Landroid/media/MediaMetadata;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.musicrecognition.IMusicRecognitionManagerCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 151
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 152
    iget-object v1, p0, Landroid/media/musicrecognition/IMusicRecognitionManagerCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    nop

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    throw v1
.end method
