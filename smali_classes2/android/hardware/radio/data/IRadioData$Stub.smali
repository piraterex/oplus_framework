.class public abstract Landroid/hardware/radio/data/IRadioData$Stub;
.super Landroid/os/Binder;
.source "IRadioData.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/data/IRadioData$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_allocatePduSessionId:I = 0x1

.field static final blacklist TRANSACTION_cancelHandover:I = 0x2

.field static final blacklist TRANSACTION_deactivateDataCall:I = 0x3

.field static final blacklist TRANSACTION_getDataCallList:I = 0x4

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSlicingConfig:I = 0x5

.field static final blacklist TRANSACTION_releasePduSessionId:I = 0x6

.field static final blacklist TRANSACTION_responseAcknowledgement:I = 0x7

.field static final blacklist TRANSACTION_setDataAllowed:I = 0x8

.field static final blacklist TRANSACTION_setDataProfile:I = 0x9

.field static final blacklist TRANSACTION_setDataThrottling:I = 0xa

.field static final blacklist TRANSACTION_setInitialAttachApn:I = 0xb

.field static final blacklist TRANSACTION_setResponseFunctions:I = 0xc

.field static final blacklist TRANSACTION_setupDataCall:I = 0xd

.field static final blacklist TRANSACTION_startHandover:I = 0xe

.field static final blacklist TRANSACTION_startKeepalive:I = 0xf

.field static final blacklist TRANSACTION_stopKeepalive:I = 0x10


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/hardware/radio/data/IRadioData$Stub;->markVintfStability()V

    .line 86
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioData;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 94
    if-nez p0, :cond_0

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    sget-object v0, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 98
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/hardware/radio/data/IRadioData;

    if-eqz v1, :cond_1

    .line 99
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/data/IRadioData;

    return-object v1

    .line 101
    :cond_1
    new-instance v1, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/data/IRadioData$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 105
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 27
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
    move-object/from16 v11, p0

    move/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    sget-object v15, Landroid/hardware/radio/data/IRadioData$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 110
    .local v15, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v12, v10, :cond_0

    const v0, 0xffffff

    if-gt v12, v0, :cond_0

    .line 111
    invoke-virtual {v13, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    :cond_0
    sparse-switch v12, :sswitch_data_0

    .line 133
    packed-switch v12, :pswitch_data_0

    .line 306
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 117
    :sswitch_0
    invoke-virtual {v14, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    return v10

    .line 122
    :sswitch_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    return v10

    .line 128
    :sswitch_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/data/IRadioData$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    return v10

    .line 297
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 299
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->stopKeepalive(II)V

    .line 302
    move/from16 v26, v10

    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 289
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/data/KeepaliveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/data/KeepaliveRequest;

    .line 290
    .local v1, "_arg1":Landroid/hardware/radio/data/KeepaliveRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->startKeepalive(ILandroid/hardware/radio/data/KeepaliveRequest;)V

    .line 292
    move/from16 v26, v10

    goto/16 :goto_0

    .line 277
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/data/KeepaliveRequest;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 280
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->startHandover(II)V

    .line 282
    move/from16 v26, v10

    goto/16 :goto_0

    .line 251
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 253
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 255
    .local v17, "_arg1":I
    sget-object v0, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/hardware/radio/data/DataProfileInfo;

    .line 257
    .local v18, "_arg2":Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 259
    .local v19, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 261
    .local v20, "_arg4":I
    sget-object v0, Landroid/hardware/radio/data/LinkAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, [Landroid/hardware/radio/data/LinkAddress;

    .line 263
    .local v21, "_arg5":[Landroid/hardware/radio/data/LinkAddress;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 265
    .local v22, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 267
    .local v23, "_arg7":I
    sget-object v0, Landroid/hardware/radio/data/SliceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v24, v0

    check-cast v24, Landroid/hardware/radio/data/SliceInfo;

    .line 269
    .local v24, "_arg8":Landroid/hardware/radio/data/SliceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v25

    .line 270
    .local v25, "_arg9":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v26, v10

    move/from16 v10, v25

    invoke-virtual/range {v0 .. v10}, Landroid/hardware/radio/data/IRadioData$Stub;->setupDataCall(IILandroid/hardware/radio/data/DataProfileInfo;ZI[Landroid/hardware/radio/data/LinkAddress;[Ljava/lang/String;ILandroid/hardware/radio/data/SliceInfo;Z)V

    .line 272
    goto/16 :goto_0

    .line 241
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Landroid/hardware/radio/data/DataProfileInfo;
    .end local v19    # "_arg3":Z
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":[Landroid/hardware/radio/data/LinkAddress;
    .end local v22    # "_arg6":[Ljava/lang/String;
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":Landroid/hardware/radio/data/SliceInfo;
    .end local v25    # "_arg9":Z
    :pswitch_4
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/radio/data/IRadioDataResponse$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataResponse;

    move-result-object v0

    .line 243
    .local v0, "_arg0":Landroid/hardware/radio/data/IRadioDataResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/radio/data/IRadioDataIndication$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/data/IRadioDataIndication;

    move-result-object v1

    .line 244
    .local v1, "_arg1":Landroid/hardware/radio/data/IRadioDataIndication;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->setResponseFunctions(Landroid/hardware/radio/data/IRadioDataResponse;Landroid/hardware/radio/data/IRadioDataIndication;)V

    .line 246
    goto/16 :goto_0

    .line 231
    .end local v0    # "_arg0":Landroid/hardware/radio/data/IRadioDataResponse;
    .end local v1    # "_arg1":Landroid/hardware/radio/data/IRadioDataIndication;
    :pswitch_5
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 233
    .local v0, "_arg0":I
    sget-object v1, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/data/DataProfileInfo;

    .line 234
    .local v1, "_arg1":Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->setInitialAttachApn(ILandroid/hardware/radio/data/DataProfileInfo;)V

    .line 236
    goto/16 :goto_0

    .line 219
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/hardware/radio/data/DataProfileInfo;
    :pswitch_6
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 221
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 223
    .local v1, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 224
    .local v2, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 225
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataThrottling(IBJ)V

    .line 226
    goto/16 :goto_0

    .line 209
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":B
    .end local v2    # "_arg2":J
    :pswitch_7
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/hardware/radio/data/DataProfileInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/radio/data/DataProfileInfo;

    .line 212
    .local v1, "_arg1":[Landroid/hardware/radio/data/DataProfileInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataProfile(I[Landroid/hardware/radio/data/DataProfileInfo;)V

    .line 214
    goto/16 :goto_0

    .line 199
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Landroid/hardware/radio/data/DataProfileInfo;
    :pswitch_8
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 202
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 203
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->setDataAllowed(IZ)V

    .line 204
    goto :goto_0

    .line 193
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_9
    move/from16 v26, v10

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/data/IRadioData$Stub;->responseAcknowledgement()V

    .line 194
    goto :goto_0

    .line 184
    :pswitch_a
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 187
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 188
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->releasePduSessionId(II)V

    .line 189
    goto :goto_0

    .line 176
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_b
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 178
    invoke-virtual {v11, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->getSlicingConfig(I)V

    .line 179
    goto :goto_0

    .line 168
    .end local v0    # "_arg0":I
    :pswitch_c
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 169
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-virtual {v11, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->getDataCallList(I)V

    .line 171
    goto :goto_0

    .line 156
    .end local v0    # "_arg0":I
    :pswitch_d
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 158
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-virtual {v11, v0, v1, v2}, Landroid/hardware/radio/data/IRadioData$Stub;->deactivateDataCall(III)V

    .line 163
    goto :goto_0

    .line 146
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_e
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 148
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 149
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-virtual {v11, v0, v1}, Landroid/hardware/radio/data/IRadioData$Stub;->cancelHandover(II)V

    .line 151
    goto :goto_0

    .line 138
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    move/from16 v26, v10

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-virtual {v11, v0}, Landroid/hardware/radio/data/IRadioData$Stub;->allocatePduSessionId(I)V

    .line 141
    nop

    .line 309
    .end local v0    # "_arg0":I
    :goto_0
    return v26

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
