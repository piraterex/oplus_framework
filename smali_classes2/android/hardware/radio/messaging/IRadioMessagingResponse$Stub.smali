.class public abstract Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioMessagingResponse.java"

# interfaces
.implements Landroid/hardware/radio/messaging/IRadioMessagingResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/messaging/IRadioMessagingResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeIncomingGsmSmsWithPduResponse:I = 0x1

.field static final blacklist TRANSACTION_acknowledgeLastIncomingCdmaSmsResponse:I = 0x2

.field static final blacklist TRANSACTION_acknowledgeLastIncomingGsmSmsResponse:I = 0x3

.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x4

.field static final blacklist TRANSACTION_deleteSmsOnRuimResponse:I = 0x5

.field static final blacklist TRANSACTION_deleteSmsOnSimResponse:I = 0x6

.field static final blacklist TRANSACTION_getCdmaBroadcastConfigResponse:I = 0x7

.field static final blacklist TRANSACTION_getGsmBroadcastConfigResponse:I = 0x8

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSmscAddressResponse:I = 0x9

.field static final blacklist TRANSACTION_reportSmsMemoryStatusResponse:I = 0xa

.field static final blacklist TRANSACTION_sendCdmaSmsExpectMoreResponse:I = 0xb

.field static final blacklist TRANSACTION_sendCdmaSmsResponse:I = 0xc

.field static final blacklist TRANSACTION_sendImsSmsResponse:I = 0xd

.field static final blacklist TRANSACTION_sendSmsExpectMoreResponse:I = 0xe

.field static final blacklist TRANSACTION_sendSmsResponse:I = 0xf

.field static final blacklist TRANSACTION_setCdmaBroadcastActivationResponse:I = 0x10

.field static final blacklist TRANSACTION_setCdmaBroadcastConfigResponse:I = 0x11

.field static final blacklist TRANSACTION_setGsmBroadcastActivationResponse:I = 0x12

.field static final blacklist TRANSACTION_setGsmBroadcastConfigResponse:I = 0x13

.field static final blacklist TRANSACTION_setSmscAddressResponse:I = 0x14

.field static final blacklist TRANSACTION_writeSmsToRuimResponse:I = 0x15

.field static final blacklist TRANSACTION_writeSmsToSimResponse:I = 0x16


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->markVintfStability()V

    .line 104
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/messaging/IRadioMessagingResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 112
    if-nez p0, :cond_0

    .line 113
    const/4 v0, 0x0

    return-object v0

    .line 115
    :cond_0
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 116
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse;

    if-eqz v1, :cond_1

    .line 117
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/messaging/IRadioMessagingResponse;

    return-object v1

    .line 119
    :cond_1
    new-instance v1, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 123
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    sget-object v0, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 128
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 129
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 151
    packed-switch p1, :pswitch_data_0

    .line 351
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 135
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return v1

    .line 140
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    return v1

    .line 146
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p0}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    return v1

    .line 342
    :pswitch_0
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 344
    .local v2, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 345
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 346
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->writeSmsToSimResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 347
    goto/16 :goto_0

    .line 332
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_1
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 334
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 335
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->writeSmsToRuimResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 337
    goto/16 :goto_0

    .line 324
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":I
    :pswitch_2
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 325
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 326
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setSmscAddressResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 327
    goto/16 :goto_0

    .line 316
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_3
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 317
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 318
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setGsmBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 319
    goto/16 :goto_0

    .line 308
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 309
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setGsmBroadcastActivationResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 311
    goto/16 :goto_0

    .line 300
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_5
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 301
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 302
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setCdmaBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 303
    goto/16 :goto_0

    .line 292
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_6
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 293
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->setCdmaBroadcastActivationResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 295
    goto/16 :goto_0

    .line 282
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_7
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 284
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 285
    .local v3, "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 287
    goto/16 :goto_0

    .line 272
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_8
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 274
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 275
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendSmsExpectMoreResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 277
    goto/16 :goto_0

    .line 262
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_9
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 264
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 265
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendImsSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 267
    goto/16 :goto_0

    .line 252
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_a
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 254
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 255
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendCdmaSmsResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 257
    goto/16 :goto_0

    .line 242
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_b
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 244
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/SendSmsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/messaging/SendSmsResult;

    .line 245
    .restart local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/messaging/SendSmsResult;)V

    .line 247
    goto/16 :goto_0

    .line 234
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Landroid/hardware/radio/messaging/SendSmsResult;
    :pswitch_c
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 235
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 236
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->reportSmsMemoryStatusResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 237
    goto/16 :goto_0

    .line 224
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_d
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 226
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getSmscAddressResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 229
    goto/16 :goto_0

    .line 214
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_e
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 216
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;

    .line 217
    .local v3, "_arg1":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 218
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getGsmBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;)V

    .line 219
    goto :goto_0

    .line 204
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/messaging/GsmBroadcastSmsConfigInfo;
    :pswitch_f
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 206
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v3, Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;

    .line 207
    .local v3, "_arg1":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 208
    invoke-virtual {p0, v2, v3}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->getCdmaBroadcastConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;)V

    .line 209
    goto :goto_0

    .line 196
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v3    # "_arg1":[Landroid/hardware/radio/messaging/CdmaBroadcastSmsConfigInfo;
    :pswitch_10
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 197
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 198
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->deleteSmsOnSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 199
    goto :goto_0

    .line 188
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_11
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 189
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 190
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->deleteSmsOnRuimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 191
    goto :goto_0

    .line 180
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 181
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->acknowledgeRequest(I)V

    .line 183
    goto :goto_0

    .line 172
    .end local v2    # "_arg0":I
    :pswitch_13
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 173
    .local v2, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 175
    goto :goto_0

    .line 164
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_14
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 165
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 166
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 167
    goto :goto_0

    .line 156
    .end local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_15
    sget-object v2, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/RadioResponseInfo;

    .line 157
    .restart local v2    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {p0, v2}, Landroid/hardware/radio/messaging/IRadioMessagingResponse$Stub;->acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 159
    nop

    .line 354
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
