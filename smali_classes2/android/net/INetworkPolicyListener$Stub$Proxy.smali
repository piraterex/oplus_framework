.class Landroid/net/INetworkPolicyListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkPolicyListener.java"

# interfaces
.implements Landroid/net/INetworkPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyListener$Stub;
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

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput-object p1, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 209
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 216
    const-string v0, "android.net.INetworkPolicyListener"

    return-object v0
.end method

.method public blacklist onBlockedReasonChanged(III)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "oldBlockedReason"    # I
    .param p3, "newBlockedReason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkPolicyListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget-object v1, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    nop

    .line 309
    return-void

    .line 307
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 308
    throw v1
.end method

.method public greylist-max-o onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 5
    .param p1, "meteredIfaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 235
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkPolicyListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    nop

    .line 242
    return-void

    .line 240
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 241
    throw v1
.end method

.method public greylist-max-o onRestrictBackgroundChanged(Z)V
    .locals 5
    .param p1, "restrictBackground"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 247
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkPolicyListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 249
    iget-object v1, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    nop

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw v1
.end method

.method public blacklist onSubscriptionOverride(III[I)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "overrideMask"    # I
    .param p3, "overrideValue"    # I
    .param p4, "networkTypes"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 272
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkPolicyListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 277
    iget-object v1, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    nop

    .line 282
    return-void

    .line 280
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    throw v1
.end method

.method public blacklist onSubscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "plans"    # [Landroid/telephony/SubscriptionPlan;
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
    const-string v1, "android.net.INetworkPolicyListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 290
    iget-object v1, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    nop

    .line 295
    return-void

    .line 293
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw v1
.end method

.method public greylist-max-o onUidPoliciesChanged(II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "uidPolicies"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 259
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkPolicyListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v1, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    nop

    .line 267
    return-void

    .line 265
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 266
    throw v1
.end method

.method public greylist-max-o onUidRulesChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidRules"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 222
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "android.net.INetworkPolicyListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v1, p0, Landroid/net/INetworkPolicyListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    nop

    .line 230
    return-void

    .line 228
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    throw v1
.end method
