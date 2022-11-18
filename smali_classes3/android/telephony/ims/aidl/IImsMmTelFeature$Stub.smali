.class public abstract Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;
.super Landroid/os/Binder;
.source "IImsMmTelFeature.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsMmTelFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsMmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeSms:I = 0x12

.field static final blacklist TRANSACTION_acknowledgeSmsReport:I = 0x13

.field static final blacklist TRANSACTION_addCapabilityCallback:I = 0xc

.field static final blacklist TRANSACTION_changeCapabilitiesConfiguration:I = 0xe

.field static final blacklist TRANSACTION_changeOfferedRtpHeaderExtensionTypes:I = 0x4

.field static final blacklist TRANSACTION_createCallProfile:I = 0x3

.field static final blacklist TRANSACTION_createCallSession:I = 0x5

.field static final blacklist TRANSACTION_getEcbmInterface:I = 0x8

.field static final blacklist TRANSACTION_getFeatureState:I = 0x2

.field static final blacklist TRANSACTION_getMultiEndpointInterface:I = 0xa

.field static final blacklist TRANSACTION_getSmsFormat:I = 0x14

.field static final blacklist TRANSACTION_getUtInterface:I = 0x7

.field static final blacklist TRANSACTION_onSmsReady:I = 0x15

.field static final blacklist TRANSACTION_queryCapabilityConfiguration:I = 0xf

.field static final blacklist TRANSACTION_queryCapabilityStatus:I = 0xb

.field static final blacklist TRANSACTION_removeCapabilityCallback:I = 0xd

.field static final blacklist TRANSACTION_sendSms:I = 0x11

.field static final blacklist TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setSmsListener:I = 0x10

.field static final blacklist TRANSACTION_setUiTtyMode:I = 0x9

.field static final blacklist TRANSACTION_shouldProcessCall:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 98
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 106
    if-nez p0, :cond_0

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 110
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    if-eqz v1, :cond_1

    .line 111
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v1

    .line 113
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 122
    packed-switch p0, :pswitch_data_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 206
    :pswitch_0
    const-string/jumbo v0, "onSmsReady"

    return-object v0

    .line 202
    :pswitch_1
    const-string v0, "getSmsFormat"

    return-object v0

    .line 198
    :pswitch_2
    const-string v0, "acknowledgeSmsReport"

    return-object v0

    .line 194
    :pswitch_3
    const-string v0, "acknowledgeSms"

    return-object v0

    .line 190
    :pswitch_4
    const-string/jumbo v0, "sendSms"

    return-object v0

    .line 186
    :pswitch_5
    const-string/jumbo v0, "setSmsListener"

    return-object v0

    .line 182
    :pswitch_6
    const-string/jumbo v0, "queryCapabilityConfiguration"

    return-object v0

    .line 178
    :pswitch_7
    const-string v0, "changeCapabilitiesConfiguration"

    return-object v0

    .line 174
    :pswitch_8
    const-string/jumbo v0, "removeCapabilityCallback"

    return-object v0

    .line 170
    :pswitch_9
    const-string v0, "addCapabilityCallback"

    return-object v0

    .line 166
    :pswitch_a
    const-string/jumbo v0, "queryCapabilityStatus"

    return-object v0

    .line 162
    :pswitch_b
    const-string v0, "getMultiEndpointInterface"

    return-object v0

    .line 158
    :pswitch_c
    const-string/jumbo v0, "setUiTtyMode"

    return-object v0

    .line 154
    :pswitch_d
    const-string v0, "getEcbmInterface"

    return-object v0

    .line 150
    :pswitch_e
    const-string/jumbo v0, "getUtInterface"

    return-object v0

    .line 146
    :pswitch_f
    const-string/jumbo v0, "shouldProcessCall"

    return-object v0

    .line 142
    :pswitch_10
    const-string v0, "createCallSession"

    return-object v0

    .line 138
    :pswitch_11
    const-string v0, "changeOfferedRtpHeaderExtensionTypes"

    return-object v0

    .line 134
    :pswitch_12
    const-string v0, "createCallProfile"

    return-object v0

    .line 130
    :pswitch_13
    const-string v0, "getFeatureState"

    return-object v0

    .line 126
    :pswitch_14
    const-string/jumbo v0, "setListener"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 117
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 805
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 217
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 221
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.telephony.ims.aidl.IImsMmTelFeature"

    .line 222
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 223
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 233
    packed-switch v8, :pswitch_data_1

    .line 434
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 229
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    return v12

    .line 429
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->onSmsReady()V

    .line 430
    goto/16 :goto_0

    .line 422
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    goto/16 :goto_0

    .line 411
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 413
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 415
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 416
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSmsReport(III)V

    .line 418
    goto/16 :goto_0

    .line 399
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 401
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 403
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 404
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 405
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSms(III)V

    .line 406
    goto/16 :goto_0

    .line 381
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 383
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 385
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 387
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 389
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 391
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 392
    .local v18, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 393
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 394
    goto/16 :goto_0

    .line 372
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":[B
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v0

    .line 373
    .local v0, "_arg0":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 375
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    goto/16 :goto_0

    .line 360
    .end local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 365
    .local v2, "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 367
    goto/16 :goto_0

    .line 350
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_8
    sget-object v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 352
    .local v0, "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    .line 353
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 355
    goto/16 :goto_0

    .line 342
    .end local v0    # "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v0

    .line 343
    .local v0, "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 345
    goto/16 :goto_0

    .line 334
    .end local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v0

    .line 335
    .restart local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 337
    goto/16 :goto_0

    .line 326
    .end local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryCapabilityStatus()I

    move-result v0

    .line 327
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    goto/16 :goto_0

    .line 319
    .end local v0    # "_result":I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    .line 320
    .local v0, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 322
    goto/16 :goto_0

    .line 309
    .end local v0    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 311
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 312
    .local v1, "_arg1":Landroid/os/Message;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 313
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setUiTtyMode(ILandroid/os/Message;)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    goto/16 :goto_0

    .line 301
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Message;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    .line 302
    .local v0, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 304
    goto/16 :goto_0

    .line 294
    .end local v0    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    .line 295
    .local v0, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 297
    goto :goto_0

    .line 285
    .end local v0    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->shouldProcessCall([Ljava/lang/String;)I

    move-result v1

    .line 288
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    goto :goto_0

    .line 275
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_11
    sget-object v0, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    .line 276
    .local v0, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 278
    .local v1, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 280
    goto :goto_0

    .line 266
    .end local v0    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    .end local v1    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_12
    sget-object v0, Landroid/telephony/ims/RtpHeaderExtensionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 267
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V

    .line 269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    goto :goto_0

    .line 254
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 256
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 257
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 259
    .local v2, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 261
    goto :goto_0

    .line 246
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getFeatureState()I

    move-result v0

    .line 247
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    goto :goto_0

    .line 238
    .end local v0    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 239
    .local v0, "_arg0":Landroid/telephony/ims/aidl/IImsMmTelListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    nop

    .line 437
    .end local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
