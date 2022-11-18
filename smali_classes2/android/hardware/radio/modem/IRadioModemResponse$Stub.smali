.class public abstract Landroid/hardware/radio/modem/IRadioModemResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioModemResponse.java"

# interfaces
.implements Landroid/hardware/radio/modem/IRadioModemResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/modem/IRadioModemResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_enableModemResponse:I = 0x2

.field static final blacklist TRANSACTION_getBasebandVersionResponse:I = 0x3

.field static final blacklist TRANSACTION_getDeviceIdentityResponse:I = 0x4

.field static final blacklist TRANSACTION_getHardwareConfigResponse:I = 0x5

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getModemActivityInfoResponse:I = 0x6

.field static final blacklist TRANSACTION_getModemStackStatusResponse:I = 0x7

.field static final blacklist TRANSACTION_getRadioCapabilityResponse:I = 0x8

.field static final blacklist TRANSACTION_nvReadItemResponse:I = 0x9

.field static final blacklist TRANSACTION_nvResetConfigResponse:I = 0xa

.field static final blacklist TRANSACTION_nvWriteCdmaPrlResponse:I = 0xb

.field static final blacklist TRANSACTION_nvWriteItemResponse:I = 0xc

.field static final blacklist TRANSACTION_requestShutdownResponse:I = 0xd

.field static final blacklist TRANSACTION_sendDeviceStateResponse:I = 0xe

.field static final blacklist TRANSACTION_setRadioCapabilityResponse:I = 0xf

.field static final blacklist TRANSACTION_setRadioPowerResponse:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->markVintfStability()V

    .line 86
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/modem/IRadioModemResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    sget-object v0, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/modem/IRadioModemResponse;

    if-eqz v1, :cond_1

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/modem/IRadioModemResponse;

    return-object v1

    .line 101
    :cond_1
    new-instance v1, Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 105
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    sget-object v10, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 110
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 111
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_0
    sparse-switch v7, :sswitch_data_0

    .line 133
    packed-switch v7, :pswitch_data_0

    .line 287
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 117
    :sswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v11

    .line 122
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v11

    .line 128
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v11

    .line 280
    :pswitch_0
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 281
    .local v0, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 282
    invoke-virtual {v6, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->setRadioPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 283
    goto/16 :goto_0

    .line 270
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 272
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/modem/RadioCapability;

    .line 273
    .local v1, "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {v6, v0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->setRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V

    .line 275
    goto/16 :goto_0

    .line 262
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    :pswitch_2
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 263
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {v6, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->sendDeviceStateResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 265
    goto/16 :goto_0

    .line 254
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_3
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 255
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v6, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->requestShutdownResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 257
    goto/16 :goto_0

    .line 246
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_4
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 247
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v6, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvWriteItemResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 249
    goto/16 :goto_0

    .line 238
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_5
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 239
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v6, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvWriteCdmaPrlResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 241
    goto/16 :goto_0

    .line 230
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_6
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 231
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v6, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvResetConfigResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 233
    goto/16 :goto_0

    .line 220
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_7
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 222
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {v6, v0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->nvReadItemResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 225
    goto/16 :goto_0

    .line 210
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_8
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 212
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/modem/RadioCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/modem/RadioCapability;

    .line 213
    .local v1, "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v6, v0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getRadioCapabilityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/RadioCapability;)V

    .line 215
    goto/16 :goto_0

    .line 200
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/modem/RadioCapability;
    :pswitch_9
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 202
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 203
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {v6, v0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getModemStackStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 205
    goto/16 :goto_0

    .line 190
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Z
    :pswitch_a
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 192
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/modem/ActivityStatsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/modem/ActivityStatsInfo;

    .line 193
    .local v1, "_arg1":Landroid/hardware/radio/modem/ActivityStatsInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {v6, v0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getModemActivityInfoResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/modem/ActivityStatsInfo;)V

    .line 195
    goto/16 :goto_0

    .line 180
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/modem/ActivityStatsInfo;
    :pswitch_b
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 182
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/modem/HardwareConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/modem/HardwareConfig;

    .line 183
    .local v1, "_arg1":[Landroid/hardware/radio/modem/HardwareConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-virtual {v6, v0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getHardwareConfigResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/modem/HardwareConfig;)V

    .line 185
    goto :goto_0

    .line 164
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":[Landroid/hardware/radio/modem/HardwareConfig;
    :pswitch_c
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/hardware/radio/RadioResponseInfo;

    .line 166
    .local v12, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 168
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 172
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 173
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 174
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getDeviceIdentityResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    goto :goto_0

    .line 154
    .end local v12    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_d
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 156
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {v6, v0, v1}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->getBasebandVersionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 159
    goto :goto_0

    .line 146
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_e
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 147
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {v6, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->enableModemResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 149
    goto :goto_0

    .line 138
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {v6, v0}, Landroid/hardware/radio/modem/IRadioModemResponse$Stub;->acknowledgeRequest(I)V

    .line 141
    nop

    .line 290
    .end local v0    # "_arg0":I
    :goto_0
    return v11

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
