.class Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;
.super Ljava/lang/Object;
.source "IImsServiceController.java"

# interfaces
.implements Lcom/android/ims/internal/IImsServiceController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/internal/IImsServiceController$Stub;
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

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 203
    return-void
.end method


# virtual methods
.method public blacklist addFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 285
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 287
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 291
    iget-object v2, p0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 292
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    nop

    .line 298
    return-void

    .line 295
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 296
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist createEmergencyMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 215
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 218
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget-object v2, p0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 221
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 222
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 225
    .local v2, "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    nop

    .line 228
    return-object v2

    .line 225
    .end local v2    # "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw v2
.end method

.method public blacklist createMMTelFeature(I)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    iget-object v2, p0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 239
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsMMTelFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 243
    .local v2, "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    nop

    .line 246
    return-object v2

    .line 243
    .end local v2    # "_result":Lcom/android/ims/internal/IImsMMTelFeature;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 244
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 245
    throw v2
.end method

.method public blacklist createRcsFeature(I)Lcom/android/ims/internal/IImsRcsFeature;
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 254
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 256
    iget-object v2, p0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 257
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsRcsFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 261
    .local v2, "_result":Lcom/android/ims/internal/IImsRcsFeature;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    nop

    .line 264
    return-object v2

    .line 261
    .end local v2    # "_result":Lcom/android/ims/internal/IImsRcsFeature;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 210
    const-string v0, "com.android.ims.internal.IImsServiceController"

    return-object v0
.end method

.method public blacklist removeFeatureStatusCallback(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .param p3, "c"    # Lcom/android/ims/internal/IImsFeatureStatusCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 302
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 304
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 308
    iget-object v2, p0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 309
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    nop

    .line 315
    return-void

    .line 312
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw v2
.end method

.method public blacklist removeImsFeature(II)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.ims.internal.IImsServiceController"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    iget-object v2, p0, Lcom/android/ims/internal/IImsServiceController$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 275
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    nop

    .line 281
    return-void

    .line 278
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw v2
.end method
