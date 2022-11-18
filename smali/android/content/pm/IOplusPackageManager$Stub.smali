.class public abstract Landroid/content/pm/IOplusPackageManager$Stub;
.super Landroid/os/Binder;
.source "IOplusPackageManager.java"

# interfaces
.implements Landroid/content/pm/IOplusPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IOplusPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IOplusPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_appDetailsForwardToMarket:I = 0x42

.field static final blacklist TRANSACTION_deletePackageDelegated:I = 0x24

.field static final blacklist TRANSACTION_disableFeature:I = 0x37

.field static final blacklist TRANSACTION_disableFeatureMap:I = 0x39

.field static final blacklist TRANSACTION_dynamicDetectApp:I = 0x1d

.field static final blacklist TRANSACTION_enableFeature:I = 0x36

.field static final blacklist TRANSACTION_enableFeatureMap:I = 0x38

.field static final blacklist TRANSACTION_fixupAppData:I = 0x29

.field static final blacklist TRANSACTION_getAbiCheckResult:I = 0x44

.field static final blacklist TRANSACTION_getActivityIconsCache:I = 0x4

.field static final blacklist TRANSACTION_getAppIconBitmap:I = 0x2

.field static final blacklist TRANSACTION_getAppIconsCache:I = 0x3

.field static final blacklist TRANSACTION_getAppListFromPartition:I = 0x23

.field static final blacklist TRANSACTION_getCptListByType:I = 0x18

.field static final blacklist TRANSACTION_getCustomizeDefaultApp:I = 0x28

.field static final blacklist TRANSACTION_getDetectAppList:I = 0x1f

.field static final blacklist TRANSACTION_getFreezedApplicationList:I = 0x33

.field static final blacklist TRANSACTION_getIconPackList:I = 0x1c

.field static final blacklist TRANSACTION_getInterceptRuleInfos:I = 0x11

.field static final blacklist TRANSACTION_getMigMappingPkgName:I = 0x2a

.field static final blacklist TRANSACTION_getNotInstalledSystemApps:I = 0x21

.field static final blacklist TRANSACTION_getOplusFreezePackageState:I = 0x8

.field static final blacklist TRANSACTION_getOplusFreezedPackageList:I = 0xa

.field static final blacklist TRANSACTION_getOplusPackageFreezeFlag:I = 0xb

.field static final blacklist TRANSACTION_getOplusSystemAvailableFeatures:I = 0xc

.field static final blacklist TRANSACTION_getPackageFreezeState:I = 0x2f

.field static final blacklist TRANSACTION_getPackageFreezeUserSetting:I = 0x30

.field static final blacklist TRANSACTION_getRemovableAppInfo:I = 0x15

.field static final blacklist TRANSACTION_getRemovableAppInfos:I = 0x14

.field static final blacklist TRANSACTION_getRemovableAppList:I = 0x12

.field static final blacklist TRANSACTION_getRemovedAppInfos:I = 0x13

.field static final blacklist TRANSACTION_getSystemUpdateInfo:I = 0x25

.field static final blacklist TRANSACTION_getUninstallableAppConfig:I = 0x2b

.field static final blacklist TRANSACTION_getUserSettingFreezeableApplicationList:I = 0x34

.field static final blacklist TRANSACTION_getValidAppList:I = 0x22

.field static final blacklist TRANSACTION_hasFeatureIPC:I = 0x35

.field static final blacklist TRANSACTION_inCptWhiteList:I = 0x19

.field static final blacklist TRANSACTION_inOplusFreezePackageList:I = 0x9

.field static final blacklist TRANSACTION_inOplusStandardWhiteList:I = 0x1a

.field static final blacklist TRANSACTION_inPmsWhiteList:I = 0xf

.field static final blacklist TRANSACTION_inUninstallableAppConfig:I = 0x2c

.field static final blacklist TRANSACTION_isClosedSuperFirewall:I = 0x1

.field static final blacklist TRANSACTION_isCrossVersionUpdate:I = 0x20

.field static final blacklist TRANSACTION_isDetectApp:I = 0x1e

.field static final blacklist TRANSACTION_isFreezeEnabled:I = 0x2d

.field static final blacklist TRANSACTION_isSecurePayApp:I = 0xd

.field static final blacklist TRANSACTION_isSupportSessionWrite:I = 0x17

.field static final blacklist TRANSACTION_isSystemDataApp:I = 0xe

.field static final blacklist TRANSACTION_markResolveIntentForMarket:I = 0x43

.field static final blacklist TRANSACTION_notifyFeaturesMapUpdate:I = 0x3b

.field static final blacklist TRANSACTION_notifyFeaturesUpdate:I = 0x3a

.field static final blacklist TRANSACTION_oplusFreezePackage:I = 0x6

.field static final blacklist TRANSACTION_oplusUnFreezePackage:I = 0x7

.field static final blacklist TRANSACTION_prohibitChildInstallation:I = 0x5

.field static final blacklist TRANSACTION_queryIncompatibleApplist:I = 0x45

.field static final blacklist TRANSACTION_registerFeatureActionObserverInner:I = 0x40

.field static final blacklist TRANSACTION_registerFeatureMapObserverInner:I = 0x3e

.field static final blacklist TRANSACTION_registerFeatureObserverInner:I = 0x3c

.field static final blacklist TRANSACTION_removeCustomizeDefaultApp:I = 0x27

.field static final blacklist TRANSACTION_restoreRemovableApp:I = 0x16

.field static final blacklist TRANSACTION_sendMapCommonDcsUpload:I = 0x1b

.field static final blacklist TRANSACTION_setCustomizeDefaultApp:I = 0x26

.field static final blacklist TRANSACTION_setFreezeEnable:I = 0x2e

.field static final blacklist TRANSACTION_setInterceptRuleInfos:I = 0x10

.field static final blacklist TRANSACTION_setPackageFreezeState:I = 0x31

.field static final blacklist TRANSACTION_setPackageFreezeUserSetting:I = 0x32

.field static final blacklist TRANSACTION_unregisterFeatureActionObserverInner:I = 0x41

.field static final blacklist TRANSACTION_unregisterFeatureMapObserverInner:I = 0x3f

.field static final blacklist TRANSACTION_unregisterFeatureObserverInner:I = 0x3d


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    .line 416
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 417
    const-string v0, "android.content.pm.IOplusPackageManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public static whitelist asInterface(Landroid/os/IBinder;)Landroid/content/pm/IOplusPackageManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 425
    if-nez p0, :cond_0

    .line 426
    const/4 v0, 0x0

    return-object v0

    .line 428
    :cond_0
    const-string v0, "android.content.pm.IOplusPackageManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 429
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IOplusPackageManager;

    if-eqz v1, :cond_1

    .line 430
    move-object v1, v0

    check-cast v1, Landroid/content/pm/IOplusPackageManager;

    return-object v1

    .line 432
    :cond_1
    new-instance v1, Landroid/content/pm/IOplusPackageManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IOplusPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 441
    packed-switch p0, :pswitch_data_0

    .line 721
    const/4 v0, 0x0

    return-object v0

    .line 717
    :pswitch_0
    const-string/jumbo v0, "queryIncompatibleApplist"

    return-object v0

    .line 713
    :pswitch_1
    const-string v0, "getAbiCheckResult"

    return-object v0

    .line 709
    :pswitch_2
    const-string/jumbo v0, "markResolveIntentForMarket"

    return-object v0

    .line 705
    :pswitch_3
    const-string v0, "appDetailsForwardToMarket"

    return-object v0

    .line 701
    :pswitch_4
    const-string/jumbo v0, "unregisterFeatureActionObserverInner"

    return-object v0

    .line 697
    :pswitch_5
    const-string/jumbo v0, "registerFeatureActionObserverInner"

    return-object v0

    .line 693
    :pswitch_6
    const-string/jumbo v0, "unregisterFeatureMapObserverInner"

    return-object v0

    .line 689
    :pswitch_7
    const-string/jumbo v0, "registerFeatureMapObserverInner"

    return-object v0

    .line 685
    :pswitch_8
    const-string/jumbo v0, "unregisterFeatureObserverInner"

    return-object v0

    .line 681
    :pswitch_9
    const-string/jumbo v0, "registerFeatureObserverInner"

    return-object v0

    .line 677
    :pswitch_a
    const-string/jumbo v0, "notifyFeaturesMapUpdate"

    return-object v0

    .line 673
    :pswitch_b
    const-string/jumbo v0, "notifyFeaturesUpdate"

    return-object v0

    .line 669
    :pswitch_c
    const-string v0, "disableFeatureMap"

    return-object v0

    .line 665
    :pswitch_d
    const-string v0, "enableFeatureMap"

    return-object v0

    .line 661
    :pswitch_e
    const-string v0, "disableFeature"

    return-object v0

    .line 657
    :pswitch_f
    const-string v0, "enableFeature"

    return-object v0

    .line 653
    :pswitch_10
    const-string v0, "hasFeatureIPC"

    return-object v0

    .line 649
    :pswitch_11
    const-string v0, "getUserSettingFreezeableApplicationList"

    return-object v0

    .line 645
    :pswitch_12
    const-string v0, "getFreezedApplicationList"

    return-object v0

    .line 641
    :pswitch_13
    const-string/jumbo v0, "setPackageFreezeUserSetting"

    return-object v0

    .line 637
    :pswitch_14
    const-string/jumbo v0, "setPackageFreezeState"

    return-object v0

    .line 633
    :pswitch_15
    const-string v0, "getPackageFreezeUserSetting"

    return-object v0

    .line 629
    :pswitch_16
    const-string v0, "getPackageFreezeState"

    return-object v0

    .line 625
    :pswitch_17
    const-string/jumbo v0, "setFreezeEnable"

    return-object v0

    .line 621
    :pswitch_18
    const-string v0, "isFreezeEnabled"

    return-object v0

    .line 617
    :pswitch_19
    const-string v0, "inUninstallableAppConfig"

    return-object v0

    .line 613
    :pswitch_1a
    const-string v0, "getUninstallableAppConfig"

    return-object v0

    .line 609
    :pswitch_1b
    const-string v0, "getMigMappingPkgName"

    return-object v0

    .line 605
    :pswitch_1c
    const-string v0, "fixupAppData"

    return-object v0

    .line 601
    :pswitch_1d
    const-string v0, "getCustomizeDefaultApp"

    return-object v0

    .line 597
    :pswitch_1e
    const-string/jumbo v0, "removeCustomizeDefaultApp"

    return-object v0

    .line 593
    :pswitch_1f
    const-string/jumbo v0, "setCustomizeDefaultApp"

    return-object v0

    .line 589
    :pswitch_20
    const-string v0, "getSystemUpdateInfo"

    return-object v0

    .line 585
    :pswitch_21
    const-string v0, "deletePackageDelegated"

    return-object v0

    .line 581
    :pswitch_22
    const-string v0, "getAppListFromPartition"

    return-object v0

    .line 577
    :pswitch_23
    const-string v0, "getValidAppList"

    return-object v0

    .line 573
    :pswitch_24
    const-string v0, "getNotInstalledSystemApps"

    return-object v0

    .line 569
    :pswitch_25
    const-string v0, "isCrossVersionUpdate"

    return-object v0

    .line 565
    :pswitch_26
    const-string v0, "getDetectAppList"

    return-object v0

    .line 561
    :pswitch_27
    const-string v0, "isDetectApp"

    return-object v0

    .line 557
    :pswitch_28
    const-string v0, "dynamicDetectApp"

    return-object v0

    .line 553
    :pswitch_29
    const-string v0, "getIconPackList"

    return-object v0

    .line 549
    :pswitch_2a
    const-string/jumbo v0, "sendMapCommonDcsUpload"

    return-object v0

    .line 545
    :pswitch_2b
    const-string v0, "inOplusStandardWhiteList"

    return-object v0

    .line 541
    :pswitch_2c
    const-string v0, "inCptWhiteList"

    return-object v0

    .line 537
    :pswitch_2d
    const-string v0, "getCptListByType"

    return-object v0

    .line 533
    :pswitch_2e
    const-string v0, "isSupportSessionWrite"

    return-object v0

    .line 529
    :pswitch_2f
    const-string/jumbo v0, "restoreRemovableApp"

    return-object v0

    .line 525
    :pswitch_30
    const-string v0, "getRemovableAppInfo"

    return-object v0

    .line 521
    :pswitch_31
    const-string v0, "getRemovableAppInfos"

    return-object v0

    .line 517
    :pswitch_32
    const-string v0, "getRemovedAppInfos"

    return-object v0

    .line 513
    :pswitch_33
    const-string v0, "getRemovableAppList"

    return-object v0

    .line 509
    :pswitch_34
    const-string v0, "getInterceptRuleInfos"

    return-object v0

    .line 505
    :pswitch_35
    const-string/jumbo v0, "setInterceptRuleInfos"

    return-object v0

    .line 501
    :pswitch_36
    const-string v0, "inPmsWhiteList"

    return-object v0

    .line 497
    :pswitch_37
    const-string v0, "isSystemDataApp"

    return-object v0

    .line 493
    :pswitch_38
    const-string v0, "isSecurePayApp"

    return-object v0

    .line 489
    :pswitch_39
    const-string v0, "getOplusSystemAvailableFeatures"

    return-object v0

    .line 485
    :pswitch_3a
    const-string v0, "getOplusPackageFreezeFlag"

    return-object v0

    .line 481
    :pswitch_3b
    const-string v0, "getOplusFreezedPackageList"

    return-object v0

    .line 477
    :pswitch_3c
    const-string v0, "inOplusFreezePackageList"

    return-object v0

    .line 473
    :pswitch_3d
    const-string v0, "getOplusFreezePackageState"

    return-object v0

    .line 469
    :pswitch_3e
    const-string/jumbo v0, "oplusUnFreezePackage"

    return-object v0

    .line 465
    :pswitch_3f
    const-string/jumbo v0, "oplusFreezePackage"

    return-object v0

    .line 461
    :pswitch_40
    const-string/jumbo v0, "prohibitChildInstallation"

    return-object v0

    .line 457
    :pswitch_41
    const-string v0, "getActivityIconsCache"

    return-object v0

    .line 453
    :pswitch_42
    const-string v0, "getAppIconsCache"

    return-object v0

    .line 449
    :pswitch_43
    const-string v0, "getAppIconBitmap"

    return-object v0

    .line 445
    :pswitch_44
    const-string v0, "isClosedSuperFirewall"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 436
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2945
    const/16 v0, 0x44

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 728
    invoke-static {p1}, Landroid/content/pm/IOplusPackageManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 732
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.content.pm.IOplusPackageManager"

    .line 733
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 734
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 744
    packed-switch v8, :pswitch_data_1

    .line 1480
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 740
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 741
    return v12

    .line 1473
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->queryIncompatibleApplist()Ljava/util/List;

    move-result-object v0

    .line 1474
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1476
    goto/16 :goto_0

    .line 1464
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1465
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1466
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getAbiCheckResult(Ljava/lang/String;)I

    move-result v1

    .line 1467
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1468
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1469
    goto/16 :goto_0

    .line 1454
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1455
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1456
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->markResolveIntentForMarket(Ljava/lang/String;)Z

    move-result v1

    .line 1457
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1458
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1459
    goto/16 :goto_0

    .line 1442
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1444
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1445
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1446
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->appDetailsForwardToMarket(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    .line 1447
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1448
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1449
    goto/16 :goto_0

    .line 1432
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/content/IOplusFeatureActionObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/content/IOplusFeatureActionObserver;

    move-result-object v0

    .line 1433
    .local v0, "_arg0":Lcom/oplus/content/IOplusFeatureActionObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1434
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->unregisterFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z

    move-result v1

    .line 1435
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1436
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1437
    goto/16 :goto_0

    .line 1422
    .end local v0    # "_arg0":Lcom/oplus/content/IOplusFeatureActionObserver;
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/content/IOplusFeatureActionObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/content/IOplusFeatureActionObserver;

    move-result-object v0

    .line 1423
    .restart local v0    # "_arg0":Lcom/oplus/content/IOplusFeatureActionObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->registerFeatureActionObserverInner(Lcom/oplus/content/IOplusFeatureActionObserver;)Z

    move-result v1

    .line 1425
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1427
    goto/16 :goto_0

    .line 1410
    .end local v0    # "_arg0":Lcom/oplus/content/IOplusFeatureActionObserver;
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1412
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/content/IOplusFeatureMapObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/content/IOplusFeatureMapObserver;

    move-result-object v1

    .line 1413
    .local v1, "_arg1":Lcom/oplus/content/IOplusFeatureMapObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1414
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->unregisterFeatureMapObserverInner(ILcom/oplus/content/IOplusFeatureMapObserver;)Z

    move-result v2

    .line 1415
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1416
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1417
    goto/16 :goto_0

    .line 1396
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/oplus/content/IOplusFeatureMapObserver;
    .end local v2    # "_result":Z
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1398
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1400
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/oplus/content/IOplusFeatureMapObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/content/IOplusFeatureMapObserver;

    move-result-object v2

    .line 1401
    .local v2, "_arg2":Lcom/oplus/content/IOplusFeatureMapObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1402
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IOplusPackageManager$Stub;->registerFeatureMapObserverInner(Ljava/util/List;ILcom/oplus/content/IOplusFeatureMapObserver;)Z

    move-result v3

    .line 1403
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1405
    goto/16 :goto_0

    .line 1386
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Lcom/oplus/content/IOplusFeatureMapObserver;
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/content/IOplusFeatureObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/content/IOplusFeatureObserver;

    move-result-object v0

    .line 1387
    .local v0, "_arg0":Lcom/oplus/content/IOplusFeatureObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1388
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->unregisterFeatureObserverInner(Lcom/oplus/content/IOplusFeatureObserver;)Z

    move-result v1

    .line 1389
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1391
    goto/16 :goto_0

    .line 1374
    .end local v0    # "_arg0":Lcom/oplus/content/IOplusFeatureObserver;
    .end local v1    # "_result":Z
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1376
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/oplus/content/IOplusFeatureObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/content/IOplusFeatureObserver;

    move-result-object v1

    .line 1377
    .local v1, "_arg1":Lcom/oplus/content/IOplusFeatureObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1378
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->registerFeatureObserverInner(Ljava/util/List;Lcom/oplus/content/IOplusFeatureObserver;)Z

    move-result v2

    .line 1379
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1380
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1381
    goto/16 :goto_0

    .line 1361
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_arg1":Lcom/oplus/content/IOplusFeatureObserver;
    .end local v2    # "_result":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1365
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1366
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1367
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IOplusPackageManager$Stub;->notifyFeaturesMapUpdate(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    goto/16 :goto_0

    .line 1350
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1352
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1353
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1354
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->notifyFeaturesUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    goto/16 :goto_0

    .line 1338
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1340
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1341
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1342
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->disableFeatureMap(Ljava/lang/String;I)Z

    move-result v2

    .line 1343
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1345
    goto/16 :goto_0

    .line 1326
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1328
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1329
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1330
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->enableFeatureMap(Ljava/lang/String;I)Z

    move-result v2

    .line 1331
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1332
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1333
    goto/16 :goto_0

    .line 1316
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1317
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1318
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->disableFeature(Ljava/lang/String;)Z

    move-result v1

    .line 1319
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1321
    goto/16 :goto_0

    .line 1306
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1307
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1308
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->enableFeature(Ljava/lang/String;)Z

    move-result v1

    .line 1309
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1310
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1311
    goto/16 :goto_0

    .line 1294
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1296
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1297
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1298
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->hasFeatureIPC(Ljava/lang/String;I)Z

    move-result v2

    .line 1299
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1301
    goto/16 :goto_0

    .line 1284
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_12
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 1285
    .local v0, "_arg0":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1286
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getUserSettingFreezeableApplicationList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 1287
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1288
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1289
    goto/16 :goto_0

    .line 1274
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_13
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 1275
    .restart local v0    # "_arg0":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getFreezedApplicationList(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 1277
    .restart local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1279
    goto/16 :goto_0

    .line 1261
    .end local v0    # "_arg0":Landroid/os/UserHandle;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1263
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1265
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1266
    .local v2, "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IOplusPackageManager$Stub;->setPackageFreezeUserSetting(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    goto/16 :goto_0

    .line 1248
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1250
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1252
    .restart local v1    # "_arg1":I
    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 1253
    .restart local v2    # "_arg2":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1254
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IOplusPackageManager$Stub;->setPackageFreezeState(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1255
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1256
    goto/16 :goto_0

    .line 1236
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/UserHandle;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1238
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1239
    .local v1, "_arg1":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1240
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->getPackageFreezeUserSetting(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    .line 1241
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    goto/16 :goto_0

    .line 1224
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/UserHandle;
    .end local v2    # "_result":I
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1226
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1227
    .restart local v1    # "_arg1":Landroid/os/UserHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1228
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->getPackageFreezeState(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v2

    .line 1229
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1230
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    goto/16 :goto_0

    .line 1215
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/UserHandle;
    .end local v2    # "_result":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1216
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1217
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->setFreezeEnable(Z)V

    .line 1218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1219
    goto/16 :goto_0

    .line 1207
    .end local v0    # "_arg0":Z
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->isFreezeEnabled()Z

    move-result v0

    .line 1208
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1210
    goto/16 :goto_0

    .line 1196
    .end local v0    # "_result":Z
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1198
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->inUninstallableAppConfig(ILjava/lang/String;)Z

    move-result v2

    .line 1201
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1203
    goto/16 :goto_0

    .line 1186
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1187
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1188
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getUninstallableAppConfig(I)Ljava/util/List;

    move-result-object v1

    .line 1189
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1191
    goto/16 :goto_0

    .line 1174
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1176
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1177
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->getMigMappingPkgName(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1181
    goto/16 :goto_0

    .line 1160
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1165
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IOplusPackageManager$Stub;->fixupAppData(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 1167
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1169
    goto/16 :goto_0

    .line 1150
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1151
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1152
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getCustomizeDefaultApp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1154
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1155
    goto/16 :goto_0

    .line 1141
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->removeCustomizeDefaultApp(Ljava/lang/String;)V

    .line 1144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_0

    .line 1129
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->setCustomizeDefaultApp(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 1134
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1136
    goto/16 :goto_0

    .line 1121
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getSystemUpdateInfo()Lcom/oplus/ota/OplusSystemUpdateInfo;

    move-result-object v0

    .line 1122
    .local v0, "_result":Lcom/oplus/ota/OplusSystemUpdateInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1123
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1124
    goto/16 :goto_0

    .line 1103
    .end local v0    # "_result":Lcom/oplus/ota/OplusSystemUpdateInfo;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1105
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1107
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1109
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1111
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1113
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v18

    .line 1114
    .local v18, "_arg5":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1115
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/IOplusPackageManager$Stub;->deletePackageDelegated(Ljava/lang/String;IIIILandroid/content/pm/IPackageDeleteObserver;)V

    .line 1116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1117
    goto/16 :goto_0

    .line 1093
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Landroid/content/pm/IPackageDeleteObserver;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1095
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getAppListFromPartition(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1096
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1098
    goto/16 :goto_0

    .line 1085
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getValidAppList()Ljava/util/List;

    move-result-object v0

    .line 1086
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1088
    goto/16 :goto_0

    .line 1078
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getNotInstalledSystemApps()Ljava/util/List;

    move-result-object v0

    .line 1079
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1081
    goto/16 :goto_0

    .line 1071
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->isCrossVersionUpdate()Z

    move-result v0

    .line 1072
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1073
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1074
    goto/16 :goto_0

    .line 1064
    .end local v0    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getDetectAppList()Ljava/util/List;

    move-result-object v0

    .line 1065
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1067
    goto/16 :goto_0

    .line 1055
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->isDetectApp(Ljava/lang/String;)Z

    move-result v1

    .line 1058
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1060
    goto/16 :goto_0

    .line 1047
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_29
    sget-object v0, Lcom/oplus/app/OplusAppDynamicFeatureData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/app/OplusAppDynamicFeatureData;

    .line 1048
    .local v0, "_arg0":Lcom/oplus/app/OplusAppDynamicFeatureData;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1049
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->dynamicDetectApp(Lcom/oplus/app/OplusAppDynamicFeatureData;)V

    .line 1050
    goto/16 :goto_0

    .line 1039
    .end local v0    # "_arg0":Lcom/oplus/app/OplusAppDynamicFeatureData;
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getIconPackList()Ljava/util/List;

    move-result-object v0

    .line 1040
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1042
    goto/16 :goto_0

    .line 1026
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1030
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1031
    .local v2, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v3

    .line 1032
    .local v3, "_arg2":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {v7, v0, v1, v3}, Landroid/content/pm/IOplusPackageManager$Stub;->sendMapCommonDcsUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1034
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    goto/16 :goto_0

    .line 1012
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "_arg2":Ljava/util/Map;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1016
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1017
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IOplusPackageManager$Stub;->inOplusStandardWhiteList(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 1019
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1021
    goto/16 :goto_0

    .line 1000
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1002
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1004
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->inCptWhiteList(ILjava/lang/String;)Z

    move-result v2

    .line 1005
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1007
    goto/16 :goto_0

    .line 990
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 991
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 992
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getCptListByType(I)Ljava/util/List;

    move-result-object v1

    .line 993
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 994
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 995
    goto/16 :goto_0

    .line 982
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->isSupportSessionWrite()Z

    move-result v0

    .line 983
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 985
    goto/16 :goto_0

    .line 969
    .end local v0    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 971
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentSender;

    .line 973
    .local v1, "_arg1":Landroid/content/IntentSender;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 974
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IOplusPackageManager$Stub;->restoreRemovableApp(Ljava/lang/String;Landroid/content/IntentSender;Landroid/os/Bundle;)Z

    move-result v3

    .line 976
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 978
    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/IntentSender;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 960
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 961
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getRemovableAppInfo(Ljava/lang/String;)Lcom/oplus/content/OplusRemovableAppInfo;

    move-result-object v1

    .line 962
    .local v1, "_result":Lcom/oplus/content/OplusRemovableAppInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 963
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 964
    goto/16 :goto_0

    .line 951
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Lcom/oplus/content/OplusRemovableAppInfo;
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getRemovableAppInfos()Ljava/util/List;

    move-result-object v0

    .line 952
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRemovableAppInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 953
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 954
    goto/16 :goto_0

    .line 944
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRemovableAppInfo;>;"
    :pswitch_33
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getRemovedAppInfos()Ljava/util/List;

    move-result-object v0

    .line 945
    .restart local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRemovableAppInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 946
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 947
    goto/16 :goto_0

    .line 937
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRemovableAppInfo;>;"
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getRemovableAppList()Ljava/util/List;

    move-result-object v0

    .line 938
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 939
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 940
    goto/16 :goto_0

    .line 930
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_35
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getInterceptRuleInfos()Ljava/util/List;

    move-result-object v0

    .line 931
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRuleInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 933
    goto/16 :goto_0

    .line 921
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRuleInfo;>;"
    :pswitch_36
    sget-object v0, Lcom/oplus/content/OplusRuleInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 922
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRuleInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->setInterceptRuleInfos(Ljava/util/List;)Z

    move-result v1

    .line 924
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 926
    goto/16 :goto_0

    .line 907
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/oplus/content/OplusRuleInfo;>;"
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 909
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 912
    .local v2, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 913
    invoke-virtual {v7, v0, v1, v2}, Landroid/content/pm/IOplusPackageManager$Stub;->inPmsWhiteList(ILjava/lang/String;Ljava/util/List;)Z

    move-result v3

    .line 914
    .restart local v3    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 915
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 916
    goto/16 :goto_0

    .line 897
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "_result":Z
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 899
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->isSystemDataApp(Ljava/lang/String;)Z

    move-result v1

    .line 900
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 902
    goto/16 :goto_0

    .line 887
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 888
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->isSecurePayApp(Ljava/lang/String;)Z

    move-result v1

    .line 890
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 892
    goto/16 :goto_0

    .line 879
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->getOplusSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object v0

    .line 880
    .local v0, "_result":[Landroid/content/pm/FeatureInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    invoke-virtual {v10, v0, v12}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 882
    goto/16 :goto_0

    .line 868
    .end local v0    # "_result":[Landroid/content/pm/FeatureInfo;
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 870
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 871
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->getOplusPackageFreezeFlag(Ljava/lang/String;I)I

    move-result v2

    .line 873
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    goto/16 :goto_0

    .line 858
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 859
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getOplusFreezedPackageList(I)Ljava/util/List;

    move-result-object v1

    .line 861
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 863
    goto/16 :goto_0

    .line 846
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 849
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->inOplusFreezePackageList(Ljava/lang/String;I)Z

    move-result v2

    .line 851
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 853
    goto/16 :goto_0

    .line 834
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 836
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 837
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->getOplusFreezePackageState(Ljava/lang/String;I)I

    move-result v2

    .line 839
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    goto/16 :goto_0

    .line 816
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 818
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 820
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 822
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 824
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 825
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IOplusPackageManager$Stub;->oplusUnFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0

    .line 827
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    goto/16 :goto_0

    .line 798
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 800
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 802
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 804
    .restart local v14    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 806
    .restart local v15    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 807
    .restart local v16    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 808
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/IOplusPackageManager$Stub;->oplusFreezePackage(Ljava/lang/String;IIILjava/lang/String;)I

    move-result v0

    .line 809
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    goto :goto_0

    .line 786
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 788
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 789
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 790
    invoke-virtual {v7, v0, v1}, Landroid/content/pm/IOplusPackageManager$Stub;->prohibitChildInstallation(IZ)Z

    move-result v2

    .line 791
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 793
    goto :goto_0

    .line 776
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver;

    move-result-object v0

    .line 777
    .local v0, "_arg0":Landroid/content/pm/IPackageDeleteObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 778
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getActivityIconsCache(Landroid/content/pm/IPackageDeleteObserver;)Ljava/util/Map;

    move-result-object v1

    .line 779
    .local v1, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 780
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 781
    goto :goto_0

    .line 766
    .end local v0    # "_arg0":Landroid/content/pm/IPackageDeleteObserver;
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 767
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getAppIconsCache(Z)Ljava/util/Map;

    move-result-object v1

    .line 769
    .restart local v1    # "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 771
    goto :goto_0

    .line 756
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Ljava/util/Map;
    :pswitch_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 757
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {v7, v0}, Landroid/content/pm/IOplusPackageManager$Stub;->getAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 759
    .local v1, "_result":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    invoke-virtual {v10, v1, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 761
    goto :goto_0

    .line 748
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/graphics/Bitmap;
    :pswitch_45
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/IOplusPackageManager$Stub;->isClosedSuperFirewall()Z

    move-result v0

    .line 749
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 751
    nop

    .line 1483
    .end local v0    # "_result":Z
    :goto_0
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
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
