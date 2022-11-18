.class public abstract Landroid/bluetooth/IBluetooth$Stub;
.super Landroid/os/Binder;
.source "IBluetooth.java"

# interfaces
.implements Landroid/bluetooth/IBluetooth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetooth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetooth$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetooth"

.field static final blacklist TRANSACTION_allowLowLatencyAudio:I = 0x5d

.field static final blacklist TRANSACTION_canBondWithoutDialog:I = 0x5b

.field static final blacklist TRANSACTION_cancelBondProcess:I = 0x1d

.field static final blacklist TRANSACTION_cancelDiscovery:I = 0x16

.field static final blacklist TRANSACTION_connectAllEnabledProfiles:I = 0x53

.field static final blacklist TRANSACTION_createBond:I = 0x1c

.field static final blacklist TRANSACTION_disable:I = 0x3

.field static final blacklist TRANSACTION_disconnectAllEnabledProfiles:I = 0x54

.field static final blacklist TRANSACTION_enable:I = 0x2

.field static final blacklist TRANSACTION_factoryReset:I = 0x3e

.field static final blacklist TRANSACTION_fetchRemoteUuids:I = 0x2b

.field static final blacklist TRANSACTION_fetchRemoteUuidsWithAttribution:I = 0x2c

.field static final blacklist TRANSACTION_generateLocalOobData:I = 0x5c

.field static final blacklist TRANSACTION_getActiveDevices:I = 0x56

.field static final blacklist TRANSACTION_getAdapterConnectionState:I = 0x19

.field static final blacklist TRANSACTION_getAddress:I = 0x4

.field static final blacklist TRANSACTION_getAddressWithAttribution:I = 0x5

.field static final blacklist TRANSACTION_getBatteryLevel:I = 0x2e

.field static final blacklist TRANSACTION_getBluetoothClass:I = 0xb

.field static final blacklist TRANSACTION_getBondState:I = 0x1f

.field static final blacklist TRANSACTION_getBondedDevices:I = 0x1b

.field static final blacklist TRANSACTION_getConnectionState:I = 0x22

.field static final blacklist TRANSACTION_getConnectionStateWithAttribution:I = 0x23

.field static final blacklist TRANSACTION_getDeviceType:I = 0x5f

.field static final blacklist TRANSACTION_getDiscoverableTimeout:I = 0x13

.field static final blacklist TRANSACTION_getDiscoveryEndMillis:I = 0x18

.field static final blacklist TRANSACTION_getIdentityAddress:I = 0x8

.field static final blacklist TRANSACTION_getIoCapability:I = 0xd

.field static final blacklist TRANSACTION_getLeIoCapability:I = 0xf

.field static final blacklist TRANSACTION_getLeMaximumAdvertisingDataLength:I = 0x4a

.field static final blacklist TRANSACTION_getMaxConnectedAudioDevices:I = 0x2f

.field static final blacklist TRANSACTION_getMessageAccessPermission:I = 0x37

.field static final blacklist TRANSACTION_getMetadata:I = 0x4f

.field static final blacklist TRANSACTION_getMostRecentlyConnectedDevices:I = 0x57

.field static final blacklist TRANSACTION_getName:I = 0x9

.field static final blacklist TRANSACTION_getNameLengthForAdvertise:I = 0xa

.field static final blacklist TRANSACTION_getPhonebookAccessPermission:I = 0x33

.field static final blacklist TRANSACTION_getProfileConnectionState:I = 0x1a

.field static final blacklist TRANSACTION_getRemoteAlias:I = 0x26

.field static final blacklist TRANSACTION_getRemoteAliasWithAttribution:I = 0x27

.field static final blacklist TRANSACTION_getRemoteClass:I = 0x29

.field static final blacklist TRANSACTION_getRemoteName:I = 0x24

.field static final blacklist TRANSACTION_getRemoteType:I = 0x25

.field static final blacklist TRANSACTION_getRemoteUuids:I = 0x2a

.field static final blacklist TRANSACTION_getScanMode:I = 0x11

.field static final blacklist TRANSACTION_getSilenceMode:I = 0x35

.field static final blacklist TRANSACTION_getSimAccessPermission:I = 0x39

.field static final blacklist TRANSACTION_getSocketManager:I = 0x3d

.field static final blacklist TRANSACTION_getSocketOpt:I = 0x64

.field static final blacklist TRANSACTION_getState:I = 0x1

.field static final blacklist TRANSACTION_getSupportedProfiles:I = 0x21

.field static final blacklist TRANSACTION_getTwsPlusPeerAddress:I = 0x61

.field static final blacklist TRANSACTION_getUuids:I = 0x6

.field static final blacklist TRANSACTION_isActivityAndEnergyReportingSupported:I = 0x42

.field static final blacklist TRANSACTION_isBondingInitiatedLocally:I = 0x20

.field static final blacklist TRANSACTION_isBroadcastActive:I = 0x65

.field static final blacklist TRANSACTION_isDiscovering:I = 0x17

.field static final blacklist TRANSACTION_isLe2MPhySupported:I = 0x43

.field static final blacklist TRANSACTION_isLeAudioBroadcastAssistantSupported:I = 0x49

.field static final blacklist TRANSACTION_isLeAudioBroadcastSourceSupported:I = 0x48

.field static final blacklist TRANSACTION_isLeAudioSupported:I = 0x47

.field static final blacklist TRANSACTION_isLeCodedPhySupported:I = 0x44

.field static final blacklist TRANSACTION_isLeExtendedAdvertisingSupported:I = 0x45

.field static final blacklist TRANSACTION_isLePeriodicAdvertisingSupported:I = 0x46

.field static final blacklist TRANSACTION_isMultiAdvertisementSupported:I = 0x3f

.field static final blacklist TRANSACTION_isOffloadedFilteringSupported:I = 0x40

.field static final blacklist TRANSACTION_isOffloadedScanBatchingSupported:I = 0x41

.field static final blacklist TRANSACTION_isTwsPlusDevice:I = 0x60

.field static final blacklist TRANSACTION_onBrEdrDown:I = 0x52

.field static final blacklist TRANSACTION_onLeServiceUp:I = 0x51

.field static final blacklist TRANSACTION_registerBluetoothConnectionCallback:I = 0x59

.field static final blacklist TRANSACTION_registerCallback:I = 0x3b

.field static final blacklist TRANSACTION_registerMetadataListener:I = 0x4c

.field static final blacklist TRANSACTION_removeActiveDevice:I = 0x58

.field static final blacklist TRANSACTION_removeBond:I = 0x1e

.field static final blacklist TRANSACTION_reportActivityInfo:I = 0x4b

.field static final blacklist TRANSACTION_requestActivityInfo:I = 0x50

.field static final blacklist TRANSACTION_retrievePendingSocketForServiceRecord:I = 0x68

.field static final blacklist TRANSACTION_sdpSearch:I = 0x2d

.field static final blacklist TRANSACTION_setActiveDevice:I = 0x55

.field static final blacklist TRANSACTION_setBluetoothClass:I = 0xc

.field static final blacklist TRANSACTION_setBondingInitiatedLocally:I = 0x5e

.field static final blacklist TRANSACTION_setDiscoverableTimeout:I = 0x14

.field static final blacklist TRANSACTION_setForegroundUserId:I = 0x69

.field static final blacklist TRANSACTION_setIoCapability:I = 0xe

.field static final blacklist TRANSACTION_setLeIoCapability:I = 0x10

.field static final blacklist TRANSACTION_setMessageAccessPermission:I = 0x38

.field static final blacklist TRANSACTION_setMetadata:I = 0x4e

.field static final blacklist TRANSACTION_setName:I = 0x7

.field static final blacklist TRANSACTION_setPairingConfirmation:I = 0x32

.field static final blacklist TRANSACTION_setPasskey:I = 0x31

.field static final blacklist TRANSACTION_setPhonebookAccessPermission:I = 0x36

.field static final blacklist TRANSACTION_setPin:I = 0x30

.field static final blacklist TRANSACTION_setRemoteAlias:I = 0x28

.field static final blacklist TRANSACTION_setScanMode:I = 0x12

.field static final blacklist TRANSACTION_setSilenceMode:I = 0x34

.field static final blacklist TRANSACTION_setSimAccessPermission:I = 0x3a

.field static final blacklist TRANSACTION_setSocketOpt:I = 0x63

.field static final blacklist TRANSACTION_startDiscovery:I = 0x15

.field static final blacklist TRANSACTION_startRfcommListener:I = 0x66

.field static final blacklist TRANSACTION_stopRfcommListener:I = 0x67

.field static final blacklist TRANSACTION_unregisterBluetoothConnectionCallback:I = 0x5a

.field static final blacklist TRANSACTION_unregisterCallback:I = 0x3c

.field static final blacklist TRANSACTION_unregisterMetadataListener:I = 0x4d

.field static final blacklist TRANSACTION_updateQuietModeStatus:I = 0x62


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 361
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 362
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetooth$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 363
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 370
    if-nez p0, :cond_0

    .line 371
    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_0
    const-string v0, "android.bluetooth.IBluetooth"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 374
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_1

    .line 375
    move-object v1, v0

    check-cast v1, Landroid/bluetooth/IBluetooth;

    return-object v1

    .line 377
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetooth$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetooth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 386
    packed-switch p0, :pswitch_data_0

    .line 810
    const/4 v0, 0x0

    return-object v0

    .line 806
    :pswitch_0
    const-string/jumbo v0, "setForegroundUserId"

    return-object v0

    .line 802
    :pswitch_1
    const-string/jumbo v0, "retrievePendingSocketForServiceRecord"

    return-object v0

    .line 798
    :pswitch_2
    const-string/jumbo v0, "stopRfcommListener"

    return-object v0

    .line 794
    :pswitch_3
    const-string/jumbo v0, "startRfcommListener"

    return-object v0

    .line 790
    :pswitch_4
    const-string v0, "isBroadcastActive"

    return-object v0

    .line 786
    :pswitch_5
    const-string v0, "getSocketOpt"

    return-object v0

    .line 782
    :pswitch_6
    const-string/jumbo v0, "setSocketOpt"

    return-object v0

    .line 778
    :pswitch_7
    const-string/jumbo v0, "updateQuietModeStatus"

    return-object v0

    .line 774
    :pswitch_8
    const-string v0, "getTwsPlusPeerAddress"

    return-object v0

    .line 770
    :pswitch_9
    const-string v0, "isTwsPlusDevice"

    return-object v0

    .line 766
    :pswitch_a
    const-string v0, "getDeviceType"

    return-object v0

    .line 762
    :pswitch_b
    const-string/jumbo v0, "setBondingInitiatedLocally"

    return-object v0

    .line 758
    :pswitch_c
    const-string v0, "allowLowLatencyAudio"

    return-object v0

    .line 754
    :pswitch_d
    const-string v0, "generateLocalOobData"

    return-object v0

    .line 750
    :pswitch_e
    const-string v0, "canBondWithoutDialog"

    return-object v0

    .line 746
    :pswitch_f
    const-string/jumbo v0, "unregisterBluetoothConnectionCallback"

    return-object v0

    .line 742
    :pswitch_10
    const-string/jumbo v0, "registerBluetoothConnectionCallback"

    return-object v0

    .line 738
    :pswitch_11
    const-string/jumbo v0, "removeActiveDevice"

    return-object v0

    .line 734
    :pswitch_12
    const-string v0, "getMostRecentlyConnectedDevices"

    return-object v0

    .line 730
    :pswitch_13
    const-string v0, "getActiveDevices"

    return-object v0

    .line 726
    :pswitch_14
    const-string/jumbo v0, "setActiveDevice"

    return-object v0

    .line 722
    :pswitch_15
    const-string v0, "disconnectAllEnabledProfiles"

    return-object v0

    .line 718
    :pswitch_16
    const-string v0, "connectAllEnabledProfiles"

    return-object v0

    .line 714
    :pswitch_17
    const-string/jumbo v0, "onBrEdrDown"

    return-object v0

    .line 710
    :pswitch_18
    const-string/jumbo v0, "onLeServiceUp"

    return-object v0

    .line 706
    :pswitch_19
    const-string/jumbo v0, "requestActivityInfo"

    return-object v0

    .line 702
    :pswitch_1a
    const-string v0, "getMetadata"

    return-object v0

    .line 698
    :pswitch_1b
    const-string/jumbo v0, "setMetadata"

    return-object v0

    .line 694
    :pswitch_1c
    const-string/jumbo v0, "unregisterMetadataListener"

    return-object v0

    .line 690
    :pswitch_1d
    const-string/jumbo v0, "registerMetadataListener"

    return-object v0

    .line 686
    :pswitch_1e
    const-string/jumbo v0, "reportActivityInfo"

    return-object v0

    .line 682
    :pswitch_1f
    const-string v0, "getLeMaximumAdvertisingDataLength"

    return-object v0

    .line 678
    :pswitch_20
    const-string v0, "isLeAudioBroadcastAssistantSupported"

    return-object v0

    .line 674
    :pswitch_21
    const-string v0, "isLeAudioBroadcastSourceSupported"

    return-object v0

    .line 670
    :pswitch_22
    const-string v0, "isLeAudioSupported"

    return-object v0

    .line 666
    :pswitch_23
    const-string v0, "isLePeriodicAdvertisingSupported"

    return-object v0

    .line 662
    :pswitch_24
    const-string v0, "isLeExtendedAdvertisingSupported"

    return-object v0

    .line 658
    :pswitch_25
    const-string v0, "isLeCodedPhySupported"

    return-object v0

    .line 654
    :pswitch_26
    const-string v0, "isLe2MPhySupported"

    return-object v0

    .line 650
    :pswitch_27
    const-string v0, "isActivityAndEnergyReportingSupported"

    return-object v0

    .line 646
    :pswitch_28
    const-string v0, "isOffloadedScanBatchingSupported"

    return-object v0

    .line 642
    :pswitch_29
    const-string v0, "isOffloadedFilteringSupported"

    return-object v0

    .line 638
    :pswitch_2a
    const-string v0, "isMultiAdvertisementSupported"

    return-object v0

    .line 634
    :pswitch_2b
    const-string v0, "factoryReset"

    return-object v0

    .line 630
    :pswitch_2c
    const-string v0, "getSocketManager"

    return-object v0

    .line 626
    :pswitch_2d
    const-string/jumbo v0, "unregisterCallback"

    return-object v0

    .line 622
    :pswitch_2e
    const-string/jumbo v0, "registerCallback"

    return-object v0

    .line 618
    :pswitch_2f
    const-string/jumbo v0, "setSimAccessPermission"

    return-object v0

    .line 614
    :pswitch_30
    const-string v0, "getSimAccessPermission"

    return-object v0

    .line 610
    :pswitch_31
    const-string/jumbo v0, "setMessageAccessPermission"

    return-object v0

    .line 606
    :pswitch_32
    const-string v0, "getMessageAccessPermission"

    return-object v0

    .line 602
    :pswitch_33
    const-string/jumbo v0, "setPhonebookAccessPermission"

    return-object v0

    .line 598
    :pswitch_34
    const-string v0, "getSilenceMode"

    return-object v0

    .line 594
    :pswitch_35
    const-string/jumbo v0, "setSilenceMode"

    return-object v0

    .line 590
    :pswitch_36
    const-string v0, "getPhonebookAccessPermission"

    return-object v0

    .line 586
    :pswitch_37
    const-string/jumbo v0, "setPairingConfirmation"

    return-object v0

    .line 582
    :pswitch_38
    const-string/jumbo v0, "setPasskey"

    return-object v0

    .line 578
    :pswitch_39
    const-string/jumbo v0, "setPin"

    return-object v0

    .line 574
    :pswitch_3a
    const-string v0, "getMaxConnectedAudioDevices"

    return-object v0

    .line 570
    :pswitch_3b
    const-string v0, "getBatteryLevel"

    return-object v0

    .line 566
    :pswitch_3c
    const-string/jumbo v0, "sdpSearch"

    return-object v0

    .line 562
    :pswitch_3d
    const-string v0, "fetchRemoteUuidsWithAttribution"

    return-object v0

    .line 558
    :pswitch_3e
    const-string v0, "fetchRemoteUuids"

    return-object v0

    .line 554
    :pswitch_3f
    const-string v0, "getRemoteUuids"

    return-object v0

    .line 550
    :pswitch_40
    const-string v0, "getRemoteClass"

    return-object v0

    .line 546
    :pswitch_41
    const-string/jumbo v0, "setRemoteAlias"

    return-object v0

    .line 542
    :pswitch_42
    const-string v0, "getRemoteAliasWithAttribution"

    return-object v0

    .line 538
    :pswitch_43
    const-string v0, "getRemoteAlias"

    return-object v0

    .line 534
    :pswitch_44
    const-string v0, "getRemoteType"

    return-object v0

    .line 530
    :pswitch_45
    const-string v0, "getRemoteName"

    return-object v0

    .line 526
    :pswitch_46
    const-string v0, "getConnectionStateWithAttribution"

    return-object v0

    .line 522
    :pswitch_47
    const-string v0, "getConnectionState"

    return-object v0

    .line 518
    :pswitch_48
    const-string v0, "getSupportedProfiles"

    return-object v0

    .line 514
    :pswitch_49
    const-string v0, "isBondingInitiatedLocally"

    return-object v0

    .line 510
    :pswitch_4a
    const-string v0, "getBondState"

    return-object v0

    .line 506
    :pswitch_4b
    const-string/jumbo v0, "removeBond"

    return-object v0

    .line 502
    :pswitch_4c
    const-string v0, "cancelBondProcess"

    return-object v0

    .line 498
    :pswitch_4d
    const-string v0, "createBond"

    return-object v0

    .line 494
    :pswitch_4e
    const-string v0, "getBondedDevices"

    return-object v0

    .line 490
    :pswitch_4f
    const-string v0, "getProfileConnectionState"

    return-object v0

    .line 486
    :pswitch_50
    const-string v0, "getAdapterConnectionState"

    return-object v0

    .line 482
    :pswitch_51
    const-string v0, "getDiscoveryEndMillis"

    return-object v0

    .line 478
    :pswitch_52
    const-string v0, "isDiscovering"

    return-object v0

    .line 474
    :pswitch_53
    const-string v0, "cancelDiscovery"

    return-object v0

    .line 470
    :pswitch_54
    const-string/jumbo v0, "startDiscovery"

    return-object v0

    .line 466
    :pswitch_55
    const-string/jumbo v0, "setDiscoverableTimeout"

    return-object v0

    .line 462
    :pswitch_56
    const-string v0, "getDiscoverableTimeout"

    return-object v0

    .line 458
    :pswitch_57
    const-string/jumbo v0, "setScanMode"

    return-object v0

    .line 454
    :pswitch_58
    const-string v0, "getScanMode"

    return-object v0

    .line 450
    :pswitch_59
    const-string/jumbo v0, "setLeIoCapability"

    return-object v0

    .line 446
    :pswitch_5a
    const-string v0, "getLeIoCapability"

    return-object v0

    .line 442
    :pswitch_5b
    const-string/jumbo v0, "setIoCapability"

    return-object v0

    .line 438
    :pswitch_5c
    const-string v0, "getIoCapability"

    return-object v0

    .line 434
    :pswitch_5d
    const-string/jumbo v0, "setBluetoothClass"

    return-object v0

    .line 430
    :pswitch_5e
    const-string v0, "getBluetoothClass"

    return-object v0

    .line 426
    :pswitch_5f
    const-string v0, "getNameLengthForAdvertise"

    return-object v0

    .line 422
    :pswitch_60
    const-string v0, "getName"

    return-object v0

    .line 418
    :pswitch_61
    const-string v0, "getIdentityAddress"

    return-object v0

    .line 414
    :pswitch_62
    const-string/jumbo v0, "setName"

    return-object v0

    .line 410
    :pswitch_63
    const-string v0, "getUuids"

    return-object v0

    .line 406
    :pswitch_64
    const-string v0, "getAddressWithAttribution"

    return-object v0

    .line 402
    :pswitch_65
    const-string v0, "getAddress"

    return-object v0

    .line 398
    :pswitch_66
    const-string v0, "disable"

    return-object v0

    .line 394
    :pswitch_67
    const-string v0, "enable"

    return-object v0

    .line 390
    :pswitch_68
    const-string v0, "getState"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 381
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 3681
    const/16 v0, 0x68

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 817
    invoke-static {p1}, Landroid/bluetooth/IBluetooth$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 821
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.bluetooth.IBluetooth"

    .line 822
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    .line 823
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    :cond_0
    packed-switch v8, :pswitch_data_0

    .line 833
    packed-switch v8, :pswitch_data_1

    .line 2037
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 829
    :pswitch_0
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 830
    return v12

    .line 2028
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2030
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2031
    .local v1, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2032
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->setForegroundUserId(ILandroid/content/AttributionSource;)V

    .line 2033
    goto/16 :goto_1

    .line 2016
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_2
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 2018
    .local v0, "_arg0":Landroid/os/ParcelUuid;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2020
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 2021
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2022
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->retrievePendingSocketForServiceRecord(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2023
    goto/16 :goto_1

    .line 2004
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelUuid;

    .line 2006
    .restart local v0    # "_arg0":Landroid/os/ParcelUuid;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 2008
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 2009
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 2010
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->stopRfcommListener(Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 2011
    goto/16 :goto_1

    .line 1988
    .end local v0    # "_arg0":Landroid/os/ParcelUuid;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1990
    .local v6, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/ParcelUuid;

    .line 1992
    .local v13, "_arg1":Landroid/os/ParcelUuid;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/app/PendingIntent;

    .line 1994
    .local v14, "_arg2":Landroid/app/PendingIntent;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/AttributionSource;

    .line 1996
    .local v15, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1997
    .local v16, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1998
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->startRfcommListener(Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/app/PendingIntent;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1999
    goto/16 :goto_1

    .line 1978
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v13    # "_arg1":Landroid/os/ParcelUuid;
    .end local v14    # "_arg2":Landroid/app/PendingIntent;
    .end local v15    # "_arg3":Landroid/content/AttributionSource;
    .end local v16    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1979
    .local v0, "_arg0":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1980
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isBroadcastActive(Landroid/content/AttributionSource;)Z

    move-result v1

    .line 1981
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1982
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1983
    goto/16 :goto_1

    .line 1956
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1958
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1960
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1962
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1963
    .local v3, "_arg3_length":I
    if-gez v3, :cond_1

    .line 1964
    const/4 v4, 0x0

    .local v4, "_arg3":[B
    goto :goto_0

    .line 1966
    .end local v4    # "_arg3":[B
    :cond_1
    new-array v4, v3, [B

    .line 1968
    .restart local v4    # "_arg3":[B
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1969
    invoke-virtual {v7, v0, v1, v2, v4}, Landroid/bluetooth/IBluetooth$Stub;->getSocketOpt(III[B)I

    move-result v5

    .line 1970
    .local v5, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1971
    invoke-virtual {v10, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    invoke-virtual {v10, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1973
    goto/16 :goto_1

    .line 1938
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3_length":I
    .end local v4    # "_arg3":[B
    .end local v5    # "_result":I
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1940
    .local v6, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1942
    .local v13, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1944
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v15

    .line 1946
    .local v15, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1947
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1948
    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->setSocketOpt(III[BI)I

    move-result v0

    .line 1949
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1950
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1951
    goto/16 :goto_1

    .line 1927
    .end local v0    # "_result":I
    .end local v6    # "_arg0":I
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":[B
    .end local v16    # "_arg4":I
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1929
    .local v0, "_arg0":Z
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1930
    .local v1, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1931
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->updateQuietModeStatus(ZLandroid/content/AttributionSource;)V

    .line 1932
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1933
    goto/16 :goto_1

    .line 1915
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_9
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1917
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1918
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1919
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getTwsPlusPeerAddress(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Ljava/lang/String;

    move-result-object v2

    .line 1920
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1922
    goto/16 :goto_1

    .line 1903
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_a
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1905
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1906
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1907
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isTwsPlusDevice(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)Z

    move-result v2

    .line 1908
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1909
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1910
    goto/16 :goto_1

    .line 1891
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_result":Z
    :pswitch_b
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1893
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1894
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1895
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getDeviceType(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;)I

    move-result v2

    .line 1896
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1897
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1898
    goto/16 :goto_1

    .line 1878
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_result":I
    :pswitch_c
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1880
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1882
    .local v1, "_arg1":Z
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1883
    .local v2, "_arg2":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1884
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;)V

    .line 1885
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1886
    goto/16 :goto_1

    .line 1866
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1868
    .local v0, "_arg0":Z
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1870
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1871
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1872
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->allowLowLatencyAudio(ZLandroid/bluetooth/BluetoothDevice;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1873
    goto/16 :goto_1

    .line 1852
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1854
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothOobDataCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothOobDataCallback;

    move-result-object v1

    .line 1856
    .local v1, "_arg1":Landroid/bluetooth/IBluetoothOobDataCallback;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1858
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1859
    .local v3, "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1860
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->generateLocalOobData(ILandroid/bluetooth/IBluetoothOobDataCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1861
    goto/16 :goto_1

    .line 1840
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/bluetooth/IBluetoothOobDataCallback;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_f
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1842
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1844
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1845
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1846
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->canBondWithoutDialog(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1847
    goto/16 :goto_1

    .line 1828
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothConnectionCallback;

    move-result-object v0

    .line 1830
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothConnectionCallback;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1832
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1833
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1834
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->unregisterBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1835
    goto/16 :goto_1

    .line 1816
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothConnectionCallback;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothConnectionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothConnectionCallback;

    move-result-object v0

    .line 1818
    .restart local v0    # "_arg0":Landroid/bluetooth/IBluetoothConnectionCallback;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1820
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1821
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1822
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerBluetoothConnectionCallback(Landroid/bluetooth/IBluetoothConnectionCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1823
    goto/16 :goto_1

    .line 1804
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothConnectionCallback;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1806
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1808
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1809
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1810
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->removeActiveDevice(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1811
    goto/16 :goto_1

    .line 1794
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_13
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1796
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1797
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1798
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMostRecentlyConnectedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1799
    goto/16 :goto_1

    .line 1782
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1784
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1786
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1787
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1788
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getActiveDevices(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1789
    goto/16 :goto_1

    .line 1768
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_15
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1770
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1772
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1774
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1775
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1776
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1777
    goto/16 :goto_1

    .line 1756
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_16
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1758
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1760
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1761
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1762
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1763
    goto/16 :goto_1

    .line 1744
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_17
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1746
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1748
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1749
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1750
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1751
    goto/16 :goto_1

    .line 1734
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_18
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1736
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1737
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1738
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->onBrEdrDown(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1739
    goto/16 :goto_1

    .line 1724
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_19
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1726
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1727
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1728
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->onLeServiceUp(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1729
    goto/16 :goto_1

    .line 1714
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothActivityEnergyInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;

    move-result-object v0

    .line 1716
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1717
    .local v1, "_arg1":Landroid/content/AttributionSource;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1718
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->requestActivityInfo(Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;Landroid/content/AttributionSource;)V

    .line 1719
    goto/16 :goto_1

    .line 1700
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothActivityEnergyInfoListener;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    :pswitch_1b
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1702
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1704
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1706
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1707
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1708
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->getMetadata(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1709
    goto/16 :goto_1

    .line 1684
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1c
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1686
    .local v6, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1688
    .restart local v13    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v14

    .line 1690
    .local v14, "_arg2":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/content/AttributionSource;

    .line 1692
    .local v15, "_arg3":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1693
    .local v16, "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1694
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetooth$Stub;->setMetadata(Landroid/bluetooth/BluetoothDevice;I[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1695
    goto/16 :goto_1

    .line 1672
    .end local v6    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v13    # "_arg1":I
    .end local v14    # "_arg2":[B
    .end local v15    # "_arg3":Landroid/content/AttributionSource;
    .end local v16    # "_arg4":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1d
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1674
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1676
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1677
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1678
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->unregisterMetadataListener(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1679
    goto/16 :goto_1

    .line 1658
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothMetadataListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMetadataListener;

    move-result-object v0

    .line 1660
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothMetadataListener;
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 1662
    .local v1, "_arg1":Landroid/bluetooth/BluetoothDevice;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1664
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1665
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1666
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1667
    goto/16 :goto_1

    .line 1648
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothMetadataListener;
    .end local v1    # "_arg1":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_1f
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1650
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1651
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1652
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->reportActivityInfo(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1653
    goto/16 :goto_1

    .line 1640
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_20
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1641
    .local v0, "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1642
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->getLeMaximumAdvertisingDataLength(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1643
    goto/16 :goto_1

    .line 1632
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_21
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1633
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1634
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeAudioBroadcastAssistantSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1635
    goto/16 :goto_1

    .line 1624
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_22
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1625
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1626
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeAudioBroadcastSourceSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1627
    goto/16 :goto_1

    .line 1616
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_23
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1617
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1618
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeAudioSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1619
    goto/16 :goto_1

    .line 1608
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_24
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1609
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1610
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isLePeriodicAdvertisingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1611
    goto/16 :goto_1

    .line 1600
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_25
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1601
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1602
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeExtendedAdvertisingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1603
    goto/16 :goto_1

    .line 1592
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_26
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1593
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1594
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isLeCodedPhySupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1595
    goto/16 :goto_1

    .line 1584
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_27
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1585
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1586
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isLe2MPhySupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1587
    goto/16 :goto_1

    .line 1576
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_28
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1577
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1578
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isActivityAndEnergyReportingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1579
    goto/16 :goto_1

    .line 1568
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_29
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1569
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1570
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedScanBatchingSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1571
    goto/16 :goto_1

    .line 1560
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2a
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1561
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1562
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isOffloadedFilteringSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1563
    goto/16 :goto_1

    .line 1552
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2b
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1553
    .restart local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1554
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->isMultiAdvertisementSupported(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1555
    goto/16 :goto_1

    .line 1542
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2c
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1544
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1545
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1546
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->factoryReset(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1547
    goto/16 :goto_1

    .line 1534
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2d
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v0

    .line 1535
    .local v0, "_result":Landroid/bluetooth/IBluetoothSocketManager;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1536
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1537
    goto/16 :goto_1

    .line 1523
    .end local v0    # "_result":Landroid/bluetooth/IBluetoothSocketManager;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v0

    .line 1525
    .local v0, "_arg0":Landroid/bluetooth/IBluetoothCallback;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1527
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1528
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1529
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->unregisterCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1530
    goto/16 :goto_1

    .line 1511
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothCallback;

    move-result-object v0

    .line 1513
    .restart local v0    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1515
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1516
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1517
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->registerCallback(Landroid/bluetooth/IBluetoothCallback;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1518
    goto/16 :goto_1

    .line 1497
    .end local v0    # "_arg0":Landroid/bluetooth/IBluetoothCallback;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_30
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1499
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1501
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1503
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1504
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1505
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1506
    goto/16 :goto_1

    .line 1485
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_31
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1487
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1489
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1490
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1491
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1492
    goto/16 :goto_1

    .line 1471
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_32
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1473
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1475
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1477
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1478
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1479
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1480
    goto/16 :goto_1

    .line 1459
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_33
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1461
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1463
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1464
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1465
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1466
    goto/16 :goto_1

    .line 1445
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_34
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1447
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1449
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1451
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1452
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1453
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1454
    goto/16 :goto_1

    .line 1433
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_35
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1435
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1437
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1438
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1439
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getSilenceMode(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1440
    goto/16 :goto_1

    .line 1419
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_36
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1421
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1423
    .local v1, "_arg1":Z
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1425
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1426
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1427
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setSilenceMode(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1428
    goto/16 :goto_1

    .line 1407
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_37
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1409
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1411
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1412
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1413
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1414
    goto/16 :goto_1

    .line 1393
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_38
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1395
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1397
    .local v1, "_arg1":Z
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1399
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1400
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1401
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1402
    goto/16 :goto_1

    .line 1375
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_39
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1377
    .local v13, "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 1379
    .local v14, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1381
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 1383
    .local v16, "_arg3":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/AttributionSource;

    .line 1385
    .local v17, "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1386
    .local v18, "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1387
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetooth$Stub;->setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1388
    goto/16 :goto_1

    .line 1357
    .end local v13    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v14    # "_arg1":Z
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":Landroid/content/AttributionSource;
    .end local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3a
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1359
    .restart local v13    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 1361
    .restart local v14    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1363
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v16

    .line 1365
    .restart local v16    # "_arg3":[B
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/AttributionSource;

    .line 1367
    .restart local v17    # "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1368
    .restart local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1369
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetooth$Stub;->setPin(Landroid/bluetooth/BluetoothDevice;ZI[BLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1370
    goto/16 :goto_1

    .line 1347
    .end local v13    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v14    # "_arg1":Z
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":[B
    .end local v17    # "_arg4":Landroid/content/AttributionSource;
    .end local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3b
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1349
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1350
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1351
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getMaxConnectedAudioDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1352
    goto/16 :goto_1

    .line 1335
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3c
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1337
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1339
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1340
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1341
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getBatteryLevel(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1342
    goto/16 :goto_1

    .line 1321
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3d
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1323
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 1325
    .local v1, "_arg1":Landroid/os/ParcelUuid;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1327
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1328
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1329
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1330
    goto/16 :goto_1

    .line 1307
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/os/ParcelUuid;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3e
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1309
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1311
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1313
    .restart local v2    # "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1314
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1315
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuidsWithAttribution(Landroid/bluetooth/BluetoothDevice;ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1316
    goto/16 :goto_1

    .line 1297
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_3f
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1298
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1299
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 1300
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1301
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1302
    goto/16 :goto_1

    .line 1285
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Z
    :pswitch_40
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1287
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1289
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1290
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1291
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1292
    goto/16 :goto_1

    .line 1273
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_41
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1275
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1277
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1278
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1279
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteClass(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1280
    goto/16 :goto_1

    .line 1259
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_42
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1261
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1263
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1265
    .local v2, "_arg2":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1266
    .restart local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1267
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1268
    goto/16 :goto_1

    .line 1247
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/content/AttributionSource;
    .end local v3    # "_arg3":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_43
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1249
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1251
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1252
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1253
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAliasWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1254
    goto/16 :goto_1

    .line 1237
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_44
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1238
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1239
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 1240
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1241
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1242
    goto/16 :goto_1

    .line 1225
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_45
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1227
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1229
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1230
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteType(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1232
    goto/16 :goto_1

    .line 1213
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_46
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1215
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1217
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1218
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getRemoteName(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1220
    goto/16 :goto_1

    .line 1201
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_47
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1203
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1205
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1206
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1207
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionStateWithAttribution(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1208
    goto/16 :goto_1

    .line 1191
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_48
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1192
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1193
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 1194
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    goto/16 :goto_1

    .line 1181
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_result":I
    :pswitch_49
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1183
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1184
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1185
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getSupportedProfiles(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1186
    goto/16 :goto_1

    .line 1169
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4a
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1171
    .local v0, "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1173
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1174
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1175
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1176
    goto/16 :goto_1

    .line 1157
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4b
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1159
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1161
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1162
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1163
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->getBondState(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1164
    goto/16 :goto_1

    .line 1145
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4c
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1147
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1149
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1150
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1151
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->removeBond(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1152
    goto/16 :goto_1

    .line 1133
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4d
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1135
    .restart local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1137
    .restart local v1    # "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1138
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1139
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->cancelBondProcess(Landroid/bluetooth/BluetoothDevice;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1140
    goto/16 :goto_1

    .line 1115
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4e
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 1117
    .restart local v13    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1119
    .local v14, "_arg1":I
    sget-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/bluetooth/OobData;

    .line 1121
    .local v15, "_arg2":Landroid/bluetooth/OobData;
    sget-object v0, Landroid/bluetooth/OobData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/bluetooth/OobData;

    .line 1123
    .local v16, "_arg3":Landroid/bluetooth/OobData;
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/AttributionSource;

    .line 1125
    .restart local v17    # "_arg4":Landroid/content/AttributionSource;
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1126
    .restart local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1127
    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/bluetooth/IBluetooth$Stub;->createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;Landroid/bluetooth/OobData;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1128
    goto/16 :goto_1

    .line 1105
    .end local v13    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Landroid/bluetooth/OobData;
    .end local v16    # "_arg3":Landroid/bluetooth/OobData;
    .end local v17    # "_arg4":Landroid/content/AttributionSource;
    .end local v18    # "_arg5":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_4f
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1107
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1108
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1109
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getBondedDevices(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1110
    goto/16 :goto_1

    .line 1095
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1097
    .local v0, "_arg0":I
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1098
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getProfileConnectionState(ILcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1100
    goto/16 :goto_1

    .line 1087
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_51
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1088
    .local v0, "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1089
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->getAdapterConnectionState(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1090
    goto/16 :goto_1

    .line 1077
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_52
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1079
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1080
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1081
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoveryEndMillis(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1082
    goto/16 :goto_1

    .line 1067
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_53
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1069
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1070
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1071
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->isDiscovering(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1072
    goto/16 :goto_1

    .line 1057
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_54
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1059
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1060
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->cancelDiscovery(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1062
    goto/16 :goto_1

    .line 1047
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_55
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1049
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1050
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1051
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->startDiscovery(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1052
    goto/16 :goto_1

    .line 1035
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1037
    .local v0, "_arg0":J
    sget-object v2, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/AttributionSource;

    .line 1039
    .local v2, "_arg1":Landroid/content/AttributionSource;
    sget-object v3, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1040
    .local v3, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/bluetooth/IBluetooth$Stub;->setDiscoverableTimeout(JLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1042
    goto/16 :goto_1

    .line 1025
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":Landroid/content/AttributionSource;
    .end local v3    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_57
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1027
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1028
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getDiscoverableTimeout(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1030
    goto/16 :goto_1

    .line 1013
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1015
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 1017
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1018
    .local v2, "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setScanMode(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1020
    goto/16 :goto_1

    .line 1003
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_59
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 1005
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 1006
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1007
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getScanMode(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 1008
    goto/16 :goto_1

    .line 991
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 993
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 995
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 996
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setLeIoCapability(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 998
    goto/16 :goto_1

    .line 981
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5b
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 983
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 984
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getLeIoCapability(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 986
    goto/16 :goto_1

    .line 969
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 971
    .local v0, "_arg0":I
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 973
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 974
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 975
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setIoCapability(ILandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 976
    goto/16 :goto_1

    .line 959
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5d
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 961
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 962
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getIoCapability(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 964
    goto/16 :goto_1

    .line 947
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5e
    sget-object v0, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothClass;

    .line 949
    .local v0, "_arg0":Landroid/bluetooth/BluetoothClass;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 951
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 952
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setBluetoothClass(Landroid/bluetooth/BluetoothClass;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 954
    goto/16 :goto_1

    .line 937
    .end local v0    # "_arg0":Landroid/bluetooth/BluetoothClass;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_5f
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 939
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 940
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 941
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getBluetoothClass(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 942
    goto/16 :goto_1

    .line 927
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_60
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 929
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 930
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 931
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getNameLengthForAdvertise(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 932
    goto/16 :goto_1

    .line 917
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_61
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 919
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 920
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 921
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getName(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 922
    goto/16 :goto_1

    .line 907
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_62
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 909
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 910
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getIdentityAddress(Ljava/lang/String;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 912
    goto/16 :goto_1

    .line 895
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 897
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 899
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 900
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->setName(Ljava/lang/String;Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 902
    goto/16 :goto_1

    .line 885
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_64
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 887
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 888
    .local v1, "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getUuids(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 890
    goto :goto_1

    .line 875
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_65
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 877
    .restart local v0    # "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 878
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->getAddressWithAttribution(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 880
    goto :goto_1

    .line 867
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_66
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetooth$Stub;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 870
    goto :goto_1

    .line 858
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_67
    sget-object v0, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AttributionSource;

    .line 860
    .local v0, "_arg0":Landroid/content/AttributionSource;
    sget-object v1, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 861
    .restart local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 862
    invoke-virtual {v7, v0, v1}, Landroid/bluetooth/IBluetooth$Stub;->disable(Landroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 863
    goto :goto_1

    .line 846
    .end local v0    # "_arg0":Landroid/content/AttributionSource;
    .end local v1    # "_arg1":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_68
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 848
    .local v0, "_arg0":Z
    sget-object v1, Landroid/content/AttributionSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AttributionSource;

    .line 850
    .local v1, "_arg1":Landroid/content/AttributionSource;
    sget-object v2, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 851
    .restart local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 852
    invoke-virtual {v7, v0, v1, v2}, Landroid/bluetooth/IBluetooth$Stub;->enable(ZLandroid/content/AttributionSource;Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 853
    goto :goto_1

    .line 838
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/content/AttributionSource;
    .end local v2    # "_arg2":Lcom/android/modules/utils/SynchronousResultReceiver;
    :pswitch_69
    sget-object v0, Lcom/android/modules/utils/SynchronousResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/modules/utils/SynchronousResultReceiver;

    .line 839
    .local v0, "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {v7, v0}, Landroid/bluetooth/IBluetooth$Stub;->getState(Lcom/android/modules/utils/SynchronousResultReceiver;)V

    .line 841
    nop

    .line 2040
    .end local v0    # "_arg0":Lcom/android/modules/utils/SynchronousResultReceiver;
    :goto_1
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
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
