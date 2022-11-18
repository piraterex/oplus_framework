.class public abstract Landroid/hardware/radio/voice/IRadioVoice$Stub;
.super Landroid/os/Binder;
.source "IRadioVoice.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acceptCall:I = 0x1

.field static final blacklist TRANSACTION_cancelPendingUssd:I = 0x2

.field static final blacklist TRANSACTION_conference:I = 0x3

.field static final blacklist TRANSACTION_dial:I = 0x4

.field static final blacklist TRANSACTION_emergencyDial:I = 0x5

.field static final blacklist TRANSACTION_exitEmergencyCallbackMode:I = 0x6

.field static final blacklist TRANSACTION_explicitCallTransfer:I = 0x7

.field static final blacklist TRANSACTION_getCallForwardStatus:I = 0x8

.field static final blacklist TRANSACTION_getCallWaiting:I = 0x9

.field static final blacklist TRANSACTION_getClip:I = 0xa

.field static final blacklist TRANSACTION_getClir:I = 0xb

.field static final blacklist TRANSACTION_getCurrentCalls:I = 0xc

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getLastCallFailCause:I = 0xd

.field static final blacklist TRANSACTION_getMute:I = 0xe

.field static final blacklist TRANSACTION_getPreferredVoicePrivacy:I = 0xf

.field static final blacklist TRANSACTION_getTtyMode:I = 0x10

.field static final blacklist TRANSACTION_handleStkCallSetupRequestFromSim:I = 0x11

.field static final blacklist TRANSACTION_hangup:I = 0x12

.field static final blacklist TRANSACTION_hangupForegroundResumeBackground:I = 0x13

.field static final blacklist TRANSACTION_hangupWaitingOrBackground:I = 0x14

.field static final blacklist TRANSACTION_isVoNrEnabled:I = 0x15

.field static final blacklist TRANSACTION_rejectCall:I = 0x16

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x17

.field static final blacklist TRANSACTION_sendBurstDtmf:I = 0x18

.field static final blacklist TRANSACTION_sendCdmaFeatureCode:I = 0x19

.field static final blacklist TRANSACTION_sendDtmf:I = 0x1a

.field static final blacklist TRANSACTION_sendUssd:I = 0x1b

.field static final blacklist TRANSACTION_separateConnection:I = 0x1c

.field static final blacklist TRANSACTION_setCallForward:I = 0x1d

.field static final blacklist TRANSACTION_setCallWaiting:I = 0x1e

.field static final blacklist TRANSACTION_setClir:I = 0x1f

.field static final blacklist TRANSACTION_setMute:I = 0x20

.field static final blacklist TRANSACTION_setPreferredVoicePrivacy:I = 0x21

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x22

.field static final blacklist TRANSACTION_setTtyMode:I = 0x23

.field static final blacklist TRANSACTION_setVoNrEnabled:I = 0x24

.field static final blacklist TRANSACTION_startDtmf:I = 0x25

.field static final blacklist TRANSACTION_stopDtmf:I = 0x26

.field static final blacklist TRANSACTION_switchWaitingOrHoldingAndActive:I = 0x27


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 153
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 154
    invoke-virtual {p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->markVintfStability()V

    .line 155
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoice;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 163
    if-nez p0, :cond_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 166
    :cond_0
    sget-object v0, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 167
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/voice/IRadioVoice;

    if-eqz v1, :cond_1

    .line 168
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/voice/IRadioVoice;

    return-object v1

    .line 170
    :cond_1
    new-instance v1, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 174
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

    .line 178
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    sget-object v12, Landroid/hardware/radio/voice/IRadioVoice$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 179
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 180
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    :cond_0
    sparse-switch v9, :sswitch_data_0

    .line 202
    packed-switch v9, :pswitch_data_0

    .line 571
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 186
    :sswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v13

    .line 191
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return v13

    .line 197
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    return v13

    .line 564
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 565
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->switchWaitingOrHoldingAndActive(I)V

    .line 567
    goto/16 :goto_0

    .line 556
    .end local v0    # "_arg0":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 557
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 558
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->stopDtmf(I)V

    .line 559
    goto/16 :goto_0

    .line 546
    .end local v0    # "_arg0":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 548
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 549
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->startDtmf(ILjava/lang/String;)V

    .line 551
    goto/16 :goto_0

    .line 536
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 538
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 539
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 540
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setVoNrEnabled(IZ)V

    .line 541
    goto/16 :goto_0

    .line 526
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 528
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 529
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setTtyMode(II)V

    .line 531
    goto/16 :goto_0

    .line 516
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/voice/IRadioVoiceResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceResponse;

    move-result-object v0

    .line 518
    .local v0, "_arg0":Landroid/hardware/radio/voice/IRadioVoiceResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/voice/IRadioVoiceIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/voice/IRadioVoiceIndication;

    move-result-object v1

    .line 519
    .local v1, "_arg1":Landroid/hardware/radio/voice/IRadioVoiceIndication;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 520
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setResponseFunctions(Landroid/hardware/radio/voice/IRadioVoiceResponse;Landroid/hardware/radio/voice/IRadioVoiceIndication;)V

    .line 521
    goto/16 :goto_0

    .line 506
    .end local v0    # "_arg0":Landroid/hardware/radio/voice/IRadioVoiceResponse;
    .end local v1    # "_arg1":Landroid/hardware/radio/voice/IRadioVoiceIndication;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 508
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 509
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setPreferredVoicePrivacy(IZ)V

    .line 511
    goto/16 :goto_0

    .line 496
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 498
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 499
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setMute(IZ)V

    .line 501
    goto/16 :goto_0

    .line 486
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 488
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 489
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setClir(II)V

    .line 491
    goto/16 :goto_0

    .line 474
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 476
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 478
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 479
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v8, v0, v1, v2}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setCallWaiting(IZI)V

    .line 481
    goto/16 :goto_0

    .line 464
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/voice/CallForwardInfo;

    .line 467
    .local v1, "_arg1":Landroid/hardware/radio/voice/CallForwardInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 468
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->setCallForward(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 469
    goto/16 :goto_0

    .line 454
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/voice/CallForwardInfo;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 456
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 457
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->separateConnection(II)V

    .line 459
    goto/16 :goto_0

    .line 444
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 446
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 447
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 448
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendUssd(ILjava/lang/String;)V

    .line 449
    goto/16 :goto_0

    .line 434
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 436
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendDtmf(ILjava/lang/String;)V

    .line 439
    goto/16 :goto_0

    .line 424
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 426
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 427
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendCdmaFeatureCode(ILjava/lang/String;)V

    .line 429
    goto/16 :goto_0

    .line 410
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 412
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 414
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 417
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {v8, v0, v1, v2, v3}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->sendBurstDtmf(ILjava/lang/String;II)V

    .line 419
    goto/16 :goto_0

    .line 404
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->responseAcknowledgement()V

    .line 405
    goto/16 :goto_0

    .line 397
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->rejectCall(I)V

    .line 400
    goto/16 :goto_0

    .line 389
    .end local v0    # "_arg0":I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 390
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->isVoNrEnabled(I)V

    .line 392
    goto/16 :goto_0

    .line 381
    .end local v0    # "_arg0":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 382
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangupWaitingOrBackground(I)V

    .line 384
    goto/16 :goto_0

    .line 373
    .end local v0    # "_arg0":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 374
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangupForegroundResumeBackground(I)V

    .line 376
    goto/16 :goto_0

    .line 363
    .end local v0    # "_arg0":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 365
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 366
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->hangup(II)V

    .line 368
    goto/16 :goto_0

    .line 353
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 355
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 356
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->handleStkCallSetupRequestFromSim(IZ)V

    .line 358
    goto/16 :goto_0

    .line 345
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 346
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 347
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getTtyMode(I)V

    .line 348
    goto/16 :goto_0

    .line 337
    .end local v0    # "_arg0":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getPreferredVoicePrivacy(I)V

    .line 340
    goto/16 :goto_0

    .line 329
    .end local v0    # "_arg0":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getMute(I)V

    .line 332
    goto/16 :goto_0

    .line 321
    .end local v0    # "_arg0":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 322
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getLastCallFailCause(I)V

    .line 324
    goto/16 :goto_0

    .line 313
    .end local v0    # "_arg0":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 314
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCurrentCalls(I)V

    .line 316
    goto/16 :goto_0

    .line 305
    .end local v0    # "_arg0":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 306
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 307
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getClir(I)V

    .line 308
    goto/16 :goto_0

    .line 297
    .end local v0    # "_arg0":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 298
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 299
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getClip(I)V

    .line 300
    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 290
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCallWaiting(II)V

    .line 292
    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/voice/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/voice/CallForwardInfo;

    .line 280
    .local v1, "_arg1":Landroid/hardware/radio/voice/CallForwardInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->getCallForwardStatus(ILandroid/hardware/radio/voice/CallForwardInfo;)V

    .line 282
    goto/16 :goto_0

    .line 269
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/voice/CallForwardInfo;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 270
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->explicitCallTransfer(I)V

    .line 272
    goto/16 :goto_0

    .line 261
    .end local v0    # "_arg0":I
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->exitEmergencyCallbackMode(I)V

    .line 264
    goto :goto_0

    .line 241
    .end local v0    # "_arg0":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 243
    .local v14, "_arg0":I
    sget-object v0, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/hardware/radio/voice/Dial;

    .line 245
    .local v15, "_arg1":Landroid/hardware/radio/voice/Dial;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 247
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 249
    .local v17, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 251
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 253
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 254
    .local v20, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->emergencyDial(ILandroid/hardware/radio/voice/Dial;I[Ljava/lang/String;IZZ)V

    .line 256
    goto :goto_0

    .line 231
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Landroid/hardware/radio/voice/Dial;
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":[Ljava/lang/String;
    .end local v18    # "_arg4":I
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/voice/Dial;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/voice/Dial;

    .line 234
    .local v1, "_arg1":Landroid/hardware/radio/voice/Dial;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {v8, v0, v1}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->dial(ILandroid/hardware/radio/voice/Dial;)V

    .line 236
    goto :goto_0

    .line 223
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/voice/Dial;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->conference(I)V

    .line 226
    goto :goto_0

    .line 215
    .end local v0    # "_arg0":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->cancelPendingUssd(I)V

    .line 218
    goto :goto_0

    .line 207
    .end local v0    # "_arg0":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 209
    invoke-virtual {v8, v0}, Landroid/hardware/radio/voice/IRadioVoice$Stub;->acceptCall(I)V

    .line 210
    nop

    .line 574
    .end local v0    # "_arg0":I
    :goto_0
    return v13

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
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
