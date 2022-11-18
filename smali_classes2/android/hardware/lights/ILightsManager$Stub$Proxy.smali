.class Landroid/hardware/lights/ILightsManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILightsManager.java"

# interfaces
.implements Landroid/hardware/lights/ILightsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/lights/ILightsManager$Stub;
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

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Landroid/hardware/lights/ILightsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 179
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/hardware/lights/ILightsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist closeSession(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 241
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 242
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 244
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.lights.ILightsManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 246
    iget-object v2, p0, Landroid/hardware/lights/ILightsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 247
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    nop

    .line 253
    return-void

    .line 250
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 252
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 186
    const-string v0, "android.hardware.lights.ILightsManager"

    return-object v0
.end method

.method public blacklist getLightState(I)Landroid/hardware/lights/LightState;
    .locals 5
    .param p1, "lightId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.lights.ILightsManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    iget-object v2, p0, Landroid/hardware/lights/ILightsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 214
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 215
    sget-object v3, Landroid/hardware/lights/LightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/lights/LightState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 218
    .local v2, "_result":Landroid/hardware/lights/LightState;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    nop

    .line 221
    return-object v2

    .line 218
    .end local v2    # "_result":Landroid/hardware/lights/LightState;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 220
    throw v2
.end method

.method public blacklist getLights()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/lights/Light;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 194
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.lights.ILightsManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Landroid/hardware/lights/ILightsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 196
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 197
    sget-object v3, Landroid/hardware/lights/Light;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 200
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    nop

    .line 203
    return-object v2

    .line 200
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/lights/Light;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 201
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 202
    throw v2
.end method

.method public blacklist openSession(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.lights.ILightsManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v2, p0, Landroid/hardware/lights/ILightsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 232
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    nop

    .line 238
    return-void

    .line 235
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw v2
.end method

.method public blacklist setLightStates(Landroid/os/IBinder;[I[Landroid/hardware/lights/LightState;)V
    .locals 5
    .param p1, "sessionToken"    # Landroid/os/IBinder;
    .param p2, "lightIds"    # [I
    .param p3, "states"    # [Landroid/hardware/lights/LightState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 259
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.lights.ILightsManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 262
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 263
    iget-object v3, p0, Landroid/hardware/lights/ILightsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 264
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    nop

    .line 270
    return-void

    .line 267
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    throw v2
.end method
