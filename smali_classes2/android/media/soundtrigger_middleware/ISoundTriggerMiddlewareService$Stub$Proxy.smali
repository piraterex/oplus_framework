.class Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISoundTriggerMiddlewareService.java"

# interfaces
.implements Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub;
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

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 191
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist attachAsMiddleman(ILandroid/media/permission/Identity;Landroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 5
    .param p1, "handle"    # I
    .param p2, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p3, "originatorIdentity"    # Landroid/media/permission/Identity;
    .param p4, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 307
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 310
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 312
    iget-object v3, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 313
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 317
    .local v2, "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    nop

    .line 320
    return-object v2

    .line 317
    .end local v2    # "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    throw v2
.end method

.method public blacklist attachAsOriginator(ILandroid/media/permission/Identity;Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    .locals 5
    .param p1, "handle"    # I
    .param p2, "identity"    # Landroid/media/permission/Identity;
    .param p3, "callback"    # Landroid/media/soundtrigger_middleware/ISoundTriggerCallback;
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

    .line 272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 275
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 276
    iget-object v3, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 277
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/media/soundtrigger_middleware/ISoundTriggerModule$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/soundtrigger_middleware/ISoundTriggerModule;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 281
    .local v2, "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    nop

    .line 284
    return-object v2

    .line 281
    .end local v2    # "_result":Landroid/media/soundtrigger_middleware/ISoundTriggerModule;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 198
    sget-object v0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist listModulesAsMiddleman(Landroid/media/permission/Identity;Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 5
    .param p1, "middlemanIdentity"    # Landroid/media/permission/Identity;
    .param p2, "originatorIdentity"    # Landroid/media/permission/Identity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 243
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 245
    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 246
    iget-object v3, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 247
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 248
    sget-object v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 251
    .local v2, "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    nop

    .line 254
    return-object v2

    .line 251
    .end local v2    # "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw v2
.end method

.method public blacklist listModulesAsOriginator(Landroid/media/permission/Identity;)[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    .locals 5
    .param p1, "identity"    # Landroid/media/permission/Identity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 210
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 213
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 215
    iget-object v3, p0, Landroid/media/soundtrigger_middleware/ISoundTriggerMiddlewareService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 216
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 217
    sget-object v3, Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 220
    .local v2, "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    nop

    .line 223
    return-object v2

    .line 220
    .end local v2    # "_result":[Landroid/media/soundtrigger_middleware/SoundTriggerModuleDescriptor;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 221
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 222
    throw v2
.end method
