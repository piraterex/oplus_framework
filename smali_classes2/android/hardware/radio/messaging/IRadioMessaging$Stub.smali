.class public abstract Landroid/hardware/radio/messaging/IRadioMessaging$Stub;
.super Landroid/os/Binder;
.source "IRadioMessaging.java"

# interfaces
.implements Landroid/hardware/radio/messaging/IRadioMessaging;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/IRadioMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeIncomingGsmSmsWithPdu:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeLastIncomingCdmaSms:I = 0x2

.field static final blacklist TRANSACTION_acknowledgeLastIncomingGsmSms:I = 0x3

.field static final blacklist TRANSACTION_deleteSmsOnRuim:I = 0x4

.field static final blacklist TRANSACTION_deleteSmsOnSim:I = 0x5

.field static final blacklist TRANSACTION_getCdmaBroadcastConfig:I = 0x6

.field static final blacklist TRANSACTION_getGsmBroadcastConfig:I = 0x7

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSmscAddress:I = 0x8

.field static final blacklist TRANSACTION_reportSmsMemoryStatus:I = 0x9

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0xa

.field static final blacklist TRANSACTION_sendCdmaSms:I = 0xb

.field static final blacklist TRANSACTION_sendCdmaSmsExpectMore:I = 0xc

.field static final blacklist TRANSACTION_sendImsSms:I = 0xd

.field static final blacklist TRANSACTION_sendSms:I = 0xe

.field static final blacklist TRANSACTION_sendSmsExpectMore:I = 0xf

.field static final blacklist TRANSACTION_setCdmaBroadcastActivation:I = 0x10

.field static final blacklist TRANSACTION_setCdmaBroadcastConfig:I = 0x11

.field static final blacklist TRANSACTION_setGsmBroadcastActivation:I = 0x12

.field static final blacklist TRANSACTION_setGsmBroadcastConfig:I = 0x13

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0x14

.field static final blacklist TRANSACTION_setSmscAddress:I = 0x15

.field static final blacklist TRANSACTION_writeSmsToRuim:I = 0x16

.field static final blacklist TRANSACTION_writeSmsToSim:I = 0x17


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 106
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->markVintfStability()V

    .line 107
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessaging;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 115
    if-nez p0, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 119
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/messaging/IRadioMessaging;

    if-eqz v1, :cond_1

    .line 120
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/messaging/IRadioMessaging;

    return-object v1

    .line 122
    :cond_1
    new-instance v1, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 126
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

    .line 130
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 131
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 132
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 154
    packed-switch p1, :pswitch_data_0

    .line 381
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 138
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    return v1

    .line 143
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    return v1

    .line 149
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    return v1

    .line 372
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/SmsWriteArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SmsWriteArgs;

    .line 375
    .local v3, "_arg1":Landroid/hardware/radio/messaging/SmsWriteArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->writeSmsToSim(ILandroid/hardware/radio/messaging/SmsWriteArgs;)V

    .line 377
    goto/16 :goto_0

    .line 362
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SmsWriteArgs;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;

    .line 365
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->writeSmsToRuim(ILandroid/hardware/radio/messaging/CdmaSmsWriteArgs;)V

    .line 367
    goto/16 :goto_0

    .line 352
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsWriteArgs;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 354
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setSmscAddress(ILjava/lang/String;)V

    .line 357
    goto/16 :goto_0

    .line 342
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingResponse;

    move-result-object v2

    .line 344
    .local v2, "_arg0":Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/radio/messaging/IRadioMessagingIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingIndication;

    move-result-object v3

    .line 345
    .local v3, "_arg1":Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setResponseFunctions(Landroid/hardware/radio/messaging/IRadioMessagingResponse;Landroid/hardware/radio/messaging/IRadioMessagingIndication;)V

    .line 347
    goto/16 :goto_0

    .line 332
    .end local v2    # "_arg0":Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/IRadioMessagingIndication;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .local v2, "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    .line 335
    .local v3, "_arg1":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setGsmBroadcastConfig(I[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V

    .line 337
    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 325
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setGsmBroadcastActivation(IZ)V

    .line 327
    goto/16 :goto_0

    .line 312
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;

    .line 315
    .local v3, "_arg1":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setCdmaBroadcastConfig(I[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;)V

    .line 317
    goto/16 :goto_0

    .line 302
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 305
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->setCdmaBroadcastActivation(IZ)V

    .line 307
    goto/16 :goto_0

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/GsmSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 295
    .local v3, "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendSmsExpectMore(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    .line 297
    goto/16 :goto_0

    .line 282
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/GsmSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/GsmSmsMessage;

    .line 285
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendSms(ILandroid/hardware/radio/messaging/GsmSmsMessage;)V

    .line 287
    goto/16 :goto_0

    .line 272
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/GsmSmsMessage;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 274
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/ImsSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/ImsSmsMessage;

    .line 275
    .local v3, "_arg1":Landroid/hardware/radio/messaging/ImsSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendImsSms(ILandroid/hardware/radio/messaging/ImsSmsMessage;)V

    .line 277
    goto/16 :goto_0

    .line 262
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/ImsSmsMessage;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 264
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 265
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendCdmaSmsExpectMore(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 267
    goto/16 :goto_0

    .line 252
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsMessage;

    .line 255
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->sendCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsMessage;)V

    .line 257
    goto/16 :goto_0

    .line 246
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsMessage;
    :pswitch_d
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->responseAcknowledgement()V

    .line 247
    goto/16 :goto_0

    .line 237
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 239
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 240
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->reportSmsMemoryStatus(IZ)V

    .line 242
    goto/16 :goto_0

    .line 229
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 231
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getSmscAddress(I)V

    .line 232
    goto :goto_0

    .line 221
    .end local v2    # "_arg0":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 223
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getGsmBroadcastConfig(I)V

    .line 224
    goto :goto_0

    .line 213
    .end local v2    # "_arg0":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->getCdmaBroadcastConfig(I)V

    .line 216
    goto :goto_0

    .line 203
    .end local v2    # "_arg0":I
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 205
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->deleteSmsOnSim(II)V

    .line 208
    goto :goto_0

    .line 193
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 195
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 196
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->deleteSmsOnRuim(II)V

    .line 198
    goto :goto_0

    .line 181
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 183
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 185
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 186
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 187
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeLastIncomingGsmSms(IZI)V

    .line 188
    goto :goto_0

    .line 171
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .restart local v2    # "_arg0":I
    sget-object v3, Landroid/hardware/radio/messaging/CdmaSmsAck;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/CdmaSmsAck;

    .line 174
    .local v3, "_arg1":Landroid/hardware/radio/messaging/CdmaSmsAck;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 175
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeLastIncomingCdmaSms(ILandroid/hardware/radio/messaging/CdmaSmsAck;)V

    .line 176
    goto :goto_0

    .line 159
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/CdmaSmsAck;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 163
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 165
    invoke-virtual {p0, v2, v3, v4}, Landroid/hardware/radio/messaging/IRadioMessaging$Stub;->acknowledgeIncomingGsmSmsWithPdu(IZLjava/lang/String;)V

    .line 166
    nop

    .line 384
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
