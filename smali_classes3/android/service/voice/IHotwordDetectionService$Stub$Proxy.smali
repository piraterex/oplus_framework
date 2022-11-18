.class Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IHotwordDetectionService.java"

# interfaces
.implements Landroid/service/voice/IHotwordDetectionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/IHotwordDetectionService$Stub;
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

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 218
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist detectFromDspSource(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;Landroid/media/AudioFormat;JLandroid/service/voice/IDspHotwordDetectionCallback;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseRecognitionEvent;
    .param p2, "audioFormat"    # Landroid/media/AudioFormat;
    .param p3, "timeoutMillis"    # J
    .param p5, "callback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.voice.IHotwordDetectionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 232
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 233
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 234
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 236
    iget-object v1, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    nop

    .line 241
    return-void

    .line 239
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    throw v1
.end method

.method public blacklist detectFromMicrophoneSource(Landroid/os/ParcelFileDescriptor;ILandroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/service/voice/IDspHotwordDetectionCallback;)V
    .locals 5
    .param p1, "audioStream"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "audioSource"    # I
    .param p3, "audioFormat"    # Landroid/media/AudioFormat;
    .param p4, "options"    # Landroid/os/PersistableBundle;
    .param p5, "callback"    # Landroid/service/voice/IDspHotwordDetectionCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.voice.IHotwordDetectionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 250
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 251
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 252
    iget-object v1, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 225
    const-string v0, "android.service.voice.IHotwordDetectionService"

    return-object v0
.end method

.method public blacklist ping(Landroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 305
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.voice.IHotwordDetectionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 307
    iget-object v1, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    nop

    .line 312
    return-void

    .line 310
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    throw v1
.end method

.method public blacklist stopDetection()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.voice.IHotwordDetectionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 322
    nop

    .line 323
    return-void

    .line 321
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 322
    throw v1
.end method

.method public blacklist updateAudioFlinger(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "audioFlinger"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 274
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 276
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.voice.IHotwordDetectionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 278
    iget-object v1, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    nop

    .line 283
    return-void

    .line 281
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v1
.end method

.method public blacklist updateContentCaptureManager(Landroid/view/contentcapture/IContentCaptureManager;Landroid/content/ContentCaptureOptions;)V
    .locals 5
    .param p1, "contentCaptureManager"    # Landroid/view/contentcapture/IContentCaptureManager;
    .param p2, "options"    # Landroid/content/ContentCaptureOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 288
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.voice.IHotwordDetectionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 290
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 291
    iget-object v1, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    nop

    .line 296
    return-void

    .line 294
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v1
.end method

.method public blacklist updateState(Landroid/os/PersistableBundle;Landroid/os/SharedMemory;Landroid/os/IRemoteCallback;)V
    .locals 5
    .param p1, "options"    # Landroid/os/PersistableBundle;
    .param p2, "sharedMemory"    # Landroid/os/SharedMemory;
    .param p3, "callback"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 262
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.service.voice.IHotwordDetectionService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 264
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 265
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 266
    iget-object v1, p0, Landroid/service/voice/IHotwordDetectionService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    nop

    .line 271
    return-void

    .line 269
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    throw v1
.end method
