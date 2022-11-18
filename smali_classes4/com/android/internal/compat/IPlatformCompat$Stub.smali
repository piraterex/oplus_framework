.class public abstract Lcom/android/internal/compat/IPlatformCompat$Stub;
.super Landroid/os/Binder;
.source "IPlatformCompat.java"

# interfaces
.implements Lcom/android/internal/compat/IPlatformCompat;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/compat/IPlatformCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearOverride:I = 0xb

.field static final blacklist TRANSACTION_clearOverrideForTest:I = 0xc

.field static final blacklist TRANSACTION_clearOverrides:I = 0x11

.field static final blacklist TRANSACTION_clearOverridesForTest:I = 0x12

.field static final blacklist TRANSACTION_disableTargetSdkChanges:I = 0x10

.field static final blacklist TRANSACTION_enableTargetSdkChanges:I = 0xf

.field static final blacklist TRANSACTION_getAppConfig:I = 0x13

.field static final blacklist TRANSACTION_getOverrideValidator:I = 0x16

.field static final blacklist TRANSACTION_isChangeEnabled:I = 0x4

.field static final blacklist TRANSACTION_isChangeEnabledByPackageName:I = 0x5

.field static final blacklist TRANSACTION_isChangeEnabledByUid:I = 0x6

.field static final blacklist TRANSACTION_listAllChanges:I = 0x14

.field static final blacklist TRANSACTION_listUIChanges:I = 0x15

.field static final blacklist TRANSACTION_putAllOverridesOnReleaseBuilds:I = 0x8

.field static final blacklist TRANSACTION_putOverridesOnReleaseBuilds:I = 0x9

.field static final blacklist TRANSACTION_removeAllOverridesOnReleaseBuilds:I = 0xd

.field static final blacklist TRANSACTION_removeOverridesOnReleaseBuilds:I = 0xe

.field static final blacklist TRANSACTION_reportChange:I = 0x1

.field static final blacklist TRANSACTION_reportChangeByPackageName:I = 0x2

.field static final blacklist TRANSACTION_reportChangeByUid:I = 0x3

.field static final blacklist TRANSACTION_setOverrides:I = 0x7

.field static final blacklist TRANSACTION_setOverridesForTest:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 368
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 369
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 377
    if-nez p0, :cond_0

    .line 378
    const/4 v0, 0x0

    return-object v0

    .line 380
    :cond_0
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 381
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/compat/IPlatformCompat;

    if-eqz v1, :cond_1

    .line 382
    move-object v1, v0

    check-cast v1, Lcom/android/internal/compat/IPlatformCompat;

    return-object v1

    .line 384
    :cond_1
    new-instance v1, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/compat/IPlatformCompat$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 393
    packed-switch p0, :pswitch_data_0

    .line 485
    const/4 v0, 0x0

    return-object v0

    .line 481
    :pswitch_0
    const-string v0, "getOverrideValidator"

    return-object v0

    .line 477
    :pswitch_1
    const-string/jumbo v0, "listUIChanges"

    return-object v0

    .line 473
    :pswitch_2
    const-string/jumbo v0, "listAllChanges"

    return-object v0

    .line 469
    :pswitch_3
    const-string v0, "getAppConfig"

    return-object v0

    .line 465
    :pswitch_4
    const-string v0, "clearOverridesForTest"

    return-object v0

    .line 461
    :pswitch_5
    const-string v0, "clearOverrides"

    return-object v0

    .line 457
    :pswitch_6
    const-string v0, "disableTargetSdkChanges"

    return-object v0

    .line 453
    :pswitch_7
    const-string v0, "enableTargetSdkChanges"

    return-object v0

    .line 449
    :pswitch_8
    const-string/jumbo v0, "removeOverridesOnReleaseBuilds"

    return-object v0

    .line 445
    :pswitch_9
    const-string/jumbo v0, "removeAllOverridesOnReleaseBuilds"

    return-object v0

    .line 441
    :pswitch_a
    const-string v0, "clearOverrideForTest"

    return-object v0

    .line 437
    :pswitch_b
    const-string v0, "clearOverride"

    return-object v0

    .line 433
    :pswitch_c
    const-string/jumbo v0, "setOverridesForTest"

    return-object v0

    .line 429
    :pswitch_d
    const-string/jumbo v0, "putOverridesOnReleaseBuilds"

    return-object v0

    .line 425
    :pswitch_e
    const-string/jumbo v0, "putAllOverridesOnReleaseBuilds"

    return-object v0

    .line 421
    :pswitch_f
    const-string/jumbo v0, "setOverrides"

    return-object v0

    .line 417
    :pswitch_10
    const-string v0, "isChangeEnabledByUid"

    return-object v0

    .line 413
    :pswitch_11
    const-string v0, "isChangeEnabledByPackageName"

    return-object v0

    .line 409
    :pswitch_12
    const-string v0, "isChangeEnabled"

    return-object v0

    .line 405
    :pswitch_13
    const-string/jumbo v0, "reportChangeByUid"

    return-object v0

    .line 401
    :pswitch_14
    const-string/jumbo v0, "reportChangeByPackageName"

    return-object v0

    .line 397
    :pswitch_15
    const-string/jumbo v0, "reportChange"

    return-object v0

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


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 388
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1428
    const/16 v0, 0x15

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 492
    invoke-static {p1}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    const-string v0, "com.android.internal.compat.IPlatformCompat"

    .line 497
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 498
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 508
    packed-switch p1, :pswitch_data_1

    .line 744
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 504
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    return v1

    .line 737
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getOverrideValidator()Lcom/android/internal/compat/IOverrideValidator;

    move-result-object v2

    .line 738
    .local v2, "_result":Lcom/android/internal/compat/IOverrideValidator;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 740
    goto/16 :goto_0

    .line 730
    .end local v2    # "_result":Lcom/android/internal/compat/IOverrideValidator;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listUIChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v2

    .line 731
    .local v2, "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 732
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 733
    goto/16 :goto_0

    .line 723
    .end local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->listAllChanges()[Lcom/android/internal/compat/CompatibilityChangeInfo;

    move-result-object v2

    .line 724
    .restart local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 726
    goto/16 :goto_0

    .line 714
    .end local v2    # "_result":[Lcom/android/internal/compat/CompatibilityChangeInfo;
    :pswitch_4
    sget-object v2, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 715
    .local v2, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->getAppConfig(Landroid/content/pm/ApplicationInfo;)Lcom/android/internal/compat/CompatibilityChangeConfig;

    move-result-object v3

    .line 717
    .local v3, "_result":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 719
    goto/16 :goto_0

    .line 705
    .end local v2    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "_result":Lcom/android/internal/compat/CompatibilityChangeConfig;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 706
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 707
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverridesForTest(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    goto/16 :goto_0

    .line 696
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 697
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 698
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrides(Ljava/lang/String;)V

    .line 699
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 700
    goto/16 :goto_0

    .line 684
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 686
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 687
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->disableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    .line 689
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 691
    goto/16 :goto_0

    .line 672
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 674
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 675
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 676
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->enableTargetSdkChanges(Ljava/lang/String;I)I

    move-result v4

    .line 677
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 678
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 679
    goto/16 :goto_0

    .line 661
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_9
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 663
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 664
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    goto/16 :goto_0

    .line 652
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_a
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    .line 653
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 654
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V

    .line 655
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 656
    goto/16 :goto_0

    .line 640
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 642
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverrideForTest(JLjava/lang/String;)Z

    move-result v5

    .line 645
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 647
    goto/16 :goto_0

    .line 628
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 630
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 631
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 632
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->clearOverride(JLjava/lang/String;)Z

    move-result v5

    .line 633
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 635
    goto/16 :goto_0

    .line 617
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_d
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 619
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 620
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverridesForTest(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 623
    goto/16 :goto_0

    .line 606
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_e
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    .line 608
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 609
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 610
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V

    .line 611
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    goto/16 :goto_0

    .line 597
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverrideConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_f
    sget-object v2, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    .line 598
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 599
    invoke-virtual {p0, v2}, Lcom/android/internal/compat/IPlatformCompat$Stub;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V

    .line 600
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    goto/16 :goto_0

    .line 586
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;
    :pswitch_10
    sget-object v2, Lcom/android/internal/compat/CompatibilityChangeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/compat/CompatibilityChangeConfig;

    .line 588
    .local v2, "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 589
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 590
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/compat/IPlatformCompat$Stub;->setOverrides(Lcom/android/internal/compat/CompatibilityChangeConfig;Ljava/lang/String;)V

    .line 591
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    goto/16 :goto_0

    .line 574
    .end local v2    # "_arg0":Lcom/android/internal/compat/CompatibilityChangeConfig;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 576
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 577
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByUid(JI)Z

    move-result v5

    .line 579
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 580
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 581
    goto :goto_0

    .line 560
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_result":Z
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 562
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 564
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 565
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 566
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result v6

    .line 567
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 568
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 569
    goto :goto_0

    .line 548
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    .end local v6    # "_result":Z
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 550
    .restart local v2    # "_arg0":J
    sget-object v4, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 551
    .local v4, "_arg1":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    .line 553
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 555
    goto :goto_0

    .line 537
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "_result":Z
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 539
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 540
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 541
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByUid(JI)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    goto :goto_0

    .line 524
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 526
    .restart local v2    # "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 528
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 529
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChangeByPackageName(JLjava/lang/String;I)V

    .line 531
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto :goto_0

    .line 513
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":I
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 515
    .restart local v2    # "_arg0":J
    sget-object v4, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 516
    .local v4, "_arg1":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 517
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/compat/IPlatformCompat$Stub;->reportChange(JLandroid/content/pm/ApplicationInfo;)V

    .line 518
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 519
    nop

    .line 747
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
