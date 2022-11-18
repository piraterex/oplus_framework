.class Landroid/permission/IPermissionChecker$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPermissionChecker.java"

# interfaces
.implements Landroid/permission/IPermissionChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/permission/IPermissionChecker$Stub;
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
    iput-object p1, p0, Landroid/permission/IPermissionChecker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 136
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/permission/IPermissionChecker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist checkOp(ILandroid/content/AttributionSourceState;Ljava/lang/String;ZZ)I
    .locals 5
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 189
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 192
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/permission/IPermissionChecker$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 195
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 197
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 198
    iget-object v3, p0, Landroid/permission/IPermissionChecker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 199
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 203
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    nop

    .line 206
    return v2

    .line 203
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 204
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    throw v2
.end method

.method public blacklist checkPermission(Ljava/lang/String;Landroid/content/AttributionSourceState;Ljava/lang/String;ZZZI)I
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "forDataDelivery"    # Z
    .param p5, "startDataDelivery"    # Z
    .param p6, "fromDatasource"    # Z
    .param p7, "attributedOp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 148
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 151
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/permission/IPermissionChecker$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 156
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 157
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 158
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-object v3, p0, Landroid/permission/IPermissionChecker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 160
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 161
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 164
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    nop

    .line 167
    return v2

    .line 164
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw v2
.end method

.method public blacklist finishDataDelivery(ILandroid/content/AttributionSourceState;Z)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSourceState;
    .param p3, "fromDatasource"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 174
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/permission/IPermissionChecker$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 177
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 178
    iget-object v3, p0, Landroid/permission/IPermissionChecker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 179
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    nop

    .line 185
    return-void

    .line 182
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 143
    sget-object v0, Landroid/permission/IPermissionChecker$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method
