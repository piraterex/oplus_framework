.class Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 7280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7281
    iput-object p1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 7282
    return-void
.end method


# virtual methods
.method public blacklist addUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14330
    .local p2, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 14337
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14338
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14339
    sget-object v3, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactUceCapability;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14342
    .local v2, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14344
    nop

    .line 14345
    return-object v2

    .line 14342
    .end local v2    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14344
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 7285
    iget-object v0, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist bootstrapAuthenticationRequest(IILandroid/net/Uri;Landroid/telephony/gba/UaSecurityProtocolIdentifier;ZLandroid/telephony/IBootstrapAuthenticationCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "nafUrl"    # Landroid/net/Uri;
    .param p4, "securityProtocol"    # Landroid/telephony/gba/UaSecurityProtocolIdentifier;
    .param p5, "forceBootStrapping"    # Z
    .param p6, "callback"    # Landroid/telephony/IBootstrapAuthenticationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13830
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13831
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13832
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13833
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13834
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13835
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13836
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13837
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x122

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13838
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13841
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13843
    nop

    .line 13844
    return-void

    .line 13841
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13842
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13843
    throw v2
.end method

.method public greylist-max-o call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7320
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7322
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7324
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7325
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7326
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7329
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7331
    nop

    .line 7332
    return-void

    .line 7329
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7331
    throw v2
.end method

.method public blacklist canChangeDtmfToneLength(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10493
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10494
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x87

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10495
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10496
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10499
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10501
    nop

    .line 10502
    return v2

    .line 10499
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10501
    throw v2
.end method

.method public blacklist canConnectTo5GInDsdsMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13636
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13639
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13640
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13642
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13645
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13647
    nop

    .line 13648
    return v2

    .line 13645
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13647
    throw v2
.end method

.method public greylist-max-o carrierActionReportDefaultNetworkStatus(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "report"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11481
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11486
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11487
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11490
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11492
    nop

    .line 11493
    return-void

    .line 11490
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11492
    throw v2
.end method

.method public blacklist carrierActionResetAll(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11503
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11505
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11506
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11507
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11508
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11511
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11513
    nop

    .line 11514
    return-void

    .line 11511
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11513
    throw v2
.end method

.method public greylist-max-o carrierActionSetRadioEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11457
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11462
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xae

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11463
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11466
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11468
    nop

    .line 11469
    return-void

    .line 11466
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11468
    throw v2
.end method

.method public blacklist changeIccLockPassword(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "oldPassword"    # Ljava/lang/String;
    .param p3, "newPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13566
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13568
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13569
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13570
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x116

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13571
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13572
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13575
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13577
    nop

    .line 13578
    return v2

    .line 13575
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13577
    throw v2
.end method

.method public blacklist checkCarrierPrivilegesForPackage(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10029
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10030
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10033
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10034
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10035
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10036
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x76

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10037
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10041
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10043
    nop

    .line 10044
    return v2

    .line 10041
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10043
    throw v2
.end method

.method public greylist-max-o checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10058
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x77

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10059
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10060
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10063
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10065
    nop

    .line 10066
    return v2

    .line 10063
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10065
    throw v2
.end method

.method public blacklist clearCarrierImsServiceOverride(I)Z
    .locals 5
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9499
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9500
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9501
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9504
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9506
    nop

    .line 9507
    return v2

    .line 9504
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9506
    throw v2
.end method

.method public blacklist clearSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14513
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14514
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14515
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x145

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14516
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14519
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14521
    nop

    .line 14522
    return-void

    .line 14519
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14521
    throw v2
.end method

.method public blacklist clearUceRegistrationOverrideShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14379
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14384
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14385
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14386
    sget-object v3, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactUceCapability;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14389
    .local v2, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14391
    nop

    .line 14392
    return-object v2

    .line 14389
    .end local v2    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14390
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14391
    throw v2
.end method

.method public greylist-max-o dial(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7304
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7305
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7310
    nop

    .line 7311
    return-void

    .line 7308
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7310
    throw v2
.end method

.method public blacklist disableDataConnectivity(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7829
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7830
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7831
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7834
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7836
    nop

    .line 7837
    return v2

    .line 7834
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7835
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7836
    throw v2
.end method

.method public greylist-max-o disableIms(I)V
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9361
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9363
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9364
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9367
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9369
    nop

    .line 9370
    return-void

    .line 9367
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9368
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9369
    throw v2
.end method

.method public greylist-max-o disableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7790
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7792
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7793
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7794
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7797
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7799
    nop

    .line 7800
    return-void

    .line 7797
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7798
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7799
    throw v2
.end method

.method public greylist-max-o disableVisualVoicemailSmsFilter(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8483
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8485
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8486
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8490
    nop

    .line 8491
    return-void

    .line 8489
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8490
    throw v1
.end method

.method public blacklist doesSwitchMultiSimConfigTriggerReboot(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13198
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13199
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x102

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13200
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13201
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13204
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13206
    nop

    .line 13207
    return v2

    .line 13204
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13206
    throw v2
.end method

.method public blacklist enableDataConnectivity(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7804
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7805
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7808
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7809
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7810
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7811
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7812
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7815
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7817
    nop

    .line 7818
    return v2

    .line 7815
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7816
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7817
    throw v2
.end method

.method public greylist-max-o enableIms(I)V
    .locals 5
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9342
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9343
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9347
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9348
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9351
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9353
    nop

    .line 9354
    return-void

    .line 9351
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9353
    throw v2
.end method

.method public greylist-max-o enableLocationUpdates()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7777
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7778
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7779
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7782
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7784
    nop

    .line 7785
    return-void

    .line 7782
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7783
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7784
    throw v2
.end method

.method public blacklist enableModemForSlot(IZ)Z
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13108
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13109
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13110
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13113
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13115
    nop

    .line 13116
    return v2

    .line 13113
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13115
    throw v2
.end method

.method public greylist-max-o enableVideoCalling(Z)V
    .locals 5
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10440
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10441
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10442
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10443
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10446
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10448
    nop

    .line 10449
    return-void

    .line 10446
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10448
    throw v2
.end method

.method public greylist-max-o enableVisualVoicemailSmsFilter(Ljava/lang/String;ILandroid/telephony/VisualVoicemailSmsFilterSettings;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "settings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8465
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8467
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8469
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8470
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8471
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x37

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8472
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8475
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8477
    nop

    .line 8478
    return-void

    .line 8475
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8476
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8477
    throw v2
.end method

.method public blacklist enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributeTag"    # Ljava/lang/String;
    .param p3, "subIdResult"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13407
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13410
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13411
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13415
    nop

    .line 13416
    return-void

    .line 13414
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13415
    throw v1
.end method

.method public blacklist factoryReset(ILjava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10900
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10902
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10903
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x99

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10904
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10907
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10909
    nop

    .line 10910
    return-void

    .line 10907
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10908
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10909
    throw v2
.end method

.method public greylist-max-o getActivePhoneType()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8058
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8061
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8062
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8063
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8064
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8067
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8069
    nop

    .line 8070
    return v2

    .line 8067
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8068
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8069
    throw v2
.end method

.method public greylist-max-o getActivePhoneTypeForSlot(I)I
    .locals 5
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8080
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8081
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8086
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8087
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8088
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8091
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8093
    nop

    .line 8094
    return v2

    .line 8091
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8093
    throw v2
.end method

.method public greylist-max-o getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8524
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8525
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8526
    sget-object v3, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8529
    .local v2, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8531
    nop

    .line 8532
    return-object v2

    .line 8529
    .end local v2    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8531
    throw v2
.end method

.method public greylist-max-o getAidForAppType(II)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11146
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11147
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11150
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11151
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11152
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11153
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11154
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11155
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11158
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11160
    nop

    .line 11161
    return-object v2

    .line 11158
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11159
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11160
    throw v2
.end method

.method public blacklist getAllCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8783
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8786
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8787
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8788
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8789
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8790
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8791
    sget-object v3, Landroid/telephony/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8794
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8796
    nop

    .line 8797
    return-object v2

    .line 8794
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8796
    throw v2
.end method

.method public blacklist getAllowedCarriers()Landroid/telephony/CarrierRestrictionRules;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11280
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11283
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11284
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11285
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11286
    sget-object v3, Landroid/telephony/CarrierRestrictionRules;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CarrierRestrictionRules;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11289
    .local v2, "_result":Landroid/telephony/CarrierRestrictionRules;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11291
    nop

    .line 11292
    return-object v2

    .line 11289
    .end local v2    # "_result":Landroid/telephony/CarrierRestrictionRules;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11291
    throw v2
.end method

.method public blacklist getAllowedNetworkTypesBitmask(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9299
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9302
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9303
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9304
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9305
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9309
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9311
    nop

    .line 9312
    return v2

    .line 9309
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9311
    throw v2
.end method

.method public blacklist getAllowedNetworkTypesForReason(II)J
    .locals 5
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9701
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9702
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9703
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 9706
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9708
    nop

    .line 9709
    return-wide v2

    .line 9706
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9708
    throw v2
.end method

.method public blacklist getBoundGbaService(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13874
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x124

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13875
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13876
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13879
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13881
    nop

    .line 13882
    return-object v2

    .line 13879
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13881
    throw v2
.end method

.method public blacklist getBoundImsServicePackage(IZI)Ljava/lang/String;
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "isCarrierImsService"    # Z
    .param p3, "featureType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9513
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9516
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9517
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9518
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9519
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9520
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9521
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9522
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9525
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9527
    nop

    .line 9528
    return-object v2

    .line 9525
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9526
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9527
    throw v2
.end method

.method public blacklist getCallComposerStatus(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7449
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7450
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7451
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7452
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7455
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7457
    nop

    .line 7458
    return v2

    .line 7455
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7457
    throw v2
.end method

.method public blacklist getCallForwarding(IILcom/android/internal/telephony/ICallForwardingInfoCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callForwardingReason"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/ICallForwardingInfoCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11518
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11520
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11521
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11522
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11523
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11524
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11525
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11528
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11530
    nop

    .line 11531
    return-void

    .line 11528
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11529
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11530
    throw v2
.end method

.method public greylist-max-o getCallState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7924
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7927
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7928
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7929
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7930
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7933
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7935
    nop

    .line 7936
    return v2

    .line 7933
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7935
    throw v2
.end method

.method public blacklist getCallStateForSubscription(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "featureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7942
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7945
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7946
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7947
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7948
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7949
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7950
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7951
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7954
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7956
    nop

    .line 7957
    return v2

    .line 7954
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7956
    throw v2
.end method

.method public blacklist getCallWaitingStatus(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11554
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11557
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11558
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11561
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11563
    nop

    .line 11564
    return-void

    .line 11561
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11563
    throw v2
.end method

.method public blacklist getCapabilityFromEab(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14279
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14280
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14281
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14284
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14286
    nop

    .line 14287
    return-object v2

    .line 14284
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14286
    throw v2
.end method

.method public blacklist getCardIdForDefaultEuicc(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11786
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11787
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11788
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11789
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11792
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11794
    nop

    .line 11795
    return v2

    .line 11792
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11793
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11794
    throw v2
.end method

.method public blacklist getCarrierIdFromMccMnc(ILjava/lang/String;Z)I
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "isSubscriptionMccMnc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11433
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11434
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11435
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11436
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11437
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xad

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11438
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11442
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11444
    nop

    .line 11445
    return v2

    .line 11442
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11444
    throw v2
.end method

.method public greylist-max-o getCarrierIdListVersion(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12097
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12098
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12101
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12102
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12103
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12104
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12105
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12108
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12110
    nop

    .line 12111
    return v2

    .line 12108
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12110
    throw v2
.end method

.method public greylist-max-o getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10082
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10083
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10086
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10087
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10088
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10089
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x78

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10090
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10091
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10094
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10096
    nop

    .line 10097
    return-object v2

    .line 10094
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10096
    throw v2
.end method

.method public greylist-max-o getCarrierPrivilegeStatus(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9992
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9993
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x74

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9994
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9995
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9998
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10000
    nop

    .line 10001
    return v2

    .line 9998
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9999
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10000
    throw v2
.end method

.method public greylist-max-o getCarrierPrivilegeStatusForUid(II)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10006
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10007
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10010
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10011
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10012
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10013
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x75

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10014
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10018
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10020
    nop

    .line 10021
    return v2

    .line 10018
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10020
    throw v2
.end method

.method public blacklist getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;
    .locals 5
    .param p1, "logicalSlotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14788
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14791
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14793
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x152

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14794
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14795
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14798
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14800
    nop

    .line 14801
    return-object v2

    .line 14798
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14800
    throw v2
.end method

.method public blacklist getCarrierSingleRegistrationEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14161
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x134

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14162
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14163
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14166
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14168
    nop

    .line 14169
    return v2

    .line 14166
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14167
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14168
    throw v2
.end method

.method public blacklist getCdmaEriIconIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8107
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8109
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8110
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8111
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8112
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8115
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8117
    nop

    .line 8118
    return v2

    .line 8115
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8116
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8117
    throw v2
.end method

.method public blacklist getCdmaEriIconIndexForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8128
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8129
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8135
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8136
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8137
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8138
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8141
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8143
    nop

    .line 8144
    return v2

    .line 8141
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8142
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8143
    throw v2
.end method

.method public blacklist getCdmaEriIconMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8156
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8159
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8161
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8162
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8163
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8164
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8167
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8169
    nop

    .line 8170
    return v2

    .line 8167
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8168
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8169
    throw v2
.end method

.method public blacklist getCdmaEriIconModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8182
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8183
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8186
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8187
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8188
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8189
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8190
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8191
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8192
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8195
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8197
    nop

    .line 8198
    return v2

    .line 8195
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8197
    throw v2
.end method

.method public blacklist getCdmaEriText(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8208
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8211
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8212
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8213
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8214
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8215
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8216
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8219
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8221
    nop

    .line 8222
    return-object v2

    .line 8219
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8220
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8221
    throw v2
.end method

.method public blacklist getCdmaEriTextForSubscriber(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8237
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8238
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8239
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8240
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8241
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8242
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8245
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8247
    nop

    .line 8248
    return-object v2

    .line 8245
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8247
    throw v2
.end method

.method public greylist-max-o getCdmaMdn(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9909
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9910
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9913
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9914
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9915
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9916
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9917
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9920
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9922
    nop

    .line 9923
    return-object v2

    .line 9920
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9921
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9922
    throw v2
.end method

.method public greylist-max-o getCdmaMin(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9937
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9938
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9939
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9942
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9944
    nop

    .line 9945
    return-object v2

    .line 9942
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9943
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9944
    throw v2
.end method

.method public greylist-max-o getCdmaPrlVersion(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11206
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11207
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11208
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11211
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11213
    nop

    .line 11214
    return-object v2

    .line 11211
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11213
    throw v2
.end method

.method public blacklist getCdmaRoamingMode(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11977
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11978
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11979
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11982
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11984
    nop

    .line 11985
    return v2

    .line 11982
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11984
    throw v2
.end method

.method public blacklist getCdmaSubscriptionMode(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12028
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12029
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12030
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12033
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12035
    nop

    .line 12036
    return v2

    .line 12033
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12035
    throw v2
.end method

.method public blacklist getCellLocation(Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7862
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7865
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7866
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7867
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7868
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7869
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7870
    sget-object v3, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7873
    .local v2, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7875
    nop

    .line 7876
    return-object v2

    .line 7873
    .end local v2    # "_result":Landroid/telephony/CellIdentity;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7875
    throw v2
.end method

.method public blacklist getCellNetworkScanResults(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9578
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9583
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9584
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9585
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x64

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9586
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9587
    sget-object v3, Lcom/android/internal/telephony/CellNetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9590
    .local v2, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9592
    nop

    .line 9593
    return-object v2

    .line 9590
    .end local v2    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9592
    throw v2
.end method

.method public blacklist getCertsFromCarrierPrivilegeAccessRules(I)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12743
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xea

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12744
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12745
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12748
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12750
    nop

    .line 12751
    return-object v2

    .line 12748
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12750
    throw v2
.end method

.method public blacklist getClientRequestStats(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "subid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/telephony/ClientRequestStats;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11596
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11597
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11598
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11599
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 11600
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11601
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11602
    sget-object v3, Landroid/telephony/ClientRequestStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11605
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11607
    nop

    .line 11608
    return-object v2

    .line 11605
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ClientRequestStats;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11606
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11607
    throw v2
.end method

.method public blacklist getContactFromEab(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14260
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x139

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14261
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14262
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14265
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14267
    nop

    .line 14268
    return-object v2

    .line 14265
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14267
    throw v2
.end method

.method public blacklist getCurrentPackageName()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13254
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x105

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13255
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13256
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13259
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13261
    nop

    .line 13262
    return-object v2

    .line 13259
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13261
    throw v2
.end method

.method public greylist-max-o getDataActivationState(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8364
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8365
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8366
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8367
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8370
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8372
    nop

    .line 8373
    return v2

    .line 8370
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8372
    throw v2
.end method

.method public greylist-max-o getDataActivity()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7963
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7966
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7967
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7968
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7969
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7972
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7974
    nop

    .line 7975
    return v2

    .line 7972
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7974
    throw v2
.end method

.method public blacklist getDataActivityForSubId(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7990
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7993
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7995
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7996
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7997
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8000
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8002
    nop

    .line 8003
    return v2

    .line 8000
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8001
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8002
    throw v2
.end method

.method public greylist-max-o getDataEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9755
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9756
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9757
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9758
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9759
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9762
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9764
    nop

    .line 9765
    return v2

    .line 9762
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9764
    throw v2
.end method

.method public blacklist getDataNetworkType(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8610
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8613
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8615
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8616
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8617
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8618
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8621
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8623
    nop

    .line 8624
    return v2

    .line 8621
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8623
    throw v2
.end method

.method public blacklist getDataNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8634
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8635
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8638
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8640
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8641
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8642
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8643
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8644
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8647
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8649
    nop

    .line 8650
    return v2

    .line 8647
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8648
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8649
    throw v2
.end method

.method public greylist-max-o getDataState()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8009
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8012
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8013
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8014
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8015
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8018
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8020
    nop

    .line 8021
    return v2

    .line 8018
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8020
    throw v2
.end method

.method public blacklist getDataStateForSubId(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8035
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8038
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8040
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8041
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8042
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8045
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8047
    nop

    .line 8048
    return v2

    .line 8045
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8047
    throw v2
.end method

.method public blacklist getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10678
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10679
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10682
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10683
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10684
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x90

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10685
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10686
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10689
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10691
    nop

    .line 10692
    return-object v2

    .line 10689
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10690
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10691
    throw v2
.end method

.method public blacklist getDeviceIdWithFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10706
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10709
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10710
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10711
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10712
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x91

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10713
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10714
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10717
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10719
    nop

    .line 10720
    return-object v2

    .line 10717
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10718
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10719
    throw v2
.end method

.method public blacklist getDeviceSingleRegistrationEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14070
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14071
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14072
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14075
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14077
    nop

    .line 14078
    return v2

    .line 14075
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14077
    throw v2
.end method

.method public blacklist getDeviceSoftwareVersionForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10838
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10842
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10843
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10844
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10845
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10846
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10847
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10850
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10852
    nop

    .line 10853
    return-object v2

    .line 10850
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10852
    throw v2
.end method

.method public blacklist getDeviceUceEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14297
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14298
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14299
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14302
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14304
    nop

    .line 14305
    return v2

    .line 14302
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14304
    throw v2
.end method

.method public greylist-max-o getEmergencyCallbackMode(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11733
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xba

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11734
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11735
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11738
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11740
    nop

    .line 11741
    return v2

    .line 11738
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11740
    throw v2
.end method

.method public blacklist getEmergencyNumberDbVersion(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13037
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13040
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13041
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13042
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13043
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13044
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13047
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13049
    nop

    .line 13050
    return v2

    .line 13047
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13048
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13049
    throw v2
.end method

.method public blacklist getEmergencyNumberList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12697
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12700
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12701
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12702
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12703
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12704
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12705
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 12706
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v4

    .line 12709
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .local v2, "_result":Ljava/util/Map;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12711
    nop

    .line 12712
    return-object v2

    .line 12709
    .end local v2    # "_result":Ljava/util/Map;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12711
    throw v2
.end method

.method public blacklist getEmergencyNumberListTestMode()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13018
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13019
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13022
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13023
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13024
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13025
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13028
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13030
    nop

    .line 13031
    return-object v2

    .line 13028
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13029
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13030
    throw v2
.end method

.method public blacklist getEquivalentHomePlmns(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13662
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13663
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13664
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13665
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13666
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13667
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13668
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13671
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13673
    nop

    .line 13674
    return-object v2

    .line 13671
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13672
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13673
    throw v2
.end method

.method public greylist-max-o getEsn(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11180
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11181
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11182
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11185
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11187
    nop

    .line 11188
    return-object v2

    .line 11185
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11186
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11187
    throw v2
.end method

.method public blacklist getForbiddenPlmns(IILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11668
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11671
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11673
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11674
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11675
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11676
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11677
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11678
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11681
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11683
    nop

    .line 11684
    return-object v2

    .line 11681
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11682
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11683
    throw v2
.end method

.method public blacklist getGbaReleaseTime(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13907
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13908
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13911
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13912
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13913
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x126

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13914
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13915
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13918
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13920
    nop

    .line 13921
    return v2

    .line 13918
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13919
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13920
    throw v2
.end method

.method public blacklist getImeiForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10739
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10740
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10741
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x92

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10742
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10743
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10746
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10748
    nop

    .line 10749
    return-object v2

    .line 10746
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10748
    throw v2
.end method

.method public greylist-max-o getImsConfig(II)Landroid/telephony/ims/aidl/IImsConfig;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9452
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9455
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9456
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9457
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9458
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9459
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9460
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsConfig$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsConfig;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9463
    .local v2, "_result":Landroid/telephony/ims/aidl/IImsConfig;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9465
    nop

    .line 9466
    return-object v2

    .line 9463
    .end local v2    # "_result":Landroid/telephony/ims/aidl/IImsConfig;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9465
    throw v2
.end method

.method public blacklist getImsFeatureValidationOverride(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14194
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14195
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14198
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14200
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x136

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14201
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14202
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14205
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14207
    nop

    .line 14208
    return v2

    .line 14205
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14207
    throw v2
.end method

.method public blacklist getImsMmTelFeatureState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9534
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9536
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9537
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9538
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9539
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x62

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9540
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9543
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9545
    nop

    .line 9546
    return-void

    .line 9543
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9545
    throw v2
.end method

.method public blacklist getImsMmTelRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "consumer"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12257
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12258
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12259
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12262
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12264
    nop

    .line 12265
    return-void

    .line 12262
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12264
    throw v2
.end method

.method public blacklist getImsMmTelRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "consumer"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12269
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12270
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12275
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12276
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12279
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12281
    nop

    .line 12282
    return-void

    .line 12279
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12281
    throw v2
.end method

.method public blacklist getImsProvisioningInt(II)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12911
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12912
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12913
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12916
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12918
    nop

    .line 12919
    return v2

    .line 12916
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12918
    throw v2
.end method

.method public blacklist getImsProvisioningStatusForCapability(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12849
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12850
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12851
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12852
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12853
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12856
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12858
    nop

    .line 12859
    return v2

    .line 12856
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12858
    throw v2
.end method

.method public blacklist getImsProvisioningString(II)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12924
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12925
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12928
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12929
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12930
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12931
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12932
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12933
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 12936
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12938
    nop

    .line 12939
    return-object v2

    .line 12936
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12938
    throw v2
.end method

.method public greylist-max-o getImsRegTechnologyForMmTel(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10659
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10660
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10665
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10666
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10667
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10670
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10672
    nop

    .line 10673
    return v2

    .line 10670
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10672
    throw v2
.end method

.method public greylist-max-o getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9432
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9437
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9438
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9439
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9440
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/ims/aidl/IImsRegistration$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9443
    .local v2, "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9445
    nop

    .line 9446
    return-object v2

    .line 9443
    .end local v2    # "_result":Landroid/telephony/ims/aidl/IImsRegistration;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9445
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 7289
    const-string v0, "com.android.internal.telephony.ITelephony"

    return-object v0
.end method

.method public blacklist getLastKnownCellIdentity(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14632
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14633
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14637
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14638
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14639
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14640
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14641
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14642
    sget-object v3, Landroid/telephony/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellIdentity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14645
    .local v2, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14647
    nop

    .line 14648
    return-object v2

    .line 14645
    .end local v2    # "_result":Landroid/telephony/CellIdentity;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14647
    throw v2
.end method

.method public blacklist getLastUcePidfXmlShell(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14424
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14427
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14429
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x141

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14430
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14431
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14434
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14436
    nop

    .line 14437
    return-object v2

    .line 14434
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14436
    throw v2
.end method

.method public blacklist getLatestRcsContactUceCapabilityShell(I)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14406
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x140

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14407
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14408
    sget-object v3, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactUceCapability;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14411
    .local v2, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14413
    nop

    .line 14414
    return-object v2

    .line 14411
    .end local v2    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14413
    throw v2
.end method

.method public blacklist getLine1AlphaTagForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10175
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10178
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10179
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10180
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10181
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10184
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10186
    nop

    .line 10187
    return-object v2

    .line 10184
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10186
    throw v2
.end method

.method public blacklist getLine1NumberForDisplay(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10145
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10146
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10147
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10148
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10149
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10150
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10151
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10154
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10156
    nop

    .line 10157
    return-object v2

    .line 10154
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10156
    throw v2
.end method

.method public blacklist getLteOnCdmaMode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8738
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8739
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8740
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8741
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8744
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8746
    nop

    .line 8747
    return v2

    .line 8744
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8746
    throw v2
.end method

.method public blacklist getLteOnCdmaModeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8765
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8767
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8768
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8769
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8770
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8771
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8774
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8776
    nop

    .line 8777
    return v2

    .line 8774
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8776
    throw v2
.end method

.method public blacklist getManualNetworkSelectionPlmn(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13617
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13620
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13621
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13622
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x119

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13623
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13624
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13627
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13629
    nop

    .line 13630
    return-object v2

    .line 13627
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13629
    throw v2
.end method

.method public blacklist getManufacturerCodeForSlot(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10811
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10814
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10815
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10816
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x95

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10817
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10818
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10821
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10823
    nop

    .line 10824
    return-object v2

    .line 10821
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10823
    throw v2
.end method

.method public blacklist getMeidForSlot(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10785
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10786
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10789
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10792
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10793
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x94

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10794
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10795
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10798
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10800
    nop

    .line 10801
    return-object v2

    .line 10798
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10799
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10800
    throw v2
.end method

.method public blacklist getMergedImsisFromGroup(ILjava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10229
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10230
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10231
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10234
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10236
    nop

    .line 10237
    return-object v2

    .line 10234
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10235
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10236
    throw v2
.end method

.method public blacklist getMergedSubscriberIds(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10206
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10207
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10208
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10209
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10210
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10211
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10214
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10216
    nop

    .line 10217
    return-object v2

    .line 10214
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10215
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10216
    throw v2
.end method

.method public blacklist getMmsUAProfUrl(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13440
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13443
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13444
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13445
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13446
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13447
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13450
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13452
    nop

    .line 13453
    return-object v2

    .line 13450
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13452
    throw v2
.end method

.method public blacklist getMmsUserAgent(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13421
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13424
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13425
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13426
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13427
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13428
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13431
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13433
    nop

    .line 13434
    return-object v2

    .line 13431
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13433
    throw v2
.end method

.method public blacklist getMobileProvisioningUrl()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14220
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14221
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x137

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14222
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14223
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14226
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14228
    nop

    .line 14229
    return-object v2

    .line 14226
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14228
    throw v2
.end method

.method public blacklist getModemService()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14691
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14695
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14696
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14697
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14700
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14702
    nop

    .line 14703
    return-object v2

    .line 14700
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14701
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14702
    throw v2
.end method

.method public blacklist getNeighboringCellInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7911
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7912
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7913
    sget-object v3, Landroid/telephony/NeighboringCellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7916
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7918
    nop

    .line 7919
    return-object v2

    .line 7916
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7918
    throw v2
.end method

.method public greylist-max-o getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7886
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7889
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7890
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7891
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7892
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7893
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7896
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7898
    nop

    .line 7899
    return-object v2

    .line 7896
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7898
    throw v2
.end method

.method public blacklist getNetworkSelectionMode(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12163
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12164
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12165
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12166
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12167
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12170
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12172
    nop

    .line 12173
    return v2

    .line 12170
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12172
    throw v2
.end method

.method public blacklist getNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8591
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8592
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8593
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8594
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8597
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8599
    nop

    .line 8600
    return v2

    .line 8597
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8599
    throw v2
.end method

.method public blacklist getNumberOfModemsWithSimultaneousDataConnections(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12139
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12144
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12145
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12146
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xca

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12147
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12151
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12153
    nop

    .line 12154
    return v2

    .line 12151
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12153
    throw v2
.end method

.method public blacklist getPackagesWithCarrierPrivileges(I)Ljava/util/List;
    .locals 5
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11105
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11106
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11107
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11108
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11111
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11113
    nop

    .line 11114
    return-object v2

    .line 11111
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11112
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11113
    throw v2
.end method

.method public blacklist getPackagesWithCarrierPrivilegesForAllPhones()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11122
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11123
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11126
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11127
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11128
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11129
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11132
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11134
    nop

    .line 11135
    return-object v2

    .line 11132
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11134
    throw v2
.end method

.method public blacklist getPhoneAccountHandleForSubscriptionId(I)Landroid/telecom/PhoneAccountHandle;
    .locals 5
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10885
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x98

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10886
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10887
    sget-object v3, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10890
    .local v2, "_result":Landroid/telecom/PhoneAccountHandle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10892
    nop

    .line 10893
    return-object v2

    .line 10890
    .end local v2    # "_result":Landroid/telecom/PhoneAccountHandle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10892
    throw v2
.end method

.method public blacklist getPhoneCapability()Landroid/telephony/PhoneCapability;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14526
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14527
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14530
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14531
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x146

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14532
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14533
    sget-object v3, Landroid/telephony/PhoneCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/PhoneCapability;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14536
    .local v2, "_result":Landroid/telephony/PhoneCapability;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14538
    nop

    .line 14539
    return-object v2

    .line 14536
    .end local v2    # "_result":Landroid/telephony/PhoneCapability;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14538
    throw v2
.end method

.method public greylist-max-o getRadioAccessFamily(ILjava/lang/String;)I
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10398
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10399
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10400
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10401
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x83

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10402
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10403
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10406
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10408
    nop

    .line 10409
    return v2

    .line 10406
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10407
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10408
    throw v2
.end method

.method public blacklist getRadioHalVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13231
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13232
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13236
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x104

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13237
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13238
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13241
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13243
    nop

    .line 13244
    return v2

    .line 13241
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13242
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13243
    throw v2
.end method

.method public blacklist getRadioPowerState(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12200
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12201
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12202
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12203
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12204
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12205
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12206
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12209
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12211
    nop

    .line 12212
    return v2

    .line 12209
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12210
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12211
    throw v2
.end method

.method public blacklist getRcsProvisioningStatusForCapability(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12865
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12868
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12869
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12870
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12871
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12872
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12873
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12874
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12877
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12879
    nop

    .line 12880
    return v2

    .line 12877
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12878
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12879
    throw v2
.end method

.method public blacklist getRcsSingleRegistrationTestModeEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14031
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14032
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14035
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14036
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14037
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14038
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14041
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14043
    nop

    .line 14044
    return v2

    .line 14041
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14043
    throw v2
.end method

.method public blacklist getServiceStateForSubscriber(IZZLjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "renounceCoarseLocationAccess"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10971
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10972
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10973
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10974
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 10975
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10976
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10977
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10978
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10979
    sget-object v3, Landroid/telephony/ServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ServiceState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10982
    .local v2, "_result":Landroid/telephony/ServiceState;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10984
    nop

    .line 10985
    return-object v2

    .line 10982
    .end local v2    # "_result":Landroid/telephony/ServiceState;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10984
    throw v2
.end method

.method public greylist-max-o getSignalStrength(I)Landroid/telephony/SignalStrength;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11760
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11761
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11762
    sget-object v3, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SignalStrength;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11765
    .local v2, "_result":Landroid/telephony/SignalStrength;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11767
    nop

    .line 11768
    return-object v2

    .line 11765
    .end local v2    # "_result":Landroid/telephony/SignalStrength;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11767
    throw v2
.end method

.method public blacklist getSimLocaleForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10919
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10920
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10923
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10924
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10925
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10926
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10927
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10930
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10932
    nop

    .line 10933
    return-object v2

    .line 10930
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10932
    throw v2
.end method

.method public blacklist getSlicingConfig(Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "callback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14577
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14580
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14581
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x148

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14582
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14585
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14587
    nop

    .line 14588
    return-void

    .line 14585
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14586
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14587
    throw v2
.end method

.method public blacklist getSlotsMapping(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13212
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13213
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13216
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13218
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x103

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13219
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13220
    sget-object v3, Landroid/telephony/UiccSlotMapping;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13223
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13225
    nop

    .line 13226
    return-object v2

    .line 13223
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13224
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13225
    throw v2
.end method

.method public blacklist getSubIdForPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10863
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10864
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10865
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10866
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x97

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10867
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10868
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10871
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10873
    nop

    .line 10874
    return v2

    .line 10871
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10873
    throw v2
.end method

.method public greylist-max-o getSubscriptionCarrierId(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11308
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11311
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11313
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11314
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11315
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11318
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11320
    nop

    .line 11321
    return v2

    .line 11318
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11319
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11320
    throw v2
.end method

.method public greylist-max-o getSubscriptionCarrierName(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11344
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11345
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11346
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11349
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11351
    nop

    .line 11352
    return-object v2

    .line 11349
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11351
    throw v2
.end method

.method public blacklist getSubscriptionSpecificCarrierId(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11379
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xab

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11381
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11384
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11386
    nop

    .line 11387
    return v2

    .line 11384
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11385
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11386
    throw v2
.end method

.method public blacklist getSubscriptionSpecificCarrierName(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11406
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11407
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11408
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11409
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11412
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11414
    nop

    .line 11415
    return-object v2

    .line 11412
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11414
    throw v2
.end method

.method public blacklist getSystemSelectionChannels(I)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13364
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13367
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13368
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13369
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13370
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13371
    sget-object v3, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 13374
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13376
    nop

    .line 13377
    return-object v2

    .line 13374
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13376
    throw v2
.end method

.method public greylist-max-o getTelephonyHistograms()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/TelephonyHistogram;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11225
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11226
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11229
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11230
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11231
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11232
    sget-object v3, Landroid/telephony/TelephonyHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11235
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11237
    nop

    .line 11238
    return-object v2

    .line 11235
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/TelephonyHistogram;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11237
    throw v2
.end method

.method public blacklist getTypeAllocationCodeForSlot(I)Ljava/lang/String;
    .locals 5
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10764
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x93

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10765
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10766
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 10769
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10771
    nop

    .line 10772
    return-object v2

    .line 10769
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10771
    throw v2
.end method

.method public blacklist getUiccCardsInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telephony/UiccCardInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11821
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11824
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11825
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11826
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11827
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11828
    sget-object v3, Landroid/telephony/UiccCardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11831
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccCardInfo;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11833
    nop

    .line 11834
    return-object v2

    .line 11831
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccCardInfo;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11833
    throw v2
.end method

.method public blacklist getUiccSlotsInfo(Ljava/lang/String;)[Landroid/telephony/UiccSlotInfo;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11844
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11847
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11848
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11849
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11850
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11851
    sget-object v3, Landroid/telephony/UiccSlotInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/telephony/UiccSlotInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11854
    .local v2, "_result":[Landroid/telephony/UiccSlotInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11856
    nop

    .line 11857
    return-object v2

    .line 11854
    .end local v2    # "_result":[Landroid/telephony/UiccSlotInfo;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11856
    throw v2
.end method

.method public blacklist getVisualVoicemailPackageName(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8444
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8447
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8448
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8449
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8450
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8451
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8452
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8453
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8456
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8458
    nop

    .line 8459
    return-object v2

    .line 8456
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8458
    throw v2
.end method

.method public greylist-max-o getVisualVoicemailSettings(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8425
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8428
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8431
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8432
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8433
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8436
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8438
    nop

    .line 8439
    return-object v2

    .line 8436
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8438
    throw v2
.end method

.method public greylist-max-o getVisualVoicemailSmsFilterSettings(Ljava/lang/String;I)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8496
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8499
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8501
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8502
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8503
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8504
    sget-object v3, Landroid/telephony/VisualVoicemailSmsFilterSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8507
    .local v2, "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8509
    nop

    .line 8510
    return-object v2

    .line 8507
    .end local v2    # "_result":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8509
    throw v2
.end method

.method public blacklist getVoWiFiModeSetting(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12583
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12586
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12587
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12588
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12589
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12593
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12595
    nop

    .line 12596
    return v2

    .line 12593
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12595
    throw v2
.end method

.method public blacklist getVoWiFiRoamingModeSetting(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12626
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12627
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12628
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12629
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12632
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12634
    nop

    .line 12635
    return v2

    .line 12632
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12634
    throw v2
.end method

.method public greylist-max-o getVoiceActivationState(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8335
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8338
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8339
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8340
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8341
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8342
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8343
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8346
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8348
    nop

    .line 8349
    return v2

    .line 8346
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8347
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8348
    throw v2
.end method

.method public blacklist getVoiceMessageCountForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8388
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8389
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8390
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8391
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8392
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8395
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8397
    nop

    .line 8398
    return v2

    .line 8395
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8396
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8397
    throw v2
.end method

.method public blacklist getVoiceNetworkTypeForSubscriber(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8661
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8662
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8665
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8666
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8667
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8668
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8669
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8670
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8671
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8674
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8676
    nop

    .line 8677
    return v2

    .line 8674
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8675
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8676
    throw v2
.end method

.method public greylist-max-o getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11002
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11003
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11004
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11005
    sget-object v3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 11008
    .local v2, "_result":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11010
    nop

    .line 11011
    return-object v2

    .line 11008
    .end local v2    # "_result":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11010
    throw v2
.end method

.method public greylist-max-o handlePinMmi(Ljava/lang/String;)Z
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7583
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7584
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7585
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7586
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7589
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7591
    nop

    .line 7592
    return v2

    .line 7589
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7591
    throw v2
.end method

.method public greylist-max-o handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7629
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7632
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7633
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7634
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7635
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7636
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7637
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7640
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7642
    nop

    .line 7643
    return v2

    .line 7640
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7641
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7642
    throw v2
.end method

.method public greylist-max-o handleUssdRequest(ILjava/lang/String;Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "ussdRequest"    # Ljava/lang/String;
    .param p3, "wrappedCallback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7604
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7608
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7609
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 7610
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7611
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7614
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7616
    nop

    .line 7617
    return-void

    .line 7614
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7615
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7616
    throw v2
.end method

.method public greylist-max-o hasIccCard()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8687
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8688
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8689
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8692
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8694
    nop

    .line 8695
    return v2

    .line 8692
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8694
    throw v2
.end method

.method public greylist-max-o hasIccCardUsingSlotIndex(I)Z
    .locals 5
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8710
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x42

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8711
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8712
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8715
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8717
    nop

    .line 8718
    return v2

    .line 8715
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8716
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8717
    throw v2
.end method

.method public blacklist iccCloseLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Z
    .locals 5
    .param p1, "request"    # Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8903
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8904
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8905
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8906
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8909
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8911
    nop

    .line 8912
    return v2

    .line 8909
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8911
    throw v2
.end method

.method public greylist-max-o iccExchangeSimIO(IIIIIILjava/lang/String;)[B
    .locals 5
    .param p1, "subId"    # I
    .param p2, "fileID"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9109
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9110
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9111
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9112
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 9113
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9114
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9115
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9116
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9119
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9121
    nop

    .line 9122
    return-object v2

    .line 9119
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9121
    throw v2
.end method

.method public blacklist iccOpenLogicalChannel(Lcom/android/internal/telephony/IccLogicalChannelRequest;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 5
    .param p1, "request"    # Lcom/android/internal/telephony/IccLogicalChannelRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8872
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8873
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8876
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8877
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8878
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8879
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8880
    sget-object v3, Landroid/telephony/IccOpenLogicalChannelResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8883
    .local v2, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8885
    nop

    .line 8886
    return-object v2

    .line 8883
    .end local v2    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8885
    throw v2
.end method

.method public greylist-max-o iccTransmitApduBasicChannel(ILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9071
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9072
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 9073
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9074
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9075
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 9076
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 9077
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9078
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9079
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9080
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9083
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9085
    nop

    .line 9086
    return-object v2

    .line 9083
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9085
    throw v2
.end method

.method public blacklist iccTransmitApduBasicChannelByPort(IILjava/lang/String;IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "cla"    # I
    .param p5, "instruction"    # I
    .param p6, "p1"    # I
    .param p7, "p2"    # I
    .param p8, "p3"    # I
    .param p9, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9023
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9026
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9027
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9028
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9029
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9030
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 9031
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 9032
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 9033
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 9034
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 9035
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9036
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9037
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9038
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9041
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9043
    nop

    .line 9044
    return-object v2

    .line 9041
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9043
    throw v2
.end method

.method public greylist-max-o iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8980
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8984
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8985
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8986
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8987
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8988
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 8989
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 8990
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 8991
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8992
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8993
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8994
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8997
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8999
    nop

    .line 9000
    return-object v2

    .line 8997
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8998
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8999
    throw v2
.end method

.method public blacklist iccTransmitApduLogicalChannelByPort(IIIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "portIndex"    # I
    .param p3, "channel"    # I
    .param p4, "cla"    # I
    .param p5, "instruction"    # I
    .param p6, "p1"    # I
    .param p7, "p2"    # I
    .param p8, "p3"    # I
    .param p9, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8935
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8936
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8939
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8940
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8941
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8942
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8943
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 8944
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 8945
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 8946
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 8947
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 8948
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8949
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8950
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8951
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 8954
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8956
    nop

    .line 8957
    return-object v2

    .line 8954
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8955
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8956
    throw v2
.end method

.method public greylist-max-o invokeOemRilRequestRaw([B[B)I
    .locals 5
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10326
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10329
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10330
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 10331
    if-nez p2, :cond_0

    .line 10332
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 10335
    :cond_0
    array-length v2, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10337
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10338
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10339
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 10340
    .local v3, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10343
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10345
    nop

    .line 10346
    return v3

    .line 10343
    .end local v3    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10345
    throw v2
.end method

.method public blacklist isAdvancedCallingSettingEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12387
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12388
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12389
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12392
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12394
    nop

    .line 12395
    return v2

    .line 12392
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12394
    throw v2
.end method

.method public blacklist isApnMetered(II)Z
    .locals 5
    .param p1, "apnType"    # I
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13330
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13331
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13334
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13337
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x109

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13338
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13339
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13342
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13344
    nop

    .line 13345
    return v2

    .line 13342
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13344
    throw v2
.end method

.method public blacklist isApplicationOnUicc(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13272
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13276
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13278
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x106

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13279
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13280
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13283
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13285
    nop

    .line 13286
    return v2

    .line 13283
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13285
    throw v2
.end method

.method public blacklist isAvailable(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "regTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12347
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12348
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12349
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12350
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12351
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12354
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12356
    nop

    .line 12357
    return v2

    .line 12354
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12355
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12356
    throw v2
.end method

.method public blacklist isCapable(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "regTech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12326
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12328
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12329
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12330
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12333
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12335
    nop

    .line 12336
    return v2

    .line 12333
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12335
    throw v2
.end method

.method public greylist-max-o isConcurrentVoiceAndDataAllowed(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8412
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8413
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8414
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8417
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8419
    nop

    .line 8420
    return v2

    .line 8417
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8419
    throw v2
.end method

.method public blacklist isCrossSimCallingEnabledByUser(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12490
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12495
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12496
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12497
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12500
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12502
    nop

    .line 12503
    return v2

    .line 12500
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12502
    throw v2
.end method

.method public greylist-max-o isDataConnectivityPossible(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7843
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7846
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7848
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7849
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7850
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7853
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7855
    nop

    .line 7856
    return v2

    .line 7853
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7855
    throw v2
.end method

.method public greylist-max-o isDataEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9798
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9801
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9802
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9803
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9804
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9805
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9808
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9810
    nop

    .line 9811
    return v2

    .line 9808
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9810
    throw v2
.end method

.method public blacklist isDataEnabledForApn(IILjava/lang/String;)Z
    .locals 5
    .param p1, "apnType"    # I
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13314
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13315
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13316
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13317
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13318
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x108

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13319
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13320
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13323
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13325
    nop

    .line 13326
    return v2

    .line 13323
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13325
    throw v2
.end method

.method public blacklist isDataEnabledForReason(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9847
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9848
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9851
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9852
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9853
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9854
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9855
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9856
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9859
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9861
    nop

    .line 9862
    return v2

    .line 9859
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9860
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9861
    throw v2
.end method

.method public blacklist isDataRoamingEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11925
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11926
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11929
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11931
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11932
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11933
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11936
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11938
    nop

    .line 11939
    return v2

    .line 11936
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11938
    throw v2
.end method

.method public blacklist isEmergencyNumber(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "exactMatch"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12718
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12721
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12723
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12724
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12725
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12726
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12729
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12731
    nop

    .line 12732
    return v2

    .line 12729
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12730
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12731
    throw v2
.end method

.method public greylist-max-o isHearingAidCompatibilitySupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10583
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10584
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10585
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10588
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10590
    nop

    .line 10591
    return v2

    .line 10588
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10590
    throw v2
.end method

.method public blacklist isIccLockEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13525
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13528
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13529
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13530
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x114

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13531
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13532
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13535
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13537
    nop

    .line 13538
    return v2

    .line 13535
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13537
    throw v2
.end method

.method public greylist-max-o isImsRegistered(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10608
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10609
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10610
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10613
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10615
    nop

    .line 10616
    return v2

    .line 10613
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10615
    throw v2
.end method

.method public blacklist isInEmergencySmsMode()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12182
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12183
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12184
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12185
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12188
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12190
    nop

    .line 12191
    return v2

    .line 12188
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12189
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12190
    throw v2
.end method

.method public blacklist isManualNetworkSelectionAllowed(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9872
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9875
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9877
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9878
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9879
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9882
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9884
    nop

    .line 9885
    return v2

    .line 9882
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9884
    throw v2
.end method

.method public blacklist isMmTelCapabilitySupported(ILcom/android/internal/telephony/IIntegerConsumer;II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .param p3, "capability"    # I
    .param p4, "transportType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12365
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12368
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12369
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 12370
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12371
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12374
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12376
    nop

    .line 12377
    return-void

    .line 12374
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12376
    throw v2
.end method

.method public blacklist isMobileDataPolicyEnabled(II)Z
    .locals 5
    .param p1, "subscriptionId"    # I
    .param p2, "policy"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13475
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13478
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13480
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13481
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x111

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13482
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13483
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13486
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13488
    nop

    .line 13489
    return v2

    .line 13486
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13488
    throw v2
.end method

.method public blacklist isModemEnabledForSlot(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13296
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13297
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13298
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x107

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13299
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13300
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13303
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13305
    nop

    .line 13306
    return v2

    .line 13303
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13305
    throw v2
.end method

.method public blacklist isMultiSimSupported(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13149
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13150
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13154
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13155
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13156
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x100

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13157
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13158
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13161
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13163
    nop

    .line 13164
    return v2

    .line 13161
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13163
    throw v2
.end method

.method public blacklist isMvnoMatched(IILjava/lang/String;)Z
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "mvnoType"    # I
    .param p3, "mvnoMatchData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13385
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13387
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13388
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13389
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13390
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13391
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13394
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13396
    nop

    .line 13397
    return v2

    .line 13394
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13396
    throw v2
.end method

.method public blacklist isNrDualConnectivityEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13760
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13761
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13762
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13763
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13764
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13767
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13769
    nop

    .line 13770
    return v2

    .line 13767
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13769
    throw v2
.end method

.method public blacklist isProvisioningRequiredForCapability(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14712
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14713
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14716
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14718
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14719
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14720
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14721
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14722
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14725
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14727
    nop

    .line 14728
    return v2

    .line 14725
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14727
    throw v2
.end method

.method public blacklist isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z
    .locals 5
    .param p1, "capability"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13780
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13781
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13784
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13786
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x120

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13787
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13788
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13791
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13793
    nop

    .line 13794
    return v2

    .line 13791
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13792
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13793
    throw v2
.end method

.method public blacklist isRadioOn(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7342
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7343
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7344
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7347
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7349
    nop

    .line 7350
    return v2

    .line 7347
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7349
    throw v2
.end method

.method public greylist-max-o isRadioOnForSubscriber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7386
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7387
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7388
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7389
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7392
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7394
    nop

    .line 7395
    return v2

    .line 7392
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7394
    throw v2
.end method

.method public blacklist isRadioOnForSubscriberWithFeature(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7407
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7414
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7415
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7416
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7419
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7421
    nop

    .line 7422
    return v2

    .line 7419
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7421
    throw v2
.end method

.method public blacklist isRadioOnWithFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7364
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7365
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7366
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7367
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7368
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7369
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7372
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7374
    nop

    .line 7375
    return v2

    .line 7372
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7373
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7374
    throw v2
.end method

.method public blacklist isRcsProvisioningRequiredForCapability(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14742
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14743
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14744
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14745
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x150

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14746
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14747
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14750
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14752
    nop

    .line 14753
    return v2

    .line 14750
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14751
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14752
    throw v2
.end method

.method public blacklist isRcsVolteSingleRegistrationCapable(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13946
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13947
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13950
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13952
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x128

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13953
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13954
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13957
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13959
    nop

    .line 13960
    return v2

    .line 13957
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13959
    throw v2
.end method

.method public blacklist isRemovableEsimDefaultEuicc(Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14832
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14835
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14836
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14837
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x154

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14838
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14839
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14842
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14844
    nop

    .line 14845
    return v2

    .line 14842
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14844
    throw v2
.end method

.method public blacklist isRttSupported(I)Z
    .locals 5
    .param p1, "subscriptionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10561
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10562
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10563
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10566
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10568
    nop

    .line 10569
    return v2

    .line 10566
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10568
    throw v2
.end method

.method public blacklist isTetheringApnRequiredForSubscriber(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9324
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9327
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9328
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9329
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9330
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9331
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9334
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9336
    nop

    .line 9337
    return v2

    .line 9334
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9336
    throw v2
.end method

.method public greylist-max-o isTtyModeSupported()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10543
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x89

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10544
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10545
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10548
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10550
    nop

    .line 10551
    return v2

    .line 10548
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10549
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10550
    throw v2
.end method

.method public blacklist isTtyOverVolteEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12678
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12681
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12682
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12683
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12684
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12685
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12688
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12690
    nop

    .line 12691
    return v2

    .line 12688
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12690
    throw v2
.end method

.method public greylist-max-o isUserDataEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9779
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9780
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9781
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9782
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9785
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9787
    nop

    .line 9788
    return v2

    .line 9785
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9786
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9787
    throw v2
.end method

.method public blacklist isUsingNewDataStack()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14653
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14654
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14657
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14658
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14659
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14660
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14663
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14665
    nop

    .line 14666
    return v2

    .line 14663
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14665
    throw v2
.end method

.method public blacklist isVideoCallingEnabled(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10459
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10460
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10463
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10465
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10466
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10467
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10468
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10471
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10473
    nop

    .line 10474
    return v2

    .line 10471
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10472
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10473
    throw v2
.end method

.method public greylist-max-o isVideoTelephonyAvailable(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10646
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10647
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10648
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10651
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10653
    nop

    .line 10654
    return v2

    .line 10651
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10653
    throw v2
.end method

.method public blacklist isVoNrEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13708
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13711
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13713
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13714
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13715
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13718
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13720
    nop

    .line 13721
    return v2

    .line 13718
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13720
    throw v2
.end method

.method public blacklist isVoWiFiRoamingSettingEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12526
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12529
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12531
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12532
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12533
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12536
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12538
    nop

    .line 12539
    return v2

    .line 12536
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12538
    throw v2
.end method

.method public blacklist isVoWiFiSettingEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12459
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12460
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12461
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12464
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12466
    nop

    .line 12467
    return v2

    .line 12464
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12466
    throw v2
.end method

.method public greylist-max-o isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z
    .locals 5
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11050
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11051
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11054
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11055
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11056
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11057
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11058
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11061
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11063
    nop

    .line 11064
    return v2

    .line 11061
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11062
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11063
    throw v2
.end method

.method public blacklist isVtSettingEnabled(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12422
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12423
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12424
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12425
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12428
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12430
    nop

    .line 12431
    return v2

    .line 12428
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12430
    throw v2
.end method

.method public greylist-max-o isWifiCallingAvailable(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10622
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10625
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10626
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10627
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10628
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10629
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10632
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10634
    nop

    .line 10635
    return v2

    .line 10632
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10634
    throw v2
.end method

.method public blacklist isWorldPhone(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10514
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10517
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10519
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10520
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10521
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10522
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10523
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10526
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10528
    nop

    .line 10529
    return v2

    .line 10526
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10528
    throw v2
.end method

.method public greylist-max-o needMobileRadioShutdown()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10359
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10360
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x81

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10361
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10362
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10365
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10367
    nop

    .line 10368
    return v2

    .line 10365
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10367
    throw v2
.end method

.method public greylist-max-o needsOtaServiceProvisioning()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8262
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8263
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8264
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8267
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8269
    nop

    .line 8270
    return v2

    .line 8267
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8268
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8269
    throw v2
.end method

.method public blacklist notifyOtaEmergencyNumberDbInstalled()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13055
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13056
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13058
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13059
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13060
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13063
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13065
    nop

    .line 13066
    return-void

    .line 13063
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13064
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13065
    throw v2
.end method

.method public blacklist notifyRcsAutoConfigurationReceived(I[BZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "config"    # [B
    .param p3, "isCompressed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 13513
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13514
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x113

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13515
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13518
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13520
    nop

    .line 13521
    return-void

    .line 13518
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13520
    throw v2
.end method

.method public greylist-max-o nvReadItem(I)Ljava/lang/String;
    .locals 5
    .param p1, "itemID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9163
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9164
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9167
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9168
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9169
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9170
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9171
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9174
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9176
    nop

    .line 9177
    return-object v2

    .line 9174
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9176
    throw v2
.end method

.method public greylist-max-o nvWriteCdmaPrl([B)Z
    .locals 5
    .param p1, "preferredRoamingList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 9221
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9222
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9223
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9226
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9228
    nop

    .line 9229
    return v2

    .line 9226
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9228
    throw v2
.end method

.method public greylist-max-o nvWriteItem(ILjava/lang/String;)Z
    .locals 5
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9189
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9190
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9196
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9197
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9198
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9201
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9203
    nop

    .line 9204
    return v2

    .line 9201
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9203
    throw v2
.end method

.method public blacklist prepareForUnattendedReboot()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14555
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14556
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14559
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14560
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x147

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14561
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14562
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14565
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14567
    nop

    .line 14568
    return v2

    .line 14565
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14566
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14567
    throw v2
.end method

.method public blacklist rebootModem(I)Z
    .locals 5
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9273
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9274
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9277
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9279
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9280
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9281
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9284
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9286
    nop

    .line 9287
    return v2

    .line 9284
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9286
    throw v2
.end method

.method public greylist-max-o refreshUiccProfile(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12120
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12124
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12125
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12128
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12130
    nop

    .line 12131
    return-void

    .line 12128
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12129
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12130
    throw v2
.end method

.method public blacklist registerFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12793
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12794
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12795
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12796
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xed

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12797
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12800
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12802
    nop

    .line 12803
    return-void

    .line 12800
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12802
    throw v2
.end method

.method public blacklist registerImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12756
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12757
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12759
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12760
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12761
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12762
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xeb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12763
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12766
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12768
    nop

    .line 12769
    return-void

    .line 12766
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12767
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12768
    throw v2
.end method

.method public blacklist registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12223
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12224
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xce

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12225
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12228
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12230
    nop

    .line 12231
    return-void

    .line 12228
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12230
    throw v2
.end method

.method public blacklist registerImsStateCallback(IILcom/android/internal/telephony/IImsStateCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "feature"    # I
    .param p3, "cb"    # Lcom/android/internal/telephony/IImsStateCallback;
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14593
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14595
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14596
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14597
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14598
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 14599
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14600
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x149

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14601
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14604
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14606
    nop

    .line 14607
    return-void

    .line 14604
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14605
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14606
    throw v2
.end method

.method public blacklist registerMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12289
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12290
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12291
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12292
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12293
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12296
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12298
    nop

    .line 12299
    return-void

    .line 12296
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12298
    throw v2
.end method

.method public blacklist registerMmTelFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9395
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9397
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9398
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9399
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9400
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9401
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9404
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9406
    nop

    .line 9407
    return-void

    .line 9404
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9405
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9406
    throw v2
.end method

.method public blacklist registerRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13966
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13968
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13969
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13970
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13971
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x129

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13972
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13975
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13977
    nop

    .line 13978
    return-void

    .line 13975
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13976
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13977
    throw v2
.end method

.method public blacklist removeContactFromEab(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "contacts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14235
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14241
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x138

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14242
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14243
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14246
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14248
    nop

    .line 14249
    return v2

    .line 14246
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14248
    throw v2
.end method

.method public blacklist removeUceRegistrationOverrideShell(ILjava/util/List;)Landroid/telephony/ims/RcsContactUceCapability;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/telephony/ims/RcsContactUceCapability;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14354
    .local p2, "featureTags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14355
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14360
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 14361
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14362
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14363
    sget-object v3, Landroid/telephony/ims/RcsContactUceCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/ims/RcsContactUceCapability;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 14366
    .local v2, "_result":Landroid/telephony/ims/RcsContactUceCapability;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14368
    nop

    .line 14369
    return-object v2

    .line 14366
    .end local v2    # "_result":Landroid/telephony/ims/RcsContactUceCapability;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14367
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14368
    throw v2
.end method

.method public blacklist removeUceRequestDisallowedStatus(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14446
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14449
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14451
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x142

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14452
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14453
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14456
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14458
    nop

    .line 14459
    return v2

    .line 14456
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14458
    throw v2
.end method

.method public blacklist requestCellInfoUpdate(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ICellInfoCallback;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8805
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8806
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8808
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8809
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8810
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8811
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8812
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8813
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8814
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8817
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8819
    nop

    .line 8820
    return-void

    .line 8817
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8819
    throw v2
.end method

.method public blacklist requestCellInfoUpdateWithWorkSource(ILandroid/telephony/ICellInfoCallback;Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "cb"    # Landroid/telephony/ICellInfoCallback;
    .param p3, "callingPkg"    # Ljava/lang/String;
    .param p4, "callingFeatureId"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8830
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8832
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8834
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 8835
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8836
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8837
    const/4 v2, 0x0

    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8838
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8839
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8842
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8844
    nop

    .line 8845
    return-void

    .line 8842
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8844
    throw v2
.end method

.method public greylist-max-o requestModemActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "result"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10946
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10947
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10948
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10951
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10952
    nop

    .line 10953
    return-void

    .line 10951
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10952
    throw v1
.end method

.method public blacklist requestNetworkScan(IZLandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "renounceFineLocationAccess"    # Z
    .param p3, "request"    # Landroid/telephony/NetworkScanRequest;
    .param p4, "messenger"    # Landroid/os/Messenger;
    .param p5, "binder"    # Landroid/os/IBinder;
    .param p6, "callingPackage"    # Ljava/lang/String;
    .param p7, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9611
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9616
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9617
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9618
    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9619
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 9620
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9621
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9622
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x65

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9623
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9624
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9627
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9629
    nop

    .line 9630
    return v2

    .line 9627
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9629
    throw v2
.end method

.method public blacklist requestNumberVerification(Landroid/telephony/PhoneNumberRange;JLcom/android/internal/telephony/INumberVerificationCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "range"    # Landroid/telephony/PhoneNumberRange;
    .param p2, "timeoutMillis"    # J
    .param p4, "callback"    # Lcom/android/internal/telephony/INumberVerificationCallback;
    .param p5, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9958
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9961
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9962
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 9963
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9964
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9965
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9966
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9969
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9971
    nop

    .line 9972
    return-void

    .line 9969
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9971
    throw v2
.end method

.method public blacklist requestUserActivityNotification()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13585
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13586
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x117

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13590
    nop

    .line 13591
    return-void

    .line 13589
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13590
    throw v1
.end method

.method public blacklist resetIms(I)V
    .locals 5
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9377
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9378
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9379
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9380
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9383
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9385
    nop

    .line 9386
    return-void

    .line 9383
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9384
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9385
    throw v2
.end method

.method public blacklist resetModemConfig(I)Z
    .locals 5
    .param p1, "slotIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9245
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9248
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9249
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9250
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9251
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9252
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9255
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9257
    nop

    .line 9258
    return v2

    .line 9255
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9257
    throw v2
.end method

.method public blacklist resetOtaEmergencyNumberDbFilePath()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13086
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13087
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13089
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13090
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xfd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13091
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13094
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13096
    nop

    .line 13097
    return-void

    .line 13094
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13095
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13096
    throw v2
.end method

.method public blacklist sendDeviceToDeviceMessage(II)V
    .locals 5
    .param p1, "message"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14103
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14104
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14106
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14107
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14108
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14109
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x131

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14110
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14113
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14115
    nop

    .line 14116
    return-void

    .line 14113
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14115
    throw v2
.end method

.method public greylist-max-o sendDialerSpecialCode(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPackageName"    # Ljava/lang/String;
    .param p2, "inputCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8562
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8563
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8565
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8566
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8567
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8568
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8569
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8572
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8574
    nop

    .line 8575
    return-void

    .line 8572
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8574
    throw v2
.end method

.method public greylist-max-o sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9143
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9144
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9145
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9146
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 9149
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9151
    nop

    .line 9152
    return-object v2

    .line 9149
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9151
    throw v2
.end method

.method public blacklist sendThermalMitigationRequest(ILandroid/telephony/ThermalMitigationRequest;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "thermalMitigationRequest"    # Landroid/telephony/ThermalMitigationRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13806
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13807
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13812
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13813
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13814
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x121

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13815
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13816
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13819
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13821
    nop

    .line 13822
    return v2

    .line 13819
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13821
    throw v2
.end method

.method public blacklist sendVisualVoicemailSmsForSubscriber(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "callingAttributeTag"    # Ljava/lang/String;
    .param p3, "subId"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8544
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8545
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8546
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 8547
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8548
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 8549
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8550
    const/4 v2, 0x0

    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 8551
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8552
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8555
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8557
    nop

    .line 8558
    return-void

    .line 8555
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8557
    throw v2
.end method

.method public blacklist setActiveDeviceToDeviceTransport(Ljava/lang/String;)V
    .locals 5
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14121
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14123
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14124
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14125
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x132

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14126
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14129
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14131
    nop

    .line 14132
    return-void

    .line 14129
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14131
    throw v2
.end method

.method public blacklist setAdvancedCallingSettingEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12403
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12404
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12405
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12406
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12407
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12410
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12412
    nop

    .line 12413
    return-void

    .line 12410
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12412
    throw v2
.end method

.method public blacklist setAllowedCarriers(Landroid/telephony/CarrierRestrictionRules;)I
    .locals 5
    .param p1, "carrierRestrictionRules"    # Landroid/telephony/CarrierRestrictionRules;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11256
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11257
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11258
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11259
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11263
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11265
    nop

    .line 11266
    return v2

    .line 11263
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11265
    throw v2
.end method

.method public blacklist setAllowedNetworkTypesForReason(IIJ)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "allowedNetworkTypes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9727
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9728
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 9729
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9730
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9731
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9734
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9736
    nop

    .line 9737
    return v2

    .line 9734
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9736
    throw v2
.end method

.method public blacklist setBoundGbaServiceOverride(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13848
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13849
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13852
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13854
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13855
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x123

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13856
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13857
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13860
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13862
    nop

    .line 13863
    return v2

    .line 13860
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13861
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13862
    throw v2
.end method

.method public blacklist setBoundImsServiceOverride(IZ[ILjava/lang/String;)Z
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "isCarrierService"    # Z
    .param p3, "featureTypes"    # [I
    .param p4, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9471
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9472
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9478
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 9479
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9480
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9481
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9482
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9485
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9487
    nop

    .line 9488
    return v2

    .line 9485
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9487
    throw v2
.end method

.method public blacklist setCallComposerStatus(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7428
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7432
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7433
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7434
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7437
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7439
    nop

    .line 7440
    return-void

    .line 7437
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7439
    throw v2
.end method

.method public blacklist setCallForwarding(ILandroid/telephony/CallForwardingInfo;Lcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callForwardingInfo"    # Landroid/telephony/CallForwardingInfo;
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11535
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11537
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11538
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11539
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11540
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11541
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb2

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11542
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11545
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11547
    nop

    .line 11548
    return-void

    .line 11545
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11547
    throw v2
.end method

.method public blacklist setCallWaitingStatus(IZLcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11568
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11570
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11572
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11573
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11574
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11575
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11578
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11580
    nop

    .line 11581
    return-void

    .line 11578
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11580
    throw v2
.end method

.method public blacklist setCapabilitiesRequestTimeout(IJ)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "timeoutAfterMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14473
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 14474
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x143

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14476
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14479
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14481
    nop

    .line 14482
    return v2

    .line 14479
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14481
    throw v2
.end method

.method public blacklist setCarrierSingleRegistrationEnabledOverride(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14083
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14084
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14087
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14088
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14089
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14090
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x130

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14091
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14092
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14095
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14097
    nop

    .line 14098
    return v2

    .line 14095
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14096
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14097
    throw v2
.end method

.method public blacklist setCarrierTestOverride(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "mccmnc"    # Ljava/lang/String;
    .param p3, "imsi"    # Ljava/lang/String;
    .param p4, "iccid"    # Ljava/lang/String;
    .param p5, "gid1"    # Ljava/lang/String;
    .param p6, "gid2"    # Ljava/lang/String;
    .param p7, "plmn"    # Ljava/lang/String;
    .param p8, "spn"    # Ljava/lang/String;
    .param p9, "carrierPrivilegeRules"    # Ljava/lang/String;
    .param p10, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12072
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12073
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12075
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12076
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12077
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12078
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12079
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12080
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12081
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12082
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12083
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12084
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12085
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12086
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12087
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12090
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12092
    nop

    .line 12093
    return-void

    .line 12090
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12092
    throw v2
.end method

.method public blacklist setCdmaRoamingMode(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12003
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12004
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12005
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12006
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12009
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12011
    nop

    .line 12012
    return v2

    .line 12009
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12011
    throw v2
.end method

.method public blacklist setCdmaSubscriptionMode(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12049
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12052
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12053
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12054
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12055
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12056
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12057
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12060
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12062
    nop

    .line 12063
    return v2

    .line 12060
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12062
    throw v2
.end method

.method public greylist-max-o setCellInfoListRate(I)V
    .locals 5
    .param p1, "rateInMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8849
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8850
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8852
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8853
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8854
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8855
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8858
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8860
    nop

    .line 8861
    return-void

    .line 8858
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8860
    throw v2
.end method

.method public blacklist setCepEnabled(Z)V
    .locals 5
    .param p1, "isCepEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13496
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13498
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x112

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13502
    nop

    .line 13503
    return-void

    .line 13501
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13502
    throw v1
.end method

.method public blacklist setCrossSimCallingEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12509
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12511
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12513
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12514
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xde

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12515
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12518
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12520
    nop

    .line 12521
    return-void

    .line 12518
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12520
    throw v2
.end method

.method public greylist-max-o setDataActivationState(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8319
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8320
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8323
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8325
    nop

    .line 8326
    return-void

    .line 8323
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8325
    throw v2
.end method

.method public blacklist setDataEnabledForReason(IIZLjava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "reason"    # I
    .param p3, "enable"    # Z
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9826
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9827
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9828
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9829
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9830
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9831
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9832
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9835
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9837
    nop

    .line 9838
    return-void

    .line 9835
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9837
    throw v2
.end method

.method public blacklist setDataRoamingEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11949
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11950
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11952
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11953
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11954
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11955
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11956
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11959
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11961
    nop

    .line 11962
    return-void

    .line 11959
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11961
    throw v2
.end method

.method public blacklist setDeviceSingleRegistrationEnabledOverride(Ljava/lang/String;)V
    .locals 5
    .param p1, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14049
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14050
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14052
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14053
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14054
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14055
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14058
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14060
    nop

    .line 14061
    return-void

    .line 14058
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14059
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14060
    throw v2
.end method

.method public blacklist setDeviceToDeviceForceEnabled(Z)V
    .locals 5
    .param p1, "isForceEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14142
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14143
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14144
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x133

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14145
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14148
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14150
    nop

    .line 14151
    return-void

    .line 14148
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14150
    throw v2
.end method

.method public blacklist setDeviceUceEnabled(Z)V
    .locals 5
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14311
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14313
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14314
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14315
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14316
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14319
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14321
    nop

    .line 14322
    return-void

    .line 14319
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14321
    throw v2
.end method

.method public blacklist setForbiddenPlmns(IILjava/util/List;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .param p5, "callingFeatureId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11699
    .local p3, "fplmns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11704
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11705
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11706
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 11707
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11708
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11709
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11710
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11711
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11714
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11716
    nop

    .line 11717
    return v2

    .line 11714
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11715
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11716
    throw v2
.end method

.method public blacklist setGbaReleaseTimeOverride(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "interval"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13887
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13888
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13893
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13894
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x125

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13895
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13896
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13899
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13901
    nop

    .line 13902
    return v2

    .line 13899
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13901
    throw v2
.end method

.method public blacklist setIccLockEnabled(IZLjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13542
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13543
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13546
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13548
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13549
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 13550
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x115

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13551
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13552
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13555
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13557
    nop

    .line 13558
    return v2

    .line 13555
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13556
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13557
    throw v2
.end method

.method public blacklist setImsFeatureValidationOverride(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14175
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14178
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14180
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14181
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x135

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14182
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14183
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14186
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14188
    nop

    .line 14189
    return v2

    .line 14186
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14188
    throw v2
.end method

.method public blacklist setImsProvisioningInt(III)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12944
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12945
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12948
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12949
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12950
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12951
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12952
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12953
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12954
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12957
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12959
    nop

    .line 12960
    return v2

    .line 12957
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12958
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12959
    throw v2
.end method

.method public blacklist setImsProvisioningStatusForCapability(IIIZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12829
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12830
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12831
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12832
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xef

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12833
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12836
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12838
    nop

    .line 12839
    return-void

    .line 12836
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12838
    throw v2
.end method

.method public blacklist setImsProvisioningString(IILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12965
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12966
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12969
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12970
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12971
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12972
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12973
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12974
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 12975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 12978
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12980
    nop

    .line 12981
    return v2

    .line 12978
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12980
    throw v2
.end method

.method public greylist-max-o setImsRegistrationState(Z)V
    .locals 5
    .param p1, "registered"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9891
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9893
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9894
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9895
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x70

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9896
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9899
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9901
    nop

    .line 9902
    return-void

    .line 9899
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9901
    throw v2
.end method

.method public greylist-max-o setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10113
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10116
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10119
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10120
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x79

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10121
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10122
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10125
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10127
    nop

    .line 10128
    return v2

    .line 10125
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10126
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10127
    throw v2
.end method

.method public blacklist setMobileDataPolicyEnabled(IIZ)V
    .locals 5
    .param p1, "subscriptionId"    # I
    .param p2, "policy"    # I
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13460
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13461
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13462
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13463
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13464
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x110

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13465
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13468
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13470
    nop

    .line 13471
    return-void

    .line 13468
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13470
    throw v2
.end method

.method public blacklist setModemService(Ljava/lang/String;)Z
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14675
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14676
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14677
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14678
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 14679
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 14682
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14684
    nop

    .line 14685
    return v2

    .line 14682
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14684
    throw v2
.end method

.method public blacklist setMultiSimCarrierRestriction(Z)V
    .locals 5
    .param p1, "isMultiSimCarrierRestricted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13125
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13127
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13128
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13129
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13130
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13133
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13135
    nop

    .line 13136
    return-void

    .line 13133
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13135
    throw v2
.end method

.method public greylist-max-o setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9554
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9555
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9557
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9558
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9559
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9560
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9563
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9565
    nop

    .line 9566
    return-void

    .line 9563
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9565
    throw v2
.end method

.method public blacklist setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "operatorInfo"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p3, "persisSelection"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9667
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9668
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9671
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9672
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9673
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 9674
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 9675
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x67

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9676
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9677
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 9680
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9682
    nop

    .line 9683
    return v2

    .line 9680
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9682
    throw v2
.end method

.method public blacklist setNrDualConnectivityState(II)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "nrDualConnectivityState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13738
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13739
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13740
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13741
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13744
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13746
    nop

    .line 13747
    return v2

    .line 13744
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13746
    throw v2
.end method

.method public greylist-max-o setOperatorBrandOverride(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "brand"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10261
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10264
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10265
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10266
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10269
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10271
    nop

    .line 10272
    return v2

    .line 10269
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10271
    throw v2
.end method

.method public greylist-max-o setRadio(Z)Z
    .locals 5
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7682
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7683
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7686
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7687
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7688
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7689
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7690
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7693
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7695
    nop

    .line 7696
    return v2

    .line 7693
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7694
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7695
    throw v2
.end method

.method public greylist-max-o setRadioForSubscriber(IZ)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7705
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7708
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7709
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7710
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7711
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7712
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7713
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7716
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7718
    nop

    .line 7719
    return v2

    .line 7716
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7718
    throw v2
.end method

.method public greylist-max-o setRadioPower(Z)Z
    .locals 5
    .param p1, "turnOn"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7724
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7725
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7728
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7729
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 7730
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7731
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7732
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7735
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7737
    nop

    .line 7738
    return v2

    .line 7735
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7736
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7737
    throw v2
.end method

.method public blacklist setRcsClientConfiguration(ILandroid/telephony/ims/RcsClientConfiguration;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "rcc"    # Landroid/telephony/ims/RcsClientConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13926
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13927
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13929
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13930
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13931
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13932
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x127

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13933
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13936
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13938
    nop

    .line 13939
    return-void

    .line 13936
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13937
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13938
    throw v2
.end method

.method public blacklist setRcsProvisioningStatusForCapability(IIIZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "capability"    # I
    .param p3, "tech"    # I
    .param p4, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12886
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12888
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12889
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12890
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12891
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12892
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12893
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12894
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12897
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12899
    nop

    .line 12900
    return-void

    .line 12897
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12899
    throw v2
.end method

.method public blacklist setRcsSingleRegistrationTestModeEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14016
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14018
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14019
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14020
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14021
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14024
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14026
    nop

    .line 14027
    return-void

    .line 14024
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14026
    throw v2
.end method

.method public blacklist setRemovableEsimAsDefaultEuicc(ZLjava/lang/String;)V
    .locals 5
    .param p1, "isDefault"    # Z
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14811
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14814
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14815
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14816
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x153

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14817
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14820
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14822
    nop

    .line 14823
    return-void

    .line 14820
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14821
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14822
    throw v2
.end method

.method public greylist-max-o setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10294
    .local p2, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10299
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10300
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10301
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10302
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10303
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 10304
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10305
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 10306
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 10309
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10311
    nop

    .line 10312
    return v2

    .line 10309
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10311
    throw v2
.end method

.method public blacklist setRttCapabilitySetting(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12660
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12661
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12663
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12664
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12665
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12666
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12667
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12670
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12672
    nop

    .line 12673
    return-void

    .line 12670
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12671
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12672
    throw v2
.end method

.method public blacklist setSignalStrengthUpdateRequest(ILandroid/telephony/SignalStrengthUpdateRequest;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "request"    # Landroid/telephony/SignalStrengthUpdateRequest;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14491
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14493
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14495
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 14496
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14497
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x144

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14498
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14501
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14503
    nop

    .line 14504
    return-void

    .line 14501
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14503
    throw v2
.end method

.method public greylist-max-o setSimPowerStateForSlot(II)V
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11618
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11619
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11623
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11624
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11625
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11628
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11630
    nop

    .line 11631
    return-void

    .line 11628
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11630
    throw v2
.end method

.method public blacklist setSimPowerStateForSlotWithCallback(IILcom/android/internal/telephony/IIntegerConsumer;)V
    .locals 5
    .param p1, "slotIndex"    # I
    .param p2, "state"    # I
    .param p3, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11642
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11644
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 11646
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11647
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 11648
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11649
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11652
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11654
    nop

    .line 11655
    return-void

    .line 11652
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11654
    throw v2
.end method

.method public blacklist setSimSlotMapping(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/UiccSlotMapping;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11901
    .local p1, "slotMapping":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/UiccSlotMapping;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11902
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11905
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 11907
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11908
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11909
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11912
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11914
    nop

    .line 11915
    return v2

    .line 11912
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11914
    throw v2
.end method

.method public blacklist setSystemSelectionChannels(Ljava/util/List;ILcom/android/internal/telephony/IBooleanConsumer;)V
    .locals 5
    .param p2, "subId"    # I
    .param p3, "resultCallback"    # Lcom/android/internal/telephony/IBooleanConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;I",
            "Lcom/android/internal/telephony/IBooleanConsumer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13349
    .local p1, "specifiers":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/RadioAccessSpecifier;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13351
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 13353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13354
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13355
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13359
    nop

    .line 13360
    return-void

    .line 13358
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13359
    throw v1
.end method

.method public blacklist setVoNrEnabled(IZ)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13684
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13685
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13690
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 13691
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13692
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 13693
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 13696
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13698
    nop

    .line 13699
    return v2

    .line 13696
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13697
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13698
    throw v2
.end method

.method public blacklist setVoWiFiModeSetting(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12602
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12604
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12606
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12607
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12608
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12611
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12613
    nop

    .line 12614
    return-void

    .line 12611
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12613
    throw v2
.end method

.method public blacklist setVoWiFiNonPersistent(IZI)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "isCapable"    # Z
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12565
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12567
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12568
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12569
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12570
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 12571
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12572
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12575
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12577
    nop

    .line 12578
    return-void

    .line 12575
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12577
    throw v2
.end method

.method public blacklist setVoWiFiRoamingModeSetting(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12644
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12646
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 12649
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12650
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12653
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12655
    nop

    .line 12656
    return-void

    .line 12653
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12655
    throw v2
.end method

.method public blacklist setVoWiFiRoamingSettingEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12547
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12548
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12550
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12552
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12553
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12554
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12557
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12559
    nop

    .line 12560
    return-void

    .line 12557
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12558
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12559
    throw v2
.end method

.method public blacklist setVoWiFiSettingEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12473
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12475
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12478
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xdc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12479
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12482
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12484
    nop

    .line 12485
    return-void

    .line 12482
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12484
    throw v2
.end method

.method public greylist-max-o setVoiceActivationState(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "activationState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8301
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8302
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8303
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8306
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8308
    nop

    .line 8309
    return-void

    .line 8306
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8308
    throw v2
.end method

.method public greylist-max-o setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8281
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8282
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 8283
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 8284
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8285
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 8288
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8290
    nop

    .line 8291
    return v2

    .line 8288
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8289
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8290
    throw v2
.end method

.method public blacklist setVoiceServiceStateOverride(IZLjava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "hasService"    # Z
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14762
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14764
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14765
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14766
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 14767
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14768
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x151

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14769
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14772
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14774
    nop

    .line 14775
    return-void

    .line 14772
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14774
    throw v2
.end method

.method public greylist-max-o setVoicemailRingtoneUri(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Landroid/net/Uri;)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11026
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11027
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11029
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11030
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11031
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11032
    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11033
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11034
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11037
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11039
    nop

    .line 11040
    return-void

    .line 11037
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11038
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11039
    throw v2
.end method

.method public greylist-max-o setVoicemailVibrationEnabled(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11079
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11080
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11082
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11083
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 11084
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 11085
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 11086
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa0

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11087
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11090
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11092
    nop

    .line 11093
    return-void

    .line 11090
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11091
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11092
    throw v2
.end method

.method public blacklist setVtSettingEnabled(IZ)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12436
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12437
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12439
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12442
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xda

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12443
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12446
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12448
    nop

    .line 12449
    return-void

    .line 12446
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12448
    throw v2
.end method

.method public greylist-max-o shutdownMobileRadios()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10373
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10374
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10376
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10377
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x82

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10378
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10381
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10383
    nop

    .line 10384
    return-void

    .line 10381
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10382
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10383
    throw v2
.end method

.method public blacklist startEmergencyCallbackMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12986
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12987
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12989
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12990
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12991
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12994
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12996
    nop

    .line 12997
    return-void

    .line 12994
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12995
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12996
    throw v2
.end method

.method public greylist-max-o stopNetworkScan(II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "scanId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9640
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9641
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9643
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9644
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9645
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9646
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x66

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9647
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9650
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9652
    nop

    .line 9653
    return-void

    .line 9650
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9651
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9652
    throw v2
.end method

.method public greylist-max-o supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7470
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7475
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7476
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7477
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7478
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7481
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7483
    nop

    .line 7484
    return v2

    .line 7481
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7483
    throw v2
.end method

.method public greylist-max-o supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7524
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7527
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7528
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7529
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7530
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7531
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7532
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7535
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7537
    nop

    .line 7538
    return-object v2

    .line 7535
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7536
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7537
    throw v2
.end method

.method public greylist-max-o supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7496
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7497
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7500
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7501
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7502
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7503
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7504
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7505
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7506
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 7509
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7511
    nop

    .line 7512
    return v2

    .line 7509
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7511
    throw v2
.end method

.method public greylist-max-o supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7555
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7556
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7557
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7558
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7559
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7560
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 7561
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 7564
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7566
    nop

    .line 7567
    return-object v2

    .line 7564
    .end local v2    # "_result":[I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7566
    throw v2
.end method

.method public blacklist switchMultiSimConfig(I)V
    .locals 5
    .param p1, "numOfSims"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13172
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13173
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13175
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13177
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x101

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13178
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13181
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13183
    nop

    .line 13184
    return-void

    .line 13181
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13183
    throw v2
.end method

.method public greylist-max-o switchSlots([I)Z
    .locals 5
    .param p1, "physicalSlots"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 11868
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 11869
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 11872
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 11873
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 11874
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xbf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 11875
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 11876
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 11879
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11881
    nop

    .line 11882
    return v2

    .line 11879
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 11881
    throw v2
.end method

.method public greylist-max-o toggleRadioOnOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7649
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7651
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7652
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7653
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7656
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7658
    nop

    .line 7659
    return-void

    .line 7656
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7658
    throw v2
.end method

.method public greylist-max-o toggleRadioOnOffForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7667
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7671
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7672
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7675
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7677
    nop

    .line 7678
    return-void

    .line 7675
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7677
    throw v2
.end method

.method public blacklist triggerRcsReconfiguration(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14000
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14002
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14003
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14004
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14005
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14008
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14010
    nop

    .line 14011
    return-void

    .line 14008
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14010
    throw v2
.end method

.method public blacklist unregisterFeatureProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IFeatureProvisioningCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IFeatureProvisioningCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12812
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12813
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xee

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12814
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12817
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12819
    nop

    .line 12820
    return-void

    .line 12817
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12819
    throw v2
.end method

.method public blacklist unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/ims/internal/IImsServiceFeatureCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9416
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 9418
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 9420
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 9421
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9424
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9426
    nop

    .line 9427
    return-void

    .line 9424
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9426
    throw v2
.end method

.method public blacklist unregisterImsProvisioningChangedCallback(ILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IImsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12778
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12779
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xec

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12780
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12783
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12785
    nop

    .line 12786
    return-void

    .line 12783
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12784
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12785
    throw v2
.end method

.method public blacklist unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12235
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12236
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12238
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12239
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12240
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12241
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xcf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12242
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12245
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12247
    nop

    .line 12248
    return-void

    .line 12245
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12247
    throw v2
.end method

.method public blacklist unregisterImsStateCallback(Lcom/android/internal/telephony/IImsStateCallback;)V
    .locals 5
    .param p1, "cb"    # Lcom/android/internal/telephony/IImsStateCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 14612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 14614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 14615
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 14616
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 14617
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14620
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14622
    nop

    .line 14623
    return-void

    .line 14620
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 14621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 14622
    throw v2
.end method

.method public blacklist unregisterMmTelCapabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "c"    # Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 12304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 12306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 12307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12308
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 12309
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 12310
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12313
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12315
    nop

    .line 12316
    return-void

    .line 12313
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 12314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 12315
    throw v2
.end method

.method public blacklist unregisterRcsProvisioningCallback(ILandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callback"    # Landroid/telephony/ims/aidl/IRcsConfigCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13983
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13985
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13986
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13987
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 13988
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13989
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13992
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13994
    nop

    .line 13995
    return-void

    .line 13992
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13994
    throw v2
.end method

.method public blacklist updateEmergencyNumberListTestMode(ILandroid/telephony/emergency/EmergencyNumber;)V
    .locals 5
    .param p1, "action"    # I
    .param p2, "num"    # Landroid/telephony/emergency/EmergencyNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13001
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13002
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 13006
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13007
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf8

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13008
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13011
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13013
    nop

    .line 13014
    return-void

    .line 13011
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13012
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13013
    throw v2
.end method

.method public blacklist updateOtaEmergencyNumberDbFilePath(Landroid/os/ParcelFileDescriptor;)V
    .locals 5
    .param p1, "otaParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13071
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 13073
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13074
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 13075
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xfc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 13076
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13079
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13081
    nop

    .line 13082
    return-void

    .line 13079
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 13080
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13081
    throw v2
.end method

.method public greylist-max-o updateServiceLocation()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7743
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7744
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7746
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7747
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7748
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7751
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7753
    nop

    .line 7754
    return-void

    .line 7751
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7753
    throw v2
.end method

.method public blacklist updateServiceLocationWithPackageName(Ljava/lang/String;)V
    .locals 5
    .param p1, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 7759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 7761
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 7762
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7763
    iget-object v2, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 7764
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7767
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7769
    nop

    .line 7770
    return-void

    .line 7767
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 7768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 7769
    throw v2
.end method

.method public blacklist uploadCallComposerPicture(ILjava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ResultReceiver;)V
    .locals 5
    .param p1, "subscriptionId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "callback"    # Landroid/os/ResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 10413
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 10414
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 10416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 10417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10418
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10419
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 10420
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10421
    invoke-virtual {v0, p5, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 10422
    iget-object v3, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 10423
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10426
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10428
    nop

    .line 10429
    return-void

    .line 10426
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 10427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10428
    throw v2
.end method

.method public blacklist userActivity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 13600
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 13601
    iget-object v1, p0, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x118

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13605
    nop

    .line 13606
    return-void

    .line 13604
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 13605
    throw v1
.end method
