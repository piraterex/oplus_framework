.class public abstract Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioVoiceResponse.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptCallResponse:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x2

.field static final blacklist TRANSACTION_cancelPendingUssdResponse:I = 0x3

.field static final blacklist TRANSACTION_conferenceResponse:I = 0x4

.field static final blacklist TRANSACTION_dialResponse:I = 0x5

.field static final blacklist TRANSACTION_emergencyDialResponse:I = 0x6

.field static final blacklist TRANSACTION_exitEmergencyCallbackModeResponse:I = 0x7

.field static final blacklist TRANSACTION_explicitCallTransferResponse:I = 0x8

.field static final blacklist TRANSACTION_getCallForwardStatusResponse:I = 0x9

.field static final blacklist TRANSACTION_getCallWaitingResponse:I = 0xa

.field static final blacklist TRANSACTION_getClipResponse:I = 0xb

.field static final blacklist TRANSACTION_getClirResponse:I = 0xc

.field static final blacklist TRANSACTION_getCurrentCallsResponse:I = 0xd

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLastCallFailCauseResponse:I = 0xe

.field static final blacklist TRANSACTION_getMuteResponse:I = 0xf

.field static final blacklist TRANSACTION_getPreferredVoicePrivacyResponse:I = 0x10

.field static final blacklist TRANSACTION_getTtyModeResponse:I = 0x11

.field static final blacklist TRANSACTION_handleStkCallSetupRequestFromSimResponse:I = 0x12

.field static final blacklist TRANSACTION_hangupConnectionResponse:I = 0x13

.field static final blacklist TRANSACTION_hangupForegroundResumeBackgroundResponse:I = 0x14

.field static final blacklist TRANSACTION_hangupWaitingOrBackgroundResponse:I = 0x15

.field static final blacklist TRANSACTION_isVoNrEnabledResponse:I = 0x16

.field static final blacklist TRANSACTION_rejectCallResponse:I = 0x17

.field static final blacklist TRANSACTION_sendBurstDtmfResponse:I = 0x18

.field static final blacklist TRANSACTION_sendCdmaFeatureCodeResponse:I = 0x19

.field static final blacklist TRANSACTION_sendDtmfResponse:I = 0x1a

.field static final blacklist TRANSACTION_sendUssdResponse:I = 0x1b

.field static final blacklist TRANSACTION_separateConnectionResponse:I = 0x1c

.field static final blacklist TRANSACTION_setCallForwardResponse:I = 0x1d

.field static final blacklist TRANSACTION_setCallWaitingResponse:I = 0x1e

.field static final blacklist TRANSACTION_setClirResponse:I = 0x1f

.field static final blacklist TRANSACTION_setMuteResponse:I = 0x20

.field static final blacklist TRANSACTION_setPreferredVoicePrivacyResponse:I = 0x21

.field static final blacklist TRANSACTION_setTtyModeResponse:I = 0x22

.field static final blacklist TRANSACTION_setVoNrEnabledResponse:I = 0x23

.field static final blacklist TRANSACTION_startDtmfResponse:I = 0x24

.field static final blacklist TRANSACTION_stopDtmfResponse:I = 0x25

.field static final blacklist TRANSACTION_switchWaitingOrHoldingAndActiveResponse:I = 0x26


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 150
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 151
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->markVintfStability()V

    .line 152
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 160
    if-nez p0, :cond_0

    .line 161
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_0
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 164
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoiceResponse;

    if-eqz v1, :cond_1

    .line 165
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoiceResponse;

    return-object v1

    .line 167
    :cond_1
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 171
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 176
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 177
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 531
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 183
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    return v1

    .line 188
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return v1

    .line 194
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return v1

    .line 524
    :pswitch_0
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 525
    .local v2, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 527
    goto/16 :goto_0

    .line 516
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 517
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->stopDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 519
    goto/16 :goto_0

    .line 508
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 509
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->startDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 511
    goto/16 :goto_0

    .line 500
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_3
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 501
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 503
    goto/16 :goto_0

    .line 492
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 493
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 495
    goto/16 :goto_0

    .line 484
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_5
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 485
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 487
    goto/16 :goto_0

    .line 476
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_6
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 477
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 478
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setMuteResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 479
    goto/16 :goto_0

    .line 468
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_7
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 469
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 470
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setClirResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 471
    goto/16 :goto_0

    .line 460
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_8
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 461
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 463
    goto/16 :goto_0

    .line 452
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_9
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 453
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->setCallForwardResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 455
    goto/16 :goto_0

    .line 444
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_a
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 445
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->separateConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 447
    goto/16 :goto_0

    .line 436
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_b
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 437
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 439
    goto/16 :goto_0

    .line 428
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_c
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 429
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 431
    goto/16 :goto_0

    .line 420
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_d
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 421
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 422
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendCdmaFeatureCodeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 423
    goto/16 :goto_0

    .line 412
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_e
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 413
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 414
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->sendBurstDtmfResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 415
    goto/16 :goto_0

    .line 404
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_f
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 405
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->rejectCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 407
    goto/16 :goto_0

    .line 394
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_10
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 396
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 397
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->isVoNrEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 399
    goto/16 :goto_0

    .line 386
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_11
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 387
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 388
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 389
    goto/16 :goto_0

    .line 378
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_12
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 379
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 381
    goto/16 :goto_0

    .line 370
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_13
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 371
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 372
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->hangupConnectionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 373
    goto/16 :goto_0

    .line 362
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_14
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 363
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 365
    goto/16 :goto_0

    .line 352
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_15
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 354
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 355
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getTtyModeResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 357
    goto/16 :goto_0

    .line 342
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_16
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 344
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 345
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getPreferredVoicePrivacyResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 347
    goto/16 :goto_0

    .line 332
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_17
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 334
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 335
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getMuteResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 337
    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    :pswitch_18
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 324
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/voice/LastCallFailCauseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/voice/LastCallFailCauseInfo;

    .line 325
    .local v3, "_arg1":Landroid/hardware/radio/voice/LastCallFailCauseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getLastCallFailCauseResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/voice/LastCallFailCauseInfo;)V

    .line 327
    goto/16 :goto_0

    .line 312
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/voice/LastCallFailCauseInfo;
    :pswitch_19
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 314
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/voice/Call;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/Call;

    .line 315
    .local v3, "_arg1":[Landroid/hardware/radio/voice/Call;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCurrentCallsResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/Call;)V

    .line 317
    goto/16 :goto_0

    .line 300
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/Call;
    :pswitch_1a
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 302
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 304
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 305
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getClirResponse(Landroid/hardware/radio/RadioResponseInfo;II)V

    .line 307
    goto/16 :goto_0

    .line 290
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_1b
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 292
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 293
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getClipResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 295
    goto/16 :goto_0

    .line 278
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_1c
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 280
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 282
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 283
    .restart local v4    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCallWaitingResponse(Landroid/hardware/radio/RadioResponseInfo;ZI)V

    .line 285
    goto/16 :goto_0

    .line 268
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_1d
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 270
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/voice/CallForwardInfo;

    .line 271
    .local v3, "_arg1":[Landroid/hardware/radio/voice/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 272
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->getCallForwardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/voice/CallForwardInfo;)V

    .line 273
    goto/16 :goto_0

    .line 260
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/voice/CallForwardInfo;
    :pswitch_1e
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 261
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->explicitCallTransferResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 263
    goto :goto_0

    .line 252
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1f
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 253
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->exitEmergencyCallbackModeResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 255
    goto :goto_0

    .line 244
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_20
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 245
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->emergencyDialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 247
    goto :goto_0

    .line 236
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_21
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 237
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->dialResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 239
    goto :goto_0

    .line 228
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_22
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 229
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 230
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->conferenceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 231
    goto :goto_0

    .line 220
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_23
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 221
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 222
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->cancelPendingUssdResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 223
    goto :goto_0

    .line 212
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 213
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->acknowledgeRequest(I)V

    .line 215
    goto :goto_0

    .line 204
    .end local v2    # "_arg0":I
    :pswitch_25
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 205
    .local v2, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->acceptCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 207
    nop

    .line 534
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
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
        :pswitch_25
        :pswitch_24
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
