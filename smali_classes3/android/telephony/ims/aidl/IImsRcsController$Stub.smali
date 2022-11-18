.class public abstract Landroid/telephony/ims/aidl/IImsRcsController$Stub;
.super Landroid/os/Binder;
.source "IImsRcsController.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsRcsController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsRcsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_createSipDelegate:I = 0x11

.field static final blacklist TRANSACTION_destroySipDelegate:I = 0x12

.field static final blacklist TRANSACTION_getImsRcsRegistrationState:I = 0x3

.field static final blacklist TRANSACTION_getImsRcsRegistrationTransportType:I = 0x4

.field static final blacklist TRANSACTION_getUcePublishState:I = 0xb

.field static final blacklist TRANSACTION_isAvailable:I = 0x8

.field static final blacklist TRANSACTION_isCapable:I = 0x7

.field static final blacklist TRANSACTION_isSipDelegateSupported:I = 0x10

.field static final blacklist TRANSACTION_isUceSettingEnabled:I = 0xc

.field static final blacklist TRANSACTION_registerImsRegistrationCallback:I = 0x1

.field static final blacklist TRANSACTION_registerRcsAvailabilityCallback:I = 0x5

.field static final blacklist TRANSACTION_registerRcsFeatureCallback:I = 0x14

.field static final blacklist TRANSACTION_registerUcePublishStateCallback:I = 0xe

.field static final blacklist TRANSACTION_requestAvailability:I = 0xa

.field static final blacklist TRANSACTION_requestCapabilities:I = 0x9

.field static final blacklist TRANSACTION_setUceSettingEnabled:I = 0xd

.field static final blacklist TRANSACTION_triggerNetworkRegistration:I = 0x13

.field static final blacklist TRANSACTION_unregisterImsFeatureCallback:I = 0x15

.field static final blacklist TRANSACTION_unregisterImsRegistrationCallback:I = 0x2

.field static final blacklist TRANSACTION_unregisterRcsAvailabilityCallback:I = 0x6

.field static final blacklist TRANSACTION_unregisterUcePublishStateCallback:I = 0xf


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 99
    const-string v0, "android.telephony.ims.aidl.IImsRcsController"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRcsController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 107
    if-nez p0, :cond_0

    .line 108
    const/4 v0, 0x0

    return-object v0

    .line 110
    :cond_0
    const-string v0, "android.telephony.ims.aidl.IImsRcsController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 111
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsRcsController;

    if-eqz v1, :cond_1

    .line 112
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsRcsController;

    return-object v1

    .line 114
    :cond_1
    new-instance v1, Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 123
    packed-switch p0, :pswitch_data_0

    .line 211
    const/4 v0, 0x0

    return-object v0

    .line 207
    :pswitch_0
    const-string/jumbo v0, "unregisterImsFeatureCallback"

    return-object v0

    .line 203
    :pswitch_1
    const-string/jumbo v0, "registerRcsFeatureCallback"

    return-object v0

    .line 199
    :pswitch_2
    const-string/jumbo v0, "triggerNetworkRegistration"

    return-object v0

    .line 195
    :pswitch_3
    const-string v0, "destroySipDelegate"

    return-object v0

    .line 191
    :pswitch_4
    const-string v0, "createSipDelegate"

    return-object v0

    .line 187
    :pswitch_5
    const-string/jumbo v0, "isSipDelegateSupported"

    return-object v0

    .line 183
    :pswitch_6
    const-string/jumbo v0, "unregisterUcePublishStateCallback"

    return-object v0

    .line 179
    :pswitch_7
    const-string/jumbo v0, "registerUcePublishStateCallback"

    return-object v0

    .line 175
    :pswitch_8
    const-string/jumbo v0, "setUceSettingEnabled"

    return-object v0

    .line 171
    :pswitch_9
    const-string/jumbo v0, "isUceSettingEnabled"

    return-object v0

    .line 167
    :pswitch_a
    const-string/jumbo v0, "getUcePublishState"

    return-object v0

    .line 163
    :pswitch_b
    const-string/jumbo v0, "requestAvailability"

    return-object v0

    .line 159
    :pswitch_c
    const-string/jumbo v0, "requestCapabilities"

    return-object v0

    .line 155
    :pswitch_d
    const-string/jumbo v0, "isAvailable"

    return-object v0

    .line 151
    :pswitch_e
    const-string/jumbo v0, "isCapable"

    return-object v0

    .line 147
    :pswitch_f
    const-string/jumbo v0, "unregisterRcsAvailabilityCallback"

    return-object v0

    .line 143
    :pswitch_10
    const-string/jumbo v0, "registerRcsAvailabilityCallback"

    return-object v0

    .line 139
    :pswitch_11
    const-string v0, "getImsRcsRegistrationTransportType"

    return-object v0

    .line 135
    :pswitch_12
    const-string v0, "getImsRcsRegistrationState"

    return-object v0

    .line 131
    :pswitch_13
    const-string/jumbo v0, "unregisterImsRegistrationCallback"

    return-object v0

    .line 127
    :pswitch_14
    const-string/jumbo v0, "registerImsRegistrationCallback"

    return-object v0

    nop

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

    .line 118
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 911
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 218
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 222
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.telephony.ims.aidl.IImsRcsController"

    .line 223
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 224
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 234
    packed-switch v7, :pswitch_data_1

    .line 498
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 230
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    return v11

    .line 490
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v0

    .line 491
    .local v0, "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {v6, v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterImsFeatureCallback(Lcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 493
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    goto/16 :goto_0

    .line 479
    .end local v0    # "_arg0":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 481
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsServiceFeatureCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsServiceFeatureCallback;

    move-result-object v1

    .line 482
    .local v1, "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerRcsFeatureCallback(ILcom/android/ims/internal/IImsServiceFeatureCallback;)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    goto/16 :goto_0

    .line 464
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsServiceFeatureCallback;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 466
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v1

    .line 468
    .local v1, "_arg1":Landroid/telephony/ims/aidl/ISipDelegate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->triggerNetworkRegistration(ILandroid/telephony/ims/aidl/ISipDelegate;ILjava/lang/String;)V

    .line 473
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    goto/16 :goto_0

    .line 451
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/ISipDelegate;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/ISipDelegate$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegate;

    move-result-object v1

    .line 455
    .restart local v1    # "_arg1":Landroid/telephony/ims/aidl/ISipDelegate;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 456
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {v6, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->destroySipDelegate(ILandroid/telephony/ims/aidl/ISipDelegate;I)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_0

    .line 434
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/ISipDelegate;
    .end local v2    # "_arg2":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 436
    .local v12, "_arg0":I
    sget-object v0, Landroid/telephony/ims/DelegateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/telephony/ims/DelegateRequest;

    .line 438
    .local v13, "_arg1":Landroid/telephony/ims/DelegateRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 440
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;

    move-result-object v15

    .line 442
    .local v15, "_arg3":Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/ISipDelegateMessageCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;

    move-result-object v16

    .line 443
    .local v16, "_arg4":Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->createSipDelegate(ILandroid/telephony/ims/DelegateRequest;Ljava/lang/String;Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    goto/16 :goto_0

    .line 424
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Landroid/telephony/ims/DelegateRequest;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/telephony/ims/aidl/ISipDelegateConnectionStateCallback;
    .end local v16    # "_arg4":Landroid/telephony/ims/aidl/ISipDelegateMessageCallback;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 425
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {v6, v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isSipDelegateSupported(I)Z

    move-result v1

    .line 427
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 429
    goto/16 :goto_0

    .line 413
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 415
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v1

    .line 416
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    .line 418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    goto/16 :goto_0

    .line 402
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;

    move-result-object v1

    .line 405
    .restart local v1    # "_arg1":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerUcePublishStateCallback(ILandroid/telephony/ims/aidl/IRcsUcePublishStateCallback;)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    goto/16 :goto_0

    .line 391
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 393
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 394
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->setUceSettingEnabled(IZ)V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto/16 :goto_0

    .line 377
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 379
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 381
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {v6, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isUceSettingEnabled(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 384
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 386
    goto/16 :goto_0

    .line 367
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 368
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 369
    invoke-virtual {v6, v0}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getUcePublishState(I)I

    move-result v1

    .line 370
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    goto/16 :goto_0

    .line 350
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 352
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 354
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 356
    .restart local v14    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/net/Uri;

    .line 358
    .local v15, "_arg3":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    move-result-object v16

    .line 359
    .local v16, "_arg4":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->requestAvailability(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 361
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    goto/16 :goto_0

    .line 333
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Landroid/net/Uri;
    .end local v16    # "_arg4":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 335
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 337
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 339
    .restart local v14    # "_arg2":Ljava/lang/String;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v15

    .line 341
    .local v15, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IRcsUceControllerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IRcsUceControllerCallback;

    move-result-object v16

    .line 342
    .restart local v16    # "_arg4":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->requestCapabilities(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/telephony/ims/aidl/IRcsUceControllerCallback;)V

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    goto/16 :goto_0

    .line 319
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v16    # "_arg4":Landroid/telephony/ims/aidl/IRcsUceControllerCallback;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 321
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 324
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {v6, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isAvailable(III)Z

    move-result v3

    .line 326
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 328
    goto/16 :goto_0

    .line 305
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 309
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 310
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v6, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->isCapable(III)Z

    move-result v3

    .line 312
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 314
    goto/16 :goto_0

    .line 294
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 296
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    .line 297
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    goto :goto_0

    .line 283
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 285
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    .line 286
    .restart local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 287
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerRcsAvailabilityCallback(ILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 288
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    goto :goto_0

    .line 272
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 275
    .local v1, "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getImsRcsRegistrationTransportType(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto :goto_0

    .line 261
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIntegerConsumer;

    move-result-object v1

    .line 264
    .restart local v1    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->getImsRcsRegistrationState(ILcom/android/internal/telephony/IIntegerConsumer;)V

    .line 266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    goto :goto_0

    .line 250
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/IIntegerConsumer;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 252
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    .line 253
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 254
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->unregisterImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    goto :goto_0

    .line 239
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 241
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsRegistrationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsRegistrationCallback;

    move-result-object v1

    .line 242
    .restart local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 243
    invoke-virtual {v6, v0, v1}, Landroid/telephony/ims/aidl/IImsRcsController$Stub;->registerImsRegistrationCallback(ILandroid/telephony/ims/aidl/IImsRegistrationCallback;)V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    nop

    .line 501
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsRegistrationCallback;
    :goto_0
    return v11

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
