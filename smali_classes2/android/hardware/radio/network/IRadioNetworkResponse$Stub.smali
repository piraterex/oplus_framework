.class public abstract Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioNetworkResponse.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetworkResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetworkResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_getAllowedNetworkTypesBitmapResponse:I = 0x2

.field static final blacklist TRANSACTION_getAvailableBandModesResponse:I = 0x3

.field static final blacklist TRANSACTION_getAvailableNetworksResponse:I = 0x4

.field static final blacklist TRANSACTION_getBarringInfoResponse:I = 0x5

.field static final blacklist TRANSACTION_getCdmaRoamingPreferenceResponse:I = 0x6

.field static final blacklist TRANSACTION_getCellInfoListResponse:I = 0x7

.field static final blacklist TRANSACTION_getDataRegistrationStateResponse:I = 0x8

.field static final blacklist TRANSACTION_getImsRegistrationStateResponse:I = 0x9

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getNetworkSelectionModeResponse:I = 0xa

.field static final blacklist TRANSACTION_getOperatorResponse:I = 0xb

.field static final blacklist TRANSACTION_getSignalStrengthResponse:I = 0xc

.field static final blacklist TRANSACTION_getSystemSelectionChannelsResponse:I = 0xd

.field static final blacklist TRANSACTION_getUsageSettingResponse:I = 0x23

.field static final blacklist TRANSACTION_getVoiceRadioTechnologyResponse:I = 0xe

.field static final blacklist TRANSACTION_getVoiceRegistrationStateResponse:I = 0xf

.field static final blacklist TRANSACTION_isNrDualConnectivityEnabledResponse:I = 0x10

.field static final blacklist TRANSACTION_setAllowedNetworkTypesBitmapResponse:I = 0x11

.field static final blacklist TRANSACTION_setBandModeResponse:I = 0x12

.field static final blacklist TRANSACTION_setBarringPasswordResponse:I = 0x13

.field static final blacklist TRANSACTION_setCdmaRoamingPreferenceResponse:I = 0x14

.field static final blacklist TRANSACTION_setCellInfoListRateResponse:I = 0x15

.field static final blacklist TRANSACTION_setIndicationFilterResponse:I = 0x16

.field static final blacklist TRANSACTION_setLinkCapacityReportingCriteriaResponse:I = 0x17

.field static final blacklist TRANSACTION_setLocationUpdatesResponse:I = 0x18

.field static final blacklist TRANSACTION_setNetworkSelectionModeAutomaticResponse:I = 0x19

.field static final blacklist TRANSACTION_setNetworkSelectionModeManualResponse:I = 0x1a

.field static final blacklist TRANSACTION_setNrDualConnectivityStateResponse:I = 0x1b

.field static final blacklist TRANSACTION_setSignalStrengthReportingCriteriaResponse:I = 0x1c

.field static final blacklist TRANSACTION_setSuppServiceNotificationsResponse:I = 0x1d

.field static final blacklist TRANSACTION_setSystemSelectionChannelsResponse:I = 0x1e

.field static final blacklist TRANSACTION_setUsageSettingResponse:I = 0x22

.field static final blacklist TRANSACTION_startNetworkScanResponse:I = 0x1f

.field static final blacklist TRANSACTION_stopNetworkScanResponse:I = 0x20

.field static final blacklist TRANSACTION_supplyNetworkDepersonalizationResponse:I = 0x21


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->markVintfStability()V

    .line 143
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 151
    if-nez p0, :cond_0

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_0
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 155
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetworkResponse;

    if-eqz v1, :cond_1

    .line 156
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/network/IRadioNetworkResponse;

    return-object v1

    .line 158
    :cond_1
    new-instance v1, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 162
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 167
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 168
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 190
    packed-switch p1, :pswitch_data_0

    .line 516
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 174
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    return v1

    .line 179
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return v1

    .line 185
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v1

    .line 507
    :pswitch_0
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 509
    .local v2, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 511
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 512
    goto/16 :goto_0

    .line 499
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_1
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 500
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 501
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setUsageSettingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 502
    goto/16 :goto_0

    .line 489
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 491
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 492
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 493
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 494
    goto/16 :goto_0

    .line 481
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_3
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 482
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->stopNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 484
    goto/16 :goto_0

    .line 473
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 474
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 475
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->startNetworkScanResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 476
    goto/16 :goto_0

    .line 465
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_5
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 466
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 467
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 468
    goto/16 :goto_0

    .line 457
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_6
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 458
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSuppServiceNotificationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 460
    goto/16 :goto_0

    .line 449
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_7
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 450
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 451
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 452
    goto/16 :goto_0

    .line 441
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_8
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 442
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNrDualConnectivityStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 444
    goto/16 :goto_0

    .line 433
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_9
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 434
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNetworkSelectionModeManualResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 436
    goto/16 :goto_0

    .line 425
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_a
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 426
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 428
    goto/16 :goto_0

    .line 417
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_b
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 418
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setLocationUpdatesResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 420
    goto/16 :goto_0

    .line 409
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_c
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 410
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 412
    goto/16 :goto_0

    .line 401
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_d
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 402
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 403
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setIndicationFilterResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 404
    goto/16 :goto_0

    .line 393
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_e
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 394
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setCellInfoListRateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 396
    goto/16 :goto_0

    .line 385
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_f
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 386
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 387
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 388
    goto/16 :goto_0

    .line 377
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_10
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 378
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setBarringPasswordResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 380
    goto/16 :goto_0

    .line 369
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_11
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 370
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 371
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setBandModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 372
    goto/16 :goto_0

    .line 361
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_12
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 362
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 364
    goto/16 :goto_0

    .line 351
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_13
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 353
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 354
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 355
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 356
    goto/16 :goto_0

    .line 341
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_14
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 343
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/RegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/RegStateResult;

    .line 344
    .local v3, "_arg1":Landroid/hardware/radio/network/RegStateResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 345
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getVoiceRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V

    .line 346
    goto/16 :goto_0

    .line 331
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/RegStateResult;
    :pswitch_15
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 333
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 334
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getVoiceRadioTechnologyResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 336
    goto/16 :goto_0

    .line 321
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_16
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 323
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/network/RadioAccessSpecifier;

    .line 324
    .local v3, "_arg1":[Landroid/hardware/radio/network/RadioAccessSpecifier;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getSystemSelectionChannelsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/RadioAccessSpecifier;)V

    .line 326
    goto/16 :goto_0

    .line 311
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/network/RadioAccessSpecifier;
    :pswitch_17
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 313
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/SignalStrength;

    .line 314
    .local v3, "_arg1":Landroid/hardware/radio/network/SignalStrength;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getSignalStrengthResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/SignalStrength;)V

    .line 316
    goto/16 :goto_0

    .line 297
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/SignalStrength;
    :pswitch_18
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 299
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getOperatorResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    goto/16 :goto_0

    .line 287
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_19
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 289
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 290
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getNetworkSelectionModeResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 292
    goto/16 :goto_0

    .line 275
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_1a
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 277
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 279
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 280
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getImsRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V

    .line 282
    goto/16 :goto_0

    .line 265
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_1b
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 267
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/RegStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/RegStateResult;

    .line 268
    .local v3, "_arg1":Landroid/hardware/radio/network/RegStateResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getDataRegistrationStateResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/RegStateResult;)V

    .line 270
    goto/16 :goto_0

    .line 255
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/RegStateResult;
    :pswitch_1c
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 257
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/network/CellInfo;

    .line 258
    .local v3, "_arg1":[Landroid/hardware/radio/network/CellInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getCellInfoListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/CellInfo;)V

    .line 260
    goto/16 :goto_0

    .line 245
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/network/CellInfo;
    :pswitch_1d
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 247
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 248
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 250
    goto :goto_0

    .line 233
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_1e
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 235
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/network/CellIdentity;

    .line 237
    .local v3, "_arg1":Landroid/hardware/radio/network/CellIdentity;
    sget-object v4, Landroid/hardware/radio/network/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/radio/network/BarringInfo;

    .line 238
    .local v4, "_arg2":[Landroid/hardware/radio/network/BarringInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 239
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getBarringInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V

    .line 240
    goto :goto_0

    .line 223
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/network/CellIdentity;
    .end local v4    # "_arg2":[Landroid/hardware/radio/network/BarringInfo;
    :pswitch_1f
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 225
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/network/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/network/OperatorInfo;

    .line 226
    .local v3, "_arg1":[Landroid/hardware/radio/network/OperatorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAvailableNetworksResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/network/OperatorInfo;)V

    .line 228
    goto :goto_0

    .line 213
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/network/OperatorInfo;
    :pswitch_20
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 215
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 216
    .local v3, "_arg1":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAvailableBandModesResponse(Landroid/hardware/radio/RadioResponseInfo;[I)V

    .line 218
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[I
    :pswitch_21
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 205
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 208
    goto :goto_0

    .line 195
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 196
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2}, Landroid/hardware/radio/network/IRadioNetworkResponse$Stub;->acknowledgeRequest(I)V

    .line 198
    nop

    .line 519
    .end local v2    # "_arg0":I
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
