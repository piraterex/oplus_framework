.class Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IGnssVisibilityControlCallback.java"

# interfaces
.implements Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub;
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

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedVersion:I

    .line 126
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 123
    iput-object p1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 124
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 129
    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 133
    sget-object v0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 192
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 196
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 198
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    goto :goto_0

    .line 201
    .end local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 203
    throw v2

    .line 205
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 191
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

    .line 175
    iget v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 177
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 179
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 181
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    goto :goto_0

    .line 184
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 186
    throw v2

    .line 188
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist isInEmergencySession()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 161
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 168
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    nop

    .line 171
    return v2

    .line 162
    .local v2, "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method isInEmergencySession is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    throw v2
.end method

.method public blacklist nfwNotifyCb(Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 142
    iget-object v3, p0, Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 143
    .local v2, "_status":Z
    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    nop

    .line 152
    return-void

    .line 144
    .restart local v2    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v3, Landroid/os/RemoteException;

    const-string v4, "Method nfwNotifyCb is unimplemented."

    invoke-direct {v3, v4}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local v1    # "_reply":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    .end local p1    # "notification":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v2    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$Stub$Proxy;
    .restart local p1    # "notification":Landroid/hardware/gnss/visibility_control/IGnssVisibilityControlCallback$NfwNotification;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 151
    throw v2
.end method
