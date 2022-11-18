.class public abstract Landroid/net/IVpnManager$Stub;
.super Landroid/os/Binder;
.source "IVpnManager.java"

# interfaces
.implements Landroid/net/IVpnManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IVpnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IVpnManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addVpnAddress:I = 0x4

.field static final blacklist TRANSACTION_deleteVpnProfile:I = 0x8

.field static final blacklist TRANSACTION_establishVpn:I = 0x3

.field static final blacklist TRANSACTION_factoryReset:I = 0x19

.field static final blacklist TRANSACTION_getAlwaysOnVpnPackage:I = 0x10

.field static final blacklist TRANSACTION_getAppExclusionList:I = 0xd

.field static final blacklist TRANSACTION_getLegacyVpnInfo:I = 0x16

.field static final blacklist TRANSACTION_getProvisionedVpnProfileState:I = 0xb

.field static final blacklist TRANSACTION_getVpnConfig:I = 0x18

.field static final blacklist TRANSACTION_getVpnLockdownAllowlist:I = 0x12

.field static final blacklist TRANSACTION_isAlwaysOnVpnPackageSupported:I = 0xe

.field static final blacklist TRANSACTION_isCallerCurrentAlwaysOnVpnApp:I = 0x13

.field static final blacklist TRANSACTION_isCallerCurrentAlwaysOnVpnLockdownApp:I = 0x14

.field static final blacklist TRANSACTION_isVpnLockdownEnabled:I = 0x11

.field static final blacklist TRANSACTION_prepareVpn:I = 0x1

.field static final blacklist TRANSACTION_provisionVpnProfile:I = 0x7

.field static final blacklist TRANSACTION_removeVpnAddress:I = 0x5

.field static final blacklist TRANSACTION_setAlwaysOnVpnPackage:I = 0xf

.field static final blacklist TRANSACTION_setAppExclusionList:I = 0xc

.field static final blacklist TRANSACTION_setUnderlyingNetworksForVpn:I = 0x6

.field static final blacklist TRANSACTION_setVpnPackageAuthorization:I = 0x2

.field static final blacklist TRANSACTION_startLegacyVpn:I = 0x15

.field static final blacklist TRANSACTION_startVpnProfile:I = 0x9

.field static final blacklist TRANSACTION_stopVpnProfile:I = 0xa

.field static final blacklist TRANSACTION_updateLockdownVpn:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 123
    const-string v0, "android.net.IVpnManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/IVpnManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 131
    if-nez p0, :cond_0

    .line 132
    const/4 v0, 0x0

    return-object v0

    .line 134
    :cond_0
    const-string v0, "android.net.IVpnManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 135
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IVpnManager;

    if-eqz v1, :cond_1

    .line 136
    move-object v1, v0

    check-cast v1, Landroid/net/IVpnManager;

    return-object v1

    .line 138
    :cond_1
    new-instance v1, Landroid/net/IVpnManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IVpnManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 147
    packed-switch p0, :pswitch_data_0

    .line 251
    const/4 v0, 0x0

    return-object v0

    .line 247
    :pswitch_0
    const-string v0, "factoryReset"

    return-object v0

    .line 243
    :pswitch_1
    const-string v0, "getVpnConfig"

    return-object v0

    .line 239
    :pswitch_2
    const-string/jumbo v0, "updateLockdownVpn"

    return-object v0

    .line 235
    :pswitch_3
    const-string v0, "getLegacyVpnInfo"

    return-object v0

    .line 231
    :pswitch_4
    const-string v0, "startLegacyVpn"

    return-object v0

    .line 227
    :pswitch_5
    const-string v0, "isCallerCurrentAlwaysOnVpnLockdownApp"

    return-object v0

    .line 223
    :pswitch_6
    const-string v0, "isCallerCurrentAlwaysOnVpnApp"

    return-object v0

    .line 219
    :pswitch_7
    const-string v0, "getVpnLockdownAllowlist"

    return-object v0

    .line 215
    :pswitch_8
    const-string v0, "isVpnLockdownEnabled"

    return-object v0

    .line 211
    :pswitch_9
    const-string v0, "getAlwaysOnVpnPackage"

    return-object v0

    .line 207
    :pswitch_a
    const-string v0, "setAlwaysOnVpnPackage"

    return-object v0

    .line 203
    :pswitch_b
    const-string v0, "isAlwaysOnVpnPackageSupported"

    return-object v0

    .line 199
    :pswitch_c
    const-string v0, "getAppExclusionList"

    return-object v0

    .line 195
    :pswitch_d
    const-string v0, "setAppExclusionList"

    return-object v0

    .line 191
    :pswitch_e
    const-string v0, "getProvisionedVpnProfileState"

    return-object v0

    .line 187
    :pswitch_f
    const-string v0, "stopVpnProfile"

    return-object v0

    .line 183
    :pswitch_10
    const-string v0, "startVpnProfile"

    return-object v0

    .line 179
    :pswitch_11
    const-string v0, "deleteVpnProfile"

    return-object v0

    .line 175
    :pswitch_12
    const-string v0, "provisionVpnProfile"

    return-object v0

    .line 171
    :pswitch_13
    const-string v0, "setUnderlyingNetworksForVpn"

    return-object v0

    .line 167
    :pswitch_14
    const-string v0, "removeVpnAddress"

    return-object v0

    .line 163
    :pswitch_15
    const-string v0, "addVpnAddress"

    return-object v0

    .line 159
    :pswitch_16
    const-string v0, "establishVpn"

    return-object v0

    .line 155
    :pswitch_17
    const-string v0, "setVpnPackageAuthorization"

    return-object v0

    .line 151
    :pswitch_18
    const-string v0, "prepareVpn"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 142
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1038
    const/16 v0, 0x18

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 258
    invoke-static {p1}, Landroid/net/IVpnManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    const-string v0, "android.net.IVpnManager"

    .line 263
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 264
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 274
    packed-switch p1, :pswitch_data_1

    .line 539
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 270
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    return v1

    .line 533
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/IVpnManager$Stub;->factoryReset()V

    .line 534
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    goto/16 :goto_0

    .line 524
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 525
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    .line 527
    .local v3, "_result":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 529
    goto/16 :goto_0

    .line 516
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/internal/net/VpnConfig;
    :pswitch_3
    invoke-virtual {p0}, Landroid/net/IVpnManager$Stub;->updateLockdownVpn()Z

    move-result v2

    .line 517
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 519
    goto/16 :goto_0

    .line 507
    .end local v2    # "_result":Z
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v3

    .line 510
    .local v3, "_result":Lcom/android/internal/net/LegacyVpnInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 512
    goto/16 :goto_0

    .line 498
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/android/internal/net/LegacyVpnInfo;
    :pswitch_5
    sget-object v2, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 499
    .local v2, "_arg0":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 502
    goto/16 :goto_0

    .line 490
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnProfile;
    :pswitch_6
    invoke-virtual {p0}, Landroid/net/IVpnManager$Stub;->isCallerCurrentAlwaysOnVpnLockdownApp()Z

    move-result v2

    .line 491
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 492
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 493
    goto/16 :goto_0

    .line 483
    .end local v2    # "_result":Z
    :pswitch_7
    invoke-virtual {p0}, Landroid/net/IVpnManager$Stub;->isCallerCurrentAlwaysOnVpnApp()Z

    move-result v2

    .line 484
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 486
    goto/16 :goto_0

    .line 474
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 475
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getVpnLockdownAllowlist(I)Ljava/util/List;

    move-result-object v3

    .line 477
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 479
    goto/16 :goto_0

    .line 464
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 465
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->isVpnLockdownEnabled(I)Z

    move-result v3

    .line 467
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 469
    goto/16 :goto_0

    .line 454
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 455
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getAlwaysOnVpnPackage(I)Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 459
    goto/16 :goto_0

    .line 438
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 440
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 444
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v5

    .line 445
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/net/IVpnManager$Stub;->setAlwaysOnVpnPackage(ILjava/lang/String;ZLjava/util/List;)Z

    move-result v6

    .line 447
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 449
    goto/16 :goto_0

    .line 426
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 428
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 429
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->isAlwaysOnVpnPackageSupported(ILjava/lang/String;)Z

    move-result v4

    .line 431
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 433
    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 417
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->getAppExclusionList(ILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 419
    .local v4, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 421
    goto/16 :goto_0

    .line 400
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 402
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 404
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 405
    .local v4, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IVpnManager$Stub;->setAppExclusionList(ILjava/lang/String;Ljava/util/List;)Z

    move-result v5

    .line 407
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    goto/16 :goto_0

    .line 390
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "_result":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 391
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 392
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->getProvisionedVpnProfileState(Ljava/lang/String;)Landroid/net/VpnProfileState;

    move-result-object v3

    .line 393
    .local v3, "_result":Landroid/net/VpnProfileState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 394
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 395
    goto/16 :goto_0

    .line 381
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Landroid/net/VpnProfileState;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->stopVpnProfile(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    goto/16 :goto_0

    .line 371
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 372
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->startVpnProfile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    goto/16 :goto_0

    .line 362
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 363
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->deleteVpnProfile(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    goto/16 :goto_0

    .line 350
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_13
    sget-object v2, Lcom/android/internal/net/VpnProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnProfile;

    .line 352
    .local v2, "_arg0":Lcom/android/internal/net/VpnProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->provisionVpnProfile(Lcom/android/internal/net/VpnProfile;Ljava/lang/String;)Z

    move-result v4

    .line 355
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 357
    goto/16 :goto_0

    .line 340
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnProfile;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_14
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Network;

    .line 341
    .local v2, "_arg0":[Landroid/net/Network;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->setUnderlyingNetworksForVpn([Landroid/net/Network;)Z

    move-result v3

    .line 343
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 345
    goto :goto_0

    .line 328
    .end local v2    # "_arg0":[Landroid/net/Network;
    .end local v3    # "_result":Z
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 330
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 331
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->removeVpnAddress(Ljava/lang/String;I)Z

    move-result v4

    .line 333
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    goto :goto_0

    .line 316
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 318
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 319
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2, v3}, Landroid/net/IVpnManager$Stub;->addVpnAddress(Ljava/lang/String;I)Z

    move-result v4

    .line 321
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 323
    goto :goto_0

    .line 306
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_17
    sget-object v2, Lcom/android/internal/net/VpnConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/VpnConfig;

    .line 307
    .local v2, "_arg0":Lcom/android/internal/net/VpnConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2}, Landroid/net/IVpnManager$Stub;->establishVpn(Lcom/android/internal/net/VpnConfig;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 309
    .local v3, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 311
    goto :goto_0

    .line 293
    .end local v2    # "_arg0":Lcom/android/internal/net/VpnConfig;
    .end local v3    # "_result":Landroid/os/ParcelFileDescriptor;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 297
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 298
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IVpnManager$Stub;->setVpnPackageAuthorization(Ljava/lang/String;II)V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    goto :goto_0

    .line 279
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 281
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 283
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 284
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2, v3, v4}, Landroid/net/IVpnManager$Stub;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    .line 286
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 288
    nop

    .line 542
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_result":Z
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
