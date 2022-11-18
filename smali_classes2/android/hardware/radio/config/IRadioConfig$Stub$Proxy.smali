.class Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioConfig.java"

# interfaces
.implements Landroid/hardware/radio/config/IRadioConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/config/IRadioConfig$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mCachedVersion:I

    .line 198
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 196
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 201
    iget-object v0, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getHalDeviceCapabilities(I)V
    .locals 4
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 211
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 219
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    nop

    .line 221
    return-void

    .line 215
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getHalDeviceCapabilities is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 205
    sget-object v0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 350
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 352
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 354
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    iget-object v2, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 356
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    goto :goto_0

    .line 359
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 360
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v2

    .line 363
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 349
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget v0, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 337
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 339
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    goto :goto_0

    .line 342
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    throw v2

    .line 346
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getNumOfLiveModems(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 234
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    nop

    .line 236
    return-void

    .line 230
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getNumOfLiveModems is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 235
    throw v1
.end method

.method public blacklist getPhoneCapability(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 241
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 249
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    nop

    .line 251
    return-void

    .line 245
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getPhoneCapability is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    throw v1
.end method

.method public blacklist getSimSlotsStatus(I)V
    .locals 5
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 264
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    nop

    .line 266
    return-void

    .line 260
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSimSlotsStatus is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 264
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 265
    throw v1
.end method

.method public blacklist setNumOfLiveModems(IB)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "numOfLiveModems"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 271
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 274
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 280
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    nop

    .line 282
    return-void

    .line 276
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setNumOfLiveModems is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "numOfLiveModems":B
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 280
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "numOfLiveModems":B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    throw v1
.end method

.method public blacklist setPreferredDataModem(IB)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "modemId"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 290
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 296
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    nop

    .line 298
    return-void

    .line 292
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setPreferredDataModem is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "modemId":B
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "modemId":B
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 297
    throw v1
.end method

.method public blacklist setResponseFunctions(Landroid/hardware/radio/config/IRadioConfigResponse;Landroid/hardware/radio/config/IRadioConfigIndication;)V
    .locals 5
    .param p1, "radioConfigResponse"    # Landroid/hardware/radio/config/IRadioConfigResponse;
    .param p2, "radioConfigIndication"    # Landroid/hardware/radio/config/IRadioConfigIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 303
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 305
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 306
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 312
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    nop

    .line 314
    return-void

    .line 308
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setResponseFunctions is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .end local p1    # "radioConfigResponse":Landroid/hardware/radio/config/IRadioConfigResponse;
    .end local p2    # "radioConfigIndication":Landroid/hardware/radio/config/IRadioConfigIndication;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .restart local p1    # "radioConfigResponse":Landroid/hardware/radio/config/IRadioConfigResponse;
    .restart local p2    # "radioConfigIndication":Landroid/hardware/radio/config/IRadioConfigIndication;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 313
    throw v1
.end method

.method public blacklist setSimSlotsMapping(I[Landroid/hardware/radio/config/SlotPortMapping;)V
    .locals 5
    .param p1, "serial"    # I
    .param p2, "slotMap"    # [Landroid/hardware/radio/config/SlotPortMapping;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 319
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 322
    iget-object v1, p0, Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 328
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    nop

    .line 330
    return-void

    .line 324
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setSimSlotsMapping is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .end local p1    # "serial":I
    .end local p2    # "slotMap":[Landroid/hardware/radio/config/SlotPortMapping;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/config/IRadioConfig$Stub$Proxy;
    .restart local p1    # "serial":I
    .restart local p2    # "slotMap":[Landroid/hardware/radio/config/SlotPortMapping;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v1
.end method
