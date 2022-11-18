.class public abstract Landroid/hardware/radio/network/IRadioNetwork$Stub;
.super Landroid/os/Binder;
.source "IRadioNetwork.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmap:I = 0x1

.field static final blacklist TRANSACTION_getAvailableBandModes:I = 0x2

.field static final blacklist TRANSACTION_getAvailableNetworks:I = 0x3

.field static final blacklist TRANSACTION_getBarringInfo:I = 0x4

.field static final blacklist TRANSACTION_getCdmaRoamingPreference:I = 0x5

.field static final blacklist TRANSACTION_getCellInfoList:I = 0x6

.field static final blacklist TRANSACTION_getDataRegistrationState:I = 0x7

.field static final blacklist TRANSACTION_getImsRegistrationState:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNetworkSelectionMode:I = 0x9

.field static final blacklist TRANSACTION_getOperator:I = 0xa

.field static final blacklist TRANSACTION_getSignalStrength:I = 0xb

.field static final blacklist TRANSACTION_getSystemSelectionChannels:I = 0xc

.field static final blacklist TRANSACTION_getUsageSetting:I = 0x24

.field static final blacklist TRANSACTION_getVoiceRadioTechnology:I = 0xd

.field static final blacklist TRANSACTION_getVoiceRegistrationState:I = 0xe

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabled:I = 0xf

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x10

.field static final blacklist TRANSACTION_setAllowedNetworkTypesBitmap:I = 0x11

.field static final blacklist TRANSACTION_setBandMode:I = 0x12

.field static final blacklist TRANSACTION_setBarringPassword:I = 0x13

.field static final blacklist TRANSACTION_setCdmaRoamingPreference:I = 0x14

.field static final blacklist TRANSACTION_setCellInfoListRate:I = 0x15

.field static final blacklist TRANSACTION_setIndicationFilter:I = 0x16

.field static final blacklist TRANSACTION_setLinkCapacityReportingCriteria:I = 0x17

.field static final blacklist TRANSACTION_setLocationUpdates:I = 0x18

.field static final blacklist TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x19

.field static final blacklist TRANSACTION_setNetworkSelectionModeManual:I = 0x1a

.field static final blacklist TRANSACTION_setNrDualConnectivityState:I = 0x1b

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x1c

.field static final blacklist TRANSACTION_setSignalStrengthReportingCriteria:I = 0x1d

.field static final blacklist TRANSACTION_setSuppServiceNotifications:I = 0x1e

.field static final blacklist TRANSACTION_setSystemSelectionChannels:I = 0x1f

.field static final blacklist TRANSACTION_setUsageSetting:I = 0x23

.field static final blacklist TRANSACTION_startNetworkScan:I = 0x20

.field static final blacklist TRANSACTION_stopNetworkScan:I = 0x21

.field static final blacklist TRANSACTION_supplyNetworkDepersonalization:I = 0x22


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 144
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->markVintfStability()V

    .line 146
    sget-object v0, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetwork;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    sget-object v0, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetwork;

    if-eqz v1, :cond_1

    .line 159
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/network/IRadioNetwork;

    return-object v1

    .line 161
    :cond_1
    new-instance v1, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 165
    return-object p0
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

    .line 169
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Landroid/hardware/radio/network/IRadioNetwork$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 170
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 171
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    :cond_0
    sparse-switch v9, :sswitch_data_0

    .line 193
    packed-switch v9, :pswitch_data_0

    .line 534
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 177
    :sswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    return v13

    .line 182
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return v13

    .line 188
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    return v13

    .line 527
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 529
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getUsageSetting(I)V

    .line 530
    goto/16 :goto_0

    .line 517
    .end local v0    # "_arg0":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 520
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setUsageSetting(II)V

    .line 522
    goto/16 :goto_0

    .line 507
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 509
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 510
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->supplyNetworkDepersonalization(ILjava/lang/String;)V

    .line 512
    goto/16 :goto_0

    .line 499
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 500
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->stopNetworkScan(I)V

    .line 502
    goto/16 :goto_0

    .line 489
    .end local v0    # "_arg0":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 491
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/NetworkScanRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/NetworkScanRequest;

    .line 492
    .local v1, "_arg1":Landroid/hardware/radio/network/NetworkScanRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->startNetworkScan(ILandroid/hardware/radio/network/NetworkScanRequest;)V

    .line 494
    goto/16 :goto_0

    .line 477
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/network/NetworkScanRequest;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 479
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 481
    .local v1, "_arg1":Z
    sget-object v2, Landroid/hardware/radio/network/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 482
    .local v2, "_arg2":[Landroid/hardware/radio/network/RadioAccessSpecifier;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSystemSelectionChannels(IZ[Landroid/hardware/radio/network/RadioAccessSpecifier;)V

    .line 484
    goto/16 :goto_0

    .line 467
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":[Landroid/hardware/radio/network/RadioAccessSpecifier;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 469
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 470
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSuppServiceNotifications(IZ)V

    .line 472
    goto/16 :goto_0

    .line 457
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 459
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/network/SignalThresholdInfo;

    .line 460
    .local v1, "_arg1":[Landroid/hardware/radio/network/SignalThresholdInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setSignalStrengthReportingCriteria(I[Landroid/hardware/radio/network/SignalThresholdInfo;)V

    .line 462
    goto/16 :goto_0

    .line 447
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/hardware/radio/network/SignalThresholdInfo;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkResponse;

    move-result-object v0

    .line 449
    .local v0, "_arg0":Landroid/hardware/radio/network/IRadioNetworkResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkIndication;

    move-result-object v1

    .line 450
    .local v1, "_arg1":Landroid/hardware/radio/network/IRadioNetworkIndication;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setResponseFunctions(Landroid/hardware/radio/network/IRadioNetworkResponse;Landroid/hardware/radio/network/IRadioNetworkIndication;)V

    .line 452
    goto/16 :goto_0

    .line 437
    .end local v0    # "_arg0":Landroid/hardware/radio/network/IRadioNetworkResponse;
    .end local v1    # "_arg1":Landroid/hardware/radio/network/IRadioNetworkIndication;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 440
    .local v1, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 441
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNrDualConnectivityState(IB)V

    .line 442
    goto/16 :goto_0

    .line 425
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":B
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 427
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 430
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNetworkSelectionModeManual(ILjava/lang/String;I)V

    .line 432
    goto/16 :goto_0

    .line 417
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 418
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 420
    goto/16 :goto_0

    .line 407
    .end local v0    # "_arg0":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 409
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 410
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setLocationUpdates(IZ)V

    .line 412
    goto/16 :goto_0

    .line 387
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 389
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 391
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 393
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 395
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v18

    .line 397
    .local v18, "_arg4":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v19

    .line 399
    .local v19, "_arg5":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 400
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setLinkCapacityReportingCriteria(IIII[I[II)V

    .line 402
    goto/16 :goto_0

    .line 377
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":[I
    .end local v19    # "_arg5":[I
    .end local v20    # "_arg6":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setIndicationFilter(II)V

    .line 382
    goto/16 :goto_0

    .line 367
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 369
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 370
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setCellInfoListRate(II)V

    .line 372
    goto/16 :goto_0

    .line 357
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 359
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 360
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 361
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setCdmaRoamingPreference(II)V

    .line 362
    goto/16 :goto_0

    .line 343
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 347
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 349
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    goto/16 :goto_0

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 335
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 336
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setBandMode(II)V

    .line 338
    goto/16 :goto_0

    .line 323
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 325
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 326
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 327
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->setAllowedNetworkTypesBitmap(II)V

    .line 328
    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->responseAcknowledgement()V

    .line 318
    goto/16 :goto_0

    .line 310
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 312
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->isNrDualConnectivityEnabled(I)V

    .line 313
    goto/16 :goto_0

    .line 302
    .end local v0    # "_arg0":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 303
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 304
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getVoiceRegistrationState(I)V

    .line 305
    goto/16 :goto_0

    .line 294
    .end local v0    # "_arg0":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 295
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getVoiceRadioTechnology(I)V

    .line 297
    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 288
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getSystemSelectionChannels(I)V

    .line 289
    goto/16 :goto_0

    .line 278
    .end local v0    # "_arg0":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getSignalStrength(I)V

    .line 281
    goto/16 :goto_0

    .line 270
    .end local v0    # "_arg0":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 271
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getOperator(I)V

    .line 273
    goto :goto_0

    .line 262
    .end local v0    # "_arg0":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getNetworkSelectionMode(I)V

    .line 265
    goto :goto_0

    .line 254
    .end local v0    # "_arg0":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getImsRegistrationState(I)V

    .line 257
    goto :goto_0

    .line 246
    .end local v0    # "_arg0":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getDataRegistrationState(I)V

    .line 249
    goto :goto_0

    .line 238
    .end local v0    # "_arg0":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 239
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getCellInfoList(I)V

    .line 241
    goto :goto_0

    .line 230
    .end local v0    # "_arg0":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getCdmaRoamingPreference(I)V

    .line 233
    goto :goto_0

    .line 222
    .end local v0    # "_arg0":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 223
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getBarringInfo(I)V

    .line 225
    goto :goto_0

    .line 214
    .end local v0    # "_arg0":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAvailableNetworks(I)V

    .line 217
    goto :goto_0

    .line 206
    .end local v0    # "_arg0":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAvailableBandModes(I)V

    .line 209
    goto :goto_0

    .line 198
    .end local v0    # "_arg0":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 200
    invoke-virtual {v8, v0}, Landroid/hardware/radio/network/IRadioNetwork$Stub;->getAllowedNetworkTypesBitmap(I)V

    .line 201
    nop

    .line 537
    .end local v0    # "_arg0":I
    :goto_0
    return v13

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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
        :pswitch_0
    .end packed-switch
.end method
