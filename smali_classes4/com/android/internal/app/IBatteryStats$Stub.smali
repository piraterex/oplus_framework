.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final greylist-max-o TRANSACTION_computeBatteryTimeRemaining:I = 0x13

.field static final greylist-max-o TRANSACTION_computeChargeTimeRemaining:I = 0x14

.field static final greylist-max-o TRANSACTION_getAwakeTimeBattery:I = 0x4c

.field static final greylist-max-o TRANSACTION_getAwakeTimePlugged:I = 0x4d

.field static final blacklist TRANSACTION_getBatteryUsageStats:I = 0xf

.field static final blacklist TRANSACTION_getBluetoothBatteryStats:I = 0x58

.field static final greylist-max-o TRANSACTION_getCellularBatteryStats:I = 0x54

.field static final greylist-max-o TRANSACTION_getGpsBatteryStats:I = 0x56

.field static final greylist-max-o TRANSACTION_getStatistics:I = 0x10

.field static final greylist-max-o TRANSACTION_getStatisticsStream:I = 0x11

.field static final blacklist TRANSACTION_getWakeLockStats:I = 0x57

.field static final greylist-max-o TRANSACTION_getWifiBatteryStats:I = 0x55

.field static final greylist-max-o TRANSACTION_isCharging:I = 0x12

.field static final blacklist TRANSACTION_noteBleScanReset:I = 0x52

.field static final greylist-max-o TRANSACTION_noteBleScanResults:I = 0x53

.field static final greylist-max-o TRANSACTION_noteBleScanStarted:I = 0x50

.field static final greylist-max-o TRANSACTION_noteBleScanStopped:I = 0x51

.field static final greylist-max-o TRANSACTION_noteBluetoothControllerActivity:I = 0x5b

.field static final blacklist TRANSACTION_noteBluetoothOff:I = 0x4f

.field static final blacklist TRANSACTION_noteBluetoothOn:I = 0x4e

.field static final greylist-max-o TRANSACTION_noteChangeWakelockFromSource:I = 0x1d

.field static final greylist-max-o TRANSACTION_noteConnectivityChanged:I = 0x2c

.field static final greylist-max-o TRANSACTION_noteDeviceIdleMode:I = 0x4a

.field static final greylist-max-o TRANSACTION_noteEvent:I = 0x15

.field static final greylist-max-o TRANSACTION_noteFlashlightOff:I = 0xa

.field static final greylist-max-o TRANSACTION_noteFlashlightOn:I = 0x9

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquired:I = 0x3b

.field static final greylist-max-o TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x41

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleased:I = 0x3c

.field static final greylist-max-o TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x42

.field static final greylist-max-o TRANSACTION_noteGpsChanged:I = 0x25

.field static final greylist-max-o TRANSACTION_noteGpsSignalQuality:I = 0x26

.field static final greylist-max-o TRANSACTION_noteInteractive:I = 0x2b

.field static final greylist-max-o TRANSACTION_noteJobFinish:I = 0x19

.field static final greylist-max-o TRANSACTION_noteJobStart:I = 0x18

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinish:I = 0x21

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockFinishFromSource:I = 0x22

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStart:I = 0x1f

.field static final greylist-max-o TRANSACTION_noteLongPartialWakelockStartFromSource:I = 0x20

.field static final greylist-max-o TRANSACTION_noteMobileRadioPowerState:I = 0x2d

.field static final greylist-max-o TRANSACTION_noteModemControllerActivity:I = 0x5c

.field static final blacklist TRANSACTION_noteNetworkInterfaceForTransports:I = 0x48

.field static final greylist-max-o TRANSACTION_noteNetworkStatsEnabled:I = 0x49

.field static final greylist-max-o TRANSACTION_notePhoneDataConnectionState:I = 0x31

.field static final greylist-max-o TRANSACTION_notePhoneOff:I = 0x2f

.field static final greylist-max-o TRANSACTION_notePhoneOn:I = 0x2e

.field static final greylist-max-o TRANSACTION_notePhoneSignalStrength:I = 0x30

.field static final greylist-max-o TRANSACTION_notePhoneState:I = 0x32

.field static final greylist-max-o TRANSACTION_noteResetAudio:I = 0x8

.field static final greylist-max-o TRANSACTION_noteResetCamera:I = 0xd

.field static final greylist-max-o TRANSACTION_noteResetFlashlight:I = 0xe

.field static final greylist-max-o TRANSACTION_noteResetVideo:I = 0x7

.field static final greylist-max-o TRANSACTION_noteScreenBrightness:I = 0x28

.field static final greylist-max-o TRANSACTION_noteScreenState:I = 0x27

.field static final greylist-max-o TRANSACTION_noteStartAudio:I = 0x5

.field static final greylist-max-o TRANSACTION_noteStartCamera:I = 0xb

.field static final greylist-max-o TRANSACTION_noteStartSensor:I = 0x1

.field static final greylist-max-o TRANSACTION_noteStartVideo:I = 0x3

.field static final greylist-max-o TRANSACTION_noteStartWakelock:I = 0x1a

.field static final greylist-max-o TRANSACTION_noteStartWakelockFromSource:I = 0x1c

.field static final greylist-max-o TRANSACTION_noteStopAudio:I = 0x6

.field static final greylist-max-o TRANSACTION_noteStopCamera:I = 0xc

.field static final greylist-max-o TRANSACTION_noteStopSensor:I = 0x2

.field static final greylist-max-o TRANSACTION_noteStopVideo:I = 0x4

.field static final greylist-max-o TRANSACTION_noteStopWakelock:I = 0x1b

.field static final greylist-max-o TRANSACTION_noteStopWakelockFromSource:I = 0x1e

.field static final greylist-max-o TRANSACTION_noteSyncFinish:I = 0x17

.field static final greylist-max-o TRANSACTION_noteSyncStart:I = 0x16

.field static final greylist-max-o TRANSACTION_noteUserActivity:I = 0x29

.field static final greylist-max-o TRANSACTION_noteVibratorOff:I = 0x24

.field static final greylist-max-o TRANSACTION_noteVibratorOn:I = 0x23

.field static final greylist-max-o TRANSACTION_noteWakeUp:I = 0x2a

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x45

.field static final greylist-max-o TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x46

.field static final greylist-max-o TRANSACTION_noteWifiControllerActivity:I = 0x5d

.field static final greylist-max-o TRANSACTION_noteWifiMulticastDisabled:I = 0x40

.field static final greylist-max-o TRANSACTION_noteWifiMulticastEnabled:I = 0x3f

.field static final greylist-max-o TRANSACTION_noteWifiOff:I = 0x34

.field static final greylist-max-o TRANSACTION_noteWifiOn:I = 0x33

.field static final greylist-max-o TRANSACTION_noteWifiRadioPowerState:I = 0x47

.field static final greylist-max-o TRANSACTION_noteWifiRssiChanged:I = 0x3a

.field static final greylist-max-o TRANSACTION_noteWifiRunning:I = 0x35

.field static final greylist-max-o TRANSACTION_noteWifiRunningChanged:I = 0x36

.field static final greylist-max-o TRANSACTION_noteWifiScanStarted:I = 0x3d

.field static final greylist-max-o TRANSACTION_noteWifiScanStartedFromSource:I = 0x43

.field static final greylist-max-o TRANSACTION_noteWifiScanStopped:I = 0x3e

.field static final greylist-max-o TRANSACTION_noteWifiScanStoppedFromSource:I = 0x44

.field static final greylist-max-o TRANSACTION_noteWifiState:I = 0x38

.field static final greylist-max-o TRANSACTION_noteWifiStopped:I = 0x37

.field static final greylist-max-o TRANSACTION_noteWifiSupplicantStateChanged:I = 0x39

.field static final blacklist TRANSACTION_resetBattery:I = 0x62

.field static final blacklist TRANSACTION_setBatteryLevel:I = 0x60

.field static final greylist-max-o TRANSACTION_setBatteryState:I = 0x4b

.field static final blacklist TRANSACTION_setChargerAcOnline:I = 0x5f

.field static final blacklist TRANSACTION_setChargingStateUpdateDelayMillis:I = 0x5e

.field static final blacklist TRANSACTION_suspendBatteryInput:I = 0x63

.field static final greylist-max-o TRANSACTION_takeUidSnapshot:I = 0x59

.field static final greylist-max-o TRANSACTION_takeUidSnapshots:I = 0x5a

.field static final blacklist TRANSACTION_unplugBattery:I = 0x61


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 352
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 353
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 361
    if-nez p0, :cond_0

    .line 362
    const/4 v0, 0x0

    return-object v0

    .line 364
    :cond_0
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 365
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    .line 366
    move-object v1, v0

    check-cast v1, Lcom/android/internal/app/IBatteryStats;

    return-object v1

    .line 368
    :cond_1
    new-instance v1, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 377
    packed-switch p0, :pswitch_data_0

    .line 777
    const/4 v0, 0x0

    return-object v0

    .line 773
    :pswitch_0
    const-string/jumbo v0, "suspendBatteryInput"

    return-object v0

    .line 769
    :pswitch_1
    const-string/jumbo v0, "resetBattery"

    return-object v0

    .line 765
    :pswitch_2
    const-string/jumbo v0, "unplugBattery"

    return-object v0

    .line 761
    :pswitch_3
    const-string/jumbo v0, "setBatteryLevel"

    return-object v0

    .line 757
    :pswitch_4
    const-string/jumbo v0, "setChargerAcOnline"

    return-object v0

    .line 753
    :pswitch_5
    const-string/jumbo v0, "setChargingStateUpdateDelayMillis"

    return-object v0

    .line 749
    :pswitch_6
    const-string/jumbo v0, "noteWifiControllerActivity"

    return-object v0

    .line 745
    :pswitch_7
    const-string/jumbo v0, "noteModemControllerActivity"

    return-object v0

    .line 741
    :pswitch_8
    const-string/jumbo v0, "noteBluetoothControllerActivity"

    return-object v0

    .line 737
    :pswitch_9
    const-string/jumbo v0, "takeUidSnapshots"

    return-object v0

    .line 733
    :pswitch_a
    const-string/jumbo v0, "takeUidSnapshot"

    return-object v0

    .line 729
    :pswitch_b
    const-string v0, "getBluetoothBatteryStats"

    return-object v0

    .line 725
    :pswitch_c
    const-string v0, "getWakeLockStats"

    return-object v0

    .line 721
    :pswitch_d
    const-string v0, "getGpsBatteryStats"

    return-object v0

    .line 717
    :pswitch_e
    const-string v0, "getWifiBatteryStats"

    return-object v0

    .line 713
    :pswitch_f
    const-string v0, "getCellularBatteryStats"

    return-object v0

    .line 709
    :pswitch_10
    const-string/jumbo v0, "noteBleScanResults"

    return-object v0

    .line 705
    :pswitch_11
    const-string/jumbo v0, "noteBleScanReset"

    return-object v0

    .line 701
    :pswitch_12
    const-string/jumbo v0, "noteBleScanStopped"

    return-object v0

    .line 697
    :pswitch_13
    const-string/jumbo v0, "noteBleScanStarted"

    return-object v0

    .line 693
    :pswitch_14
    const-string/jumbo v0, "noteBluetoothOff"

    return-object v0

    .line 689
    :pswitch_15
    const-string/jumbo v0, "noteBluetoothOn"

    return-object v0

    .line 685
    :pswitch_16
    const-string v0, "getAwakeTimePlugged"

    return-object v0

    .line 681
    :pswitch_17
    const-string v0, "getAwakeTimeBattery"

    return-object v0

    .line 677
    :pswitch_18
    const-string/jumbo v0, "setBatteryState"

    return-object v0

    .line 673
    :pswitch_19
    const-string/jumbo v0, "noteDeviceIdleMode"

    return-object v0

    .line 669
    :pswitch_1a
    const-string/jumbo v0, "noteNetworkStatsEnabled"

    return-object v0

    .line 665
    :pswitch_1b
    const-string/jumbo v0, "noteNetworkInterfaceForTransports"

    return-object v0

    .line 661
    :pswitch_1c
    const-string/jumbo v0, "noteWifiRadioPowerState"

    return-object v0

    .line 657
    :pswitch_1d
    const-string/jumbo v0, "noteWifiBatchedScanStoppedFromSource"

    return-object v0

    .line 653
    :pswitch_1e
    const-string/jumbo v0, "noteWifiBatchedScanStartedFromSource"

    return-object v0

    .line 649
    :pswitch_1f
    const-string/jumbo v0, "noteWifiScanStoppedFromSource"

    return-object v0

    .line 645
    :pswitch_20
    const-string/jumbo v0, "noteWifiScanStartedFromSource"

    return-object v0

    .line 641
    :pswitch_21
    const-string/jumbo v0, "noteFullWifiLockReleasedFromSource"

    return-object v0

    .line 637
    :pswitch_22
    const-string/jumbo v0, "noteFullWifiLockAcquiredFromSource"

    return-object v0

    .line 633
    :pswitch_23
    const-string/jumbo v0, "noteWifiMulticastDisabled"

    return-object v0

    .line 629
    :pswitch_24
    const-string/jumbo v0, "noteWifiMulticastEnabled"

    return-object v0

    .line 625
    :pswitch_25
    const-string/jumbo v0, "noteWifiScanStopped"

    return-object v0

    .line 621
    :pswitch_26
    const-string/jumbo v0, "noteWifiScanStarted"

    return-object v0

    .line 617
    :pswitch_27
    const-string/jumbo v0, "noteFullWifiLockReleased"

    return-object v0

    .line 613
    :pswitch_28
    const-string/jumbo v0, "noteFullWifiLockAcquired"

    return-object v0

    .line 609
    :pswitch_29
    const-string/jumbo v0, "noteWifiRssiChanged"

    return-object v0

    .line 605
    :pswitch_2a
    const-string/jumbo v0, "noteWifiSupplicantStateChanged"

    return-object v0

    .line 601
    :pswitch_2b
    const-string/jumbo v0, "noteWifiState"

    return-object v0

    .line 597
    :pswitch_2c
    const-string/jumbo v0, "noteWifiStopped"

    return-object v0

    .line 593
    :pswitch_2d
    const-string/jumbo v0, "noteWifiRunningChanged"

    return-object v0

    .line 589
    :pswitch_2e
    const-string/jumbo v0, "noteWifiRunning"

    return-object v0

    .line 585
    :pswitch_2f
    const-string/jumbo v0, "noteWifiOff"

    return-object v0

    .line 581
    :pswitch_30
    const-string/jumbo v0, "noteWifiOn"

    return-object v0

    .line 577
    :pswitch_31
    const-string/jumbo v0, "notePhoneState"

    return-object v0

    .line 573
    :pswitch_32
    const-string/jumbo v0, "notePhoneDataConnectionState"

    return-object v0

    .line 569
    :pswitch_33
    const-string/jumbo v0, "notePhoneSignalStrength"

    return-object v0

    .line 565
    :pswitch_34
    const-string/jumbo v0, "notePhoneOff"

    return-object v0

    .line 561
    :pswitch_35
    const-string/jumbo v0, "notePhoneOn"

    return-object v0

    .line 557
    :pswitch_36
    const-string/jumbo v0, "noteMobileRadioPowerState"

    return-object v0

    .line 553
    :pswitch_37
    const-string/jumbo v0, "noteConnectivityChanged"

    return-object v0

    .line 549
    :pswitch_38
    const-string/jumbo v0, "noteInteractive"

    return-object v0

    .line 545
    :pswitch_39
    const-string/jumbo v0, "noteWakeUp"

    return-object v0

    .line 541
    :pswitch_3a
    const-string/jumbo v0, "noteUserActivity"

    return-object v0

    .line 537
    :pswitch_3b
    const-string/jumbo v0, "noteScreenBrightness"

    return-object v0

    .line 533
    :pswitch_3c
    const-string/jumbo v0, "noteScreenState"

    return-object v0

    .line 529
    :pswitch_3d
    const-string/jumbo v0, "noteGpsSignalQuality"

    return-object v0

    .line 525
    :pswitch_3e
    const-string/jumbo v0, "noteGpsChanged"

    return-object v0

    .line 521
    :pswitch_3f
    const-string/jumbo v0, "noteVibratorOff"

    return-object v0

    .line 517
    :pswitch_40
    const-string/jumbo v0, "noteVibratorOn"

    return-object v0

    .line 513
    :pswitch_41
    const-string/jumbo v0, "noteLongPartialWakelockFinishFromSource"

    return-object v0

    .line 509
    :pswitch_42
    const-string/jumbo v0, "noteLongPartialWakelockFinish"

    return-object v0

    .line 505
    :pswitch_43
    const-string/jumbo v0, "noteLongPartialWakelockStartFromSource"

    return-object v0

    .line 501
    :pswitch_44
    const-string/jumbo v0, "noteLongPartialWakelockStart"

    return-object v0

    .line 497
    :pswitch_45
    const-string/jumbo v0, "noteStopWakelockFromSource"

    return-object v0

    .line 493
    :pswitch_46
    const-string/jumbo v0, "noteChangeWakelockFromSource"

    return-object v0

    .line 489
    :pswitch_47
    const-string/jumbo v0, "noteStartWakelockFromSource"

    return-object v0

    .line 485
    :pswitch_48
    const-string/jumbo v0, "noteStopWakelock"

    return-object v0

    .line 481
    :pswitch_49
    const-string/jumbo v0, "noteStartWakelock"

    return-object v0

    .line 477
    :pswitch_4a
    const-string/jumbo v0, "noteJobFinish"

    return-object v0

    .line 473
    :pswitch_4b
    const-string/jumbo v0, "noteJobStart"

    return-object v0

    .line 469
    :pswitch_4c
    const-string/jumbo v0, "noteSyncFinish"

    return-object v0

    .line 465
    :pswitch_4d
    const-string/jumbo v0, "noteSyncStart"

    return-object v0

    .line 461
    :pswitch_4e
    const-string/jumbo v0, "noteEvent"

    return-object v0

    .line 457
    :pswitch_4f
    const-string v0, "computeChargeTimeRemaining"

    return-object v0

    .line 453
    :pswitch_50
    const-string v0, "computeBatteryTimeRemaining"

    return-object v0

    .line 449
    :pswitch_51
    const-string v0, "isCharging"

    return-object v0

    .line 445
    :pswitch_52
    const-string v0, "getStatisticsStream"

    return-object v0

    .line 441
    :pswitch_53
    const-string v0, "getStatistics"

    return-object v0

    .line 437
    :pswitch_54
    const-string v0, "getBatteryUsageStats"

    return-object v0

    .line 433
    :pswitch_55
    const-string/jumbo v0, "noteResetFlashlight"

    return-object v0

    .line 429
    :pswitch_56
    const-string/jumbo v0, "noteResetCamera"

    return-object v0

    .line 425
    :pswitch_57
    const-string/jumbo v0, "noteStopCamera"

    return-object v0

    .line 421
    :pswitch_58
    const-string/jumbo v0, "noteStartCamera"

    return-object v0

    .line 417
    :pswitch_59
    const-string/jumbo v0, "noteFlashlightOff"

    return-object v0

    .line 413
    :pswitch_5a
    const-string/jumbo v0, "noteFlashlightOn"

    return-object v0

    .line 409
    :pswitch_5b
    const-string/jumbo v0, "noteResetAudio"

    return-object v0

    .line 405
    :pswitch_5c
    const-string/jumbo v0, "noteResetVideo"

    return-object v0

    .line 401
    :pswitch_5d
    const-string/jumbo v0, "noteStopAudio"

    return-object v0

    .line 397
    :pswitch_5e
    const-string/jumbo v0, "noteStartAudio"

    return-object v0

    .line 393
    :pswitch_5f
    const-string/jumbo v0, "noteStopVideo"

    return-object v0

    .line 389
    :pswitch_60
    const-string/jumbo v0, "noteStartVideo"

    return-object v0

    .line 385
    :pswitch_61
    const-string/jumbo v0, "noteStopSensor"

    return-object v0

    .line 381
    :pswitch_62
    const-string/jumbo v0, "noteStartSensor"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 372
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3530
    const/16 v0, 0x62

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 784
    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 28
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 788
    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    const-string v11, "com.android.internal.app.IBatteryStats"

    .line 789
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v9, 0x1

    if-lt v13, v9, :cond_0

    const v0, 0xffffff

    if-gt v13, v0, :cond_0

    .line 790
    invoke-virtual {v14, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    :cond_0
    packed-switch v13, :pswitch_data_0

    .line 800
    packed-switch v13, :pswitch_data_1

    .line 1804
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 796
    :pswitch_0
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 797
    return v9

    .line 1798
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->suspendBatteryInput()V

    .line 1799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1800
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1790
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1791
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1792
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->resetBattery(Z)V

    .line 1793
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1781
    .end local v0    # "_arg0":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1782
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1783
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->unplugBattery(Z)V

    .line 1784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1785
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1770
    .end local v0    # "_arg0":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1772
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1773
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1774
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryLevel(IZ)V

    .line 1775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1759
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1761
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1762
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1763
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargerAcOnline(ZZ)V

    .line 1764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1765
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1749
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1750
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1751
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->setChargingStateUpdateDelayMillis(I)Z

    move-result v1

    .line 1752
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1753
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1754
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1741
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_7
    sget-object v0, Landroid/os/connectivity/WifiActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 1742
    .local v0, "_arg0":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1743
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    .line 1744
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1733
    .end local v0    # "_arg0":Landroid/os/connectivity/WifiActivityEnergyInfo;
    :pswitch_8
    sget-object v0, Landroid/telephony/ModemActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    .line 1734
    .local v0, "_arg0":Landroid/telephony/ModemActivityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1735
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V

    .line 1736
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1725
    .end local v0    # "_arg0":Landroid/telephony/ModemActivityInfo;
    :pswitch_9
    sget-object v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1726
    .local v0, "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1727
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1728
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1715
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 1716
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1717
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    .line 1718
    .local v1, "_result":[Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1719
    invoke-virtual {v15, v1, v9}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1720
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1705
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":[Landroid/os/health/HealthStatsParceler;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1706
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1707
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v1

    .line 1708
    .local v1, "_result":Landroid/os/health/HealthStatsParceler;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1709
    invoke-virtual {v15, v1, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1710
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1697
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Landroid/os/health/HealthStatsParceler;
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBluetoothBatteryStats()Landroid/os/BluetoothBatteryStats;

    move-result-object v0

    .line 1698
    .local v0, "_result":Landroid/os/BluetoothBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1699
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1700
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1690
    .end local v0    # "_result":Landroid/os/BluetoothBatteryStats;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWakeLockStats()Landroid/os/WakeLockStats;

    move-result-object v0

    .line 1691
    .local v0, "_result":Landroid/os/WakeLockStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1693
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1683
    .end local v0    # "_result":Landroid/os/WakeLockStats;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v0

    .line 1684
    .local v0, "_result":Landroid/os/connectivity/GpsBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1686
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1676
    .end local v0    # "_result":Landroid/os/connectivity/GpsBatteryStats;
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v0

    .line 1677
    .local v0, "_result":Landroid/os/connectivity/WifiBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1678
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1679
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1669
    .end local v0    # "_result":Landroid/os/connectivity/WifiBatteryStats;
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v0

    .line 1670
    .local v0, "_result":Landroid/os/connectivity/CellularBatteryStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1671
    invoke-virtual {v15, v0, v9}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1672
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1659
    .end local v0    # "_result":Landroid/os/connectivity/CellularBatteryStats;
    :pswitch_11
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1661
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1662
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1663
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanResults(Landroid/os/WorkSource;I)V

    .line 1664
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1652
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":I
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanReset()V

    .line 1653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1654
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1642
    :pswitch_13
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1644
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1645
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1646
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStopped(Landroid/os/WorkSource;Z)V

    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1631
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Z
    :pswitch_14
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1633
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1634
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1635
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBleScanStarted(Landroid/os/WorkSource;Z)V

    .line 1636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1637
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1618
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1620
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1622
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1623
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1624
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff(IILjava/lang/String;)V

    .line 1625
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1626
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1605
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1607
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1609
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1610
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1611
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn(IILjava/lang/String;)V

    .line 1612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1613
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1597
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v0

    .line 1598
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1599
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1600
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1590
    .end local v0    # "_result":J
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v0

    .line 1591
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1592
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1593
    move v13, v9

    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1566
    .end local v0    # "_result":J
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1568
    .local v16, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1570
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 1572
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 1574
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1576
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1578
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1580
    .local v22, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 1582
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v24

    .line 1583
    .local v24, "_arg8":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1584
    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move v13, v9

    move-wide/from16 v9, v24

    invoke-virtual/range {v0 .. v10}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIIIIIJ)V

    .line 1585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1586
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1553
    .end local v16    # "_arg0":I
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":J
    :pswitch_1a
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1555
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1557
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1558
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1559
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteDeviceIdleMode(ILjava/lang/String;I)V

    .line 1560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1546
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_1b
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    .line 1547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1548
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1536
    :pswitch_1c
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 1539
    .local v1, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1540
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceForTransports(Ljava/lang/String;[I)V

    .line 1541
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1542
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1523
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[I
    :pswitch_1d
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1525
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1527
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1528
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1529
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRadioPowerState(IJI)V

    .line 1530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1531
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1514
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_1e
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1515
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1516
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 1517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1518
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1503
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_1f
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1505
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1506
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1507
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 1508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1509
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1494
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":I
    :pswitch_20
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1495
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1496
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 1497
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1498
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1485
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_21
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1486
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1487
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    .line 1488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1476
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_22
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1477
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1478
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 1479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1480
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1467
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_23
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1468
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1469
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 1470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1458
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_24
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1459
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1460
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 1461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1462
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1449
    .end local v0    # "_arg0":I
    :pswitch_25
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1450
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1451
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 1452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1440
    .end local v0    # "_arg0":I
    :pswitch_26
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1441
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1442
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    .line 1443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1431
    .end local v0    # "_arg0":I
    :pswitch_27
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1432
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1433
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    .line 1434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1422
    .end local v0    # "_arg0":I
    :pswitch_28
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1423
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1424
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 1425
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1426
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1413
    .end local v0    # "_arg0":I
    :pswitch_29
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1414
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1415
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 1416
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1404
    .end local v0    # "_arg0":I
    :pswitch_2a
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1405
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1406
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRssiChanged(I)V

    .line 1407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1408
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1393
    .end local v0    # "_arg0":I
    :pswitch_2b
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1395
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1396
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1397
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiSupplicantStateChanged(IZ)V

    .line 1398
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1399
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1382
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_2c
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1384
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1385
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1386
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiState(ILjava/lang/String;)V

    .line 1387
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1388
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1373
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_2d
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1374
    .local v0, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1375
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 1376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1377
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1362
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_2e
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1364
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1365
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1366
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1367
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1368
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1353
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :pswitch_2f
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1354
    .restart local v0    # "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1355
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 1356
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1346
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    :pswitch_30
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1340
    :pswitch_31
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    .line 1341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1342
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1332
    :pswitch_32
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1333
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1334
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 1335
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1336
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1317
    .end local v0    # "_arg0":I
    :pswitch_33
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1319
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1321
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1323
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1324
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1325
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZII)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1308
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_34
    move v13, v9

    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalStrength;

    .line 1309
    .local v0, "_arg0":Landroid/telephony/SignalStrength;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1310
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 1311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1312
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1301
    .end local v0    # "_arg0":Landroid/telephony/SignalStrength;
    :pswitch_35
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 1302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1303
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1295
    :pswitch_36
    move v13, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 1296
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1297
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1283
    :pswitch_37
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1285
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1287
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1288
    .local v3, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1289
    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/internal/app/IBatteryStats$Stub;->noteMobileRadioPowerState(IJI)V

    .line 1290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1291
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1272
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    .end local v3    # "_arg2":I
    :pswitch_38
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1274
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1276
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteConnectivityChanged(ILjava/lang/String;)V

    .line 1277
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1278
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1263
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_39
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1264
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1265
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInteractive(Z)V

    .line 1266
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1267
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1252
    .end local v0    # "_arg0":Z
    :pswitch_3a
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1254
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1255
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1256
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWakeUp(Ljava/lang/String;I)V

    .line 1257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1258
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1241
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_3b
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1243
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1244
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1245
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 1246
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1247
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1232
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_3c
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1233
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1234
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 1235
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1236
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1223
    .end local v0    # "_arg0":I
    :pswitch_3d
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1224
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1225
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenState(I)V

    .line 1226
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1227
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1214
    .end local v0    # "_arg0":I
    :pswitch_3e
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1215
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsSignalQuality(I)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1203
    .end local v0    # "_arg0":I
    :pswitch_3f
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/WorkSource;

    .line 1205
    .local v0, "_arg0":Landroid/os/WorkSource;
    sget-object v1, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 1206
    .local v1, "_arg1":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1207
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1208
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1209
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1194
    .end local v0    # "_arg0":Landroid/os/WorkSource;
    .end local v1    # "_arg1":Landroid/os/WorkSource;
    :pswitch_40
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1195
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1183
    .end local v0    # "_arg0":I
    :pswitch_41
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1185
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 1186
    .local v1, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1187
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1170
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_42
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1174
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 1175
    .local v2, "_arg2":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 1177
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1178
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1157
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    :pswitch_43
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1161
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1162
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1164
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1144
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_44
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1146
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    .restart local v1    # "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 1149
    .local v2, "_arg2":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1150
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 1151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1152
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/WorkSource;
    :pswitch_45
    move v13, v9

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1135
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1136
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1139
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1114
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_46
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/WorkSource;

    .line 1116
    .local v6, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1118
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1120
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1122
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1123
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1124
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    move-object/from16 v27, v11

    goto/16 :goto_0

    .line 1085
    .end local v6    # "_arg0":Landroid/os/WorkSource;
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":I
    :pswitch_47
    move v13, v9

    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/WorkSource;

    .line 1087
    .local v16, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1089
    .restart local v17    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1091
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 1093
    .local v19, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 1095
    .restart local v20    # "_arg4":I
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/WorkSource;

    .line 1097
    .local v21, "_arg5":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 1099
    .restart local v22    # "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 1101
    .local v23, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 1103
    .local v24, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 1105
    .local v25, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v26

    .line 1106
    .local v26, "_arg10":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1107
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v21

    move/from16 v7, v22

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v10, v25

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v27, "descriptor":Ljava/lang/String;
    move/from16 v11, v26

    invoke-virtual/range {v0 .. v11}, Lcom/android/internal/app/IBatteryStats$Stub;->noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1109
    goto/16 :goto_0

    .line 1066
    .end local v16    # "_arg0":Landroid/os/WorkSource;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":Landroid/os/WorkSource;
    .end local v22    # "_arg6":I
    .end local v23    # "_arg7":Ljava/lang/String;
    .end local v24    # "_arg8":Ljava/lang/String;
    .end local v25    # "_arg9":I
    .end local v26    # "_arg10":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_48
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/WorkSource;

    .line 1068
    .local v7, "_arg0":Landroid/os/WorkSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1070
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1072
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1074
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1076
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1077
    .local v16, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1078
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    goto/16 :goto_0

    .line 1049
    .end local v7    # "_arg0":Landroid/os/WorkSource;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg5":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_49
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1051
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1053
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1055
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1057
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1058
    .local v10, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move-object v3, v8

    move-object v4, v9

    move v5, v10

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    goto/16 :goto_0

    .line 1030
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":I
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4a
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1032
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1034
    .local v8, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1036
    .local v9, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1038
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 1040
    .local v11, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 1041
    .restart local v16    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1042
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move v5, v11

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V

    .line 1043
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1044
    goto/16 :goto_0

    .line 1017
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Ljava/lang/String;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg5":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_4b
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1021
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1022
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobFinish(Ljava/lang/String;II)V

    .line 1024
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    goto/16 :goto_0

    .line 1006
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4c
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1009
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1010
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteJobStart(Ljava/lang/String;I)V

    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1012
    goto/16 :goto_0

    .line 995
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4d
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 997
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 998
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncFinish(Ljava/lang/String;I)V

    .line 1000
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    goto/16 :goto_0

    .line 984
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4e
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 986
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 987
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 988
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteSyncStart(Ljava/lang/String;I)V

    .line 989
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    goto/16 :goto_0

    .line 971
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_4f
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 973
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 975
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 976
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 977
    invoke-virtual {v12, v0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteEvent(ILjava/lang/String;I)V

    .line 978
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 979
    goto/16 :goto_0

    .line 963
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_50
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeChargeTimeRemaining()J

    move-result-wide v0

    .line 964
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 966
    goto/16 :goto_0

    .line 956
    .end local v0    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_51
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->computeBatteryTimeRemaining()J

    move-result-wide v0

    .line 957
    .restart local v0    # "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v15, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 959
    goto/16 :goto_0

    .line 949
    .end local v0    # "_result":J
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_52
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->isCharging()Z

    move-result v0

    .line 950
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 951
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 952
    goto/16 :goto_0

    .line 940
    .end local v0    # "_result":Z
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_53
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 941
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 942
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatisticsStream(Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 943
    .local v1, "_result":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    invoke-virtual {v15, v1, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 945
    goto/16 :goto_0

    .line 932
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":Landroid/os/ParcelFileDescriptor;
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_54
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v0

    .line 933
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 934
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 935
    goto/16 :goto_0

    .line 923
    .end local v0    # "_result":[B
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_55
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/os/BatteryUsageStatsQuery;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 924
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 925
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->getBatteryUsageStats(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 926
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 928
    goto/16 :goto_0

    .line 916
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStatsQuery;>;"
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryUsageStats;>;"
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_56
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetFlashlight()V

    .line 917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 918
    goto/16 :goto_0

    .line 910
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_57
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetCamera()V

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    goto/16 :goto_0

    .line 902
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_58
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 903
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 904
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopCamera(I)V

    .line 905
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    goto/16 :goto_0

    .line 893
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_59
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 894
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 895
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartCamera(I)V

    .line 896
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    goto/16 :goto_0

    .line 884
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5a
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 885
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 886
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOff(I)V

    .line 887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    goto/16 :goto_0

    .line 875
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5b
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 876
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 877
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFlashlightOn(I)V

    .line 878
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    goto/16 :goto_0

    .line 868
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5c
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetAudio()V

    .line 869
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    goto/16 :goto_0

    .line 862
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5d
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteResetVideo()V

    .line 863
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 864
    goto/16 :goto_0

    .line 854
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5e
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 855
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 856
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopAudio(I)V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    goto :goto_0

    .line 845
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_5f
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 846
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 847
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartAudio(I)V

    .line 848
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    goto :goto_0

    .line 836
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_60
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 837
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopVideo(I)V

    .line 839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    goto :goto_0

    .line 827
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_61
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 828
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 829
    invoke-virtual {v12, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartVideo(I)V

    .line 830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    goto :goto_0

    .line 816
    .end local v0    # "_arg0":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_62
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 818
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 819
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 820
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    goto :goto_0

    .line 805
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v27    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_63
    move v13, v9

    move-object/from16 v27, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v27    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 807
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 808
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {v12, v0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    nop

    .line 1807
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
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
