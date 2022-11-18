.class public abstract Landroid/app/usage/IUsageStatsManager$Stub;
.super Landroid/os/Binder;
.source "IUsageStatsManager.java"

# interfaces
.implements Landroid/app/usage/IUsageStatsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/IUsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IUsageStatsManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.usage.IUsageStatsManager"

.field static final blacklist TRANSACTION_clearBroadcastEvents:I = 0x22

.field static final blacklist TRANSACTION_clearBroadcastResponseStats:I = 0x21

.field static final blacklist TRANSACTION_forceUsageSourceSettingRead:I = 0x1e

.field static final blacklist TRANSACTION_getAppMinStandbyBucket:I = 0x10

.field static final greylist-max-o TRANSACTION_getAppStandbyBucket:I = 0xc

.field static final greylist-max-o TRANSACTION_getAppStandbyBuckets:I = 0xe

.field static final blacklist TRANSACTION_getAppStandbyConstant:I = 0x23

.field static final blacklist TRANSACTION_getLastTimeAnyComponentUsed:I = 0x1f

.field static final blacklist TRANSACTION_getUsageSource:I = 0x1d

.field static final greylist-max-o TRANSACTION_isAppInactive:I = 0x9

.field static final greylist-max-o TRANSACTION_onCarrierPrivilegedAppsChanged:I = 0xa

.field static final blacklist TRANSACTION_queryBroadcastResponseStats:I = 0x20

.field static final greylist-max-o TRANSACTION_queryConfigurationStats:I = 0x2

.field static final greylist-max-o TRANSACTION_queryEventStats:I = 0x3

.field static final greylist-max-o TRANSACTION_queryEvents:I = 0x4

.field static final greylist-max-o TRANSACTION_queryEventsForPackage:I = 0x5

.field static final greylist-max-o TRANSACTION_queryEventsForPackageForUser:I = 0x7

.field static final greylist-max-o TRANSACTION_queryEventsForUser:I = 0x6

.field static final greylist-max-o TRANSACTION_queryUsageStats:I = 0x1

.field static final blacklist TRANSACTION_registerAppUsageLimitObserver:I = 0x17

.field static final greylist-max-o TRANSACTION_registerAppUsageObserver:I = 0x13

.field static final blacklist TRANSACTION_registerUsageSessionObserver:I = 0x15

.field static final greylist-max-o TRANSACTION_reportChooserSelection:I = 0xb

.field static final blacklist TRANSACTION_reportPastUsageStart:I = 0x1a

.field static final blacklist TRANSACTION_reportUsageStart:I = 0x19

.field static final blacklist TRANSACTION_reportUsageStop:I = 0x1b

.field static final blacklist TRANSACTION_reportUserInteraction:I = 0x1c

.field static final greylist-max-o TRANSACTION_setAppInactive:I = 0x8

.field static final greylist-max-o TRANSACTION_setAppStandbyBucket:I = 0xd

.field static final greylist-max-o TRANSACTION_setAppStandbyBuckets:I = 0xf

.field static final blacklist TRANSACTION_setEstimatedLaunchTime:I = 0x11

.field static final blacklist TRANSACTION_setEstimatedLaunchTimes:I = 0x12

.field static final blacklist TRANSACTION_unregisterAppUsageLimitObserver:I = 0x18

.field static final greylist-max-o TRANSACTION_unregisterAppUsageObserver:I = 0x14

.field static final blacklist TRANSACTION_unregisterUsageSessionObserver:I = 0x16


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 145
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 146
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 154
    if-nez p0, :cond_0

    .line 155
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    const-string v0, "android.app.usage.IUsageStatsManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 158
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/usage/IUsageStatsManager;

    if-eqz v1, :cond_1

    .line 159
    move-object v1, v0

    check-cast v1, Landroid/app/usage/IUsageStatsManager;

    return-object v1

    .line 161
    :cond_1
    new-instance v1, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/usage/IUsageStatsManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 170
    packed-switch p0, :pswitch_data_0

    .line 314
    const/4 v0, 0x0

    return-object v0

    .line 310
    :pswitch_0
    const-string v0, "getAppStandbyConstant"

    return-object v0

    .line 306
    :pswitch_1
    const-string v0, "clearBroadcastEvents"

    return-object v0

    .line 302
    :pswitch_2
    const-string v0, "clearBroadcastResponseStats"

    return-object v0

    .line 298
    :pswitch_3
    const-string/jumbo v0, "queryBroadcastResponseStats"

    return-object v0

    .line 294
    :pswitch_4
    const-string v0, "getLastTimeAnyComponentUsed"

    return-object v0

    .line 290
    :pswitch_5
    const-string v0, "forceUsageSourceSettingRead"

    return-object v0

    .line 286
    :pswitch_6
    const-string v0, "getUsageSource"

    return-object v0

    .line 282
    :pswitch_7
    const-string/jumbo v0, "reportUserInteraction"

    return-object v0

    .line 278
    :pswitch_8
    const-string/jumbo v0, "reportUsageStop"

    return-object v0

    .line 274
    :pswitch_9
    const-string/jumbo v0, "reportPastUsageStart"

    return-object v0

    .line 270
    :pswitch_a
    const-string/jumbo v0, "reportUsageStart"

    return-object v0

    .line 266
    :pswitch_b
    const-string/jumbo v0, "unregisterAppUsageLimitObserver"

    return-object v0

    .line 262
    :pswitch_c
    const-string/jumbo v0, "registerAppUsageLimitObserver"

    return-object v0

    .line 258
    :pswitch_d
    const-string/jumbo v0, "unregisterUsageSessionObserver"

    return-object v0

    .line 254
    :pswitch_e
    const-string/jumbo v0, "registerUsageSessionObserver"

    return-object v0

    .line 250
    :pswitch_f
    const-string/jumbo v0, "unregisterAppUsageObserver"

    return-object v0

    .line 246
    :pswitch_10
    const-string/jumbo v0, "registerAppUsageObserver"

    return-object v0

    .line 242
    :pswitch_11
    const-string/jumbo v0, "setEstimatedLaunchTimes"

    return-object v0

    .line 238
    :pswitch_12
    const-string/jumbo v0, "setEstimatedLaunchTime"

    return-object v0

    .line 234
    :pswitch_13
    const-string v0, "getAppMinStandbyBucket"

    return-object v0

    .line 230
    :pswitch_14
    const-string/jumbo v0, "setAppStandbyBuckets"

    return-object v0

    .line 226
    :pswitch_15
    const-string v0, "getAppStandbyBuckets"

    return-object v0

    .line 222
    :pswitch_16
    const-string/jumbo v0, "setAppStandbyBucket"

    return-object v0

    .line 218
    :pswitch_17
    const-string v0, "getAppStandbyBucket"

    return-object v0

    .line 214
    :pswitch_18
    const-string/jumbo v0, "reportChooserSelection"

    return-object v0

    .line 210
    :pswitch_19
    const-string/jumbo v0, "onCarrierPrivilegedAppsChanged"

    return-object v0

    .line 206
    :pswitch_1a
    const-string v0, "isAppInactive"

    return-object v0

    .line 202
    :pswitch_1b
    const-string/jumbo v0, "setAppInactive"

    return-object v0

    .line 198
    :pswitch_1c
    const-string/jumbo v0, "queryEventsForPackageForUser"

    return-object v0

    .line 194
    :pswitch_1d
    const-string/jumbo v0, "queryEventsForUser"

    return-object v0

    .line 190
    :pswitch_1e
    const-string/jumbo v0, "queryEventsForPackage"

    return-object v0

    .line 186
    :pswitch_1f
    const-string/jumbo v0, "queryEvents"

    return-object v0

    .line 182
    :pswitch_20
    const-string/jumbo v0, "queryEventStats"

    return-object v0

    .line 178
    :pswitch_21
    const-string/jumbo v0, "queryConfigurationStats"

    return-object v0

    .line 174
    :pswitch_22
    const-string/jumbo v0, "queryUsageStats"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 165
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1511
    const/16 v0, 0x22

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 321
    invoke-static {p1}, Landroid/app/usage/IUsageStatsManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 325
    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    const-string v14, "android.app.usage.IUsageStatsManager"

    .line 326
    .local v14, "descriptor":Ljava/lang/String;
    const/4 v15, 0x1

    if-lt v11, v15, :cond_0

    const v0, 0xffffff

    if-gt v11, v0, :cond_0

    .line 327
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    :cond_0
    packed-switch v11, :pswitch_data_0

    .line 337
    packed-switch v11, :pswitch_data_1

    .line 810
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 333
    :pswitch_0
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 334
    return v15

    .line 801
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 802
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 803
    invoke-virtual {v10, v0}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyConstant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 804
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 805
    invoke-virtual {v13, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 806
    goto/16 :goto_0

    .line 790
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 792
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 793
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 794
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->clearBroadcastEvents(Ljava/lang/String;I)V

    .line 795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 796
    goto/16 :goto_0

    .line 775
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 777
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 779
    .local v7, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 781
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 782
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 783
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->clearBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    goto/16 :goto_0

    .line 759
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 761
    .restart local v6    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 763
    .restart local v7    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 765
    .restart local v9    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 766
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide v2, v7

    move-object v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryBroadcastResponseStats(Ljava/lang/String;JLjava/lang/String;I)Landroid/app/usage/BroadcastResponseStatsList;

    move-result-object v0

    .line 768
    .local v0, "_result":Landroid/app/usage/BroadcastResponseStatsList;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 770
    goto/16 :goto_0

    .line 747
    .end local v0    # "_result":Landroid/app/usage/BroadcastResponseStatsList;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":J
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 749
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 750
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 751
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->getLastTimeAnyComponentUsed(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    .line 752
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    invoke-virtual {v13, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 754
    goto/16 :goto_0

    .line 740
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":J
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/IUsageStatsManager$Stub;->forceUsageSourceSettingRead()V

    .line 741
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    goto/16 :goto_0

    .line 733
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/IUsageStatsManager$Stub;->getUsageSource()I

    move-result v0

    .line 734
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 736
    goto/16 :goto_0

    .line 723
    .end local v0    # "_result":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 726
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 727
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUserInteraction(Ljava/lang/String;I)V

    .line 728
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 729
    goto/16 :goto_0

    .line 710
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 712
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 714
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 715
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 716
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUsageStop(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 718
    goto/16 :goto_0

    .line 695
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 697
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 699
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 701
    .local v8, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 702
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide v3, v8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportPastUsageStart(Landroid/os/IBinder;Ljava/lang/String;JLjava/lang/String;)V

    .line 704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    goto/16 :goto_0

    .line 682
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":J
    .end local v16    # "_arg3":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 684
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 686
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 687
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 688
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->reportUsageStart(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 690
    goto/16 :goto_0

    .line 671
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 673
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 674
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageLimitObserver(ILjava/lang/String;)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    goto/16 :goto_0

    .line 652
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 654
    .local v9, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v16

    .line 656
    .local v16, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v17

    .line 658
    .local v17, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 660
    .local v19, "_arg3":J
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/app/PendingIntent;

    .line 662
    .local v21, "_arg4":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 663
    .local v22, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 664
    move-object/from16 v0, p0

    move v1, v9

    move-object/from16 v2, v16

    move-wide/from16 v3, v17

    move-wide/from16 v5, v19

    move-object/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageLimitObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    goto/16 :goto_0

    .line 641
    .end local v9    # "_arg0":I
    .end local v16    # "_arg1":[Ljava/lang/String;
    .end local v17    # "_arg2":J
    .end local v19    # "_arg3":J
    .end local v21    # "_arg4":Landroid/app/PendingIntent;
    .end local v22    # "_arg5":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 643
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 645
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterUsageSessionObserver(ILjava/lang/String;)V

    .line 646
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    goto/16 :goto_0

    .line 620
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 622
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v17

    .line 624
    .local v17, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 626
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v20

    .line 628
    .local v20, "_arg3":J
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Landroid/app/PendingIntent;

    .line 630
    .local v22, "_arg4":Landroid/app/PendingIntent;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v23, v0

    check-cast v23, Landroid/app/PendingIntent;

    .line 632
    .local v23, "_arg5":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 633
    .local v24, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    move-wide/from16 v3, v18

    move-wide/from16 v5, v20

    move-object/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/app/usage/IUsageStatsManager$Stub;->registerUsageSessionObserver(I[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    goto/16 :goto_0

    .line 609
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":[Ljava/lang/String;
    .end local v18    # "_arg2":J
    .end local v20    # "_arg3":J
    .end local v22    # "_arg4":Landroid/app/PendingIntent;
    .end local v23    # "_arg5":Landroid/app/PendingIntent;
    .end local v24    # "_arg6":Ljava/lang/String;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 611
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->unregisterAppUsageObserver(ILjava/lang/String;)V

    .line 614
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    goto/16 :goto_0

    .line 592
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 594
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 596
    .local v8, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 598
    .local v16, "_arg2":J
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/PendingIntent;

    .line 600
    .local v9, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 601
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 602
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v8

    move-wide/from16 v3, v16

    move-object v5, v9

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->registerAppUsageObserver(I[Ljava/lang/String;JLandroid/app/PendingIntent;Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    goto/16 :goto_0

    .line 581
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[Ljava/lang/String;
    .end local v9    # "_arg3":Landroid/app/PendingIntent;
    .end local v16    # "_arg2":J
    .end local v18    # "_arg4":Ljava/lang/String;
    :pswitch_12
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 583
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTimes(Landroid/content/pm/ParceledListSlice;I)V

    .line 586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    goto/16 :goto_0

    .line 568
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    .end local v1    # "_arg1":I
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 572
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 573
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/app/usage/IUsageStatsManager$Stub;->setEstimatedLaunchTime(Ljava/lang/String;JI)V

    .line 575
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 576
    goto/16 :goto_0

    .line 554
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 559
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppMinStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 561
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    goto/16 :goto_0

    .line 543
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_15
    sget-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 545
    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 546
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 547
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBuckets(Landroid/content/pm/ParceledListSlice;I)V

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 549
    goto/16 :goto_0

    .line 531
    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    .end local v1    # "_arg1":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 534
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {v10, v0, v1}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBuckets(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    .line 536
    .local v2, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    invoke-virtual {v13, v2, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 538
    goto/16 :goto_0

    .line 518
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/content/pm/ParceledListSlice;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 520
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 522
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 523
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 524
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppStandbyBucket(Ljava/lang/String;II)V

    .line 525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    goto/16 :goto_0

    .line 504
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 509
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->getAppStandbyBucket(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 511
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    goto/16 :goto_0

    .line 487
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 489
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 491
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 493
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 495
    .local v9, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 496
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 497
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->reportChooserSelection(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 499
    goto/16 :goto_0

    .line 480
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":[Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/app/usage/IUsageStatsManager$Stub;->onCarrierPrivilegedAppsChanged()V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    goto/16 :goto_0

    .line 467
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 471
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 473
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->isAppInactive(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 474
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {v13, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 476
    goto/16 :goto_0

    .line 454
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 456
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 458
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 459
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v10, v0, v1, v2}, Landroid/app/usage/IUsageStatsManager$Stub;->setAppInactive(Ljava/lang/String;ZI)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_0

    .line 436
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 438
    .local v8, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 440
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 442
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 444
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 445
    .local v20, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide/from16 v3, v16

    move/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 447
    .local v0, "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 449
    goto/16 :goto_0

    .line 420
    .end local v0    # "_result":Landroid/app/usage/UsageEvents;
    .end local v8    # "_arg0":J
    .end local v16    # "_arg1":J
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Ljava/lang/String;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 422
    .local v7, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 424
    .restart local v16    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 426
    .local v9, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 427
    .local v18, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide/from16 v3, v16

    move v5, v9

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForUser(JJILjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 429
    .restart local v0    # "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 431
    goto/16 :goto_0

    .line 406
    .end local v0    # "_result":Landroid/app/usage/UsageEvents;
    .end local v7    # "_arg0":J
    .end local v9    # "_arg2":I
    .end local v16    # "_arg1":J
    .end local v18    # "_arg3":Ljava/lang/String;
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 408
    .local v6, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 410
    .local v8, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 411
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 412
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventsForPackage(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 413
    .restart local v0    # "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 415
    goto/16 :goto_0

    .line 392
    .end local v0    # "_result":Landroid/app/usage/UsageEvents;
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":Ljava/lang/String;
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 394
    .restart local v6    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 396
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 397
    .restart local v16    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v8

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEvents(JJLjava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object v0

    .line 399
    .restart local v0    # "_result":Landroid/app/usage/UsageEvents;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 400
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 401
    goto/16 :goto_0

    .line 376
    .end local v0    # "_result":Landroid/app/usage/UsageEvents;
    .end local v6    # "_arg0":J
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 378
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 380
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 382
    .local v16, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 383
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v8

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryEventStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 385
    .local v0, "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 387
    goto :goto_0

    .line 360
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":Ljava/lang/String;
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 362
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 364
    .restart local v8    # "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 366
    .restart local v16    # "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 367
    .restart local v18    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v8

    move-wide/from16 v4, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/usage/IUsageStatsManager$Stub;->queryConfigurationStats(IJJLjava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 369
    .restart local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 371
    goto :goto_0

    .line 342
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":J
    .end local v16    # "_arg2":J
    .end local v18    # "_arg3":Ljava/lang/String;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 344
    .local v8, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .line 346
    .local v16, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 348
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 350
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 351
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 352
    move-object/from16 v0, p0

    move v1, v8

    move-wide/from16 v2, v16

    move-wide/from16 v4, v18

    move-object v6, v9

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/usage/IUsageStatsManager$Stub;->queryUsageStats(IJJLjava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 353
    .restart local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {v13, v0, v15}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 355
    nop

    .line 813
    .end local v0    # "_result":Landroid/content/pm/ParceledListSlice;
    .end local v8    # "_arg0":I
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg1":J
    .end local v18    # "_arg2":J
    .end local v20    # "_arg4":I
    :goto_0
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
