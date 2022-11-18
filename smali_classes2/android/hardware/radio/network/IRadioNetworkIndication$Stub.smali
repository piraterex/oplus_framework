.class public abstract Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;
.super Landroid/os/Binder;
.source "IRadioNetworkIndication.java"

# interfaces
.implements Landroid/hardware/radio/network/IRadioNetworkIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/network/IRadioNetworkIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_barringInfoChanged:I = 0x1

.field static final blacklist TRANSACTION_cdmaPrlChanged:I = 0x2

.field static final blacklist TRANSACTION_cellInfoList:I = 0x3

.field static final blacklist TRANSACTION_currentLinkCapacityEstimate:I = 0x4

.field static final blacklist TRANSACTION_currentPhysicalChannelConfigs:I = 0x5

.field static final blacklist TRANSACTION_currentSignalStrength:I = 0x6

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_imsNetworkStateChanged:I = 0x7

.field static final blacklist TRANSACTION_networkScanResult:I = 0x8

.field static final blacklist TRANSACTION_networkStateChanged:I = 0x9

.field static final blacklist TRANSACTION_nitzTimeReceived:I = 0xa

.field static final blacklist TRANSACTION_registrationFailed:I = 0xb

.field static final blacklist TRANSACTION_restrictedStateChanged:I = 0xc

.field static final blacklist TRANSACTION_suppSvcNotify:I = 0xd

.field static final blacklist TRANSACTION_voiceRadioTechChanged:I = 0xe


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 79
    invoke-virtual {p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->markVintfStability()V

    .line 80
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/network/IRadioNetworkIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    sget-object v0, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 92
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/network/IRadioNetworkIndication;

    if-eqz v1, :cond_1

    .line 93
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/network/IRadioNetworkIndication;

    return-object v1

    .line 95
    :cond_1
    new-instance v1, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 99
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    sget-object v11, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 104
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 105
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    :cond_0
    sparse-switch v8, :sswitch_data_0

    .line 127
    packed-switch v8, :pswitch_data_0

    .line 281
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 111
    :sswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    return v12

    .line 116
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return v12

    .line 122
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    return v12

    .line 272
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->voiceRadioTechChanged(II)V

    .line 277
    goto/16 :goto_0

    .line 262
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/SuppSvcNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/SuppSvcNotification;

    .line 265
    .local v1, "_arg1":Landroid/hardware/radio/network/SuppSvcNotification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->suppSvcNotify(ILandroid/hardware/radio/network/SuppSvcNotification;)V

    .line 267
    goto/16 :goto_0

    .line 252
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/network/SuppSvcNotification;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 254
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->restrictedStateChanged(II)V

    .line 257
    goto/16 :goto_0

    .line 234
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 236
    .local v13, "_arg0":I
    sget-object v0, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/hardware/radio/network/CellIdentity;

    .line 238
    .local v14, "_arg1":Landroid/hardware/radio/network/CellIdentity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 240
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 242
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 244
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 245
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-object v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->registrationFailed(ILandroid/hardware/radio/network/CellIdentity;Ljava/lang/String;III)V

    .line 247
    goto/16 :goto_0

    .line 220
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/hardware/radio/network/CellIdentity;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 222
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 224
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 226
    .local v15, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 227
    .local v17, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 228
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move-wide v3, v15

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->nitzTimeReceived(ILjava/lang/String;JJ)V

    .line 229
    goto/16 :goto_0

    .line 212
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":J
    .end local v17    # "_arg3":J
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 214
    invoke-virtual {v7, v0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->networkStateChanged(I)V

    .line 215
    goto/16 :goto_0

    .line 202
    .end local v0    # "_arg0":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/NetworkScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/NetworkScanResult;

    .line 205
    .local v1, "_arg1":Landroid/hardware/radio/network/NetworkScanResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->networkScanResult(ILandroid/hardware/radio/network/NetworkScanResult;)V

    .line 207
    goto/16 :goto_0

    .line 194
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/network/NetworkScanResult;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 196
    invoke-virtual {v7, v0}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->imsNetworkStateChanged(I)V

    .line 197
    goto/16 :goto_0

    .line 184
    .end local v0    # "_arg0":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/SignalStrength;

    .line 187
    .local v1, "_arg1":Landroid/hardware/radio/network/SignalStrength;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentSignalStrength(ILandroid/hardware/radio/network/SignalStrength;)V

    .line 189
    goto :goto_0

    .line 174
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/network/SignalStrength;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/PhysicalChannelConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/network/PhysicalChannelConfig;

    .line 177
    .local v1, "_arg1":[Landroid/hardware/radio/network/PhysicalChannelConfig;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentPhysicalChannelConfigs(I[Landroid/hardware/radio/network/PhysicalChannelConfig;)V

    .line 179
    goto :goto_0

    .line 164
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/hardware/radio/network/PhysicalChannelConfig;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 166
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/LinkCapacityEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/LinkCapacityEstimate;

    .line 167
    .local v1, "_arg1":Landroid/hardware/radio/network/LinkCapacityEstimate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 168
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->currentLinkCapacityEstimate(ILandroid/hardware/radio/network/LinkCapacityEstimate;)V

    .line 169
    goto :goto_0

    .line 154
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/network/LinkCapacityEstimate;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 156
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/CellInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/network/CellInfo;

    .line 157
    .local v1, "_arg1":[Landroid/hardware/radio/network/CellInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->cellInfoList(I[Landroid/hardware/radio/network/CellInfo;)V

    .line 159
    goto :goto_0

    .line 144
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/hardware/radio/network/CellInfo;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 147
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 148
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->cdmaPrlChanged(II)V

    .line 149
    goto :goto_0

    .line 132
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/network/CellIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/network/CellIdentity;

    .line 136
    .local v1, "_arg1":Landroid/hardware/radio/network/CellIdentity;
    sget-object v2, Landroid/hardware/radio/network/BarringInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/network/BarringInfo;

    .line 137
    .local v2, "_arg2":[Landroid/hardware/radio/network/BarringInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 138
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/network/IRadioNetworkIndication$Stub;->barringInfoChanged(ILandroid/hardware/radio/network/CellIdentity;[Landroid/hardware/radio/network/BarringInfo;)V

    .line 139
    nop

    .line 284
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/network/CellIdentity;
    .end local v2    # "_arg2":[Landroid/hardware/radio/network/BarringInfo;
    :goto_0
    return v12

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
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
