.class public abstract Lcom/android/internal/telephony/ISub$Stub;
.super Landroid/os/Binder;
.source "ISub.java"

# interfaces
.implements Lcom/android/internal/telephony/ISub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISub$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ISub"

.field static final blacklist TRANSACTION_addSubInfo:I = 0xd

.field static final greylist-max-o TRANSACTION_addSubInfoRecord:I = 0xc

.field static final blacklist TRANSACTION_addSubscriptionsIntoGroup:I = 0x19

.field static final blacklist TRANSACTION_canDisablePhysicalSubscription:I = 0x2f

.field static final greylist-max-o TRANSACTION_clearSubInfo:I = 0x1e

.field static final blacklist TRANSACTION_createSubscriptionGroup:I = 0x14

.field static final greylist-max-o TRANSACTION_getAccessibleSubscriptionInfoList:I = 0xa

.field static final blacklist TRANSACTION_getActiveDataSubscriptionId:I = 0x2e

.field static final greylist-max-o TRANSACTION_getActiveSubIdList:I = 0x26

.field static final greylist-max-o TRANSACTION_getActiveSubInfoCount:I = 0x7

.field static final greylist-max-o TRANSACTION_getActiveSubInfoCountMax:I = 0x8

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfo:I = 0x3

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoForIccId:I = 0x4

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoForSimSlotIndex:I = 0x5

.field static final greylist-max-o TRANSACTION_getActiveSubscriptionInfoList:I = 0x6

.field static final greylist-max-o TRANSACTION_getAllSubInfoCount:I = 0x2

.field static final greylist-max-o TRANSACTION_getAllSubInfoList:I = 0x1

.field static final greylist-max-o TRANSACTION_getAvailableSubscriptionInfoList:I = 0x9

.field static final greylist-max-o TRANSACTION_getDefaultDataSubId:I = 0x20

.field static final greylist-max-o TRANSACTION_getDefaultSmsSubId:I = 0x24

.field static final greylist-max-o TRANSACTION_getDefaultSubId:I = 0x1d

.field static final greylist-max-o TRANSACTION_getDefaultVoiceSubId:I = 0x22

.field static final blacklist TRANSACTION_getEnabledSubscriptionId:I = 0x2b

.field static final blacklist TRANSACTION_getOpportunisticSubscriptions:I = 0x17

.field static final greylist-max-o TRANSACTION_getPhoneId:I = 0x1f

.field static final blacklist TRANSACTION_getPhoneNumber:I = 0x33

.field static final blacklist TRANSACTION_getPhoneNumberFromFirstAvailableSource:I = 0x34

.field static final blacklist TRANSACTION_getPreferredDataSubscriptionId:I = 0x16

.field static final greylist-max-o TRANSACTION_getSimStateForSlotIndex:I = 0x2c

.field static final greylist-max-o TRANSACTION_getSlotIndex:I = 0x1b

.field static final greylist-max-o TRANSACTION_getSubId:I = 0x1c

.field static final greylist-max-o TRANSACTION_getSubscriptionProperty:I = 0x28

.field static final blacklist TRANSACTION_getSubscriptionsInGroup:I = 0x1a

.field static final greylist-max-o TRANSACTION_isActiveSubId:I = 0x2d

.field static final blacklist TRANSACTION_isSubscriptionEnabled:I = 0x2a

.field static final blacklist TRANSACTION_removeSubInfo:I = 0xe

.field static final blacklist TRANSACTION_removeSubscriptionsFromGroup:I = 0x18

.field static final greylist-max-o TRANSACTION_requestEmbeddedSubscriptionInfoListRefresh:I = 0xb

.field static final greylist-max-o TRANSACTION_setDataRoaming:I = 0x12

.field static final greylist-max-o TRANSACTION_setDefaultDataSubId:I = 0x21

.field static final greylist-max-o TRANSACTION_setDefaultSmsSubId:I = 0x25

.field static final greylist-max-o TRANSACTION_setDefaultVoiceSubId:I = 0x23

.field static final blacklist TRANSACTION_setDeviceToDeviceStatusSharing:I = 0x31

.field static final blacklist TRANSACTION_setDeviceToDeviceStatusSharingContacts:I = 0x32

.field static final greylist-max-o TRANSACTION_setDisplayNameUsingSrc:I = 0x10

.field static final greylist-max-o TRANSACTION_setDisplayNumber:I = 0x11

.field static final greylist-max-o TRANSACTION_setIconTint:I = 0xf

.field static final blacklist TRANSACTION_setOpportunistic:I = 0x13

.field static final blacklist TRANSACTION_setPhoneNumber:I = 0x35

.field static final blacklist TRANSACTION_setPreferredDataSubscriptionId:I = 0x15

.field static final blacklist TRANSACTION_setSubscriptionEnabled:I = 0x29

.field static final greylist-max-o TRANSACTION_setSubscriptionProperty:I = 0x27

.field static final blacklist TRANSACTION_setUiccApplicationsEnabled:I = 0x30

.field static final blacklist TRANSACTION_setUsageSetting:I = 0x36


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 400
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 401
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISub$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISub;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 409
    if-nez p0, :cond_0

    .line 410
    const/4 v0, 0x0

    return-object v0

    .line 412
    :cond_0
    const-string v0, "com.android.internal.telephony.ISub"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 413
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ISub;

    if-eqz v1, :cond_1

    .line 414
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISub;

    return-object v1

    .line 416
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ISub$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISub$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 425
    packed-switch p0, :pswitch_data_0

    .line 645
    const/4 v0, 0x0

    return-object v0

    .line 641
    :pswitch_0
    const-string/jumbo v0, "setUsageSetting"

    return-object v0

    .line 637
    :pswitch_1
    const-string/jumbo v0, "setPhoneNumber"

    return-object v0

    .line 633
    :pswitch_2
    const-string v0, "getPhoneNumberFromFirstAvailableSource"

    return-object v0

    .line 629
    :pswitch_3
    const-string v0, "getPhoneNumber"

    return-object v0

    .line 625
    :pswitch_4
    const-string/jumbo v0, "setDeviceToDeviceStatusSharingContacts"

    return-object v0

    .line 621
    :pswitch_5
    const-string/jumbo v0, "setDeviceToDeviceStatusSharing"

    return-object v0

    .line 617
    :pswitch_6
    const-string/jumbo v0, "setUiccApplicationsEnabled"

    return-object v0

    .line 613
    :pswitch_7
    const-string v0, "canDisablePhysicalSubscription"

    return-object v0

    .line 609
    :pswitch_8
    const-string v0, "getActiveDataSubscriptionId"

    return-object v0

    .line 605
    :pswitch_9
    const-string v0, "isActiveSubId"

    return-object v0

    .line 601
    :pswitch_a
    const-string v0, "getSimStateForSlotIndex"

    return-object v0

    .line 597
    :pswitch_b
    const-string v0, "getEnabledSubscriptionId"

    return-object v0

    .line 593
    :pswitch_c
    const-string/jumbo v0, "isSubscriptionEnabled"

    return-object v0

    .line 589
    :pswitch_d
    const-string/jumbo v0, "setSubscriptionEnabled"

    return-object v0

    .line 585
    :pswitch_e
    const-string v0, "getSubscriptionProperty"

    return-object v0

    .line 581
    :pswitch_f
    const-string/jumbo v0, "setSubscriptionProperty"

    return-object v0

    .line 577
    :pswitch_10
    const-string v0, "getActiveSubIdList"

    return-object v0

    .line 573
    :pswitch_11
    const-string/jumbo v0, "setDefaultSmsSubId"

    return-object v0

    .line 569
    :pswitch_12
    const-string v0, "getDefaultSmsSubId"

    return-object v0

    .line 565
    :pswitch_13
    const-string/jumbo v0, "setDefaultVoiceSubId"

    return-object v0

    .line 561
    :pswitch_14
    const-string v0, "getDefaultVoiceSubId"

    return-object v0

    .line 557
    :pswitch_15
    const-string/jumbo v0, "setDefaultDataSubId"

    return-object v0

    .line 553
    :pswitch_16
    const-string v0, "getDefaultDataSubId"

    return-object v0

    .line 549
    :pswitch_17
    const-string v0, "getPhoneId"

    return-object v0

    .line 545
    :pswitch_18
    const-string v0, "clearSubInfo"

    return-object v0

    .line 541
    :pswitch_19
    const-string v0, "getDefaultSubId"

    return-object v0

    .line 537
    :pswitch_1a
    const-string v0, "getSubId"

    return-object v0

    .line 533
    :pswitch_1b
    const-string v0, "getSlotIndex"

    return-object v0

    .line 529
    :pswitch_1c
    const-string v0, "getSubscriptionsInGroup"

    return-object v0

    .line 525
    :pswitch_1d
    const-string v0, "addSubscriptionsIntoGroup"

    return-object v0

    .line 521
    :pswitch_1e
    const-string/jumbo v0, "removeSubscriptionsFromGroup"

    return-object v0

    .line 517
    :pswitch_1f
    const-string v0, "getOpportunisticSubscriptions"

    return-object v0

    .line 513
    :pswitch_20
    const-string v0, "getPreferredDataSubscriptionId"

    return-object v0

    .line 509
    :pswitch_21
    const-string/jumbo v0, "setPreferredDataSubscriptionId"

    return-object v0

    .line 505
    :pswitch_22
    const-string v0, "createSubscriptionGroup"

    return-object v0

    .line 501
    :pswitch_23
    const-string/jumbo v0, "setOpportunistic"

    return-object v0

    .line 497
    :pswitch_24
    const-string/jumbo v0, "setDataRoaming"

    return-object v0

    .line 493
    :pswitch_25
    const-string/jumbo v0, "setDisplayNumber"

    return-object v0

    .line 489
    :pswitch_26
    const-string/jumbo v0, "setDisplayNameUsingSrc"

    return-object v0

    .line 485
    :pswitch_27
    const-string/jumbo v0, "setIconTint"

    return-object v0

    .line 481
    :pswitch_28
    const-string/jumbo v0, "removeSubInfo"

    return-object v0

    .line 477
    :pswitch_29
    const-string v0, "addSubInfo"

    return-object v0

    .line 473
    :pswitch_2a
    const-string v0, "addSubInfoRecord"

    return-object v0

    .line 469
    :pswitch_2b
    const-string/jumbo v0, "requestEmbeddedSubscriptionInfoListRefresh"

    return-object v0

    .line 465
    :pswitch_2c
    const-string v0, "getAccessibleSubscriptionInfoList"

    return-object v0

    .line 461
    :pswitch_2d
    const-string v0, "getAvailableSubscriptionInfoList"

    return-object v0

    .line 457
    :pswitch_2e
    const-string v0, "getActiveSubInfoCountMax"

    return-object v0

    .line 453
    :pswitch_2f
    const-string v0, "getActiveSubInfoCount"

    return-object v0

    .line 449
    :pswitch_30
    const-string v0, "getActiveSubscriptionInfoList"

    return-object v0

    .line 445
    :pswitch_31
    const-string v0, "getActiveSubscriptionInfoForSimSlotIndex"

    return-object v0

    .line 441
    :pswitch_32
    const-string v0, "getActiveSubscriptionInfoForIccId"

    return-object v0

    .line 437
    :pswitch_33
    const-string v0, "getActiveSubscriptionInfo"

    return-object v0

    .line 433
    :pswitch_34
    const-string v0, "getAllSubInfoCount"

    return-object v0

    .line 429
    :pswitch_35
    const-string v0, "getAllSubInfoList"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 420
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2528
    const/16 v0, 0x35

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 652
    invoke-static {p1}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 656
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.android.internal.telephony.ISub"

    .line 657
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 658
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 660
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 668
    packed-switch v7, :pswitch_data_1

    .line 1286
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 664
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 665
    return v11

    .line 1273
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1275
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1277
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1278
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setUsageSetting(IILjava/lang/String;)I

    move-result v3

    .line 1280
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    goto/16 :goto_0

    .line 1256
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 1258
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1260
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 1262
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 1264
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1265
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1266
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/ISub$Stub;->setPhoneNumber(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    goto/16 :goto_0

    .line 1242
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":Ljava/lang/String;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1244
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1246
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1247
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1248
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumberFromFirstAvailableSource(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1249
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1250
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1251
    goto/16 :goto_0

    .line 1226
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1228
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1230
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1232
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1233
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1234
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneNumber(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1235
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1237
    goto/16 :goto_0

    .line 1214
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1217
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1218
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharingContacts(Ljava/lang/String;I)I

    move-result v2

    .line 1219
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    goto/16 :goto_0

    .line 1202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1204
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1205
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1206
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDeviceToDeviceStatusSharing(II)I

    move-result v2

    .line 1207
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1208
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    goto/16 :goto_0

    .line 1190
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1192
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1193
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1194
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setUiccApplicationsEnabled(ZI)I

    move-result v2

    .line 1195
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1196
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    goto/16 :goto_0

    .line 1182
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->canDisablePhysicalSubscription()Z

    move-result v0

    .line 1183
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1184
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1185
    goto/16 :goto_0

    .line 1175
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveDataSubscriptionId()I

    move-result v0

    .line 1176
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1177
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1178
    goto/16 :goto_0

    .line 1162
    .end local v0    # "_result":I
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1164
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1166
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1167
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->isActiveSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1169
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1171
    goto/16 :goto_0

    .line 1152
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1153
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSimStateForSlotIndex(I)I

    move-result v1

    .line 1155
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1156
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1157
    goto/16 :goto_0

    .line 1142
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1143
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1144
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getEnabledSubscriptionId(I)I

    move-result v1

    .line 1145
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1147
    goto/16 :goto_0

    .line 1132
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1133
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->isSubscriptionEnabled(I)Z

    move-result v1

    .line 1135
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1137
    goto/16 :goto_0

    .line 1120
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1122
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1123
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionEnabled(ZI)Z

    move-result v2

    .line 1125
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1127
    goto/16 :goto_0

    .line 1104
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1106
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1110
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1111
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1112
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1113
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1114
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1115
    goto/16 :goto_0

    .line 1090
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1092
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1094
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1095
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1096
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1097
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1098
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1099
    goto/16 :goto_0

    .line 1080
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1081
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubIdList(Z)[I

    move-result-object v1

    .line 1083
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1085
    goto/16 :goto_0

    .line 1071
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":[I
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1072
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1073
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultSmsSubId(I)V

    .line 1074
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    goto/16 :goto_0

    .line 1063
    .end local v0    # "_arg0":I
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSmsSubId()I

    move-result v0

    .line 1064
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1066
    goto/16 :goto_0

    .line 1055
    .end local v0    # "_result":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1056
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultVoiceSubId(I)V

    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_0

    .line 1047
    .end local v0    # "_arg0":I
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultVoiceSubId()I

    move-result v0

    .line 1048
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    goto/16 :goto_0

    .line 1039
    .end local v0    # "_result":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1040
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->setDefaultDataSubId(I)V

    .line 1042
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1043
    goto/16 :goto_0

    .line 1031
    .end local v0    # "_arg0":I
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultDataSubId()I

    move-result v0

    .line 1032
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1033
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1034
    goto/16 :goto_0

    .line 1022
    .end local v0    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1023
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1024
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getPhoneId(I)I

    move-result v1

    .line 1025
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1026
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    goto/16 :goto_0

    .line 1014
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->clearSubInfo()I

    move-result v0

    .line 1015
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1016
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1017
    goto/16 :goto_0

    .line 1007
    .end local v0    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getDefaultSubId()I

    move-result v0

    .line 1008
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1009
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    goto/16 :goto_0

    .line 998
    .end local v0    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 999
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1000
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSubId(I)[I

    move-result-object v1

    .line 1001
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1003
    goto/16 :goto_0

    .line 988
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 989
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 990
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getSlotIndex(I)I

    move-result v1

    .line 991
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    goto/16 :goto_0

    .line 974
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1d
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 976
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 978
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 979
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 980
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getSubscriptionsInGroup(Landroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 981
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 983
    goto/16 :goto_0

    .line 961
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 963
    .local v0, "_arg0":[I
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 965
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 966
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 967
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->addSubscriptionsIntoGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 968
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 969
    goto/16 :goto_0

    .line 948
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 950
    .restart local v0    # "_arg0":[I
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 952
    .restart local v1    # "_arg1":Landroid/os/ParcelUuid;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 953
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->removeSubscriptionsFromGroup([ILandroid/os/ParcelUuid;Ljava/lang/String;)V

    .line 955
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    goto/16 :goto_0

    .line 936
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 939
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 940
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getOpportunisticSubscriptions(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 941
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 943
    goto/16 :goto_0

    .line 928
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getPreferredDataSubscriptionId()I

    move-result v0

    .line 929
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 931
    goto/16 :goto_0

    .line 916
    .end local v0    # "_result":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 918
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 920
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISetOpportunisticDataCallback;

    move-result-object v2

    .line 921
    .local v2, "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 922
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setPreferredDataSubscriptionId(IZLcom/android/internal/telephony/ISetOpportunisticDataCallback;)V

    .line 923
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    goto/16 :goto_0

    .line 904
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Lcom/android/internal/telephony/ISetOpportunisticDataCallback;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 906
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 908
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->createSubscriptionGroup([ILjava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v2

    .line 909
    .local v2, "_result":Landroid/os/ParcelUuid;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    invoke-virtual {v9, v2, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 911
    goto/16 :goto_0

    .line 890
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Landroid/os/ParcelUuid;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 892
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 894
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 895
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setOpportunistic(ZILjava/lang/String;)I

    move-result v3

    .line 897
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    goto/16 :goto_0

    .line 878
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 880
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 881
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 882
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDataRoaming(II)I

    move-result v2

    .line 883
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 885
    goto/16 :goto_0

    .line 866
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 869
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 870
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNumber(Ljava/lang/String;I)I

    move-result v2

    .line 871
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 872
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 873
    goto/16 :goto_0

    .line 852
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 857
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 858
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->setDisplayNameUsingSrc(Ljava/lang/String;II)I

    move-result v3

    .line 859
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 860
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    goto/16 :goto_0

    .line 840
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 842
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 843
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 844
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->setIconTint(II)I

    move-result v2

    .line 845
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 846
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    goto/16 :goto_0

    .line 828
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 830
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 831
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 832
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->removeSubInfo(Ljava/lang/String;I)I

    move-result v2

    .line 833
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 834
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    goto/16 :goto_0

    .line 812
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 814
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 816
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 818
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 819
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfo(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v4

    .line 821
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    goto/16 :goto_0

    .line 800
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 803
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 804
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->addSubInfoRecord(Ljava/lang/String;I)I

    move-result v2

    .line 805
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    goto/16 :goto_0

    .line 792
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 793
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->requestEmbeddedSubscriptionInfoListRefresh(I)V

    .line 795
    goto/16 :goto_0

    .line 782
    .end local v0    # "_arg0":I
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 783
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 784
    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/ISub$Stub;->getAccessibleSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 785
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 786
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 787
    goto/16 :goto_0

    .line 770
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 774
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAvailableSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 775
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 776
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 777
    goto/16 :goto_0

    .line 762
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCountMax()I

    move-result v0

    .line 763
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 764
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    goto/16 :goto_0

    .line 751
    .end local v0    # "_result":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 754
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 755
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 756
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 757
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    goto/16 :goto_0

    .line 739
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 741
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 742
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 743
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 744
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 746
    goto/16 :goto_0

    .line 725
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 727
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 729
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 730
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForSimSlotIndex(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 732
    .local v3, "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 734
    goto :goto_0

    .line 711
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 716
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 717
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfoForIccId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 718
    .restart local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 719
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 720
    goto :goto_0

    .line 697
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 699
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 701
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 702
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {v6, v0, v1, v2}, Lcom/android/internal/telephony/ISub$Stub;->getActiveSubscriptionInfo(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 704
    .restart local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    invoke-virtual {v9, v3, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 706
    goto :goto_0

    .line 685
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Landroid/telephony/SubscriptionInfo;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 687
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 688
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 690
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    goto :goto_0

    .line 673
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 675
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 676
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 677
    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/ISub$Stub;->getAllSubInfoList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 678
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 680
    nop

    .line 1289
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
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
    .end packed-switch
.end method
