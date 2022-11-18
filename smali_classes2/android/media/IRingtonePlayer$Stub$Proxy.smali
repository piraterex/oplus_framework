.class Landroid/media/IRingtonePlayer$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRingtonePlayer.java"

# interfaces
.implements Landroid/media/IRingtonePlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/IRingtonePlayer$Stub;
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

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput-object p1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 262
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 265
    iget-object v0, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 269
    const-string v0, "android.media.IRingtonePlayer"

    return-object v0
.end method

.method public greylist-max-o getTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 386
    iget-object v3, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 387
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 388
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 391
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    nop

    .line 394
    return-object v2

    .line 391
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw v2
.end method

.method public greylist-max-o isPlaying(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 323
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 325
    iget-object v2, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 326
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 330
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    nop

    .line 333
    return v2

    .line 330
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 331
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    throw v2
.end method

.method public greylist-max-o openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 404
    iget-object v3, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 405
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 406
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 409
    .local v2, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    nop

    .line 412
    return-object v2

    .line 409
    .end local v2    # "_result":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw v2
.end method

.method public greylist-max-o play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "volume"    # F
    .param p5, "looping"    # Z
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
    const-string v1, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 278
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 279
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 280
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 281
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 282
    iget-object v1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    nop

    .line 287
    return-void

    .line 285
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw v1
.end method

.method public greylist-max-o playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "looping"    # Z
    .param p4, "aa"    # Landroid/media/AudioAttributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 355
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 356
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 357
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 358
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 359
    invoke-virtual {v0, p4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 360
    iget-object v1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v1
.end method

.method public blacklist playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "aa"    # Landroid/media/AudioAttributes;
    .param p4, "volume"    # F
    .param p5, "looping"    # Z
    .param p6, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 294
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 296
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 297
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 298
    invoke-virtual {v0, p6, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 299
    iget-object v1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
    nop

    .line 304
    return-void

    .line 302
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
    throw v1
.end method

.method public blacklist setPlaybackProperties(Landroid/os/IBinder;FZZ)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "volume"    # F
    .param p3, "looping"    # Z
    .param p4, "hapticGeneratorEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 339
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 341
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 342
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 344
    iget-object v1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    nop

    .line 349
    return-void

    .line 347
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    throw v1
.end method

.method public greylist-max-o stop(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 311
    iget-object v1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    nop

    .line 316
    return-void

    .line 314
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v1
.end method

.method public greylist-max-o stopAsync()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.media.IRingtonePlayer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Landroid/media/IRingtonePlayer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    nop

    .line 376
    return-void

    .line 374
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    throw v1
.end method
