.class public abstract Lcom/android/internal/telephony/euicc/IEuiccController$Stub;
.super Landroid/os/Binder;
.source "IEuiccController.java"

# interfaces
.implements Lcom/android/internal/telephony/euicc/IEuiccController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/IEuiccController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_continueOperation:I = 0x1

.field static final blacklist TRANSACTION_deleteSubscription:I = 0x8

.field static final blacklist TRANSACTION_downloadSubscription:I = 0x6

.field static final blacklist TRANSACTION_eraseSubscriptions:I = 0xc

.field static final blacklist TRANSACTION_eraseSubscriptionsWithOptions:I = 0xd

.field static final blacklist TRANSACTION_getDefaultDownloadableSubscriptionList:I = 0x3

.field static final blacklist TRANSACTION_getDownloadableSubscriptionMetadata:I = 0x2

.field static final blacklist TRANSACTION_getEid:I = 0x4

.field static final blacklist TRANSACTION_getEuiccInfo:I = 0x7

.field static final blacklist TRANSACTION_getOtaStatus:I = 0x5

.field static final blacklist TRANSACTION_getSupportedCountries:I = 0x10

.field static final blacklist TRANSACTION_hasCarrierPrivilegesForPackageOnAnyPhone:I = 0x13

.field static final blacklist TRANSACTION_isCompatChangeEnabled:I = 0x14

.field static final blacklist TRANSACTION_isSimPortAvailable:I = 0x12

.field static final blacklist TRANSACTION_isSupportedCountry:I = 0x11

.field static final blacklist TRANSACTION_retainSubscriptionsForFactoryReset:I = 0xe

.field static final blacklist TRANSACTION_setSupportedCountries:I = 0xf

.field static final blacklist TRANSACTION_switchToSubscription:I = 0x9

.field static final blacklist TRANSACTION_switchToSubscriptionWithPort:I = 0xa

.field static final blacklist TRANSACTION_updateSubscriptionNickname:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 90
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/euicc/IEuiccController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    const-string v0, "com.android.internal.telephony.euicc.IEuiccController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/euicc/IEuiccController;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/euicc/IEuiccController;

    return-object v1

    .line 105
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 114
    packed-switch p0, :pswitch_data_0

    .line 198
    const/4 v0, 0x0

    return-object v0

    .line 194
    :pswitch_0
    const-string v0, "isCompatChangeEnabled"

    return-object v0

    .line 190
    :pswitch_1
    const-string v0, "hasCarrierPrivilegesForPackageOnAnyPhone"

    return-object v0

    .line 186
    :pswitch_2
    const-string/jumbo v0, "isSimPortAvailable"

    return-object v0

    .line 182
    :pswitch_3
    const-string/jumbo v0, "isSupportedCountry"

    return-object v0

    .line 178
    :pswitch_4
    const-string v0, "getSupportedCountries"

    return-object v0

    .line 174
    :pswitch_5
    const-string/jumbo v0, "setSupportedCountries"

    return-object v0

    .line 170
    :pswitch_6
    const-string/jumbo v0, "retainSubscriptionsForFactoryReset"

    return-object v0

    .line 166
    :pswitch_7
    const-string v0, "eraseSubscriptionsWithOptions"

    return-object v0

    .line 162
    :pswitch_8
    const-string v0, "eraseSubscriptions"

    return-object v0

    .line 158
    :pswitch_9
    const-string/jumbo v0, "updateSubscriptionNickname"

    return-object v0

    .line 154
    :pswitch_a
    const-string/jumbo v0, "switchToSubscriptionWithPort"

    return-object v0

    .line 150
    :pswitch_b
    const-string/jumbo v0, "switchToSubscription"

    return-object v0

    .line 146
    :pswitch_c
    const-string v0, "deleteSubscription"

    return-object v0

    .line 142
    :pswitch_d
    const-string v0, "getEuiccInfo"

    return-object v0

    .line 138
    :pswitch_e
    const-string v0, "downloadSubscription"

    return-object v0

    .line 134
    :pswitch_f
    const-string v0, "getOtaStatus"

    return-object v0

    .line 130
    :pswitch_10
    const-string v0, "getEid"

    return-object v0

    .line 126
    :pswitch_11
    const-string v0, "getDefaultDownloadableSubscriptionList"

    return-object v0

    .line 122
    :pswitch_12
    const-string v0, "getDownloadableSubscriptionMetadata"

    return-object v0

    .line 118
    :pswitch_13
    const-string v0, "continueOperation"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 109
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 842
    const/16 v0, 0x13

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 205
    invoke-static {p1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 209
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.android.internal.telephony.euicc.IEuiccController"

    .line 210
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 211
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 221
    packed-switch v8, :pswitch_data_1

    .line 472
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 217
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return v12

    .line 461
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 464
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isCompatChangeEnabled(Ljava/lang/String;J)Z

    move-result v3

    .line 466
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 468
    goto/16 :goto_0

    .line 451
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 452
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->hasCarrierPrivilegesForPackageOnAnyPhone(Ljava/lang/String;)Z

    move-result v1

    .line 454
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 456
    goto/16 :goto_0

    .line 437
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 439
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 441
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 442
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isSimPortAvailable(IILjava/lang/String;)Z

    move-result v3

    .line 444
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 446
    goto/16 :goto_0

    .line 427
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 429
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->isSupportedCountry(Ljava/lang/String;)Z

    move-result v1

    .line 430
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 432
    goto/16 :goto_0

    .line 417
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 418
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getSupportedCountries(Z)Ljava/util/List;

    move-result-object v1

    .line 420
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 422
    goto/16 :goto_0

    .line 406
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 408
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 409
    .local v1, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->setSupportedCountries(ZLjava/util/List;)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto/16 :goto_0

    .line 396
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 398
    .local v0, "_arg0":I
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 399
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 400
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->retainSubscriptionsForFactoryReset(ILandroid/app/PendingIntent;)V

    .line 401
    goto/16 :goto_0

    .line 384
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 388
    .local v1, "_arg1":I
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 389
    .local v2, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptionsWithOptions(IILandroid/app/PendingIntent;)V

    .line 391
    goto/16 :goto_0

    .line 374
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 376
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 377
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 378
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->eraseSubscriptions(ILandroid/app/PendingIntent;)V

    .line 379
    goto/16 :goto_0

    .line 358
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 360
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 362
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 364
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 366
    .local v15, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/PendingIntent;

    .line 367
    .local v16, "_arg4":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->updateSubscriptionNickname(IILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 369
    goto/16 :goto_0

    .line 342
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Landroid/app/PendingIntent;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 344
    .restart local v6    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 346
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 348
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 350
    .restart local v15    # "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/app/PendingIntent;

    .line 351
    .restart local v16    # "_arg4":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscriptionWithPort(IIILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 353
    goto/16 :goto_0

    .line 328
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Landroid/app/PendingIntent;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 330
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 332
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 335
    .local v3, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 336
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->switchToSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 337
    goto/16 :goto_0

    .line 314
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 316
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .restart local v2    # "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 321
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->deleteSubscription(IILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 323
    goto/16 :goto_0

    .line 304
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 305
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEuiccInfo(I)Landroid/telephony/euicc/EuiccInfo;

    move-result-object v1

    .line 307
    .local v1, "_result":Landroid/telephony/euicc/EuiccInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 309
    goto/16 :goto_0

    .line 286
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/telephony/euicc/EuiccInfo;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 288
    .local v13, "_arg0":I
    sget-object v0, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/telephony/euicc/DownloadableSubscription;

    .line 290
    .local v14, "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v15

    .line 292
    .local v15, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 294
    .local v16, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 296
    .local v17, "_arg4":Landroid/os/Bundle;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/app/PendingIntent;

    .line 297
    .local v18, "_arg5":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 298
    move-object/from16 v0, p0

    move v1, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->downloadSubscription(ILandroid/telephony/euicc/DownloadableSubscription;ZLjava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V

    .line 299
    goto/16 :goto_0

    .line 276
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v15    # "_arg2":Z
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/os/Bundle;
    .end local v18    # "_arg5":Landroid/app/PendingIntent;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 277
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getOtaStatus(I)I

    move-result v1

    .line 279
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    goto :goto_0

    .line 264
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 266
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 267
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getEid(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    goto :goto_0

    .line 252
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 254
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 256
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 257
    .local v2, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDefaultDownloadableSubscriptionList(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 259
    goto :goto_0

    .line 238
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 240
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/euicc/DownloadableSubscription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/euicc/DownloadableSubscription;

    .line 242
    .local v1, "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 244
    .local v2, "_arg2":Ljava/lang/String;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 245
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->getDownloadableSubscriptionMetadata(ILandroid/telephony/euicc/DownloadableSubscription;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 247
    goto :goto_0

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/euicc/DownloadableSubscription;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 230
    .local v1, "_arg1":Landroid/content/Intent;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 231
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {v7, v0, v1, v2}, Lcom/android/internal/telephony/euicc/IEuiccController$Stub;->continueOperation(ILandroid/content/Intent;Landroid/os/Bundle;)V

    .line 233
    nop

    .line 475
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
