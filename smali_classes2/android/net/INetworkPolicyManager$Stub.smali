.class public abstract Landroid/net/INetworkPolicyManager$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicyManager.java"

# interfaces
.implements Landroid/net/INetworkPolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkPolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkPolicyManager"

.field static final greylist-max-o TRANSACTION_addUidPolicy:I = 0x2

.field static final greylist-max-o TRANSACTION_factoryReset:I = 0x18

.field static final blacklist TRANSACTION_getMultipathPreference:I = 0x11

.field static final greylist-max-o TRANSACTION_getNetworkPolicies:I = 0x9

.field static final greylist-max-o TRANSACTION_getRestrictBackground:I = 0xc

.field static final greylist-max-o TRANSACTION_getRestrictBackgroundByCaller:I = 0xd

.field static final blacklist TRANSACTION_getRestrictBackgroundStatus:I = 0xe

.field static final blacklist TRANSACTION_getSubscriptionPlan:I = 0x12

.field static final greylist-max-o TRANSACTION_getSubscriptionPlans:I = 0x14

.field static final greylist-max-o TRANSACTION_getSubscriptionPlansOwner:I = 0x16

.field static final greylist-max-o TRANSACTION_getUidPolicy:I = 0x4

.field static final greylist-max-o TRANSACTION_getUidsWithPolicy:I = 0x5

.field static final greylist-max-o TRANSACTION_isUidNetworkingBlocked:I = 0x19

.field static final blacklist TRANSACTION_isUidRestrictedOnMeteredNetworks:I = 0x1a

.field static final blacklist TRANSACTION_notifyStatsProviderWarningOrLimitReached:I = 0x13

.field static final greylist-max-o TRANSACTION_registerListener:I = 0x6

.field static final greylist-max-o TRANSACTION_removeUidPolicy:I = 0x3

.field static final greylist-max-o TRANSACTION_setDeviceIdleMode:I = 0xf

.field static final greylist-max-o TRANSACTION_setNetworkPolicies:I = 0x8

.field static final greylist-max-o TRANSACTION_setRestrictBackground:I = 0xb

.field static final greylist-max-o TRANSACTION_setSubscriptionOverride:I = 0x17

.field static final greylist-max-o TRANSACTION_setSubscriptionPlans:I = 0x15

.field static final greylist-max-o TRANSACTION_setUidPolicy:I = 0x1

.field static final greylist-max-o TRANSACTION_setWifiMeteredOverride:I = 0x10

.field static final greylist-max-o TRANSACTION_snoozeLimit:I = 0xa

.field static final greylist-max-o TRANSACTION_unregisterListener:I = 0x7


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 126
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkPolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 134
    if-nez p0, :cond_0

    .line 135
    const/4 v0, 0x0

    return-object v0

    .line 137
    :cond_0
    const-string v0, "android.net.INetworkPolicyManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 138
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkPolicyManager;

    if-eqz v1, :cond_1

    .line 139
    move-object v1, v0

    check-cast v1, Landroid/net/INetworkPolicyManager;

    return-object v1

    .line 141
    :cond_1
    new-instance v1, Landroid/net/INetworkPolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkPolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 150
    packed-switch p0, :pswitch_data_0

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 254
    :pswitch_0
    const-string v0, "isUidRestrictedOnMeteredNetworks"

    return-object v0

    .line 250
    :pswitch_1
    const-string v0, "isUidNetworkingBlocked"

    return-object v0

    .line 246
    :pswitch_2
    const-string v0, "factoryReset"

    return-object v0

    .line 242
    :pswitch_3
    const-string v0, "setSubscriptionOverride"

    return-object v0

    .line 238
    :pswitch_4
    const-string v0, "getSubscriptionPlansOwner"

    return-object v0

    .line 234
    :pswitch_5
    const-string v0, "setSubscriptionPlans"

    return-object v0

    .line 230
    :pswitch_6
    const-string v0, "getSubscriptionPlans"

    return-object v0

    .line 226
    :pswitch_7
    const-string v0, "notifyStatsProviderWarningOrLimitReached"

    return-object v0

    .line 222
    :pswitch_8
    const-string v0, "getSubscriptionPlan"

    return-object v0

    .line 218
    :pswitch_9
    const-string v0, "getMultipathPreference"

    return-object v0

    .line 214
    :pswitch_a
    const-string v0, "setWifiMeteredOverride"

    return-object v0

    .line 210
    :pswitch_b
    const-string v0, "setDeviceIdleMode"

    return-object v0

    .line 206
    :pswitch_c
    const-string v0, "getRestrictBackgroundStatus"

    return-object v0

    .line 202
    :pswitch_d
    const-string v0, "getRestrictBackgroundByCaller"

    return-object v0

    .line 198
    :pswitch_e
    const-string v0, "getRestrictBackground"

    return-object v0

    .line 194
    :pswitch_f
    const-string v0, "setRestrictBackground"

    return-object v0

    .line 190
    :pswitch_10
    const-string v0, "snoozeLimit"

    return-object v0

    .line 186
    :pswitch_11
    const-string v0, "getNetworkPolicies"

    return-object v0

    .line 182
    :pswitch_12
    const-string v0, "setNetworkPolicies"

    return-object v0

    .line 178
    :pswitch_13
    const-string/jumbo v0, "unregisterListener"

    return-object v0

    .line 174
    :pswitch_14
    const-string v0, "registerListener"

    return-object v0

    .line 170
    :pswitch_15
    const-string v0, "getUidsWithPolicy"

    return-object v0

    .line 166
    :pswitch_16
    const-string v0, "getUidPolicy"

    return-object v0

    .line 162
    :pswitch_17
    const-string v0, "removeUidPolicy"

    return-object v0

    .line 158
    :pswitch_18
    const-string v0, "addUidPolicy"

    return-object v0

    .line 154
    :pswitch_19
    const-string v0, "setUidPolicy"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 145
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1048
    const/16 v0, 0x19

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 265
    invoke-static {p1}, Landroid/net/INetworkPolicyManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "android.net.INetworkPolicyManager"

    .line 270
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 271
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 281
    packed-switch v9, :pswitch_data_1

    .line 550
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 277
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    return v13

    .line 541
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 542
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->isUidRestrictedOnMeteredNetworks(I)Z

    move-result v1

    .line 544
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 546
    goto/16 :goto_0

    .line 529
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 531
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 532
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 533
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->isUidNetworkingBlocked(IZ)Z

    move-result v2

    .line 534
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 535
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 536
    goto/16 :goto_0

    .line 520
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->factoryReset(Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    goto/16 :goto_0

    .line 501
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 503
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 505
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 507
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v17

    .line 509
    .local v17, "_arg3":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 511
    .local v18, "_arg4":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 512
    .local v20, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v5, v18

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionOverride(III[IJLjava/lang/String;)V

    .line 514
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    goto/16 :goto_0

    .line 491
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":[I
    .end local v18    # "_arg4":J
    .end local v20    # "_arg5":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 492
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlansOwner(I)Ljava/lang/String;

    move-result-object v1

    .line 494
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 495
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 496
    goto/16 :goto_0

    .line 476
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 478
    .local v6, "_arg0":I
    sget-object v0, Landroid/telephony/SubscriptionPlan;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, [Landroid/telephony/SubscriptionPlan;

    .line 480
    .local v7, "_arg1":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .line 482
    .local v14, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 483
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-wide v3, v14

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/net/INetworkPolicyManager$Stub;->setSubscriptionPlans(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V

    .line 485
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    goto/16 :goto_0

    .line 464
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":[Landroid/telephony/SubscriptionPlan;
    .end local v14    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 467
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlans(ILjava/lang/String;)[Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    .line 469
    .local v2, "_result":[Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 470
    invoke-virtual {v11, v2, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 471
    goto/16 :goto_0

    .line 457
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":[Landroid/telephony/SubscriptionPlan;
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->notifyStatsProviderWarningOrLimitReached()V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_0

    .line 448
    :pswitch_9
    sget-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 449
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 450
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v1

    .line 451
    .local v1, "_result":Landroid/telephony/SubscriptionPlan;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 453
    goto/16 :goto_0

    .line 438
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    .end local v1    # "_result":Landroid/telephony/SubscriptionPlan;
    :pswitch_a
    sget-object v0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Network;

    .line 439
    .local v0, "_arg0":Landroid/net/Network;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 440
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getMultipathPreference(Landroid/net/Network;)I

    move-result v1

    .line 441
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 442
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    goto/16 :goto_0

    .line 427
    .end local v0    # "_arg0":Landroid/net/Network;
    .end local v1    # "_result":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 430
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setWifiMeteredOverride(Ljava/lang/String;I)V

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    goto/16 :goto_0

    .line 418
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 419
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setDeviceIdleMode(Z)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    goto/16 :goto_0

    .line 408
    .end local v0    # "_arg0":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundStatus(I)I

    move-result v1

    .line 411
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    goto/16 :goto_0

    .line 400
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackgroundByCaller()I

    move-result v0

    .line 401
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    goto/16 :goto_0

    .line 393
    .end local v0    # "_result":I
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkPolicyManager$Stub;->getRestrictBackground()Z

    move-result v0

    .line 394
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 396
    goto/16 :goto_0

    .line 385
    .end local v0    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 386
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setRestrictBackground(Z)V

    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    goto/16 :goto_0

    .line 376
    .end local v0    # "_arg0":Z
    :pswitch_11
    sget-object v0, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 377
    .local v0, "_arg0":Landroid/net/NetworkTemplate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->snoozeLimit(Landroid/net/NetworkTemplate;)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    goto/16 :goto_0

    .line 366
    .end local v0    # "_arg0":Landroid/net/NetworkTemplate;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 367
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v1

    .line 369
    .local v1, "_result":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v11, v1, v13}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 371
    goto/16 :goto_0

    .line 357
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[Landroid/net/NetworkPolicy;
    :pswitch_13
    sget-object v0, Landroid/net/NetworkPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/NetworkPolicy;

    .line 358
    .local v0, "_arg0":[Landroid/net/NetworkPolicy;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    goto/16 :goto_0

    .line 348
    .end local v0    # "_arg0":[Landroid/net/NetworkPolicy;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 349
    .local v0, "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    goto :goto_0

    .line 339
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyListener;

    move-result-object v0

    .line 340
    .restart local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    goto :goto_0

    .line 329
    .end local v0    # "_arg0":Landroid/net/INetworkPolicyListener;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidsWithPolicy(I)[I

    move-result-object v1

    .line 332
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 334
    goto :goto_0

    .line 319
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 320
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v8, v0}, Landroid/net/INetworkPolicyManager$Stub;->getUidPolicy(I)I

    move-result v1

    .line 322
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    goto :goto_0

    .line 308
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 310
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 311
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->removeUidPolicy(II)V

    .line 313
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    goto :goto_0

    .line 297
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->addUidPolicy(II)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto :goto_0

    .line 286
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 288
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 289
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 290
    invoke-virtual {v8, v0, v1}, Landroid/net/INetworkPolicyManager$Stub;->setUidPolicy(II)V

    .line 291
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    nop

    .line 553
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_0
    return v13

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1a
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
